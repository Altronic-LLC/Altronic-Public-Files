-----------------------------
-- Actucom Control
-----------------------------
if not ActuCom_Fs then
    ActuCom_Fs = 1
    create_param("ActuCom_Enable",3,"ActuCom Control","Enter amount The State To Enable The Actucom")
    create_param("SpeedIncrement",50,"ActuCom Control","Enter amount of RPM to increse/decrease per button press")
	create_param("Raise_Time",10,"ActuCom Control","Enter ON time for ActuCom Raise in Seconds")
	create_param("Lower_Time",10,"ActuCom Control","Enter ON time for ActuCom Lower in Seconds")
	set_sVirt("ACOMRLBump",0)
end
    -- Variables
local ActuCom_Enable = get_param("ActuCom_Enable",0)

    -- ActuCom Enable Command
if ActuCom_Enable_Cmd ~= ActuCom_Enable_Cmd_Last then
    ActuCom_Enable_Output = ActuCom_Enable_Cmd
    ActuCom_Enable_Cmd_Last = ActuCom_Enable_Cmd
end
set_do_val(2,1,ActuCom_Enable_Cmd) 

if get_state() >= ActuCom_Enable then 
    ActuCom_Enable_Cmd = 1
else
    ActuCom_Enable_Cmd = 0
end

    -- ActuCom Raise Command
if ActuCom_Raise_Cmd ~= ActuCom_Raise_Cmd_Last then
    ActuCom_Raise_Output = ActuCom_Raise_Cmd
    ActuCom_Raise_Cmd_Last = ActuCom_Raise_Cmd
end
set_do_val(2,2,ActuCom_Raise_Cmd) 

    -- ActuCom Lower Command
if ActuCom_Lower_Cmd ~= ActuCom_Lower_Cmd_Last then
    ActuCom_Lower_Output = ActuCom_Lower_Cmd
    ActuCom_Lower_Cmd_Last = ActuCom_Lower_Cmd
end
set_do_val(2,3,ActuCom_Lower_Cmd) 


-- Manual Speed Control
checkToggle("SpeedControl","Auto","Manual")
local SpeedControl = get_sVirt("SpeedControl",0)

local dRPM = get_sVirt("Speed Target",0)
set_sVirt("Desired RPM",dRPM)

if get_sVirt("ManualSpeedBump",0) ~= 0 then
  local si = 25 -- Default SpeedIncrement if no parameter has been created
  local sip = get_param("SpeedIncrement",0)
  if sip ~= 0 then si = sip end
  local manSpeed = get_sVirt("ManualSpeed",0)
  manSpeed = manSpeed + (si * get_sVirt("ManualSpeedBump",0))
  set_sVirt("ManualSpeed",tostring(math.floor(manSpeed)))
  set_sVirt("ManualSpeedBump",0)
end


-- ActuCOM Auto / Manual Control	
if SpeedControl == "Auto" then
	ActuCom_Raise_Cmd = 1
	ActuCom_Lower_Cmd = 1
else  
	-- Lower
	if get_sVirt("ACOMRLBump",0) < 0 then
        if ActuCom_Raise_Cmd == 0 then 
            set_timer("Lower_ON", get_param("Lower_Time",0))
            ActuCom_Lower_Cmd = 1
        end
		set_sVirt("ACOMRLBump",0)
	end
	if not get_timer("Lower_ON") then
		ActuCom_Lower_Cmd = 0
	end
    
	-- Raise
	if get_sVirt("ACOMRLBump",0) > 0 then
        if ActuCom_Lower_Cmd == 0 then
            set_timer("Raise_ON", get_param("Raise_Time",0))
            ActuCom_Raise_Cmd = 1
        end
		set_sVirt("ACOMRLBump",0)
	end
	if not get_timer("Raise_ON") then
		ActuCom_Raise_Cmd = 0
	end
end
