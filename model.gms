$gdxin Inputs.gdx

Sets
y(*)                             Years (5 values)
t(*)                             Half-hourly intervals over a day (48 values)
o(*)                             Technology option: CHP and CHP+ORC and CHP+CHILLER (12 possibilities and 4 for each)
bat(*)                           Technology option for Batteries (4 possibilities)
pv(*)                            Technology option for PV (4 possibilities)
d(*)                             Day-types (for each month and weekday or weekend) (24 values)
fc(*)                            Technology option for FC (4 possibilities);

$OnEps

$load y
$load t
$load o
$load bat
$load pv
$load d
$load fc

Parameters

************Building parameters************

building_ID                      ID Number of considered building
building_size                    Size in m² of considered building
demand_e(t,d)                    (kWe) Electricity Demand of the building for each half-hour of each day type
demand_h(t,d)                    (kWth) Heat Demand of the building for each half-hour of each day type
demand_ref(t,d)                  (kWe) Refrigeration Demand of the building for each half-hour of each day type
boiler_efficiency                Efficiency of auxiliary heat generation unit (boiler)

************Technology-related parameters - CHP & CHP+ORC & CHP+chiller ************

manual_select(o)                 Binary vector where CHP technologies that are put in the portfolio are chosen by the user
Emax(o)                          (kWe) Maximum electricity output capacity of CHP and CHP+ORC and CHP+CHILLER
Rmax(o)                          (kWc) Maximum refrigeration output for CHP and CHP+ORC and CHP+CHILLER  (zero except for absorption chillers)
Hmax(o)                          (kWth) Maximum heat output for CHP arrangement
a(o)                             Slope Fuel Consumption=f(PL - Par Load) for CHP and CHP+ORC and CHP+CHILLER
b(o)                             Intercept Fuel Consumption=f(PL) for CHP and CHP+ORC and CHP+CHILLER
p(o)                             Slope Electric Output=f(PL) for CHP and CHP+ORC and CHP+CHILLER
z(o)                             Intercept Electric Output=f(PL) for CHP and CHP+ORC and CHP+CHILLER
q(o)                             Slope Thermal Output=f(PL) for CHP and CHP+ORC and CHP+CHILLER
r(o)                             Intercept Thermal Output=f(PL) for CHP and CHP+ORC and CHP+CHILLER
refbin                           Binary parameter: 1 if refrigeration submetered demand exists and 0 otherwise
ORC_size(o)                      (kWe) Size of the ORC (if any or 0 otherwise) associated with the device in kWe
ParasiticCHP(o)                  (kWe) Parasitic load for the CHP

************Technology-related parameters - Batteries ************

manual_select_2(bat)             Binary vector where battery technologies that are put in the portfolio are chosen by the user
Bat_RTE(bat)                     Round Trip Efficiency (%) of battery technologies
Bat_VolEnergyDens(bat)           Volumetric Energy Density of battery technologies (kWh per m3)
Bat_DOD(bat)                     Maximum Depth of Discharge of battery technologies (%)
SOCprod(y,t,d)                   Matrix representing battery electricity supply (in percentage of SOC capacity) in FR+TOUBM operation for each half-hour t of day-type d of year y
SOCdemand(y,t,d)                 Matrix representing battery electricity demand (in percentage of SOC capacity) in FR+TOUBM operation for each half-hour t of day-type d of year y
FRavailable                      Averaged Availability factor for Frequency Response

************Technology-related parameters - PV ************

manual_select_3(pv)              Binary vector where PV technologies that are put in the portfolio are chosen by the user
irradiance(t,d)                  Irradiance (kWh per m²) for each half-hour of each day type
PV_nom_power(pv)                 (Wp) Nominal power of pv technology modules
PV_eff(pv)                       Electrical efficiency of pv technology modules (%)
PV_area(pv)                      Size of one panel of pv technologies (m²)
PV_deg(y)                        Degradation factor (same for all pv techno) in % per year
PV_aux_eff                       Auxiliary Electrical Equipment Efficiency and Power electronics (%)
PV_losses                        To incorporate variable losses (%)
PV_weight(pv)                    Module weight of pv technologies (kg)
Coverage                         Percentage (%) of the roof that can be covered by PV panels while leaving space for installation and maintenance and shadings etc
Roof_weight                      Weight that roof can withstand without causing damages (kg per m²)



************Technology-related parameters - Fuel Cells ************
manual_select_4(fc)               Binary vector where FC technologies that are put in the portfolio are chosen by the user
FC_el_eff(fc)                     electrical efficiency of Fuel Cell
FC_th_eff(fc)                     thermal efficiency of Fuel Cell
FC_cap(fc)                        capital cost of fuell cell per kWe
FC_cap_ann(fc)                    annualised capital cost of fuell cell per kWe
FC_capacity_system_min(fc)        min capacity kWe
FC_capacity_system_max(fc)            max capacity to bound model kWe
FC_m_ann(fc)
FC_module_size(fc)                     module capacity kWe
FC_PL_min                        FC minimum part load
FC_Parasitic

************Technology-related parameters - Diesel Generator ************
manual_select_5                   Binary vector where DG technologies that are put in the portfolio are chosen by the user
DG_Power                          kWe
DG_diesel_consumption             liters per hours
DG_m_cost                         manatainance cost in pounds per kWe
DG_minimum_PL                     minimum part load
Diesel_prices(y)                  Diesel Price
CFDiesel                          Carbon Factor Diesel
CIDGCap                            annualised capex
DGCap                              Capex
BDGcoef
ADGcoef

*************Economic parameters************

e_cost(y,t,d)                    Cost of importing electricity from grid at Half-hour t of Day-type d of Year y (p per kWh)
e_price(y,t,d)                   Cost of exporting electricity to grid at Half-hour t of Day-type d of Year y (p per kWh)
g_price(y)                       Price of gas at year y (p per kWh)
PVM(y)                           Present Value Multiplier (Discount Multiplier)
CRC(y)                           Carbon Reduction Commitment (£ per tCO2 eq for each year)

*************Economic parameters - CHP & CHP+ORC & CHP+chiller ************

CHP_cap(o)                       Capital expenditure of technology CHP and CHP+ORC and CHP+CHILLER (£)
CHP_cap_ann(o)                   Annualised capital cost of technology CHP and CHP+ORC and CHP+CHILLER (£ per annum)
CHP_m_ann(o)                     Yearly maintenance cost of technology CHP and CHP+ORC and CHP+CHILLER (£ per annum)
CHPQIchoice                       CHPQI constraint. 1 = yes 0 = no
CHPQIvalue(y)                     Threshold value for the CHPQI
*************Economic parameters - Batteries ************

Bat_cap(bat)                     Initial Energy Capacity Cost of technology batteries (£ per kWh)
Bat_cap_ann(bat)                 Annualised Energy Capacity cost of technology batteries (£ per kWh per annum)
Bat_rep_ann(bat)                 Annualised cost of replacing technology batteries in order to have a 15 years plant (£ per kW per annum)
Bat_m_ann(bat)                   Yearly maintenance cost of technology batteries (£ per kW per annum)
FRtariff(y)                      Daily earnings (with aggregators cut) if FR is provided 48 out of 48 settlement periods during a day (£ per kW per day)
Bat_available_SOC(bat)           Available SOC of battery taking into account 10% max SOC and variable max DOD
Bat_hidden_cost
Bat_ann_hidden_cost
*************Economic parameters - PV ************

FIT_agreed                       Price of FiT contract agreed upon for the whole lifetime of project (£ per kWh)
PV_cap(pv)                       Capital investment associated with PV technologies (£ per Wp)
PV_cap_ann(pv)                   Annualised capacity cost associated with PV technologies (£ per Wp per year)
PV_m_ann(pv)                     Yearly maintenance cost of pv technologies (£ per Wp)
PV_inv                           Price of Inverter (£ per Wp)
PV_inv_ann                       Annualised capex of inverters (£ per Wp per year)
PV_BOS                           Balance of System costs (£ per Wp)
PV_BOS_ann                       Annualised BOS costs (£ per Wp per year)


*************Emissions parameters**********

CFE(y)                           Carbon Factor Grid Electricity at year y (kgCO2 per kWh)
CFNG                             Carbon Factor of Natural gas (kgCO2 per kWh)
CFBM                             Carbon Factor of Biomethane (gCO2 per kWh)

************Other parameters******************

dt(d)                            Number of days of each day type based on 2016 calendar

$OnEps

$load building_ID building_size demand_e demand_h demand_ref boiler_efficiency
$load manual_select Emax Rmax Hmax a b p z q r refbin ORC_size ParasiticCHP
$load manual_select_2 Bat_RTE Bat_VolEnergyDens Bat_DOD SOCprod SOCdemand FRavailable
$load manual_select_3 irradiance PV_nom_power PV_eff PV_area PV_deg PV_aux_eff PV_losses PV_weight Coverage Roof_weight
$load e_cost e_price g_price PVM CRC
$load CHP_cap CHP_cap_ann CHP_m_ann CHPQIchoice CHPQIvalue
$load CFE CFNG  CFBM
$load Bat_cap Bat_cap_ann Bat_rep_ann Bat_m_ann FRtariff Bat_available_SOC   Bat_hidden_cost Bat_ann_hidden_cost
$load FIT_agreed PV_cap PV_cap_ann PV_m_ann PV_inv PV_inv_ann PV_BOS PV_BOS_ann
$load  FC_el_eff FC_th_eff FC_cap  FC_cap_ann FC_capacity_system_min FC_capacity_system_max manual_select_4 FC_m_ann FC_PL_min FC_Parasitic FC_module_size
$load  manual_select_5   DG_Power   DG_diesel_consumption  DG_m_cost   DG_minimum_PL Diesel_prices CFDiesel  CIDGCap DGCap  BDGcoef ADGcoef
$load dt
$gdxin


