function doPid(num,inp)
	local enabled = get_gbl("PID"..num.."Enable",0)
	if tonumber(enabled) < 1 then
	  return 0
	end
	local Kp = tonumber(get_gbl("PID"..num.."PFactor",0))
	local Ki = tonumber(get_gbl("PID"..num.."IFactor",0))
	local Kd = tonumber(get_gbl("PID"..num.."DFactor",0))
	local pidMax = tonumber(get_gbl("PID"..num.."Max",100))
	local pidMin = tonumber(get_gbl("PID"..num.."Min",0))
	local inputTerm = tonumber(get_gbl("PID"..num.."InTerm",0))
	local inputChan = tonumber(get_gbl("PID"..num.."InChan",0))
	local outputTerm = tonumber(get_gbl("PID"..num.."OutTerm",0))
	local outputChan = tonumber(get_gbl("PID"..num.."OutChan",0))
	local deadband = tonumber(get_gbl("PID"..num.."Deadband",0.2))
	local setpoint = tonumber(get_gbl("PID"..num.."Sp",0))
	local vSetpoint = get_sVirt("PID"..num.."Sp")
	local lastSetpoint = tonumber(get_sGbl("lastSetpoint"..num,0))
	if not tonumber(vSetpoint) then vSetpoint = setpoint end
	if vSetpoint ~= setpoint and setpoint == lastSetpoint then
	  setpoint = vSetpoint
	  set_gbl("PID"..num.."Sp",setpoint)
	end
	local actualTemp = inp or tonumber(get_channel_val(inputTerm,inputChan))
	local lastTemp = tonumber(get_sGbl("lastTemp"..num,0))
	local lastErr = tonumber(get_sGbl("lastErr"..num,0))
	local outputSum = tonumber(get_sGbl("outputSum"..num,0))
	local integral = tonumber(get_sGbl("integral"..num,0))
	local revact = tonumber(get_gbl("PID"..num.."RevAct",0))
	local override = tonumber(get_sGbl("PID"..num.."Override",-1))
	local setpointDiff = setpoint - lastSetpoint
	lastSetpoint = setpoint
	set_sGbl("lastSetpoint"..num,lastSetpoint)
	local err = setpoint - actualTemp
	local steadyState = 0
	if math.abs(err) <= deadband  then
	  steadyState = 1
	  err = 0
	else
	  steadyState = 0
	end
	local tempDiff = actualTemp - lastTemp
	local errDiff = err - lastErr
	if override > -1 then
	  err = 0
	  tempDiff = 0
	  errDiff = 0
	  integral = override
	end
	lastErr = err
	lastTemp = actualTemp
	set_sGbl("lastTemp"..num,lastTemp)
	set_sGbl("lastErr"..num,lastErr)
	local preInt = integral
	integral = integral + (Ki * err)
	if integral > 0 and integral + outputSum > 100 then
	  integral = 100 - outputSum
	  if integral < 0 then integral = 0 end
	end
	if integral < 0 and integral + outputSum < 0 then
	  integral = -1 * outputSum
	end
	if outputSum > 100 then outputSum = 100 end
	if outputSum < 0 then outputSum = 0 end
	local output = outputSum - Kd * errDiff + integral + (Kp * err)
  
	if steadyState > 0 then
	  outputSum = outputSum + integral
	  integral = 0
	end
  
	if override > -1 then
	  if revact > 0 then
		output = 100 - override
		outputSum = override
	  else
		output = override
		outputSum = 100 - override 
	  end
	  integral = 0
	end
	set_sGbl("outputSum"..num,outputSum)
	set_sGbl("integral"..num,integral)
	local actualOutput =  output
	if actualOutput >= 100 then actualOutput = 100 end
	if actualOutput < 0 then actualOutput =  0 end
	if revact < 1 then
	  actualOutput = 100 - actualOutput
	end
	if actualOutput > pidMax then actualOutput = pidMax end
	if actualOutput < pidMin then actualOutput = pidMin end
  
	if override > -1 then
	  actualOutput = override
	end
  
	local outputInt = math.floor(actualOutput)
	actualTemp = math.floor(actualTemp)
	set_sVirt("PID"..num.."Op",outputInt)
	set_sVirt("PID"..num.."Sp",setpoint)
	set_sVirt("PID"..num.."In",actualTemp)
	if not inp then
	  set_ao_val(outputTerm,outputChan,actualOutput)
	else
	  return actualOutput
	end
  end
