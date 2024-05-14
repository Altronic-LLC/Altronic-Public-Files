

function Ext_Ret(Name,Extend_Time,Retract_Time,Enable)
    local Enable_Input = Enable
	local Extend_Timer = Name.."Extend"
	local Retract_Timer = Name.."Retract"
	local Active_Extend,Remaining_Extend = get_timer(Extend_Timer)
	local Active_Retract,Remaining_Retract = get_timer(Retract_Timer)
	if not Fs then 
        Fs = 1
   		set_sVirt("Name".."State",0)
        set_timer(Extend_Timer,Extend_Time)
        set_timer(Retract_Timer,Retract_Time)
 	end

    local State = get_sVirt("Name".."State",0)

    if Enable_Input == 1 then  
        if State == 0 then 
            set_timer(Retract_Timer,Retract_Time) 
            if Remaining_Extend == 0 then set_sVirt("Name".."State",2) end
            return "Extend"
        elseif State == 2 then 
            set_timer(Extend_Timer,Extend_Time) 
            if Remaining_Retract == 0 then set_sVirt("Name".."State",0) end
            return "Retract"
        end
    else
        set_timer(Retract_Timer,Retract_Time) 
        set_timer(Extend_Timer,Extend_Time) 
        return "Disable"
    end
end

-- This Section Is Only for Testing Purposes, DO NOT PUT IN REAL CODE
if not Andrew_FS then
    Andrew_FS = 1
    set_sVirt("Andrew Eanble",0)
end

local Andrew = get_sVirt("Andrew Eanble",0)

Andrew_Test = Ext_Ret("Testing",10,10,Andrew)
set_sVirt("Andrew_Test",Andrew_Test)