Parameters
COP                              Mean COP of Absorption chiller (heat to cooling) /0.55/
elCOP                            Mean COP of electric chiller (electricity to cooling) /1.72/
maxGHG                           Maximum GHG emissions (tCO2eq)- Not currently used in the model /100000000/
BatLimit                         Maximum volume of battery system for depots (m3) /140/
wco                              Weighing factor for cost in dual optimization - Not currently used in the model
wca                              Weighing factor for carbon in dual optimization - Not currently used in the model
;


Binary variables

onoff(o,y,t,d)                   CHP and CHP+ORC and CHP+CHILLER technology o ON or OFF at Half-hour t of Day-type d of Year y
onoff2(fc,y,t,d)                  CHP and CHP+ORC and CHP
onoff_DG(y,t,d)                  Diesel Generator ON or OFF at Half-hour t of Day-type d of Year y
hasCHP(o)                        CHP and CHP+ORC and CHP+CHILLER technology selection
hasBat(bat)                      Battery technology selection
hasPV(pv)                        PV technology selection
hasFC(fc)                        FC technology selection
hasDG
FRchoice(d)                      Binary vector for Battery management: Frequency Response only
TOUchoice(d)                     Binary vector for Battery management: Time-of-Use Bill management and Frequency Response combined optimally

;

Positive variables
PL(o,y,t,d)                      Part load of technology o at Half-hour t of Day-type d of Year y
Import(y,t,d)                    (kWe) Electricity bought from the grid at Half-hour t of Day-type d of Year y
Export(y,t,d)                    (kWe) Electricity sold to the grid at Half-hour t of Day-type d of Year y
ExcessH(y,t,d)                   (kWth) Excess Heat at Half-hour t of Day-type d of Year y
ExcessH_y(y)                     (kWh) Yearly amount of excess heat in year y
Eproduced(y,t,d)                 (kWe) Net electricity produced on site by CHP and CHP+ORC and CHP+CHILLER at Half-hour t of Day-type d of Year y
TotalImport(y)                   (kWh) Total amount of electricity imported from grid in year y
TotalEGrossproduced(y)           (kWh) Total amount of gross electricity produced by CHP and CHP+ORC and CHP+CHILLER in year y
TotalEparasitic(y)               (kWh) Total amount of parasitic load consumed by CHP and CHP+ORC and CHP+CHILLERin year y
EGrossproduced(y,t,d)            (kWe) Gross electricity produced on site by CHP and CHP+ORC and CHP+CHILLER without substracting parasitic load (Eparasitic) at Half-hour t of Day-type d of Year y
Hproduced(y,t,d)                 (kWth) Heat produced on site by CHP and CHP+ORC and CHP+CHILLER at Half-hour t of Day-type d of Year y
Rproduced(y,t,d)                 (kWc) Cooling produced on site by CHP and CHP+ORC and CHP+CHILLER at Half-hour t of Day-type d of Year y
Rproduced_y(y)                   (kWh) Cooling produced by absorption chiller over each year y
AuxRproduced(y,t,d)              (kWc) Refrigeration produced on site by Electric Chiller at Half-hour t of Day-type d of Year y
AuxHproduced(y,t,d)              (kWth) Auxilliary heat production from boiler at Half-hour t of Day-type d of Year y
AuxRproduced_y(y)                (kWh) Auxiliary refrigeration production from Electric chiller each year
AuxHproduced_y(y)                (kWh) Auxiliary heat production from boiler each year
TotalImport(y)                   (kWh) Total amount of electricity imported from grid in year y
TotalExport(y)                   (kWh) Total amount of electricity exported to grid in year y
Guse(y,t,d)                      (kW) (TOTAL GAS USED) Biomethane used BOILER and CHP or CHP&ORC or CHP&Chiller at Half-hour t of Day-type d of Year y
CHPGuse(y,t,d)                   (kW) (CHP or CHP&ORC or CHP&CHILLER GAS USED) Biomethane used only from CHP or CHP&ORC or CHP&Chiller at Half-hour t of Day-type d of Year y
BoilerGuse(y,t,d)                (kW) (GAS BOILER) Biomethane used in BOILER at Half-hour t of Day-type d of Year y
TotalGuse(y)                     (kWh) Total biomethane (kwh) used in BOILER and CHP or CHP&ORC or CHP&Chiller for year y
TotalCHPGuse(y)                  (kWh) Total biomethane used in CHP or CHP&ORC or CHP&Chiller for year y
TotalBoilerGuse(y)               (kWh) Total biomethane used in BOILER for year y
GHG(y)                           (tons) Yearly GHG emissions in year y
select_CHP_cap_ann(y)            Annualised Capital Cost of selected CHP or CHP&ORC or CHP&CHILLER technology (£ per year)
select_CHP_m_ann(y)              Yearly maintenance cost of selected CHP or CHP&ORC or CHP&CHILLER technology (£ per year)
NPVCHPcap                        5 Year NPV Capital expenditure for overall CHP or CHP+ORC or CHP&CHILLER system
NPVCHPmain                       5 Year NPV Maintenance cost for overall CHP or CHP+ORC or CHP&CHILLER system
operHtotal                       Total Hours of CHP or CHP&ORC or CHP&CHILLER operation
CHPpower(y,t,d)                  (kWe) Power produced by CHP or CHP&ORC or CHP&CHILLER at Half-hour t of Day-type d of Year y
CHPheat(y,t,d)                   (kWth) Heat produced by CHP or CHP&ORC or CHP&CHILLER at Half-hour t of Day-type d of Year y
CHPpower_y(y)                    (kWe) Annual power produced by CHP or CHP&ORC or CHP&CHILLER at year y
CHPheat_y(y)                     (kWth) Annual heat produced by CHP or CHP&ORC or CHP&CHILLER at year y
CHPGuse_y(y)                     (kWh) Total biomethane used in CHP or CHP&ORC or CHP&Chiller for year y
BatEnergySystem(bat)             (kWh) Energy Capacity of the battery system
BatPowerSystem(bat)              (kW) Power Capacity of the battery system
Edemand_Bat(bat,y,t,d)           (kWh) Battery Demand (or electricity import or charge) for FR+TOUBM days at Half-hour t of Day-type d of Year y
Edemand_Bat_y(y)                 (kWh) Yearly charge of the battery system
Eproduced_Bat(bat,y,t,d)         (kWh) Battery Supply (or electricity export or discharge) for FR+TOUBM days at Half-hour t of Day-type d of Year y
Eproduced_Bat_y(y)               (kWh) Yearly discharge of the battery system
EarningsFR_FR(d,y)               Part of the Frequency Response earnings associated with days FR only (£ per day-type)
EarningsFR_TOU(d,y)              Part of the Frequency Response earnings associated with days FR + TOUBM (£ per day-type)
EarningsFR(d,y)                  Daily Earnings from FR provision (both for FR only and FR+TOUBM days) (£ per day-type)
CIBatCap                         initial Capital Investment for the battery system chosen (£)
Bat_cap_tot(y)                   Annualised capital expenditure for the battery system (£ per annum)
NPVBatCap                        5 Year NPV Capital expenditure for battery system (£)
Bat_m(y)                         Annualised maintenance cost for the battery system (£ per annum)
NPVBatm                          5 Year NPV Maintenance cost for the battery system (£)
CICHPcap                         initial Capital Investment for the CHP or CHP+ORC or CHP+CHILLER system chosen (£)
CI                               Total initial Capital Investment for the overall system chosen (£)
EarningsFR_FR_y(y)               Yearly earnings from FR during FR only days (£ per annum)
EarningsFR_TOU_y(y)              Yearly earnings from FR during FR+TOUBM days (£ per annum)
NPVEarningsFR                    5 Year NPV battery earnings associated with Frequency Response provision (£)
PVnumberpanels                   Number of photovoltaic panels of the optimised system
Eproduced_PV(pv,y,t,d)           (kWh) Electricity production from the optimised PV system
EarningsFIT(y,d)                 Earnings associated with the FiT from the PV electricity production (£ per day-type)
EarningsFIT_y(y)                 Earnings from PV FiT for each year (£ per annum)
NPVEarningsFIT                   5 Year NPV PV earnings associated with Feed-in-tariffs (£)
PVcapacitysystem(pv)             Capacity of the PV system (Wp)
CIPVcap                          initial Capital Investment for the PV system chosen (£)
PV_cap_tot(y)                    Annualised capital expenditure for the PV system (£ per annum)
NPVPVcap                         5 Year NPV Capital expenditure for the PV system (£)
PV_m(y)                          Annualised maintenance cost for the PV system (£ per annum)
NPVPVm                           5 Year NPV Maintenance cost for the PV system (£)
Eproduced_FC(fc,y,t,d)              (kWe) Fuel Cell electric power supply at Half-hour t of Day-type d of Year y
Hproduced_FC(fc,y,t,d)              (kWth) Fuel Cell thermal power supply at Half-hour t of Day-type d of Year y
Enetproduced_FC(fc,y,t,d)
GuseFC(fc,y,t,d)                  (kW) Fuel Consumption at Half-hour t of Day-type d of Year y
CIFCCap                           initial Capital Investment for the FC system chosen (£)
FC_cap_tot(y)                     Annualised capital expenditure for the FC system (£ per annum)
NPVFCcap                          5 Year NPV Capital expenditure for the FC system (£)
FC_capacity_system(fc)            capacity of the system kWe
mcostFC_y(y)
mcostFC_total
GuseFC_total(y)
Eproduced_FC_total(y)
Hproduced_FC_total(y)


Eproduced_DG(y,t,d)
 DieselUse(y,t,d)                Litres of Diesel consumed in half hour
DG_OpCost(y)
mcostDG_y(y)
mcostDG_total

demand_e_y(y)
demand_h_y(y)
demand_ref_y(y)
DieselUse_y(y)
Eproduced_DG_y(y)

TotalCHPQI_e(y)
TotalCHPQI_hdemand(y)
TotalCHPQI_boil(y)
TotalCHPQI_gas(y)
;


Variables

