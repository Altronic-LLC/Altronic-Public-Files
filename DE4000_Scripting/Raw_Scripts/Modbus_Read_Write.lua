----------------------------
-- Momentary Button Function --
-- First Value "Name" Is String Name
-- Second value "Modbus_Name", needs to be the same name as in the modbus script functions
----------------------------
function Modbus_Cmd(Modbus_Name)
    local Input = get_sVirt("_"..Modbus_Name,0)
  
    if Input == 1 then
        set_sVirt(Modbus_Name.." Modbus_Cmd",1)
    end

    if Input == 0 then
        set_sVirt(Modbus_Name.." Modbus_Cmd",0)
    end
end
  
  
Modbus_Cmd("Process_Ready") -- This example "Process_Ready" = First Value


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
    Modbus_PushButton("Process_Ready",799) -- 1st value = Name of the Modbus button this needs to match in all 3 places, 2nd value reading paramter from outside modbus
end



function Modbus_PushButton_Out(Modbus_Name,Number_Out)
    local Input = tonumber(redis.call("hget","priv","_"..Modbus_Name))
    set_modbus(Number_Out,Input,4,84)
end
Modbus_PushButton_Out("Process_Ready",1) -- 1st value = Name of the Modbus button this needs to match in all 3 places, 2nd value to write to when pushbutton is energized.

defaultModbus()






