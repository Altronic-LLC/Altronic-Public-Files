----------------------------
-- Linear PID Function --
-- Name = Enter The Name Of The Output In Parenthesis 
-- Output_Terminal = Terminal Board Number For Analog Output
-- Output_Number = Output Number For The Analog Output
-- Input = Enter Channel To Get The Process Varible From
-- in_min = Enter The Number That is equal to 0% Output
-- in_max = Enter The Number That is Equal to 100% Output
-- Enable_State = Enter The State Number To Release the Output
-- Reverse_Acting = 1 = Reverse acting, 0 = Normal Acting
-- Bump Increment = Enter The Value For The Change Rate Using the Up and Down Arrows On The Dashboard
----------------------------

function LinearPID_AutoManual(Name,Output_Terminal,Output_Number,Input,in_min,in_max,Enable_State,Reverse_Acting,Bump_Increment)
    if not get_sVirt("_"..Name.."_FS") then
        set_sVirt("_"..Name.."_FS",1)
        set_sVirt(Name.." Mode","Auto")
        set_sVirt(Name.." Control",0)
    end

    -- Manual/Auto Control 
    checkToggle(Name.." Mode","Auto","Manual")

    if get_sVirt(Name.." Mode") == "Manual" then 
        set_sVirt("_"..Name.." Input_Value",get_sVirt(Name.." Control",0))
    else
        set_sVirt("_"..Name.." Input_Value",Input)
        set_sVirt(Name.." Control",math.floor(Input))
    end
      
    if get_sVirt(Name.." Mode") == "Manual" then
        if get_sVirt(Name.." ControlBump",0) ~= 0 then
          local si = 10 -- Default SpeedIncrement if no parameter has been created
          local sip = Bump_Increment
          if sip ~= 0 then si = sip end
          local Position = get_sVirt(Name.." Control",0)
          Position = Position + (si * get_sVirt(Name.." ControlBump",0))
          set_sVirt(Name.." Control",tostring(math.floor(Position)))
          set_sVirt(Name.." ControlBump",0)
        end
    else 
       set_sVirt(Name.." ControlBump",0)
    end

    local Reverse_Acting_Value = 100 * Reverse_Acting
    local Linear_Map = (0 + (get_sVirt("_"..Name.." Input_Value",0) - in_min)*(100 - 0)/(in_max - in_min)) 

    if Linear_Map >= 100 then Linear_Map = 100 end
    if Linear_Map <= 0 then Linear_Map = 0 end

    local Linear_Map_Output = math.abs(Linear_Map - Reverse_Acting_Value)
     
    if get_state() >= Enable_State then 
        set_ao_val(Output_Terminal,Output_Number,Linear_Map_Output)
    else
        set_ao_val(Output_Terminal,Output_Number,0)
    end

    set_sVirt(Name.." Output",Linear_Map_Output)
    set_sVirt("Andrew Answer",0 + (get_sVirt("_"..Name.." Input_Value",0) - in_min)*(100 - 0)/(in_max - in_min))
end

LinearPID_AutoManual("BTU",1,4,get_channel_val(1,6),250,850,0,1,5)