obj_mincost                      Objective Function minimise costs (£)
obj_minGHG                       Objective Function minimise GHG emissions - NOT USED YET
obj_dual                         Objective dual optimisation - NOT USED YET
opcost_t(y,t,d)                  Operating costs of buying electricity and gas minus earnings from exporting electricity at Half-hour t of Day-type d of Year y (£ per interval)
opcost_d(d,y)                    Operating costs of buying electricity and gas minus earnings from exporting electricity during Day-type d of Year y (£ per interval)
opcost_y(y)                      Yearly Operating costs of buying electricity and gas minus earnings from exporting electricity (£ per annum)
NPVopcost                        5 Year NPV Operating cost of buying electricity and gas minus earnings from exporting electricity (£)
totcost                          Total Cost of Overall project and covering demand for 5 year period (£)
carboncost_t(y,t,d)              Carbon cost at Half-hour t of Day-type d of Year y (£ per interval)
carboncost_y(y)                  Yearly carbon cost (£ per annum)
NPVcarboncost                    5 Year NPV of Total carbon costs (£)
Totalcarbon                      Total carbon emissions for 5 years period (tons)
Baselinecarbon                   Baseline carbon emissions (tons)
Import_cost_y(y)                 Total cost of importing electricity in year y (£ per annum)
Export_rev_y(y)                  Total revenue of exporting electricity in year y (£ per annum)
Guse_cost_y(y)                   Total cost of gas use in year y (£ per annum)
;


Equations
*********** Equations definition***************

*********** Optional Equations***************
Con_CHPQI(y)
Cal_TotalCHPQI_e(y)
Cal_TotalCHPQI_hdemand(y)
Cal_TotalCHPQI_boil(y)
Cal_TotalCHPQI_gas(y)

**********Objective functions****************

ObjFun_Mincost                   Objective function minimising cost for the 5 year period
ObjFun_MinGHG                    Objective function minimising GHG for the 5 year period
ObjFun_Mindual                   Dual objective optimisation

**********Main constraints (balance and restrictions) ******************

Con_Ebalance(y,t,d)              (kWe) Constraints the balance of electricity in the system
Con_Hbalance(y,t,d)              (kWth) Constraints the balance of heat in the system so that the heat demand is always fulfilled
Con_Refbalance(y,t,d)            (kWc) Constraints the balance of cooling in the system


Cal_demand_e_y(y)                 total el
Cal_demand_h_y(y)                 total h
Cal_demand_ref_y(y)               total ref


Con_0tech                        Constraint so no technology for CHP or CHP&ORC or CHP&chiller is chosen
Con_1tech                        Constraint so maximum one technology for CHP or CHP&ORC or CHP&chiller is chosen
Con_0bat                         Constraint so no technology for Battery is chosen
Con_1bat                         Constraint so maximum one technology for Battery is chosen
Con_0pv                          Constraint so no PV technology is chosen
Con_1pv                          Constraint so maximum one PV technology is chosen
Con_0fc                          Constraint so no FC technology is chosen
Con_0dg                           Constraint so no DG technology is chosen
Con_1fc                          Constraint so maximum one FC technology is chosen
Con_PLmax(o,y,t,d)               Constraint to ensure that CHP stays within limitations for each Half-hour t of Day-type d of year y
Con_PLmin(o,y,t,d)               Constraint to ensure that if CHP o is selected than it operates at minimum 60 percent of load
*modified
*Con_Guse_t(y,t,d)                Constraint the equality between total use of gas and use of CHP plus use of Boiler for each Datetime h of year y
*Con_Guse(y)                      Same Constraint as before but over a year y
*modified
Con_GHG_y(y)                     Constraint maximum of Greenhouse Gases emissions per year
Con_status1(o,y,t,d)             Constraint to ensure that each technology not selected is automatically switched off all the time
Con_status2(o,y,t,d)             Constraint to ensure that a technology that is switched off does not produce anything
Con_status3(o)                   Constraint so that a CHP (AND ORC OR AC) technology that was unticked by the user cannot be chosen
Con_status4(bat)                 Constraint so that a battery technology that was unticked by the user cannot be chosen
Con_status5(pv)                  Constraint so that a PV technology that was unticked by the user cannot be chosen
Con_status6(fc)                  Constraint so that a FC technology that was unticked by the user cannot be chosen
Con_status7(fc,y,t,d)
Con_status8(y,t,d)
Con_status9
Con_Batstatus(d)                 Constraint so battery has to choose between FR only or FR+TOUBM for each day type

*********CHP or CHP&ORC or CHP&ABO Operation's calculation************

Cal_Eproduced(y,t,d)             (kWe) Calculation of net electricity produced on site by CHP or CHP+ORC or CHP+CHILLER at Half-hour t of Day-type d of Year y
Cal_EGrossproduced(y,t,d)        (kWe) Calculation of gross electricity produced on site by CHP or CHP+ORC or CHP+CHILLER at Half-hour t of Day-type d of Year y
Cal_Hproduced(y,t,d)             (kWth) Calculation of heat produced on site at Half-hour t of Day-type d of Year y
Cal_Rproduced(y,t,d)             (kWc) Calculation of cooling produced on site by absorption chiller at Half-hour t of Day-type d of Year y
Cal_Rproduced_y(y)               (kWh) Calculation of cooling produced by absorption chiller for each year
Cal_ExcessH(y,t,d)               (kWth) Calculation of excess heat (difference between what is produced and what is consummed)in kW at Half-hour t of Day-type d of Year y
Cal_ExcessH_y(y)                 (kWh) Calculation of yearly excess heat (difference between what is produced and what is consummed) in kWh
Cal_Guse(y,t,d)                  (kW) Calculation of biomethane that is consummed by BOILER and CHP or CHP+ORC or CHP+CHILLER  at Half-hour t of Day-type d of Year y
Cal_BoilerGuse(y,t,d)            (kW) Calculation of biomethane that is consummed by BOILER only at Half-hour t of Day-type d of Year y
Cal_AuxRproduced_y(y)            (kWh) Calculates the yearly refrigeration produced by electric chiller (kWh)
Cal_AuxHproduced_y(y)            (kWh) Calculates the yearly heat produced by boiler (kWh)
Cal_TotalEGrossproduced(y)       (kWh) Calculation of total gross electricity produced on site by CHP or CHP+ORC or CHP+CHILLER in a Year
Cal_TotalEparasitic(y)           (kWh) Calculation of total parasitic electricity load on site by CHP or CHP+ORC or CHP+CHILLER in a Year

*********Costs' calculations*************

Cal_Impcost_y(y)                 Calculation of cost of importing electricity from grid
Cal_Expcost_y(y)                 Calculation of revenue of exporting electricity
Cal_Gusecost_y(y)                Calculation of gas use cost
Cal_opcost_t(y,t,d)              Calculation of operating cost to cover all demand (heat electricity and cooling) at Half-hour t of Day-type d of Year y
Cal_opcost_d(d,y)                Calculation of operating cost to cover all demand (heat electricity and cooling) during Day-type d of year y
Cal_opcost_y(y)                  Calculation of operating cost to cover demand for year y
Cal_opcost                       Calculation of 5 Year NPV operating costs to cover all demand (heat electricity and cooling)
Cal_operHtotal(y)                Calculation of total hours of CHP or CHP&ORC or CHP&CHILLER operation
Cal_capcost_y(y)                 Calculation of selected CHP or CHP&ORC or CHP&Chiller annualised capital cost in year y
Cal_capcost                      Calculation of 5 Year NPV CHP or CHP&ORC or CHP&Chiller annualised capital cost
Cal_mcost_y(y)                   Calculation of selected CHP or CHP&ORC or CHP&Chiller maintenance cost in year y
Cal_mcost                        Calculation of 5 Year NPV CHP or CHP&ORC or CHP&Chiller maintenance cost
Cal_totalcost                    Calculation of 5 year NPV TOTAL COST
Cal_carboncost_t(y,t,d)          Calculation of carbon cost for Half-hour t of Day-type d of Year y
Cal_carboncost_y(y)              Calculation of carbon cost for year y
Cal_carboncost                   Calculation of 5 Year NPV Carbon Costs
Cal_CICHPcap                     Calculation of initial Capital Expenditure for the CHP or CHP+ORC or CHP+CHILLER system
Cal_TotalCI                      Calculation of total initial Capital Expenditure for the overall system

***********Energy and Carbon calculations***************

Cal_CHPpower(y,t,d)              (kWe) Calculation of gross power production from CHP or CHP&ORC or CHP&Chiller at Half-hour t of Day-type d of Year y
Cal_CHPheat(y,t,d)               (kWth) Calculation of heat production from CHP or CHP&ORC or CHP&Chiller at Half-hour t of Day-type d of Year y
Cal_CHPpower_y(y)                (kWe) Calculation of gross power production from CHP or CHP&ORC or CHP&Chiller at year y
Cal_CHPheat_y(y)                 (kWth) Calculation of heat production from CHP or CHP&ORC or CHP&Chiller at year y
Cal_CHPGuse(y,t,d)               (kW) Calculation of gas use from CHP or CHP&ORC or CHP&Chiller at Half-hour t of Day-type d of Year y
Cal_CHPGuse_y(y)                 (kWth) Calculation of gas use only from CHP or CHP&ORC or CHP&Chiller during year y
Cal_ImportTot(y)                 (kWh) Calculation of total imported electricity for year y
Cal_ExportTot(y)                 (kWh) Calculation of total exported electricity for year y
Cal_GuseTot(y)                   (kWh) Calculation of total gas use for BOILER and CHP or CHP&ORC or CHP&Chiller for year y
Cal_NGuseTot(y)                  (kWh) Calculation of total gas use for BOILER for year y
Cal_CHPGuseTot(y)                (kWh) Calculation of biomethane used for CHP or CHP&ORC or CHP&Chiller for year y
Cal_GHG_y(y)                     Calculation of yearly GHG emissions (tons)
Cal_CarbonTot                    Calculation of total carbon (tons)
Cal_baselineCarb                 Calculation of baseline carbon (tons)

***********Battery Performance and Revenue calculations***************

