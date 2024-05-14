----------------------------
-- Momentary Button Function --
-- First Value "Name" Is String Name
-- Second value "Time", is time for output ON
-- Third Value "Terminal", is terminal board Number
-- Fourth Value "Output", Is the output number
-- Fifth Value, "Modbus_Name", needs to be the same name as in the modbus script functions
----------------------------
function MomentaryPB_Modbus(Name,Time,Terminal,Output,Modbus_Name)
    local Last_Reset = get_sGbl("last"..Modbus_Name,0)
    local Reset = get_sVirt("_"..Modbus_Name,0)
    set_sVirt("RESET "..Modbus_Name,Reset)
  
    if Reset == 1 and get_do_val(Terminal,Output) == 0 then
        set_sVirt(Name.." PB","On")
    end
  
    if not get_sVirt(Name.." PB") then
        set_sVirt(Name.." PB","Off")
    end
    
    local active,remaining = get_timer(Name.."TMR")
    checkToggle(Name.." PB","Off","On")
  
    if get_sVirt(Name.." PB") == "On" and get_do_val(Terminal,Output) == 1 then
        if remaining == 0 then 
            set_do_val(Terminal,Output,0)
            set_sVirt(Name.." PB","Off")
            Reset = 0
        end
    end
  
    if get_sVirt(Name.." PB") == "On" and get_do_val(Terminal,Output) == 0 then
        if not get_timer(Name.."TMR") then
            set_timer(Name.."TMR",Time)
            set_do_val(Terminal,Output,1)
            Reset = 1
        end
    end
    set_sVirt("_"..Modbus_Name,Reset)
end
  
  
MomentaryPB_Modbus("VFD Reset",2,1,2,"VFDResetMB") -- This example "VFD RESET" = First Value, 2 = Time, 1 = Terminal Board, 2 = Output #
MomentaryPB_Modbus("Reset 3",5,1,5,"Modbus_Reset_3") 
  
  


-- PUT IN MODBUS SCRIPT
-- The Modbus_Pushbutton function needs to go inside the modbusWrites() function. If one is already in the system you can't put it in again.
-- Example below uses 40799 as input modbus value, and 40801 as the output modbus value

function modbusWrites()
    function Modbus_PushButton(Modbus_Name,Number_In)
            wCmd[Number_In] = function()
                if modbusParams.value > 0 then
                    setModbusVirt("_"..Modbus_Name,1)
                else
                    setModbusVirt("_"..Modbus_Name,0)
                end
            end
    end
    Modbus_PushButton("VFDResetMB",799) -- 1st value = Name of the Modbus button this needs to match in all 3 places, 2nd value reading paramter from outside modbus
    Modbus_PushButton("Modbus_Reset_3",803)    
end




function Modbus_PushButton_Out(Modbus_Name,Number_Out)
    local Reset = tonumber(redis.call("hget","priv","_"..Modbus_Name))
    set_modbus(Number_Out,Reset,4,84)
end
Modbus_PushButton_Out("VFDResetMB",1) -- 1st value = Name of the Modbus button this needs to match in all 3 places, 2nd value to write to when pushbutton is energized.
Modbus_PushButton_Out("Modbus_Reset_3",5)

defaultModbus()






