----------------------------
-- Rev 1.0 - Initial Release
----------------------------

if not Rod_Load_FS then
  Rod_Load_FS = 1
  --Rod Load Timer
  create_param("Rod_Load_Timer_SP",30,"Rod Load Configuration","Enter The Delay Before Starting Rod Load Calculations In State 8")
 
  create_param("SL",6.5,"Rod Load Calc. Static Variables","Enter The Stroke Length (in.)")
  create_param("SG",0.5743,"Rod Load Calc. Static Variables","Enter The Gas SG")
  create_param("Zs",0.944,"Rod Load Calc. Static Variables","Enter The Compressor Suction")
  create_param("Zd",0.95,"Rod Load Calc. Static Variables","Enter The Compressor Discharge")
  create_param("psia",13.318,"Rod Load Calc. Static Variables","Enter The atmospheric pressure at elevation (psig)")
  create_param("Arod",4.9087,"Rod Load Calc. Static Variables","Enter The Area Of Rod (in^2)")
  create_param("RlcMax",60000,"Rod Load Calc. Static Variables","Enter The Max Rod Load Compresson (lbf.)")
  create_param("RltMax",57000,"Rod Load Calc. Static Variables","Enter The Max Rod Load Tension (lbf.)")
  create_param("RLttlMax",114000,"Rod Load Calc. Static Variables","Enter The Max Rod Load Total")
  
  --Stage 1 Rod Load Parameters
  create_param("Stg_1_Fault_Enable",1,"Rod Load Stg.1 Configuration","Enable/Disable Fault Shutdown, 1 = Enabled, 0 = Disabled")
  create_param("Stg_1_Suction_Prs_Board",1,"Rod Load Stg.1 Configuration","Enter The Terminal Board Number For Stg.1 Suction Pressure")
  create_param("Stg_1_Suction_Prs_Terminal",1,"Rod Load Stg.1 Configuration","Enter The Terminal Board Input Number For Stg.1 Suction Pressure")
  
  create_param("Stg_1_Discharge_Prs_Board",1,"Rod Load Stg.1 Configuration","Enter The Terminal Board Number For Stg.1 Discharge Pressure")
  create_param("Stg_1_Discharge_Prs_Terminal",6,"Rod Load Stg.1 Configuration","Enter The Terminal Board Input Number For Stg.1 Discharge Pressure")
  
  create_param("Stg_1_Suction_Temp_Board",1,"Rod Load Stg.1 Configuration","Enter The Terminal Board Number For Stg.1 Suction Temperature")
  create_param("Stg_1_Suction_Temp_Terminal",20,"Rod Load Stg.1 Configuration","Enter The Terminal Board Input Number For Stg.1 Suction Temperature")
  
  create_param("Stg_1_Discharge_Temp_Board",1,"Rod Load Stg.1 Configuration","Enter The Terminal Board Number For Stg.1 Discharge Temperature")
  create_param("Stg_1_Discharge_Temp_Terminal",25,"Rod Load Stg.1 Configuration","Enter The Terminal Board Input Number For Stg.1 Discharge Temperature")
  
  create_param("Stg_1_Db",9.625,"Rod Load Stg.1 Configuration","Enter The Diameter of Bore (in.)")
  create_param("Stg_1_Dr",2.5,"Rod Load Stg.1 Configuration","Enter The Diameter of Rod (in.)")

  create_param("Stg_1_Avc_Suc",8.6,"Rod Load Stg.1 Configuration","Enter The Equal Pass Area Suction (in^2)")
  create_param("Stg_1_Avc_Dis",9.149,"Rod Load Stg.1 Configuration","Enter The Equal Pass Area Discharge (in^2)")

  
   --Stage 2 Rod Load Parameters
  create_param("Stg_2_Fault_Enable",1,"Rod Load Stg.2 Configuration","Enable/Disable Fault Shutdown, 1 = Enabled, 0 = Disabled")
  create_param("Stg_2_Suction_Prs_Board",1,"Rod Load Stg.2 Configuration","Enter The Terminal Board Number For Stg.2 Suction Pressure")
  create_param("Stg_2_Suction_Prs_Terminal",2,"Rod Load Stg.2 Configuration","Enter The Terminal Board Input Number For Stg.2 Suction Pressure")
  
  create_param("Stg_2_Discharge_Prs_Board",1,"Rod Load Stg.2 Configuration","Enter The Terminal Board Number For Stg.2 Discharge Pressure")
  create_param("Stg_2_Discharge_Prs_Terminal",7,"Rod Load Stg.2 Configuration","Enter The Terminal Board Input Number For Stg.2 Discharge Pressure")
  
  create_param("Stg_2_Suction_Temp_Board",1,"Rod Load Stg.2 Configuration","Enter The Terminal Board Number For Stg.2 Suction Temperature")
  create_param("Stg_2_Suction_Temp_Terminal",21,"Rod Load Stg.2 Configuration","Enter The Terminal Board Input Number For Stg.2 Suction Temperature")
  
  create_param("Stg_2_Discharge_Temp_Board",1,"Rod Load Stg.2 Configuration","Enter The Terminal Board Number For Stg.2 Discharge Temperature")
  create_param("Stg_2_Discharge_Temp_Terminal",26,"Rod Load Stg.2 Configuration","Enter The Terminal Board Input Number For Stg.2 Discharge Temperature")
  
  create_param("Stg_2_Db",9.625,"Rod Load Stg.2 Configuration","Enter The Diameter of Bore (in.)")
  create_param("Stg_2_Dr",2.5,"Rod Load Stg.2 Configuration","Enter The Diameter of Rod (in.)")

  create_param("Stg_2_Avc_Suc",8.6,"Rod Load Stg.2 Configuration","Enter The Equal Pass Area Suction (in^2)")
  create_param("Stg_2_Avc_Dis",9.149,"Rod Load Stg.2 Configuration","Enter The Equal Pass Area Discharge (in^2)")

  
  
   --Stage 3 Rod Load Parameters
  create_param("Stg_3_Fault_Enable",1,"Rod Load Stg.3 Configuration","Enable/Disable Fault Shutdown, 1 = Enabled, 0 = Disabled")
  create_param("Stg_3_Suction_Prs_Board",1,"Rod Load Stg.3 Configuration","Enter The Terminal Board Number For Stg.3 Suction Pressure")
  create_param("Stg_3_Suction_Prs_Terminal",3,"Rod Load Stg.3 Configuration","Enter The Terminal Board Input Number For Stg.3 Suction Pressure")
  
  create_param("Stg_3_Discharge_Prs_Board",1,"Rod Load Stg.3 Configuration","Enter The Terminal Board Number For Stg.3 Discharge Pressure")
  create_param("Stg_3_Discharge_Prs_Terminal",8,"Rod Load Stg.3 Configuration","Enter The Terminal Board Input Number For Stg.3 Discharge Pressure")
  
  create_param("Stg_3_Suction_Temp_Board",1,"Rod Load Stg.3 Configuration","Enter The Terminal Board Number For Stg.3 Suction Temperature")
  create_param("Stg_3_Suction_Temp_Terminal",22,"Rod Load Stg.3 Configuration","Enter The Terminal Board Input Number For Stg.3 Suction Temperature")
  
  create_param("Stg_3_Discharge_Temp_Board",1,"Rod Load Stg.3 Configuration","Enter The Terminal Board Number For Stg.3 Discharge Temperature")
  create_param("Stg_3_Discharge_Temp_Terminal",27,"Rod Load Stg.3 Configuration","Enter The Terminal Board Input Number For Stg.3 Discharge Temperature")
  
  create_param("Stg_3_Db",9.625,"Rod Load Stg.3 Configuration","Enter The Diameter of Bore (in.)")
  create_param("Stg_3_Dr",2.5,"Rod Load Stg.3 Configuration","Enter The Diameter of Rod (in.)")

  create_param("Stg_3_Avc_Suc",8.6,"Rod Load Stg.3 Configuration","Enter The Equal Pass Area Suction (in^2)")
  create_param("Stg_3_Avc_Dis",9.149,"Rod Load Stg.3 Configuration","Enter The Equal Pass Area Discharge (in^2)")

  
      --Stage 4 Rod Load Parameters
   
  create_param("Stg_4_Fault_Enable",0,"Rod Load Stg.4 Configuration","Enable/Disable Fault Shutdown, 1 = Enabled, 0 = Disabled")
  create_param("Stg_4_Suction_Prs_Board",1,"Rod Load Stg.4 Configuration","Enter The Terminal Board Number For Stg.4 Suction Pressure")
  create_param("Stg_4_Suction_Prs_Terminal",4,"Rod Load Stg.4 Configuration","Enter The Terminal Board Input Number For Stg.4 Suction Pressure")
  
  create_param("Stg_4_Discharge_Prs_Board",1,"Rod Load Stg.4 Configuration","Enter The Terminal Board Number For Stg.4 Discharge Pressure")
  create_param("Stg_4_Discharge_Prs_Terminal",9,"Rod Load Stg.4 Configuration","Enter The Terminal Board Input Number For Stg.4 Discharge Pressure")
  
  create_param("Stg_4_Suction_Temp_Board",1,"Rod Load Stg.4 Configuration","Enter The Terminal Board Number For Stg.4 Suction Temperature")
  create_param("Stg_4_Suction_Temp_Terminal",23,"Rod Load Stg.4 Configuration","Enter The Terminal Board Input Number For Stg.4 Suction Temperature")
  
  create_param("Stg_4_Discharge_Temp_Board",1,"Rod Load Stg.4 Configuration","Enter The Terminal Board Number For Stg.4 Discharge Temperature")
  create_param("Stg_4_Discharge_Temp_Terminal",28,"Rod Load Stg.4 Configuration","Enter The Terminal Board Input Number For Stg.4 Discharge Temperature")
  
  create_param("Stg_4_Db",9.625,"Rod Load Stg.4 Configuration","Enter The Diameter of Bore (in.)")
  create_param("Stg_4_Dr",2.5,"Rod Load Stg.4 Configuration","Enter The Diameter of Rod (in.)")

  create_param("Stg_4_Avc_Suc",8.6,"Rod Load Stg.4 Configuration","Enter The Equal Pass Area Suction (in^2)")
  create_param("Stg_4_Avc_Dis",9.149,"Rod Load Stg.4 Configuration","Enter The Equal Pass Area Discharge (in^2)")

  
      --Stage 5 Rod Load Parameters
  create_param("Stg_5_Fault_Enable",0,"Rod Load Stg.5 Configuration","Enable/Disable Fault Shutdown, 1 = Enabled, 0 = Disabled")
  create_param("Stg_5_Suction_Prs_Board",1,"Rod Load Stg.5 Configuration","Enter The Terminal Board Number For Stg.5 Suction Pressure")
  create_param("Stg_5_Suction_Prs_Terminal",5,"Rod Load Stg.5 Configuration","Enter The Terminal Board Input Number For Stg.5 Suction Pressure")
  
  create_param("Stg_5_Discharge_Prs_Board",1,"Rod Load Stg.5 Configuration","Enter The Terminal Board Number For Stg.5 Discharge Pressure")
  create_param("Stg_5_Discharge_Prs_Terminal",10,"Rod Load Stg.5 Configuration","Enter The Terminal Board Input Number For Stg.5 Discharge Pressure")
  
  create_param("Stg_5_Suction_Temp_Board",1,"Rod Load Stg.5 Configuration","Enter The Terminal Board Number For Stg.5 Suction Temperature")
  create_param("Stg_5_Suction_Temp_Terminal",24,"Rod Load Stg.5 Configuration","Enter The Terminal Board Input Number For Stg.5 Suction Temperature")
  
  create_param("Stg_5_Discharge_Temp_Board",1,"Rod Load Stg.5 Configuration","Enter The Terminal Board Number For Stg.5 Discharge Temperature")
  create_param("Stg_5_Discharge_Temp_Terminal",29,"Rod Load Stg.5 Configuration","Enter The Terminal Board Input Number For Stg.5 Discharge Temperature")
  
  create_param("Stg_5_Db",9.625,"Rod Load Stg.5 Configuration","Enter The Diameter of Bore (in.)")
  create_param("Stg_5_Dr",2.5,"Rod Load Stg.5 Configuration","Enter The Diameter of Rod (in.)")

  create_param("Stg_5_Avc_Suc",8.6,"Rod Load Stg.5 Configuration","Enter The Equal Pass Area Suction (in^2)")
  create_param("Stg_5_Avc_Dis",9.149,"Rod Load Stg.5 Configuration","Enter The Equal Pass Area Discharge (in^2)")

  