Con_BatEnergySystem(bat)         Constraint on the energy capacity of the battery system to be able to provide enough energy during Triad Winter WD
Cal_BatPowerSystem(bat)          Calculation of Battery Power capacity from Battery Energy Capacity in order to last 3 settlement periods (90min)
Con_EdemandBat(bat,y,t,d)        Set of 4 Constraints to ensure the good calculation (linearised) of the battery demand only for FR+TOUBM days
Con2_EdemandBat(bat,y,t,d)
Con3_EdemandBat(bat,y,t,d)
Con4_EdemandBat(bat,y,t,d)
Cal_EdemandBat_y(y)              (kWh) calculation of battery charge for each year y
Con_EproducedBat(bat,y,t,d)      Set of 4 Constraints to ensure the linear calculation (linearised) of the battery production only for FR+TOUBM days
Con2_EproducedBat(bat,y,t,d)
Con3_EproducedBat(bat,y,t,d)
Con4_EproducedBat(bat,y,t,d)
Cal_EproducedBat_y(y)            (kWh) calculation of battery discharge for each year y
Con_EarningsFR_FR(d,y)           Set of 4 Constraints to ensure the linear calculation (linearised) of the battery FR earnings for FR only days
Con2_EarningsFR_FR(d,y)
Con3_EarningsFR_FR(d,y)
Con4_EarningsFR_FR(d,y)
Con_EarningsFR_TOU(d,y)          Set of 4 Constraints to ensure the linear calculation (linearised) of the battery FR earnings for FR+TOUBM days
Con2_EarningsFR_TOU(d,y)
Con3_EarningsFR_TOU(d,y)
Con4_EarningsFR_TOU(d,y)
Cal_EarningsFR(d,y)              Calculation of total Frequency Response earnings from battery operation
Cal_EarningsFR_FR_y(y)           Yearly earnings from FR during FR only days
Cal_EarningsFR_TOU_y(y)          Yearly earnings from FR during FR+TOU days
Cal_NPVEarningsFR                Calculation of 5 Year NPV from battery earnings associated with Frequency Response provision

***********Battery Costs calculations***************

Cal_CIBatCap                     Calculation of initial Capital Investment for the Battery system
Cal_BatCap(y)                    Calculation of the annualised capital cost for the overall battery system
Cal_NPVBatcap                    Calculation of 5-Year NPV for capital cost of battery system
Cal_Batm(y)                      Calculation of the annualised maintenance cost for the battery system
Cal_NPVBatm                      Calculation of 5-Year NPV for maintenance cost of battery system

***********PV calculations***************

Con_PVNumberPanels               Constraint on the maximum number of panels that are allowed on the roof in terms of size (60% of total roof size)
Con2_PVNumberPanels              Constraint on the maximum number of panels that are allowed on the roof in terms of weight
Con_EproducedPV(pv,y,t,d)        Set of 4 constraints to ensure the linear calculation of electricity produced by the solar system at any point in time (interval day year)
Con2_EproducedPV(pv,y,t,d)
Con3_EproducedPV(pv,y,t,d)
Con4_EproducedPV(pv,y,t,d)
Cal_EarningsFIT(y,d)             Calculate earnings from FiT related with the PV electricity production for each day type of each year
Cal_EarningsFIT_y(y)             Calculate earnings from FiT related with the PV electricity production for each year
Cal_NPVEarningsFIT               Calculation of 5-Year NPV for FiT related earnings from PV electricity production
Con_PVcapsystem(pv)              Set of 4 constraints to ensure the linear calculation of PV system capacity in Wp
Con2_PVcapsystem(pv)
Con3_PVcapsystem(pv)
Con4_PVcapsystem(pv)

***********PV costs calculations***************

Cal_CIPVCap                      Calculation of initial capital investment for the PV system
Cal_PVCap(y)                     Calculation of the annualised capital cost for the PV system
Cal_NPVPVcap                     Calculation of 5-Year NPV for capital cost of PV system
Cal_PVm(y)                       Calculation of the annualised maintenance cost for the PV system
Cal_NPVPVm                       Calculation of 5-Year NPV for maintenance cost of PV system



*********Fuel Cell operation&Cost calculation************
Cal_FC_Enetproduced(fc,y,t,d)
Cal_FC_Hproduced(fc,y,t,d)          (kWe) Calculation of net heat produced on site by Fuell Cell at Half-hour t of Day-type d of Year y
Con_FC_Eproduced(fc,y,t,d)          Constraint to ensure that Fuel cell part load is less than 1 for each Half-hour t of Day-type d of year y
Con3_FC_Eproduced(fc,y,t,d)
Con2_FC_Eproduced(fc,y,t,d)
Cal_CIFCCap                      Calculation of initial Capital Investment for the Fuel Cell
Cal_FCCap(y)                     Calculation of the annualised capital cost for the overall Fuel Cell system
Cal_NPVFCcap                     Calculation of 5-Year NPV for capital cost of Fuel Cell system
Cal_GuseFC(fc,y,t,d)               (kW) Calculation of biomethane that is consummed by Fuel Cell  at Half-hour t of Day-type d of Year y
Con_FC_capacity_system_max(fc)
Con_FC_capacity_system_min(fc)
Cal_mcostFC_y(y)
Cal_mcostFC_total
Cal_GuseFC_total(y)
Cal_Eproduced_FC_total(y)
Cal_Hproduced_FC_total(y)


*********Fuel Cell operation&Cost calculation************

Con_DG_Eproduced(y,t,d)
Con2_DG_Eproduced(y,t,d)
Cal_DieselUsed(y,t,d)
Cal_DG_operationalCost(y)
Cal_mcostDG_y(y)
Cal_mcostDG_total
Cal_DieselUsed_y(y)
Cal_Eproduced_DG_y(y)
;



*********Equations expressions***************************


*********** Optional Equations***************
*Con_CHPQI..               sum(y,sum(d,sum(t,Eproduced(y,t,d))*dt(d)))*238  + (sum(y,sum(d,sum(t,demand_h(t,d))*dt(d))) - sum(y,sum(d,sum(t,AuxHproduced(y,t,d))*dt(d))))*120 =L= 105*sum(y,sum(d,sum(t,CHPGuse(y,t,d) )*dt(d)));
Con_CHPQI(y)..               TotalCHPQI_e(y)*238  + (TotalCHPQI_hdemand(y) - TotalCHPQI_boil(y))*120 =G= CHPQIvalue(y)*TotalCHPQI_gas(y)-(1-CHPQIchoice)*10000000000;
Cal_TotalCHPQI_e(y)..            TotalCHPQI_e(y) =E= sum(d,sum(t,Eproduced(y,t,d))*dt(d));
Cal_TotalCHPQI_hdemand(y)..      TotalCHPQI_hdemand(y)=E= sum(d,sum(t,demand_h(t,d))*dt(d));
Cal_TotalCHPQI_boil(y)..          TotalCHPQI_boil(y)=E=    sum(d,sum(t,AuxHproduced(y,t,d))*dt(d));
Cal_TotalCHPQI_gas(y)..          TotalCHPQI_gas(y)=E=  sum(d,sum(t,CHPGuse(y,t,d) )*dt(d));

*********Objective Functions*****************

ObjFun_Mincost..                 obj_mincost=E=totcost;
ObjFun_MinGHG..                  obj_minGHG=E=Totalcarbon;
ObjFun_Mindual..                 obj_dual=E=wco*totcost+wca*Totalcarbon;

**********Main constraints (balance and restrictions) ******************

Con_Ebalance(y,t,d)..            demand_e(t,d)+AuxRproduced(y,t,d)/elCOP+sum((bat),Edemand_Bat(bat,y,t,d))*2=E=Import(y,t,d)-Export(y,t,d)+Eproduced(y,t,d)+sum((bat),Eproduced_Bat(bat,y,t,d))*2+sum((pv),Eproduced_PV(pv,y,t,d))*2+sum((fc),Enetproduced_FC(fc,y,t,d))+Eproduced_DG(y,t,d);
Con_Hbalance(y,t,d)..            demand_h(t,d)=L=sum((o),PL(o,y,t,d)*q(o)+r(o)*onoff(o,y,t,d))+AuxHproduced(y,t,d)+sum((fc),Hproduced_FC(fc,y,t,d));
Con_Refbalance(y,t,d)..          demand_ref(t,d)*elCOP=L=Rproduced(y,t,d)+AuxRproduced(y,t,d);

Cal_demand_e_y(y)..          demand_e_y(y)=E=sum(d,sum(t,demand_e(t,d))*dt(d))*0.5;
Cal_demand_h_y(y)..          demand_h_y(y)=E=sum(d,sum(t,demand_h(t,d))*dt(d))*0.5;
Cal_demand_ref_y(y)..        demand_ref_y(y)=E=sum(d,sum(t,demand_ref(t,d))*dt(d))*0.5;

Con_0tech..                      0=E=sum(o,hasCHP(o));
Con_1tech..                      1=G=sum(o,hasCHP(o));
Con_0bat..                       0=E=sum(bat,hasBat(bat));
Con_1bat..                       1=G=sum(bat,hasBat(bat));
Con_0pv..                        0=E=sum(pv,hasPV(pv));
Con_1pv..                        1=G=sum(pv,hasPV(pv));
Con_0fc..                        0=E=sum(fc,hasFC(fc));
Con_1fc..                        1=G=sum(fc,hasFC(fc));
Con_0dg..                        0=E=hasDG;
Con_PLmax(o,y,t,d)..             PL(o,y,t,d)=L=1;
Con_PLmin(o,y,t,d)..             PL(o,y,t,d)=G=0.6-((1-onoff(o,y,t,d))*100000000000);
*modified /over-constrained
*Con_Guse_t(y,t,d)..              CHPGuse(y,t,d)+BoilerGuse(y,t,d)=E=Guse(y,t,d);
*Con_Guse(y)..                    TotalCHPGuse(y)+TotalBoilerGuse(y)=E=TotalGuse(y);
*modified /over-constrained
Con_GHG_y(y)..                   GHG(y)=L=maxGHG;
Con_status1(o,y,t,d)..           onoff(o,y,t,d)=L=hasCHP(o);
Con_status2(o,y,t,d)..           PL(o,y,t,d)*Emax(o)=L=100000000000000*onoff(o,y,t,d);
Con_status3(o)..                 hasCHP(o)=L=manual_select(o);
Con_status4(bat)..               hasBat(bat)=L=manual_select_2(bat);
Con_status5(pv)..                hasPV(pv)=L=manual_select_3(pv);
Con_status6(fc)..                hasFC(fc)=L=manual_select_4(fc);
Con_status7(fc,y,t,d)..          onoff2(fc,y,t,d)=L=hasFC(fc);
Con_status8(y,t,d)..             onoff_DG(y,t,d)=L=hasDG;
Con_status9..                    hasDG=L=manual_select_5;
Con_Batstatus(d)..               1=E=FRchoice(d)+TOUchoice(d);

