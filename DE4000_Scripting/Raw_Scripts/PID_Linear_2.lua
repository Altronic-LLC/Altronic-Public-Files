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
----------------------------
function LinearPID(Name,Output_Terminal,Output_Number,Input,in_min,in_max,Enable_State,Reverse_Acting)

    local Reverse_Acting_Value = 100 * Reverse_Acting
    local Linear_Map = (0 + (Input - in_min)*(100 - 0)/(in_max - in_min)) 

    if Linear_Map >= 100 then Linear_Map = 100 end
    if Linear_Map <= 0 then Linear_Map = 0 end

    local Linear_Map_Output = math.abs(Linear_Map - Reverse_Acting_Value)
     
    if get_state() >= Enable_State then 
        set_ao_val(Output_Terminal,Output_Number,Linear_Map_Output)
    else
        set_ao_val(Output_Terminal,Output_Number,0)
    end

    set_sVirt(Name.." Output",Linear_Map_Output)
end

LinearPID("BTU_Control",1,4,get_channel_val(1,6),250,850,1,0)








