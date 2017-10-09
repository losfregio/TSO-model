
$onecho > Inputs_text.txt

dset=y rng=Time!N20:N24 Rdim=1
dset=t rng=Elec_Demand!K5:K52 Rdim=1
dset=o rng=CHP_ORC_Specs!A176:A187 Rdim=1
dset=bat rng=Bat_Specs!A4:A7 Rdim=1
dset=pv rng=PV_Specs!A3:A6 Rdim=1
dset=d rng=Time!R4:R27 Rdim=1
dset=fc rng=FC_Specs!A3:A6 Rdim=1
par=building_ID rng=Selection!D6:D6 Rdim=0 Cdim=0
par=building_size rng=Selection!I12:I12 Rdim=0 Cdim=0
par=manual_select rng=Selection!D38:E49 Rdim=1
par=manual_select_2 rng=Selection!H38:I41 Rdim=1
par=manual_select_3 rng=Selection!K38:L41 Rdim=1
par=manual_select_4 rng=Selection!H44:I47 Rdim=1
par=manual_select_5 rng=Selection!L44 Rdim=0
par=demand_e rng=Elec_Demand!K4:AI52 Cdim=1 Rdim=1
par=demand_h rng=Gas_Demand!P4:AN52 Cdim=1 Rdim=1
par=demand_ref rng=Ref_Demand!K4:AI52 Cdim=1 Rdim=1
par=boiler_efficiency rng=Gas_Demand!K1 Rdim=0 Cdim=0
par=Emax rng=CHP_ORC_Specs!AY176:AZ187 Rdim=1
par=a rng=CHP_ORC_Specs!BJ176:BK187 Rdim=1
par=b rng=CHP_ORC_Specs!BL176:BM187 Rdim=1
par=p rng=CHP_ORC_Specs!BS176:BT187 Rdim=1
par=z rng=CHP_ORC_Specs!BU176:BV187 Rdim=1
par=q rng=CHP_ORC_Specs!CB176:CC187 Rdim=1
par=r rng=CHP_ORC_Specs!CD176:CE187 Rdim=1
par=Rmax rng=CHP_ORC_Specs!BC176:BD187 Rdim=1
par=Hmax rng=CHP_ORC_Specs!BA176:BB187 Rdim=1
par=e_cost rng=Bill_prices!D6:AC486 Cdim=1 Rdim=2
par=e_price rng=Export_prices!CM6:DL486 Cdim=1 Rdim=2
par=g_price rng=Parameters!D10:M11 Cdim=1
par=CHP_cap rng=CHP_ORC_Specs!A176:B187 Rdim=1
par=CHP_cap_ann rng=CHP_ORC_Specs!C176:D187 Rdim=1
par=CHP_m_ann rng=CHP_ORC_Specs!E176:F187 Rdim=1
par=Bat_cap rng=Bat_Specs!A4:B7 Rdim=1
par=Bat_cap_ann rng=Bat_Specs!O4:P7 Rdim=1
par=Bat_RTE rng=Bat_Specs!C4:D7 Rdim=1
par=Bat_rep_ann rng=Bat_Specs!Q4:R7 Rdim=1
par=Bat_m_ann rng=Bat_Specs!K4:L7 Rdim=1
par=Bat_VolEnergyDens rng=Bat_Specs!M4:N7 Rdim=1
par=Bat_DOD rng=Bat_Specs!S4:T7 Rdim=1
par=Bat_ann_hidden_cost rng=Bat_Specs!B22 Rdim=0 Cdim=0
par=Bat_hidden_cost rng=Bat_Specs!B23 Rdim=0 Cdim=0
par=Bat_Available_SOC rng=Bat_Specs!R28:S31 Rdim=1
par=SOCprod rng=Bill_prices!AF6:BE486 Cdim=1 Rdim=2
par=SOCdemand rng=Bill_prices!CH6:DG486 Cdim=1 Rdim=2
par=FRtariff rng=Parameters!D46:M47 Cdim=1
par=FRavailable rng=Bat_Specs!B13 Rdim=0 Cdim=0
par=PVM rng=Time!N20:O24 Rdim=1
par=CRC rng=Parameters!D6:M7 Cdim=1
par=CFE rng=Parameters!D14:M15 Cdim=1
par=CFNG rng=Parameters!H36:H36 Rdim=0 Cdim=0
par=CFBM rng=Parameters!H37:H37 Rdim=0 Cdim=0
par=CFDiesel rng=Parameters!I38:I38 Rdim=0 Cdim=0
par=CCLp rng=Parameters!D23:M24 Cdim=1
par=CCLng rng=Parameters!D27:M28 Cdim=1
par=dt rng=Time!R4:S27 Rdim=1 Cdim=0
par=refbin rng=Ref_Demand!R59 Rdim=0 Cdim=0
par=ORC_size rng=CHP_ORC_Specs!CH176:CI187 Rdim=1
par=irradiance rng=Irradiance!L5:AJ53 Cdim=1 Rdim=1
par=FIT_agreed rng=Parameters!D34:D34 Rdim=0 Cdim=0
par=PV_nom_power rng=PV_Specs!A3:B6 Rdim=1
par=PV_eff rng=PV_Specs!C3:D6 Rdim=1
par=PV_cap rng=PV_Specs!E3:F6 Rdim=1
par=PV_cap_ann rng=PV_Specs!G3:H6 Rdim=1
par=PV_m_ann rng=PV_Specs!I3:J6 Rdim=1
par=PV_area rng=PV_Specs!K3:L6 Rdim=1
par=PV_deg rng=PV_Specs!E9:F13 Rdim=1
par=PV_inv rng=PV_Specs!C10:C10 Rdim=0 Cdim=0
par=PV_BOS rng=PV_Specs!C11:C11 Rdim=0 Cdim=0
par=PV_inv_ann rng=PV_Specs!C13:C13 Rdim=0 Cdim=0
par=PV_BOS_ann rng=PV_Specs!C14:C14 Rdim=0 Cdim=0
par=PV_aux_eff rng=PV_Specs!C12:C12 Rdim=0 Cdim=0
par=PV_losses rng=PV_Specs!C16:C16 Rdim=0 Cdim=0
par=Coverage rng=PV_Specs!C19:C19 Rdim=0 Cdim=0
par=Roof_weight rng=PV_Specs!C20:C20 Rdim=0 Cdim=0
par=PV_weight rng=PV_Specs!M3:N6 Rdim=1
par=ParasiticCHP rng=CHP_ORC_Specs!CY176:CZ186 Rdim=1
par=FC_el_eff rng=FC_Specs!A3:B6 Rdim=1
par=FC_th_eff rng=FC_Specs!C3:D6 Rdim=1
par=FC_cap rng=FC_Specs!E3:F6 Rdim=1
par=FC_cap_ann rng=FC_Specs!G3:H6 Rdim=1
par=FC_capacity_system_min rng=FC_Specs!I3:J6 Rdim=1
par=FC_m_ann rng=FC_Specs!K3:L6 Rdim=1
par=FC_module_size rng=FC_Specs!M3:N6 Rdim=1
par=FC_capacity_system_max rng=FC_Specs!I8:J11 Rdim=1
par=FC_PL_min rng=FC_Specs!B14 Rdim=0
par=FC_Parasitic rng=FC_Specs!B17 Rdim=0

par=DG_Power rng=DG_Specs!J14 Rdim=0
par=DG_diesel_consumption   rng=DG_Specs!J15 Rdim=0
par=DG_m_cost   rng=DG_Specs!J5 Rdim=0
par= DG_minimum_PL      rng=DG_Specs!L5 Rdim=0
par=Diesel_prices       rng=DG_Specs!I26:J30 Rdim=1
par= CIDGCap      rng=DG_Specs!J36 Rdim=0
par= DGCap       rng=DG_Specs!J17 Rdim=0
par= ADGcoef       rng=DG_Specs!J40 Rdim=0
par= BDGcoef       rng=DG_Specs!J39 Rdim=0

par=CHPgasforced rng=Gas_Demand!P81:AN129 Cdim=1 Rdim=1
par=CHPQIchoice  rng=Selection!E51 Rdim=0
par=CHPQIvalue  rng=Parameters!T16:AC17 Cdim=1     

$offecho

$call gdxxrw Inputs.xlsm SQ=N @Inputs_text.txt