*********CHP or CHP&ORC or CHP&ABO Operation's calculation************


Cal_Eproduced(y,t,d)..           Eproduced(y,t,d)=E=EGrossproduced(y,t,d)-sum((o),ParasiticCHP(o)*onoff(o,y,t,d));
Cal_EGrossproduced(y,t,d)..      EGrossproduced(y,t,d)=E=sum((o),PL(o,y,t,d)*p(o)+z(o)*onoff(o,y,t,d));
Cal_Hproduced(y,t,d)..           Hproduced(y,t,d)=E=sum((o),PL(o,y,t,d)*q(o)+r(o)*onoff(o,y,t,d));
Cal_Rproduced(y,t,d)..           Rproduced(y,t,d)=E=sum((o),Rmax(o)*onoff(o,y,t,d))*refbin;
Cal_Rproduced_y(y)..             Rproduced_y(y)=E=sum(d,sum(t,Rproduced(y,t,d))*dt(d))*0.5;
Cal_ExcessH(y,t,d)..             ExcessH(y,t,d)=E=sum((o),PL(o,y,t,d)*q(o)+r(o)*onoff(o,y,t,d))+AuxHproduced(y,t,d)+sum((fc),Hproduced_FC(fc,y,t,d))-demand_h(t,d);
Cal_ExcessH_y(y)..               ExcessH_y(y)=E=sum(d,sum(t,ExcessH(y,t,d))*dt(d))*0.5;
*modified
Cal_Guse(y,t,d)..                Guse(y,t,d)=E=CHPGuse(y,t,d)+BoilerGuse(y,t,d)+sum((fc),GuseFC(fc,y,t,d));
*modified
Cal_BoilerGuse(y,t,d)..          BoilerGuse(y,t,d)=E=AuxHproduced(y,t,d)/boiler_efficiency;
Cal_AuxRproduced_y(y)..          AuxRproduced_y(y)=E=sum(d,sum(t,AuxRproduced(y,t,d))*dt(d))*0.5;
Cal_AuxHproduced_y(y)..          AuxHproduced_y(y)=E=sum(d,sum(t,AuxHproduced(y,t,d))*dt(d))*0.5;
Cal_TotalEparasitic(y)..         TotalEparasitic(y)=E=sum(d,sum(t,sum((o),ParasiticCHP(o)*onoff(o,y,t,d)))*dt(d))*0.5;
Cal_TotalEGrossproduced(y)..     TotalEGrossproduced(y)=E=sum(d,sum(t,EGrossproduced(y,t,d))*dt(d))*0.5;

*********Costs' calculations*************

Cal_Impcost_y(y)..               Import_cost_y(y)=E=sum((t,d),e_cost(y,t,d)*Import(y,t,d)*dt(d)*0.5/100);
Cal_Expcost_y(y)..               Export_rev_y(y)=E=sum((t,d),e_price(y,t,d)*Export(y,t,d)*dt(d)*0.5/100);
Cal_Gusecost_y(y)..              Guse_cost_y(y)=E=sum((t,d),Guse(y,t,d)*g_price(y)*dt(d)*0.5/100);
Cal_opcost_t(y,t,d)..            opcost_t(y,t,d)=E=(e_cost(y,t,d)*Import(y,t,d)-e_price(y,t,d)*Export(y,t,d)+g_price(y)*Guse(y,t,d))*0.5/100   +  DieselUse(y,t,d)*Diesel_prices(y) ;
Cal_opcost_d(d,y)..              opcost_d(d,y)=E=sum(t,opcost_t(y,t,d));
Cal_opcost_y(y)..                opcost_y(y)=E=sum(d,opcost_d(d,y)*dt(d));
Cal_opcost..                     NPVopcost=E=sum(y,opcost_y(y)*PVM(y));
Cal_operHtotal(y)..              operHtotal(y)=E=sum((o,t,d),onoff(o,y,t,d)*dt(d)*0.5);
Cal_capcost_y(y)..               select_CHP_cap_ann(y)=E=sum(o,hasCHP(o)*CHP_cap_ann(o));
Cal_capcost..                    NPVCHPcap=E=sum(y,select_CHP_cap_ann(y)*PVM(y));
Cal_mcost_y(y)..                 select_CHP_m_ann(y)=E=sum(o,hasCHP(o)*CHP_m_ann(o));
Cal_mcost..                      NPVCHPmain=E=sum(y,select_CHP_m_ann(y)*PVM(y));
Cal_totalcost..                  totcost=E=NPVopcost+NPVCHPcap+NPVcarboncost+NPVCHPmain+NPVBatcap+NPVBatm-NPVEarningsFR-NPVEarningsFIT+NPVPVcap+NPVPVm+NPVFCcap+mcostFC_total+mcostDG_total+sum(y,DGCap*PVM(y))*hasDG;
Cal_carboncost_t(y,t,d)..        carboncost_t(y,t,d)=E=CRC(y)*(Import(y,t,d)*CFE(y)+Guse(y,t,d)*CFBM)*0.5/1000 +  CRC(y)*CFDiesel*DieselUse(y,t,d)/1000;
Cal_carboncost_y(y)..            carboncost_y(y)=E=sum(d,sum(t,carboncost_t(y,t,d))*dt(d));
Cal_carboncost..                 NPVcarboncost=E=sum(y,carboncost_y(y)*PVM(y));
Cal_CICHPcap..                   CICHPcap=E=sum((o),CHP_cap(o)*hasCHP(o));
Cal_TotalCI..                    CI=E=CICHPcap+CIBatCap+CIPVCap+CIFCCap+CIDGCap*hasDG;


***********Some Energy and Carbon calculations***************

Cal_CHPpower(y,t,d)..            CHPpower(y,t,d)=E=sum((o),PL(o,y,t,d)*p(o)+z(o)*onoff(o,y,t,d));
Cal_CHPheat(y,t,d)..             CHPheat(y,t,d)=E=sum((o),PL(o,y,t,d)*q(o)+r(o)*onoff(o,y,t,d));
Cal_CHPpower_y(y)..              CHPpower_y(y)=E=sum(d,sum(t,CHPpower(y,t,d))*dt(d));
Cal_CHPheat_y(y)..               CHPheat_y(y)=E=sum(d,sum(t,CHPheat(y,t,d))*dt(d));
Cal_CHPGuse(y,t,d)..             CHPGuse(y,t,d)=E=sum((o),PL(o,y,t,d)*a(o)+b(o)*onoff(o,y,t,d));
Cal_CHPGuse_y(y)..               CHPGuse_y(y)=E=sum((t,d),CHPGuse(y,t,d)*dt(d))*0.5;
Cal_ImportTot(y)..               TotalImport(y)=E=sum((t,d),Import(y,t,d)*dt(d))*0.5;
Cal_ExportTot(y)..               TotalExport(y)=E=sum((t,d),Export(y,t,d)*dt(d))*0.5;
Cal_GuseTot(y)..                 TotalGuse(y)=E=sum((t,d),Guse(y,t,d)*dt(d))*0.5;
Cal_NGuseTot(y)..                TotalBoilerGuse(y)=E=sum((t,d),BoilerGuse(y,t,d)*dt(d))*0.5;
Cal_CHPGuseTot(y)..              TotalCHPGuse(y)=E=sum((t,d),CHPGuse(y,t,d)*dt(d))*0.5;
Cal_GHG_y(y)..                   GHG(y)=E=(TotalImport(y)*CFE(y)+TotalGuse(y)*CFBM+ sum((t,d),CFDiesel*DieselUse(y,t,d)*dt(d)))/1000;
Cal_CarbonTot..                  Totalcarbon=E=sum(y,GHG(y));
Cal_baselineCarb..               Baselinecarbon=E=Totalcarbon;

***********Battery Performance and Revenue calculations***************


