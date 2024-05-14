----------------------------
-- Digital Output Function --
-- Name = Enter The Name Of The Output In Parenthesis 
-- Output_Terminal = Terminal Board Number For Digital Output
-- Output_Number = Output Number For The Digital Output
-- Normally_Closed = 0 = Normally Open, 1 = Normally Closed
----------------------------
function DigitalOutput_ON_OFF(Name,Output_Terminal,Output_Number,Normally_Closed)
    local Normally_Closed_Input = Normally_Closed
    if not get_sVirt("_"..Name.."_FS") then
        set_sVirt("_"..Name.."_FS",1)
        if Normally_Closed_Input == 1 then set_sVirt(Name.." Command","Closed") else set_sVirt(Name.." Command","Opened") end
        set_sVirt(Name.." Control",0)
    end

    -- Opened/Closed Control 
    checkToggle(Name.." Command","Closed","Opened")

    if Normally_Closed_Input == 1 then 
        if get_sVirt(Name.." Command") == "Closed" then 
            set_sVirt(Name.." Control",0)
        else
            set_sVirt(Name.." Control",1)
        end
    else
        if get_sVirt(Name.." Command") == "Opened" then 
            set_sVirt(Name.." Control",0)
        else
            set_sVirt(Name.." Control",1)
        end
    end

    local Digital_Output = get_sVirt(Name.." Control",0)
    set_do_val(Output_Terminal,Output_Number,Digital_Output)
end

DigitalOutput_ON_OFF("Blowdown",1,6,0) -- Example "Blowdown" = NAME, 1 = Output Terminal, 6 = Output Number, 0 = Normally_Open
