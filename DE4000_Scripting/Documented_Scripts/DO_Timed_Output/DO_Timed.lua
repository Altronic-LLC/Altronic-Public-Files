----------------------------
-- Rev 1.0 - Initial Release
----------------------------
function DO_Timed_Output(Output_Terminal,Output_Number,Time,ON_Off_Config,Output_On_Cmd)
    
    local Name = tostring(Output_Terminal)..tostring(Output_Number)
    local Terminal = Output_Terminal
    local Output = Output_Number
    local Time = Time
    local Output_Cmd = Output_On_Cmd
    local active,remaining = get_timer(Name.."TMR")
	local Config = ON_Off_Config
    
	if Config == 0 then 
		if Output_Cmd == 0 then
			if remaining <= 0 then 
				set_do_val(Terminal,Output,0)
			end
		end

		if Output_Cmd == 1 then
			if not get_timer(Name.."TMR") then
				set_timer(Name.."TMR",Time)
				set_do_val(Terminal,Output,1)
			end
		end
	else
		if Output_Cmd == 1 then
			if remaining <= 0 then 
				set_do_val(Terminal,Output,1)
			end
		end

		if Output_Cmd == 0 then
			if not get_timer(Name.."TMR") then
				set_timer(Name.."TMR",Time)
				set_do_val(Terminal,Output,0)
			end
		end
	end
end


DO_Timed_Output(1,2,10,0,Output_1_Cmd) -- This example: 1 = Terminal_Board, 2 = Output_Number, 10 = Time (In Seconds), 0 = ON_Off_Config (Delay Timer Starts When Output Transitions From On To Off), Output_1_Cmd = Output_On_Cmd (Command to Turn output on from main code)