Con_BatEnergySystem(bat)..       BatEnergySystem(bat)=L=BatLimit*Bat_VolEnergyDens(bat)*hasBat(bat);
Cal_BatPowerSystem(bat)..        BatPowerSystem(bat)=E=BatEnergySystem(bat)/1.5;
Con_EdemandBat(bat,y,t,d)..      Edemand_Bat(bat,y,t,d)=L=10000000*TOUchoice(d);
Con2_EdemandBat(bat,y,t,d)..     Edemand_Bat(bat,y,t,d)=L=SOCdemand(y,t,d)*BatEnergySystem(bat)*Bat_available_SOC(bat);
Con3_EdemandBat(bat,y,t,d)..     Edemand_Bat(bat,y,t,d)=G=SOCdemand(y,t,d)*BatEnergySystem(bat)*Bat_available_SOC(bat)-(1-TOUchoice(d))*10000000;
Con4_EdemandBat(bat,y,t,d)..     Edemand_Bat(bat,y,t,d)=G=0;
Cal_EdemandBat_y(y)..            Edemand_Bat_y(y)=E=sum(d,sum(t,(sum(bat,Edemand_Bat(bat,y,t,d))))*dt(d));
Con_EproducedBat(bat,y,t,d)..    Eproduced_Bat(bat,y,t,d)=L=10000000*TOUchoice(d);
Con2_EproducedBat(bat,y,t,d)..   Eproduced_Bat(bat,y,t,d)=L=SOCprod(y,t,d)*BatEnergySystem(bat)*Bat_available_SOC(bat)*Bat_RTE(bat);
Con3_EproducedBat(bat,y,t,d)..   Eproduced_Bat(bat,y,t,d)=G=SOCprod(y,t,d)*BatEnergySystem(bat)*Bat_available_SOC(bat)*Bat_RTE(bat)-(1-TOUchoice(d))*10000000;
Con4_EproducedBat(bat,y,t,d)..   Eproduced_Bat(bat,y,t,d)=G=0;
Cal_EproducedBat_y(y)..          Eproduced_Bat_y(y)=E=sum(d,sum(t,(sum(bat,Eproduced_Bat(bat,y,t,d))))*dt(d));
Con_EarningsFR_FR(d,y)..         EarningsFR_FR(d,y)=L=10000000*FRchoice(d);
Con2_EarningsFR_FR(d,y)..        EarningsFR_FR(d,y)=L=FRtariff(y)*48/48*sum(bat,BatPowerSystem(bat))*FRavailable;
Con3_EarningsFR_FR(d,y)..        EarningsFR_FR(d,y)=G=FRtariff(y)*48/48*sum(bat,BatPowerSystem(bat))*FRavailable-(1-FRchoice(d))*10000000;
Con4_EarningsFR_FR(d,y)..        EarningsFR_FR(d,y)=G=0;
Con_EarningsFR_TOU(d,y)..        EarningsFR_TOU(d,y)=L=10000000*TOUchoice(d);
Con2_EarningsFR_TOU(d,y)..       EarningsFR_TOU(d,y)=L=FRtariff(y)*43/48*sum(bat,BatPowerSystem(bat))*FRavailable;
Con3_EarningsFR_TOU(d,y)..       EarningsFR_TOU(d,y)=G=FRtariff(y)*43/48*sum(bat,BatPowerSystem(bat))*FRavailable-(1-TOUchoice(d))*10000000;
Con4_EarningsFR_TOU(d,y)..       EarningsFR_TOU(d,y)=G=0;
Cal_EarningsFR(d,y)..            EarningsFR(d,y)=E=EarningsFR_FR(d,y)+EarningsFR_TOU(d,y);
Cal_EarningsFR_FR_y(y)..         EarningsFR_FR_y(y)=E=sum(d,EarningsFR_FR(d,y)*dt(d));
Cal_EarningsFR_TOU_y(y)..        EarningsFR_TOU_y(y)=E=sum(d,EarningsFR_TOU(d,y)*dt(d));
Cal_NPVEarningsFR..              NPVEarningsFR=E=sum(y,PVM(y)*(EarningsFR_FR_y(y)+EarningsFR_TOU_y(y)));

***********Battery Costs calculations***************

Cal_CIBatCap..                   CIBatCap=E=sum(bat,Bat_cap(bat)*BatEnergySystem(bat))+sum((bat),Bat_hidden_cost*hasBat(bat));
Cal_BatCap(y)..                  Bat_cap_tot(y)=E=sum((bat),Bat_cap_ann(bat)*BatEnergySystem(bat))+sum((bat),Bat_ann_hidden_cost*hasBat(bat));
Cal_NPVBatcap..                  NPVBatcap=E=sum(y,Bat_cap_tot(y)*PVM(y));
Cal_Batm(y)..                    Bat_m(y)=E=sum(bat,Bat_m_ann(bat)*BatPowerSystem(bat)+Bat_rep_ann(bat)*BatEnergySystem(bat));
Cal_NPVBatm..                    NPVBatm=E=sum(y,Bat_m(y)*PVM(y));

***********PV calculations***************

Con_PVNumberPanels..             PVnumberpanels=L=building_size*Coverage*sum(pv,hasPV(pv)/PV_area(pv));
Con2_PVNumberPanels..            PVnumberpanels=L=building_size*Roof_weight*sum(pv,hasPV(pv)/PV_weight(pv));
Con_EproducedPV(pv,y,t,d)..      Eproduced_PV(pv,y,t,d)=L=1000000000*hasPV(pv);
Con2_EproducedPV(pv,y,t,d)..     Eproduced_PV(pv,y,t,d)=L=(1-PV_losses)*PV_area(pv)*PV_eff(pv)*PV_aux_eff*PV_deg(y)*irradiance(t,d)*PVnumberpanels;
Con3_EproducedPV(pv,y,t,d)..     Eproduced_PV(pv,y,t,d)=G=(1-PV_losses)*PV_area(pv)*PV_eff(pv)*PV_aux_eff*PV_deg(y)*irradiance(t,d)*PVnumberpanels-(1-hasPV(pv))*10000000;
Con4_EproducedPV(pv,y,t,d)..     Eproduced_PV(pv,y,t,d)=G=0;
Cal_EarningsFIT(y,d)..           EarningsFIT(y,d)=E=sum(t,sum((pv),Eproduced_PV(pv,y,t,d)))*FIT_agreed;
Cal_EarningsFIT_y(y)..           EarningsFIT_y(y)=E=sum(d,EarningsFIT(y,d)*dt(d));
Cal_NPVEarningsFIT..             NPVEarningsFIT=E=sum(y,PVM(y)*EarningsFIT_y(y));
Con_PVcapsystem(pv)..            PVcapacitysystem(pv)=L=1000000000*hasPV(pv);
Con2_PVcapsystem(pv)..           PVcapacitysystem(pv)=L=PV_nom_power(pv)*PVnumberpanels;
Con3_PVcapsystem(pv)..           PVcapacitysystem(pv)=G=PV_nom_power(pv)*PVnumberpanels-(1-hasPV(pv))*100000000;
Con4_PVcapsystem(pv)..           PVcapacitysystem(pv)=G=0;

***********PV costs calculations***************

Cal_CIPVCap..                    CIPVCap=E=sum(pv,(PV_cap(pv)+PV_inv+PV_BOS)*PVcapacitysystem(pv));
Cal_PVCap(y)..                   PV_cap_tot(y)=E=sum((pv),(PV_cap_ann(pv)+PV_inv_ann+PV_BOS_ann)*PVcapacitysystem(pv));
Cal_NPVPVcap..                   NPVPVcap=E=sum(y,PV_cap_tot(y)*PVM(y));
Cal_PVm(y)..                     PV_m(y)=E=sum(pv,PV_m_ann(pv)*PVcapacitysystem(pv));
Cal_NPVPVm..                     NPVPVm=E=sum(y,PV_m(y)*PVM(y));

***********Fuel Cell Battery and Revenue calculations***************


Cal_FC_Enetproduced(fc,y,t,d)..      Enetproduced_FC(fc,y,t,d)=E=Eproduced_FC(fc,y,t,d)*(1-FC_Parasitic);
Con_FC_Eproduced(fc,y,t,d)..         Eproduced_FC(fc,y,t,d)=L=FC_capacity_system(fc);
Con3_FC_Eproduced(fc,y,t,d)..        Eproduced_FC(fc,y,t,d)=L=1000000000*onoff2(fc,y,t,d);
Con2_FC_Eproduced(fc,y,t,d)..        Eproduced_FC(fc,y,t,d)=G=FC_capacity_system(fc)*FC_PL_min - 100000000*(1-onoff2(fc,y,t,d));
Cal_FC_Hproduced(fc,y,t,d)..         Hproduced_FC(fc,y,t,d)=E=Eproduced_FC(fc,y,t,d)/FC_el_eff(fc)*FC_th_eff(fc);
Cal_GuseFC(fc,y,t,d)..               GuseFC(fc,y,t,d)=E=Eproduced_FC(fc,y,t,d)/FC_el_eff(fc);
Cal_CIFCCap..                        CIFCCap=E=sum((fc),FC_cap(fc)*FC_capacity_system(fc));
Cal_FCCap(y)..                       FC_cap_tot(y)=E=sum((fc),FC_cap_ann(fc)*FC_capacity_system(fc));
Cal_NPVFCcap..                       NPVFCcap=E=sum(y,FC_cap_tot(y)*PVM(y));
Con_FC_capacity_system_max(fc)..     FC_capacity_system(fc)=L=FC_capacity_system_max(fc)*hasFC(fc);
Con_FC_capacity_system_min(fc)..     FC_capacity_system(fc)=G=FC_capacity_system_min(fc)*hasFC(fc);
Cal_mcostFC_y(y)..                   mcostFC_y(y)=E=sum((fc),FC_m_ann(fc)*FC_capacity_system(fc));
Cal_mcostFC_total..                  mcostFC_total=E=sum(y,mcostFC_y(y)*PVM(y));

Cal_GuseFC_total(y)..               GuseFC_total(y)=E=sum(d,sum(t,(sum(fc,GuseFC(fc,y,t,d))))*dt(d))*0.5;
Cal_Eproduced_FC_total(y)..         Eproduced_FC_total(y)=E=sum(d,sum(t,(sum(fc,Enetproduced_FC(fc,y,t,d))))*dt(d))*0.5;
Cal_Hproduced_FC_total(y)..         Hproduced_FC_total(y)=E=sum(d,sum(t,(sum(fc,Hproduced_FC(fc,y,t,d))))*dt(d))*0.5;



***********Diesel Generator Performance and Revenue calculations***************

Con_DG_Eproduced(y,t,d)..    Eproduced_DG(y,t,d)=L=DG_Power*onoff_DG(y,t,d);
Con2_DG_Eproduced(y,t,d)..   Eproduced_DG(y,t,d)=G=DG_minimum_PL*DG_Power*onoff_DG(y,t,d);

Cal_DieselUsed(y,t,d)..      DieselUse(y,t,d)=E=ADGcoef*DG_diesel_consumption*0.5*onoff_DG(y,t,d) + BDGcoef*(Eproduced_DG(y,t,d)/DG_Power)*DG_diesel_consumption*0.5;
Cal_DG_operationalCost(y)..  DG_OpCost(y)=E=sum(d,sum(t,DieselUse(y,t,d))*dt(d))*Diesel_prices(y);
Cal_mcostDG_y(y)..           mcostDG_y(y)=E=DG_m_cost*sum(d,sum(t,Eproduced_DG(y,t,d)*0.5)*dt(d));
Cal_mcostDG_total..          mcostDG_total=E=sum(y,mcostDG_y(y)*PVM(y));

