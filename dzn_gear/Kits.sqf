// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio"
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************

kit_idf_pl = [
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Green","CUP_V_O_SLA_M23_1_OD","usm_pack_alice_prc119","FDF_beret_border",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_Galil_556_black","CUP_35Rnd_556x45_Galil_Mag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Browning_HP","CUP_13Rnd_9x19_Browning_HP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",10],["CUP_35Rnd_556x45_Green_Tracer_Galil_Mag",3],["HandGrenade",3],["SmokeShellGreen",3],["SmokeShellBlue",3],["SmokeShell",3],["HANDGUN MAG",2]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_idf_sl = [
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Green","CUP_V_O_SLA_M23_1_OD","usm_pack_alice_prc119","FDF_beret_border",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_Galil_556_black","CUP_35Rnd_556x45_Galil_Mag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Browning_HP","CUP_13Rnd_9x19_Browning_HP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",10],["CUP_35Rnd_556x45_Green_Tracer_Galil_Mag",3],["HandGrenade",3],["SmokeShellGreen",3],["SmokeShellBlue",3],["SmokeShell",3],["HANDGUN MAG",2]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_idf_ftl = [
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Green","CUP_V_O_SLA_M23_1_OD","","CUP_H_USArmy_Helmet_M1_plain_Olive",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_Galil_556_black","CUP_35Rnd_556x45_Galil_Mag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",4],["PRIMARY MAG",7],["CUP_35Rnd_556x45_Green_Tracer_Galil_Mag",3],["SmokeShell",3],["ACE_HandFlare_Red",2],["ACE_HandFlare_Green",2]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_idf_mg = [
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Green","CUP_V_O_SLA_M23_1_OD","CUP_B_AlicePack_OD","CUP_H_USArmy_Helmet_M1_plain_Olive",""],
	["<PRIMARY WEAPON >>  ","CUP_lmg_FNMAG","CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Browning_HP","CUP_13Rnd_9x19_Browning_HP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",4],["SmokeShell",3],["ACE_HandFlare_Red",2],["ACE_HandFlare_Green",2],["PRIMARY MAG",2],["HANDGUN MAG",3]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2]]]
];
kit_idf_r = [
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Green","CUP_V_O_SLA_M23_1_OD","CUP_B_AlicePack_OD","CUP_H_USArmy_Helmet_M1_plain_Olive",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_Galil_556_black","CUP_35Rnd_556x45_Galil_Mag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",4],["PRIMARY MAG",10]]],
	["<BACKPACK ITEMS >> ",[["CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M",3]]]
];
kit_idf_engineer = [
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Green","CUP_V_O_SLA_M23_1_OD","CUP_B_AlicePack_OD","CUP_H_USArmy_Helmet_M1_plain_Olive",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_Galil_556_black","CUP_35Rnd_556x45_Galil_Mag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",4],["PRIMARY MAG",10]]],
	["<BACKPACK ITEMS >> ",[["ACE_wirecutter",1],["SatchelCharge_Remote_Mag",2]]]
];
cargo_kit_idf = [
	[["CUP_launch_M72A6_Loaded",4]],
	[["HandGrenade",20],["CUP_35Rnd_556x45_Galil_Mag",30],["CUP_35Rnd_556x45_Green_Tracer_Galil_Mag",10],["SmokeShell",15],["ACE_HandFlare_Red",15],["ACE_HandFlare_Green",15],["SatchelCharge_Remote_Mag",3],["CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M",15],["CUP_13Rnd_9x19_Browning_HP",20]],
	[["ACE_fieldDressing",30],["ACE_packingBandage",30],["ACE_elasticBandage",30],["ACE_tourniquet",30],["ACE_quikclot",30],["ACE_CableTie",30],["ACE_wirecutter",4]],
	[]
];
//PLO
#define PLO_WEP ["CUP_arifle_AKM_Early","CUP_arifle_FNFAL5060","CUP_arifle_G3A3_ris","CUP_srifle_M14","CUP_arifle_IMI_Romat","CUP_arifle_Sa58P","CUP_SKS"]
#define PLO_MAG ["CUP_30Rnd_762x39_AK47_M","CUP_20Rnd_762x51_FNFAL_M","CUP_20Rnd_762x51_G3","CUP_20Rnd_762x51_DMR","CUP_20Rnd_762x51_FNFAL_M","CUP_30Rnd_Sa58_M","CUP_10Rnd_762x39_SKS_M"]
#define PLO_MG_WEP ["CUP_lmg_PKM","CUP_lmg_M60","CUP_lmg_FNMAG","hlc_lmg_MG42_100rnd"]
#define PLO_MG_MAG ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M","CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M","CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M","hlc_100Rnd_792x57_B_MG42"]
#define PLO_UNI ["CUP_U_O_SLA_Green","CUP_I_B_PMC_Unit_2","CUP_U_C_Profiteer_03","CUP_U_O_SLA_Green","TRYK_ZARATAKI3"]
#define PLO_HELM ["H_ShemagOpen_khk","H_Beret_blk","rhsgref_helmet_M1_bare","CUP_H_SLA_Helmet_DES"]
#define PLO_TACBEAR ["","CUP_Beard_Black"]
kit_plo_random = [
	"kit_plo_r"
	,"kit_plo_at"
	,"kit_plo_mg"
	,"kit_plo_ar"
	,"kit_plo_r"
	,"kit_plo_r"
	,"kit_plo_r"
	];
kit_plo_r = [
	["<EQUIPEMENT >>  ",PLO_UNI,"CUP_V_I_Carrier_Belt","",PLO_HELM,""],
	["<PRIMARY WEAPON >>  ",PLO_WEP,PLO_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_plo_at = [
	["<EQUIPEMENT >>  ",PLO_UNI,"CUP_V_I_Carrier_Belt","CUP_B_AlicePack_Khaki",PLO_HELM,""],
	["<PRIMARY WEAPON >>  ",PLO_WEP,PLO_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG7V","CUP_PG7V_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[["SECONDARY MAG",3]]]
];
kit_plo_mg = [
	["<EQUIPEMENT >>  ",PLO_UNI,"CUP_V_I_Carrier_Belt","CUP_B_AlicePack_Khaki",PLO_HELM,""],
	["<PRIMARY WEAPON >>  ",PLO_MG_WEP,PLO_MG_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2]]]
];
kit_plo_ar = [
	["<EQUIPEMENT >>  ",PLO_UNI,"CUP_V_I_Carrier_Belt","",PLO_HELM,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_RPK74","CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",4]]],
	["<BACKPACK ITEMS >> ",[]]
];