end


function Rodload(num)
	------ Variables ------
	local State = get_state()
	local Engine_RPM = get_rpm(1)
	local Db = get_param("Stg_"..num.."_Db",0)
	local Dr = get_param("Stg_"..num.."_Dr",0)
	local Suction_Prs = get_channel_val(get_param("Stg_"..num.."_Suction_Prs_Board",0),get_param("Stg_"..num.."_Suction_Prs_Terminal",0))
	local Discharge_Prs = get_channel_val(get_param("Stg_"..num.."_Discharge_Prs_Board",0),get_param("Stg_"..num.."_Discharge_Prs_Terminal",0))
	local Suction_Temp = get_channel_val(get_param("Stg_"..num.."_Suction_Temp_Board",0),get_param("Stg_"..num.."_Suction_Temp_Terminal",0))
	local Discharge_Temp = get_channel_val(get_param("Stg_"..num.."_Discharge_Temp_Board",0),get_param("Stg_"..num.."_Discharge_Temp_Terminal",0))
	local SL = get_param("SL",0)
	local Avc_Suc = get_param("Stg_"..num.."_Avc_Suc",0)
	local Avc_Dis = get_param("Stg_"..num.."_Avc_Dis",0)
	local SG = get_param("SG",0)
	local Zs = get_param("Zs",0)
	local Zd = get_param("Zd",0)
	local Patm = get_param("psia",0)
	local Arod = get_param("Arod",0)
	local RlcMax = get_param("RlcMax",0)
	local RltMax = get_param("RltMax",0)
	local RLttlMax = get_param("RLttlMax",0)	
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
		
	--Step 9
	-- PLs= (Ahe*2*SL/12*RPM/Avc Suc)^2/6550000*SG/Zs*520/(Ts+460)
	local PLs = (Ahe*2*SL/12*Engine_RPM/Avc_Suc)^2/6550000*SG/Zs*520/(Suction_Temp+460)
	set_sVirt("PLs_Stg."..num,"_"..(math.floor((PLs+0.0005) * 1000) )/1000) -- Four Decimal Places
		
	--Step 10
	-- PLd= (Ace*2*SL/12*RPM/Ave Dis)^2/4550000*SG/Zd*520/(Td+460)
	local PLd = (Ace*2*SL/12*Engine_RPM/Avc_Dis)^2/4550000*SG/Zd*520/(Discharge_Temp+460)
	set_sVirt("PLd_Stg."..num,"_"..(math.floor((PLd+0.00005) * 100) )/100) -- Four Decimal Places
		
	--Step 11
	--PsFlg = Patm+Ps
	local PsFlg = Patm + Suction_Prs
	set_sVirt("PsFlg_Stg."..num,"_"..(math.floor((PsFlg+0.000005) * 10000) )/10000) -- Four Decimal Places

	--Step 12
	--PdFlg = Patm+Ps
	local PdFlg = Patm + Discharge_Prs 
	set_sVirt("PdFlg_Stg."..num,"_"..(math.floor((PdFlg+0.000005) * 10000) )/10000) -- Four Decimal Places
		
	--Step 13
	--Psi = (PsFlg*(100-PLs)/100)
	local Psi = (PsFlg*(100-PLs)/100)
	set_sVirt("Psi_Stg."..num,"_"..(math.floor((Psi+0.000005) * 1000) )/1000) -- Four Decimal Places
		
	--Step 14
	--Pdi = (PdFlg*(100+PLd)/100)
	local Pdi = (PdFlg*(100+PLd)/100)
	set_sVirt("Pdi_Stg."..num,"_"..(math.floor((Pdi+0.000005) * 10000) )/10000) -- Four Decimal Places
		
	--Step 15
	--Rlc=(Ahe x Pdi) - (Ace x Psi) + (Arod x Patm)
	local Rlc = (Ahe * Pdi) - (Ace * Psi) + (Arod * Patm)
	set_sVirt("Rlc_Stg."..num,Rlc)
		
	--Step 16
	--Rlt= (Ace x Pdi) - (Ahe x Psi) + (Arod x Patm)
	local Rlt = (Ace * Pdi) - (Ahe * Psi) + (Arod * Patm)
	set_sVirt("Rlt_Stg."..num,Rlt)
		
	--Step 19
	--Rlc%= Rlc/RlcMax * 100
	local Rlc_Percent = Rlc/RlcMax * 100
	set_sVirt("Rlc_Percent_Stg."..num,"_"..(math.floor((Rlc_Percent+0.000005) * 10000) )/10000) -- Four Decimal Places

	--Step 20
	--Rlt%= Rlt/RltMax * 100
	local Rlt_Percent = Rlt/RltMax * 100
	set_sVirt("Rlt_Percent_Stg."..num,"_"..(math.floor((Rlt_Percent+0.000005) * 10000) )/10000) -- Four Decimal Places
		
	--Step 21
	--RLttl = Rlt + Rlc
	local RLttl = Rlt + Rlc
	set_sVirt("RLttl_Stg."..num,RLttl)

	--Step 23
	--RLttlpct= (RLttl/RLttlmax) * 100
	local RLttlpct = (RLttl/RLttlMax) * 100
	set_sVirt("RLttlpct_Stg."..num,"_"..(math.floor((RLttlpct+0.000005) * 10000) )/10000) -- Four Decimal Places


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
				customFault("Stg."..num.." 100 Percent Compr. Limit")  
			end
			-- 1st Stage Rod Load Tens. 100%,
			if Rlt_Percent >= 100 then 
				customFault("Stg."..num.." 100 Percent Tens. Limit")
			end
		end
	end
end


Rodload(1)
Rodload(2)
Rodload(3)
Rodload(4)
Rodload(5)