Cal_DieselUsed_y(y)..      DieselUse_y(y)=E=sum(d,sum(t, DieselUse(y,t,d))*dt(d))*0.5;
Cal_Eproduced_DG_y(y)..    Eproduced_DG_y(y)=E=sum(d,sum(t, Eproduced_DG(y,t,d))*dt(d))*0.5;
;


Model Baseline /
         ObjFun_MinCost,
         Con_0tech,
         Con_0bat,
         Con_0pv,
Con_0dg,
Con_0fc,
         Con_status1,
         Con_status2,
         Con_status3,
         Con_status4,
         Con_status5,
Con_status6,
         Con_Batstatus,
         Con_PLmin,
         Con_PLmax,
         Con_PVNumberPanels,
         Con2_PVNumberPanels,
         Con_EproducedPV,
         Con2_EproducedPV,
         Con3_EproducedPV,
         Con4_EproducedPV,
         Cal_EarningsFIT,
         Cal_EarningsFIT_y,
         Cal_NPVEarningsFIT,
         Con_PVcapsystem,
         Con2_PVcapsystem,
         Con3_PVcapsystem,
         Con4_PVcapsystem,
         Cal_CIPVCap,
         Cal_PVCap,
         Cal_NPVPVcap,
         Cal_PVm,
         Cal_NPVPVm,
         Con_BatEnergySystem,
         Cal_BatPowerSystem,
         Con_EdemandBat,
         Con2_EdemandBat,
         Con3_EdemandBat,
         Con4_EdemandBat,
         Con_EproducedBat,
         Con2_EproducedBat,
         Con3_EproducedBat,
         Con4_EproducedBat,
         Con_EarningsFR_FR,
         Con2_EarningsFR_FR,
         Con3_EarningsFR_FR,
         Con4_EarningsFR_FR,
         Con_EarningsFR_TOU,
         Con2_EarningsFR_TOU,
         Con3_EarningsFR_TOU,
         Con4_EarningsFR_TOU,
         Cal_EarningsFR,
         Cal_EarningsFR_FR_y,
         Cal_EarningsFR_TOU_y,
         Cal_NPVEarningsFR,
         Cal_EdemandBat_y,
         Cal_EproducedBat_y,
         Cal_Eproduced,
         Cal_EGrossproduced,
         Cal_TotalEGrossproduced,
         Cal_TotalEparasitic,
         Cal_Hproduced,
         Cal_Rproduced,
         Cal_Rproduced_y,
         Cal_ExcessH,
         Cal_ExcessH_y,
         Con_Ebalance,
         Con_Hbalance,
         Con_Refbalance,
         Cal_Guse,
         Cal_BoilerGuse,
         Cal_AuxRproduced_y,
         Cal_AuxHproduced_y,
         Cal_CHPpower,
         Cal_CHPheat,
         Cal_CHPpower_y,
         Cal_CHPheat_y,
         Cal_CHPGuse,
         Cal_CHPGuse_y,
         Cal_Impcost_y,
         Cal_Expcost_y,
         Cal_Gusecost_y,
         Cal_opcost_t,
         Cal_opcost_d,
         Cal_opcost_y,
         Cal_opcost,
         Cal_operHtotal,
         Cal_capcost_y,
         Cal_capcost,
         Cal_mcost_y,
         Cal_mcost,
         Cal_ImportTot,
         Cal_ExportTot,
         Cal_NGuseTot,
         Cal_GuseTot,
*Con_Guse_t,
         Cal_CHPGuseTot,
*Con_Guse,
         Cal_GHG_y,
         Con_GHG_y,
         Cal_carboncost,
         Cal_carboncost_t,
         Cal_carboncost_y,
         Cal_CIBatCap,
         Cal_BatCap,
         Cal_NPVBatcap,
         Cal_Batm,
         Cal_NPVBatm,
         Cal_CICHPcap,
         Cal_TotalCI,
         Cal_totalcost,
         Cal_CarbonTot,
         Cal_baselineCarb,
Con_FC_Eproduced,
Cal_FC_Hproduced,
Cal_GuseFC,
Cal_CIFCCap,
Cal_FCCap,
Cal_NPVFCcap,
Con_FC_capacity_system_max,
Con_FC_capacity_system_min,
Con2_FC_Eproduced,
Con3_FC_Eproduced,
Con_status7,
Cal_mcostFC_y,
Cal_mcostFC_total,
Cal_GuseFC_total,
Cal_Eproduced_FC_total,
Cal_Hproduced_FC_total,
Cal_FC_Enetproduced,
Con_DG_Eproduced,
Con2_DG_Eproduced,
Cal_DieselUsed,
Con_status9,
Con_status8,
Cal_DG_operationalCost,
Cal_mcostDG_y,
Cal_mcostDG_total,
Cal_demand_e_y,
Cal_demand_h_y,
Cal_demand_ref_y,
Cal_DieselUsed_y,
Cal_Eproduced_DG_y/;

Model Cost /
         ObjFun_MinCost,
         Con_1tech,
         Con_1bat,
         Con_1pv,
Con_1fc,
         Con_status1,
         Con_status2,
         Con_status3,
         Con_status4,
         Con_status5,
Con_status6,
         Con_Batstatus,
         Con_PLmin,
         Con_PLmax,
         Con_PVNumberPanels,
         Con2_PVNumberPanels,
         Con_EproducedPV,
         Con2_EproducedPV,
         Con3_EproducedPV,
         Con4_EproducedPV,
         Cal_EarningsFIT,
         Cal_EarningsFIT_y,
         Cal_NPVEarningsFIT,
         Con_PVcapsystem,
         Con2_PVcapsystem,
         Con3_PVcapsystem,
         Con4_PVcapsystem,
         Cal_CIPVCap,
         Cal_PVCap,
         Cal_NPVPVcap,
         Cal_PVm,
         Cal_NPVPVm,
         Con_BatEnergySystem,
         Cal_BatPowerSystem,
         Con_EdemandBat,
         Con2_EdemandBat,
         Con3_EdemandBat,
         Con4_EdemandBat,
         Con_EproducedBat,
         Con2_EproducedBat,
         Con3_EproducedBat,
         Con4_EproducedBat,
         Con_EarningsFR_FR,
         Con2_EarningsFR_FR,
         Con3_EarningsFR_FR,
         Con4_EarningsFR_FR,
         Con_EarningsFR_TOU,
         Con2_EarningsFR_TOU,
         Con3_EarningsFR_TOU,
         Con4_EarningsFR_TOU,
         Cal_EarningsFR,
         Cal_EarningsFR_FR_y,
         Cal_EarningsFR_TOU_y,
         Cal_NPVEarningsFR,
         Cal_EdemandBat_y,
         Cal_EproducedBat_y,
         Cal_Eproduced,
         Cal_EGrossproduced,
         Cal_TotalEGrossproduced,
         Cal_TotalEparasitic,
         Cal_Hproduced,
         Cal_Rproduced,
         Cal_Rproduced_y,
         Cal_ExcessH,
         Cal_ExcessH_y,
         Con_Ebalance,
         Con_Hbalance,
         Con_Refbalance,
         Cal_Guse,
         Cal_BoilerGuse,
         Cal_AuxRproduced_y,
         Cal_AuxHproduced_y,
         Cal_CHPpower,
         Cal_CHPheat,
         Cal_CHPpower_y,
         Cal_CHPheat_y,
         Cal_CHPGuse,
         Cal_CHPGuse_y,
         Cal_Impcost_y,
         Cal_Expcost_y,
         Cal_Gusecost_y,
         Cal_opcost_t,
         Cal_opcost_d,
         Cal_opcost_y,
         Cal_opcost,
         Cal_operHtotal,
         Cal_capcost_y,
         Cal_capcost,
         Cal_mcost_y,
         Cal_mcost,
         Cal_ImportTot,
         Cal_ExportTot,
         Cal_NGuseTot,
         Cal_GuseTot,
*Con_Guse_t,
         Cal_CHPGuseTot,
*Con_Guse,
         Cal_GHG_y,
         Con_GHG_y,
         Cal_carboncost,
         Cal_carboncost_t,
         Cal_carboncost_y,
         Cal_CIBatCap,
         Cal_BatCap,
         Cal_NPVBatcap,
         Cal_Batm,
         Cal_NPVBatm,
         Cal_CICHPcap,
         Cal_TotalCI,
         Cal_totalcost,
         Cal_CarbonTot,
Con_FC_Eproduced,
Cal_FC_Hproduced,
Cal_GuseFC,
Cal_CIFCCap,
Cal_FCCap,
Cal_NPVFCcap,
Con_FC_capacity_system_max,
Con_FC_capacity_system_min,
Con2_FC_Eproduced,
Con3_FC_Eproduced,
Con_status7,
Cal_mcostFC_y,
Cal_mcostFC_total,
Cal_GuseFC_total,
Cal_Eproduced_FC_total,
Cal_Hproduced_FC_total,
Cal_FC_Enetproduced,
Con_DG_Eproduced,
Con2_DG_Eproduced,
Cal_DieselUsed,
Con_status9,
Con_status8,
Cal_DG_operationalCost,
Cal_mcostDG_y,
Cal_mcostDG_total,
Cal_demand_e_y,
Cal_demand_h_y,
Cal_demand_ref_y,
Cal_DieselUsed_y,
Cal_Eproduced_DG_y,
Con_CHPQI,
Cal_TotalCHPQI_e,
Cal_TotalCHPQI_hdemand,
Cal_TotalCHPQI_boil,
Cal_TotalCHPQI_gas

/;

