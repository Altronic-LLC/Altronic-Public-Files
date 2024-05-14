----------------------------
-- Analog Output Function --
-- Name = Enter The Name Of The Output In Parenthesis 
-- Output_Terminal = Terminal Board Number For Analog Output
-- Output_Number = Output Number For The Analog Output
-- Reverse_Acting = 1 = Reverse acting, 0 = Normal Acting
-- Bump_Increment = Enter The Value For The Change Rate Using the Up and Down Arrows On The Dashboard
----------------------------
function AnalogOutputCmd(Name,Output_Terminal,Output_Number,Reverse_Acting,Bump_Increment)
    if not get_sVirt("_"..Name.."_FS") then
        set_sVirt("_"..Name.."_FS",1)
        set_sVirt(Name.." Control",0)
    end

    if get_sVirt(Name.." ControlBump",0) ~= 0 then
        local si = 10 -- Default SpeedIncrement if no parameter has been created
        local sip = Bump_Increment
        if sip ~= 0 then si = sip end
        local Position = get_sVirt(Name.." Control",0)
        Position = Position + (si * get_sVirt(Name.." ControlBump",0))
        set_sVirt(Name.." Control",tostring(math.floor(Position)))
        set_sVirt(Name.." ControlBump",0)
    end

    local Reverse_Acting_Value = 100 * Reverse_Acting

    if get_sVirt(Name.." Control",0) >= 100 then set_sVirt(Name.." Control",100) end
    if get_sVirt(Name.." Control",0) <= 0 then set_sVirt(Name.." Control",0) end

    local Analog_Output = math.abs(get_sVirt(Name.." Control",0) - Reverse_Acting_Value)
    set_ao_val(Output_Terminal,Output_Number,Analog_Output)
end

AnalogOutputCmd("Suction",1,3,0,5) -- Example "Suction" = NAME, 1 = Output Terminal, 3 = Output Number, 0 = Reverse Acting,  5 = Bump Increment
