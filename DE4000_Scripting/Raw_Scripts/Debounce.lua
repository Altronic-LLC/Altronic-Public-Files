----------------------------
-- Debounce Input Timer --
----------------------------

if not firstcan then
	firstcan = 1
	set_sVirt("Channel",0)


end

function Debounce(Channel,On_Time,Off_Time,Var_Name)
	local On_Timer = Var_Name.."On"
	local Off_Timer = Var_Name.."Off"
	local Active_On,Remaining_On = get_timer(On_Timer)
	local Active_Off,Remaining_Off = get_timer(Off_Timer)
	if Channel == 0 then 
		set_timer(On_Timer,On_Time)
		if not get_timer(Off_Timer) then set_timer(Off_Timer,Off_Time) end
		if Remaining_Off == 0 then 
			set_sVirt(Var_Name,0)
		end
	elseif Channel == 1 then
		set_timer(Off_Timer,Off_Time)
		if not get_timer(On_Timer) then set_timer(On_Timer,On_Time) end
		if Remaining_On == 0 then 
			set_sVirt(Var_Name,1)
		end
	end
end



Debounce(get_sVirt("Channel"),10,10,"andrew_test")
local RRRRRR = get_sVirt("andrew_test")
set_sVirt("RRRRRR",RRRRRR)

Debounce(get_channel_val(3,29),2,2,"Start_Stop")
local StartStop = get_sVirt("Start_Stop")







