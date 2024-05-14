----------------------------
-- Rev 1.0 - Initial Release
----------------------------

if not Rod_Load_FS then
	Rod_Load_FS = 1
	--Rod Load Timer
	create_param("Rod_Load_Timer_SP",30,"Rod Load Configuration","Enter The Delay Before Starting Rod Load Calculations In State 8")
	create_param("psia",13.318,"Rod Load Calc. Static Variables","Enter The atmospheric pressure at elevation (psig)")
	create_param("RlcMax",60000,"Rod Load Calc. Static Variables","Enter The Max Rod Load Compresson (lbf.)")
	create_param("RltMax",57000,"Rod Load Calc. Static Variables","Enter The Max Rod Load Tension (lbf.)")

	--Stage 1 Rod Load Parameters
	create_param("Stg_1_Fault_Enable",1,"Rod Load Stg.1 Configuration","Enable/Disable Fault Shutdown, 1 = Enabled, 0 = Disabled")

	create_param("Stg_1_Suction_Prs_Board",1,"Rod Load Stg.1 Configuration","Enter The Terminal Board Number For Stg.1 Suction Pressure")
	create_param("Stg_1_Suction_Prs_Terminal",1,"Rod Load Stg.1 Configuration","Enter The Terminal Board Input Number For Stg.1 Suction Pressure")
	
	create_param("Stg_1_Discharge_Prs_Board",1,"Rod Load Stg.1 Configuration","Enter The Terminal Board Number For Stg.1 Discharge Pressure")
	create_param("Stg_1_Discharge_Prs_Terminal",6,"Rod Load Stg.1 Configuration","Enter The Terminal Board Input Number For Stg.1 Discharge Pressure")
	
	create_param("Stg_1_Db",9.625,"Rod Load Stg.1 Configuration","Enter The Diameter of Bore (in.)")
	create_param("Stg_1_Dr",2.5,"Rod Load Stg.1 Configuration","Enter The Diameter of Rod (in.)")

		--Stage 2 Rod Load Parameters
	create_param("Stg_2_Fault_Enable",1,"Rod Load Stg.2 Configuration","Enable/Disable Fault Shutdown, 1 = Enabled, 0 = Disabled")

	create_param("Stg_2_Suction_Prs_Board",1,"Rod Load Stg.2 Configuration","Enter The Terminal Board Number For Stg.2 Suction Pressure")
	create_param("Stg_2_Suction_Prs_Terminal",2,"Rod Load Stg.2 Configuration","Enter The Terminal Board Input Number For Stg.2 Suction Pressure")
	
	create_param("Stg_2_Discharge_Prs_Board",1,"Rod Load Stg.2 Configuration","Enter The Terminal Board Number For Stg.2 Discharge Pressure")
	create_param("Stg_2_Discharge_Prs_Terminal",7,"Rod Load Stg.2 Configuration","Enter The Terminal Board Input Number For Stg.2 Discharge Pressure")
	
	create_param("Stg_2_Db",9.625,"Rod Load Stg.2 Configuration","Enter The Diameter of Bore (in.)")
	create_param("Stg_2_Dr",2.5,"Rod Load Stg.2 Configuration","Enter The Diameter of Rod (in.)")

		--Stage 3 Rod Load Parameters
	create_param("Stg_3_Fault_Enable",1,"Rod Load Stg.3 Configuration","Enable/Disable Fault Shutdown, 1 = Enabled, 0 = Disabled")

	create_param("Stg_3_Suction_Prs_Board",1,"Rod Load Stg.3 Configuration","Enter The Terminal Board Number For Stg.3 Suction Pressure")
	create_param("Stg_3_Suction_Prs_Terminal",3,"Rod Load Stg.3 Configuration","Enter The Terminal Board Input Number For Stg.3 Suction Pressure")
	
	create_param("Stg_3_Discharge_Prs_Board",1,"Rod Load Stg.3 Configuration","Enter The Terminal Board Number For Stg.3 Discharge Pressure")
	create_param("Stg_3_Discharge_Prs_Terminal",8,"Rod Load Stg.3 Configuration","Enter The Terminal Board Input Number For Stg.3 Discharge Pressure")
	
	create_param("Stg_3_Db",9.625,"Rod Load Stg.3 Configuration","Enter The Diameter of Bore (in.)")
	create_param("Stg_3_Dr",2.5,"Rod Load Stg.3 Configuration","Enter The Diameter of Rod (in.)")

		--Stage 4 Rod Load Parameters
	create_param("Stg_4_Fault_Enable",1,"Rod Load Stg.4 Configuration","Enable/Disable Fault Shutdown, 1 = Enabled, 0 = Disabled")

	create_param("Stg_4_Suction_Prs_Board",1,"Rod Load Stg.4 Configuration","Enter The Terminal Board Number For Stg.4 Suction Pressure")
	create_param("Stg_4_Suction_Prs_Terminal",4,"Rod Load Stg.4 Configuration","Enter The Terminal Board Input Number For Stg.4 Suction Pressure")
	
	create_param("Stg_4_Discharge_Prs_Board",1,"Rod Load Stg.4 Configuration","Enter The Terminal Board Number For Stg.4 Discharge Pressure")
	create_param("Stg_4_Discharge_Prs_Terminal",9,"Rod Load Stg.4 Configuration","Enter The Terminal Board Input Number For Stg.4 Discharge Pressure")
	
	create_param("Stg_4_Db",9.625,"Rod Load Stg.4 Configuration","Enter The Diameter of Bore (in.)")
	create_param("Stg_4_Dr",2.5,"Rod Load Stg.4 Configuration","Enter The Diameter of Rod (in.)")

		--Stage 5 Rod Load Parameters
	create_param("Stg_5_Fault_Enable",1,"Rod Load Stg.5 Configuration","Enable/Disable Fault Shutdown, 1 = Enabled, 0 = Disabled")

	create_param("Stg_5_Suction_Prs_Board",1,"Rod Load Stg.5 Configuration","Enter The Terminal Board Number For Stg.5 Suction Pressure")
	create_param("Stg_5_Suction_Prs_Terminal",5,"Rod Load Stg.5 Configuration","Enter The Terminal Board Input Number For Stg.5 Suction Pressure")
	
	create_param("Stg_5_Discharge_Prs_Board",1,"Rod Load Stg.5 Configuration","Enter The Terminal Board Number For Stg.5 Discharge Pressure")
	create_param("Stg_5_Discharge_Prs_Terminal",10,"Rod Load Stg.5 Configuration","Enter The Terminal Board Input Number For Stg.5 Discharge Pressure")
	
	create_param("Stg_5_Db",9.625,"Rod Load Stg.5 Configuration","Enter The Diameter of Bore (in.)")
	create_param("Stg_5_Dr",2.5,"Rod Load Stg.5 Configuration","Enter The Diameter of Rod (in.)")
	
  end
  
  
  function Rodload(num)
	  ------ Variables ------
	  local State = get_state()
	  local Db = get_param("Stg_"..num.."_Db",0)
	  local Dr = get_param("Stg_"..num.."_Dr",0)
	  local Suction_Prs = get_channel_val(get_param("Stg_"..num.."_Suction_Prs_Board"),get_param("Stg_"..num.."_Suction_Prs_Terminal"))
	  local Discharge_Prs = get_channel_val(get_param("Stg_"..num.."_Discharge_Prs_Board"),get_param("Stg_"..num.."_Discharge_Prs_Terminal"))
	  local Patm = get_param("psia",0)
	  local RlcMax = get_param("RlcMax",0)
	  local RltMax = get_param("RltMax",0)
	  local Rod_Load_Timer_SP = get_param("Rod_Load_Timer_SP",0)
	  local Rod_Load_Enable = get_param("Stg_"..num.."_Fault_Enable",0)
	  
	  ------ Forumulas / Calculations ------
		  --Step 1
	  --Ahe=Area HeadEnd (.25 * math.pi * Db^2)--
	  local Ahe = (.25 * math.pi * Db^2)
	  set_sVirt("Ahe_Stg."..num,"_"..(math.floor((Ahe+0.000005) * 10000) )/10000) -- Four Decimal Places
		  
	  --Ace= Area of CrankEnd (in^2)=	(.25*pi*Db^2) - (.25*pi*Dr^2)--
	  local Ace = Ahe - (.25 * math.pi * Dr^2)
	  set_sVirt("Ace_Stg."..num,"_"..(math.floor((Ace+0.000005) * 10000) )/10000) -- Four Decimal Places
		  
	  --Step 11
	  --PsFlg = Patm+Ps
	  local PsFlg = Patm + Suction_Prs
	  set_sVirt("PsFlg_Stg."..num,"_"..(math.floor((PsFlg+0.000005) * 10000) )/10000) -- Four Decimal Places
  
	  --Step 12
	  --PdFlg = Patm+Ps
	  local PdFlg = Patm + Discharge_Prs 
	  set_sVirt("PdFlg_Stg."..num,"_"..(math.floor((PdFlg+0.000005) * 10000) )/10000) -- Four Decimal Places

		  
	  --Step 15
	  --Rlc=(Ahe x Discharge_Prs) - (Ace x Suction_Prs) * 1.15
	  local Rlc = ((Ahe * Discharge_Prs) - (Ace * Suction_Prs)) * 1.15
	  set_sVirt("Rlc_Stg."..num,Rlc)
		  
	  --Step 16
	  --Rlt= (Ace x Discharge_Prs) - (Ahe x Suction_Prs) * 1.15
	  local Rlt = ((Ace * Discharge_Prs) - (Ahe * Suction_Prs)) * 1.15
	  set_sVirt("Rlt_Stg."..num,Rlt)
		  
	  --Step 19
	  --Rlc%= Rlc/RlcMax * 100
	  local Rlc_Percent = Rlc/RlcMax * 100
	  set_sVirt("Rlc_Percent_Stg."..num,"_"..(math.floor((Rlc_Percent+0.000005) * 10000) )/10000) -- Four Decimal Places
  
	  --Step 20
	  --Rlt%= Rlt/RltMax * 100
	  local Rlt_Percent = Rlt/RltMax * 100
	  set_sVirt("Rlt_Percent_Stg."..num,"_"..(math.floor((Rlt_Percent+0.000005) * 10000) )/10000) -- Four Decimal Places
		  
  
  --------- Rod Load Percent Calculations FAULTS------------
	  set_sVirt("Stg."..num.."Rod Load Alarm","None")
	  local active,remaining = get_timer("Stg."..num.."Rod_Load_Timer")
	  set_sVirt("Andrew Timer",remaining)
  
	  if State <= 7 then set_timer("Stg."..num.."Rod_Load_Timer",Rod_Load_Timer_SP) end
	  if State == 8 and remaining <= 0 then
		  -- 1st Stage Rod Load Compr. 95%, Perc. Max Rod Load Compr. => RlcPerc=Rlc/RlcMax--
		  if Rlc_Percent >= 95 then 
			  set_sVirt("Stg."..num.."Rod Load Alarm","Stg."..num.." 95% C") 
		  end
		  -- 1st Stage Rod Load Tens. 95%, Perc. Max Rod Load Tens. => RltPerc=Rlt/RltMax
		  if Rlt_Percent >= 95 then 
			  set_sVirt("Stg."..num.."Rod Load Alarm","Stg."..num.." 95% T") 
		  end 
		  if Rod_Load_Enable == 1 then
			  -- 1st Stage Rod Load Compr. 100%,
			  if Rlc_Percent >= 100 then 
				  customFault("Stg."..num.." 100 Rod Load Compr. Limit")  
			  end
			  -- 1st Stage Rod Load Tens. 100%,
			  if Rlt_Percent >= 100 then 
				  customFault("Stg."..num.." 100 Rod Load Tens. Limit")
			  end
		  end
	  end
  end
  
  
  Rodload(1)
  Rodload(2)
  Rodload(3)
  Rodload(4)
  Rodload(5)



