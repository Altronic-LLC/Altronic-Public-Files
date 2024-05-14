----------------------------
-- Momentary Button Function --
-- Name = Enter The Name Of The Output In Parenthesis 
-- Output_Terminal = Terminal Board Number For Digital Output
-- Output_Number = Output Number For The Digital Output
-- On_Time = Enter Time To Keep Output On, Once Energized
----------------------------
function MomentaryPB(Name,Output_Terminal,Output_Number,On_Time)
    if not get_sVirt(Name.." PB") then
        set_sVirt(Name.." PB","Off")
    end

    local Terminal = Output_Terminal
    local Output = Output_Number
    local Time = On_Time
    local active,remaining = get_timer(Name.."TMR")
    checkToggle(Name.." PB","Off","On")

    if get_sVirt(Name.." PB") == "On" and get_do_val(Terminal,Output) == 1 then
        if remaining == 0 then 
            set_do_val(Terminal,Output,0)
            set_sVirt(Name.." PB","Off")
        end
    end

    if get_sVirt(Name.." PB") == "On" and get_do_val(Terminal,Output) == 0 then
        if not get_timer(Name.."TMR") then
            set_timer(Name.."TMR",Time)
            set_do_val(Terminal,Output,1)
        end
    end
end

MomentaryPB("VFD Reet",1,2,3) -- This example "VFD RESET" = Name, 1 = Terminal Board, 2 = Output #, 3 = On_Time

MomentaryPB("Reset",1,5,5) -- This example "Reset" = Name, 1 = Terminal Board, 5 = Output #, 5 = On_Time







