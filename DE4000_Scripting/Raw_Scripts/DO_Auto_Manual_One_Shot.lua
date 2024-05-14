----------------------------
-- Digital Output Function --
-- Name = Enter The Name Of The Output In Parenthesis 
-- Output_Terminal = Terminal Board Number For Digital Output
-- Output_Number = Output Number For The Digital Output
-- Normally_Closed = 0 = Normally Open, 1 = Normally Closed
-- Enable_Manual = If this is a 0 can not change to manual mode, if 1 then toggle button active
-- Input = Variable Name Used In Master Script Logic
----------------------------
function DigitalOutput_OneShot_AutoMan(Name,Output_Terminal,Output_Number,Normally_Closed,Enable_Manual,Input)
    local Name = Name
    if not get_sVirt("_"..Name.."_FS") then
        set_sVirt("_"..Name.."_FS",1)
        set_sVirt(Name.." Command","Opened")
        set_sVirt(Name.." Mode","Auto")
    end

    local Terminal = Output_Terminal
    local Output = Output_Number
    local DO_Cmd = Input
    local Normally_Closed_Input = Normally_Closed
    local Manual_Enabled = Enable_Manual
    
    -- Opened/Closed Control 
    checkToggle(Name.." Mode","Auto","Manual")
    checkToggle(Name.." Command","Closed","Opened")
    
    if Manual_Enabled == 0 then set_sVirt(Name.." Mode","Auto") end

    if get_sVirt(Name.." Mode","Manual") == "Manual" then 
        if Normally_Closed_Input == 1 then 
            if get_sVirt(Name.." Command") == "Closed" then 
                DO_Cmd = 0
            else
                DO_Cmd = 1
            end
        else
            if get_sVirt(Name.." Command") == "Opened" then 
                DO_Cmd = 0
            else
                DO_Cmd = 1
            end
        end
    else
        if DO_Cmd == 1 then
            if Normally_Closed_Input == 1 then
                set_sVirt(Name.." Command","Opened")
            else
                set_sVirt(Name.." Command","Closed")
            end
        else
            if Normally_Closed_Input == 1 then
                set_sVirt(Name.." Command","Closed")
            else
                set_sVirt(Name.." Command","Opened")
            end
        end
    end

    -- Opened/Closed Control 
    if DO_Cmd ~= get_sVirt("_"..Name.."_Cmd_Last") then 
        set_sVirt("_"..Name.."_Output",DO_Cmd)
        set_sVirt("_"..Name.."_Cmd_Last",DO_Cmd)
    end

    set_do_val(Output_Terminal,Output_Number,DO_Cmd)
end


DigitalOutput_OneShot_AutoMan("Blowdown",1,3,0,1,Blowdown_Output_Cmd) -- Example "Blowdown" = NAME  1 = Output Terminal, 3 = Output Number, 0 = Normally_Open, 1 = Manual Mode Change Enabled, Blowdown_Output_Cmd = Variable Name Used In Master Script Logic


if not FirstScan then
    FirstScan = 1
    set_sVirt("Blowdown_Output_Cmd",0)
end

Blowdown_Output_Cmd = get_sVirt("Blowdown_Output_Cmd",0)
