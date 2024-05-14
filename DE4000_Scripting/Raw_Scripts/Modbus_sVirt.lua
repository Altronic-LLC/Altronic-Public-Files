--[[ This code will take a register from and external device and bring it over into the master script to display on the dashboard or use further in
the code. For this to work you will need to have an external device setup, and the register that you want to pull from displayed on the dashboard 
somewhere, our system will only pull external data that is being called for from the dashboard, without this you will not get any data. Once you have 
the external device setup, and the register you want to call on the dashbaord, place the code called MODBUS SCRIPT in the modbus sripting section
and the MASTER script in the master section.

set_sVirt("_Andrew1",0) And underscore before the name sets this sVirt as private. only privates can be shared between the Master and Modbus
script.

local Input1 = tonumber(redis.call("hget","mod4","n12a1")) mod4 = 40,000 register list, n12 - NODE NUMBER, a1 = register number

Modbus_Oneshot - We use this so we don't need to write to the sVirt every scan, only when a change happens we will write to the sVirt, this will
help in not overloading the reddis server.

You will need both functions setModbusVirt and Modbus_Oneshot in the modbus script before the defaultModbus() Function

A private sVirt will not be seen on the dashboard edit, that is why we need to pull it into a local variable first then use that local 
variable to assign it to a sVirt that will be accessable on the dashboard.

]]





-- Master Script
local AndrewAnswer1 = tonumber(get_sVirt("_Andrew1",0)) 
set_sVirt("AndrewAnswer1",AndrewAnswer1)



-- Modbus Script
function setModbusVirt(param,val)         
    redis.call("append","gbl_str","v_"..param.."~"..val.."~")
end

function Modbus_Oneshot(Cmd,Name)
    local Input = Cmd
    if Input ~= Input_Last then
        Input_Last = Input
        setModbusVirt(Name,Input)
    end
end

defaultModbus()

local Input1 = tonumber(redis.call("hget","mod4","n12a1")) 
Modbus_Oneshot(Input1,"_Andrew1") 






