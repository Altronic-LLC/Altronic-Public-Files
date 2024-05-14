--[[ This code will take a master script variable and transfer it over to the modbus script and also put that variable into a DE-4000 register.
Place the code called MODBUS SCRIPT in the modbus sripting section and the MASTER script in the master scripting section.

local Combustion_Zone_Temp = get_sVirt("Temp1",0), this is getting a user entered value from the dashboard and putting into this local variable in the 
master script.

set_sVirt("_AndrewTemp",Combustion_Zone_Temp) And underscore before the name sets this sVirt as private. only private sVirt's can be shared between the 
Master and Modbus script. We are now setting the private sVirt with the value from the local variable Combustion_Zone_Temp.

local Input2 = tonumber(redis.call("hget","priv","_AndrewTemp")), This is taking the private sVirt set in the master and putting it into a 
variable in the modbus script to be used further in the code or transfer it into the DE-4000 register. the rdis call needs to have the private
sVirt name in the last part. This needs to match the same private sVirt set in the master script.

set_modbus(500,Input2,4,1), this puts the Combustion_Zone_Temp variable into a DE-4000 register, 500 = 40500 register.
Input2 = The value coming from the master script.
4 = The 40,000 register group
1 = Node number set in the DE-4000 system, network page.

A private sVirt will not be seen on the dashboard edit, that is why we need to pull it into a local variable first then use that local 
variable to assign it to a sVirt that will be accessable on the dashboard.

]]


-- Master Script
if not firstscan then
    firstscan = 1
    set_sVirt("Temp1",1)
end

local Combustion_Zone_Temp = get_sVirt("Temp1",0)

set_sVirt("Combustion_Zone_Avg_Temp",Combustion_Zone_Temp)
set_sVirt("_AndrewTemp",Combustion_Zone_Temp)


-- Modbus Script
defaultModbus()


local Input2 = tonumber(redis.call("hget","priv","_AndrewTemp"))
set_modbus(500,Input2,4,1)