$Ontext
Model Decarbonisation /
         ObjFun_MinGHG,
         Con_1tech,
         Con_1bat,
         Con_1pv,
         Con_status1,
         Con_status2,
         Con_status3,
         Con_status4,
         Con_status5,
         Con_Batstatus,
         Con_PLmin,
         Con_PLmax,
         Con_PVNumberPanels,
         Con2_PVNumberPanels,
         Con_EproducedPV,
         Con2_EproducedPV,
         Con3_EproducedPV,
         Con4_EproducedPV,
         Cal_EarningsFIT,
         Cal_EarningsFIT_y,
         Cal_NPVEarningsFIT,
         Con_PVcapsystem,
         Con2_PVcapsystem,
         Con3_PVcapsystem,
         Con4_PVcapsystem,
         Cal_CIPVCap,
         Cal_PVCap,
         Cal_NPVPVcap,
         Cal_PVm,
         Cal_NPVPVm,
         Con_BatEnergySystem,
         Cal_BatPowerSystem,
         Con_EdemandBat,
         Con2_EdemandBat,
         Con3_EdemandBat,
         Con4_EdemandBat,
         Con_EproducedBat,
         Con2_EproducedBat,
         Con3_EproducedBat,
         Con4_EproducedBat,
         Con_EarningsFR_FR,
         Con2_EarningsFR_FR,
         Con3_EarningsFR_FR,
         Con4_EarningsFR_FR,
         Con_EarningsFR_TOU,
         Con2_EarningsFR_TOU,
         Con3_EarningsFR_TOU,
         Con4_EarningsFR_TOU,
         Cal_EarningsFR,
         Cal_EarningsFR_FR_y,
         Cal_EarningsFR_TOU_y,
         Cal_NPVEarningsFR,
         Cal_EdemandBat_y,
         Cal_EproducedBat_y,
         Cal_Eproduced,
         Cal_Hproduced,
         Cal_Rproduced,
         Cal_Rproduced_y,
         Cal_ExcessH,
         Cal_ExcessH_y,
         Con_Ebalance,
         Con_Hbalance,
         Con_Refbalance,
         Cal_Guse,
         Cal_BoilerGuse,
         Cal_AuxRproduced_y,
         Cal_AuxHproduced_y,
         Cal_CHPpower,
         Cal_CHPheat,
         Cal_CHPpower_y,
         Cal_CHPheat_y,
         Cal_CHPGuse,
         Cal_CHPGuse_y,
         Cal_Impcost_y,
         Cal_Expcost_y,
         Cal_Gusecost_y,
         Cal_opcost_t,
         Cal_opcost_d,
         Cal_opcost_y,
         Cal_opcost,
         Cal_operHtotal,
         Cal_capcost_y,
         Cal_capcost,
         Cal_mcost_y,
         Cal_mcost,
         Cal_ImportTot,
         Cal_ExportTot,
         Cal_NGuseTot,
         Cal_GuseTot,
         Con_Guse_t,
         Cal_CHPGuseTot,
         Con_Guse,
         Cal_GHG_y,
         Con_GHG_y,
         Cal_carboncost,
         Cal_carboncost_t,
         Cal_carboncost_y,
         Cal_CIBatCap,
         Cal_BatCap,
         Cal_NPVBatcap,
         Cal_Batm,
         Cal_NPVBatm,
         Cal_CICHPcap,
         Cal_TotalCI,
         Cal_totalcost,
         Cal_CarbonTot/;
$Offtext



Option RESLIM=100000000

Option Optcr=0.01;
Option LP = Cplex;

Solve Baseline using mip minimizing obj_mincost;

execute_unload "baseline.gdx", Emax, Rmax, Hmax, PL, Import, Export, ExcessH, ExcessH_y, Eproduced, EGrossproduced, ParasiticCHP, TotalEGrossproduced, TotalEparasitic, Hproduced, Rproduced, Rproduced_y, AuxRproduced, AuxHproduced, TotalImport, TotalExport,
Guse, CHPGuse, BoilerGuse, AuxRproduced_y, AuxHproduced_y, TotalGuse, TotalCHPGuse, TotalBoilerGuse, GHG, select_CHP_cap_ann, select_CHP_m_ann, NPVCHPcap, NPVCHPmain, operHtotal,
CHPpower, CHPheat, CHPpower_y, CHPheat_y, CHPGuse_y,
BatEnergySystem, BatPowerSystem, Edemand_Bat, Edemand_Bat_y, Eproduced_Bat, Eproduced_Bat_y, EarningsFR_FR, EarningsFR_TOU, EarningsFR, CIBatCap, Bat_cap_tot, NPVBatcap, Bat_m, NPVBatm,
CICHPcap, CI, EarningsFR_FR_y, EarningsFR_TOU_y, NPVEarningsFR,
opcost_t, opcost_d, opcost_y, NPVopcost, totcost, carboncost_t, carboncost_y, NPVcarboncost, Totalcarbon, Baselinecarbon, Import_cost_y, Export_rev_y, Guse_cost_y,
building_ID, hasCHP, onoff, demand_e, demand_h, demand_ref, dt, e_cost, e_price, hasBat, SOCprod, SOCdemand, FRchoice, TOUchoice, ORC_size,
irradiance, hasPV, PVnumberpanels, Eproduced_PV, EarningsFIT, EarningsFIT_y, NPVEarningsFIT, PVcapacitysystem, CIPVCap, PV_cap_tot, NPVPVcap, PV_m, NPVPVm, Eproduced_FC, Hproduced_FC, GuseFC, CIFCCap, FC_cap_tot, NPVFCcap, FC_capacity_system,FC_cap, hasFC,onoff,mcostFC_y,
mcostFC_total, GuseFC_total, Eproduced_FC_total, Hproduced_FC_total, onoff_DG, Eproduced_DG, DieselUse,hasDG,DG_OpCost,DG_Power,mcostDG_y,mcostDG_total,FC_module_size, Enetproduced_FC, CIDGCap, demand_e_y, demand_h_y, demand_ref_y,DieselUse_y,Eproduced_DG_y     ;

Solve Cost using mip minimizing obj_mincost;

execute_unload "mincost.gdx", Emax, Rmax, Hmax, PL, Import, Export, ExcessH, ExcessH_y, Eproduced, EGrossproduced, ParasiticCHP, TotalEGrossproduced, TotalEparasitic, Hproduced, Rproduced, Rproduced_y, AuxRproduced, AuxHproduced, TotalImport, TotalExport,
Guse, CHPGuse, BoilerGuse, AuxRproduced_y, AuxHproduced_y, TotalGuse, TotalCHPGuse, TotalBoilerGuse, GHG, select_CHP_cap_ann, select_CHP_m_ann, NPVCHPcap, NPVCHPmain, operHtotal,
CHPpower, CHPheat, CHPpower_y, CHPheat_y, CHPGuse_y,
BatEnergySystem, BatPowerSystem, Edemand_Bat, Edemand_Bat_y, Eproduced_Bat, Eproduced_Bat_y, EarningsFR_FR, EarningsFR_TOU, EarningsFR, CIBatCap, Bat_cap_tot, NPVBatcap, Bat_m, NPVBatm,
CICHPcap, CI, EarningsFR_FR_y, EarningsFR_TOU_y, NPVEarningsFR,
opcost_t, opcost_d, opcost_y, NPVopcost, totcost, carboncost_t, carboncost_y, NPVcarboncost, Totalcarbon, Baselinecarbon, Import_cost_y, Export_rev_y, Guse_cost_y,
building_ID, hasCHP, onoff, demand_e, demand_h, demand_ref, dt, e_cost, e_price, hasBat, SOCprod, SOCdemand, FRchoice, TOUchoice, ORC_size,
irradiance, hasPV, PVnumberpanels, Eproduced_PV, EarningsFIT, EarningsFIT_y, NPVEarningsFIT, PVcapacitysystem, CIPVCap, PV_cap_tot, NPVPVcap, PV_m, NPVPVm,  Eproduced_FC, Hproduced_FC, GuseFC, CIFCCap, FC_cap_tot, NPVFCcap, FC_capacity_system,FC_cap, hasFC,onoff,mcostFC_y,
mcostFC_total, GuseFC_total, Eproduced_FC_total, Hproduced_FC_total, onoff_DG, Eproduced_DG, DieselUse,hasDG,DG_OpCost,DG_Power,mcostDG_y,mcostDG_total,FC_module_size, Enetproduced_FC, CIDGCap, demand_e_y, demand_h_y, demand_ref_y,DieselUse_y,Eproduced_DG_y,
TotalCHPQI_e, TotalCHPQI_hdemand, TotalCHPQI_boil, TotalCHPQI_gas           ;


$Ontext
Solve Decarbonisation using mip minimizing obj_minGHG;

execute_unload "minghg.gdx", Emax, Rmax, Hmax, PL, Import, Export, ExcessH, ExcessH_y, Eproduced, Hproduced, Rproduced, Rproduced_y, AuxRproduced, AuxHproduced, TotalImport, TotalExport,
Guse, CHPGuse, BoilerGuse, AuxRproduced_y, AuxHproduced_y, TotalGuse, TotalCHPGuse, TotalBoilerGuse, GHG, select_CHP_cap_ann, select_CHP_m_ann, NPVCHPcap, NPVCHPmain, operHtotal,
CHPpower, CHPheat, CHPpower_y, CHPheat_y, CHPGuse_y,
BatEnergySystem, BatPowerSystem, Edemand_Bat, Edemand_Bat_y, Eproduced_Bat, Eproduced_Bat_y, EarningsFR_FR, EarningsFR_TOU, EarningsFR, CIBatCap, Bat_cap_tot, NPVBatcap, Bat_m, NPVBatm,
CICHPcap, CI, EarningsFR_FR_y, EarningsFR_TOU_y, NPVEarningsFR,
opcost_t, opcost_d, opcost_y, NPVopcost, totcost, carboncost_t, carboncost_y, NPVcarboncost, Totalcarbon, Baselinecarbon, Import_cost_y, Export_rev_y, Guse_cost_y,
building_ID, hasCHP, onoff, demand_e, demand_h, demand_ref, dt, e_cost, e_price, hasBat, SOCprod, SOCdemand, FRchoice, TOUchoice, ORC_size,
irradiance, hasPV, PVnumberpanels, Eproduced_PV, EarningsFIT, EarningsFIT_y, NPVEarningsFIT, PVcapacitysystem, CIPVCap, PV_cap_tot, NPVPVcap, PV_m, NPVPVm;
$Offtext
