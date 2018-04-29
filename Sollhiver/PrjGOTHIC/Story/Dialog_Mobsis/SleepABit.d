
var int realhour;
var int hour1;
var int hour2;
var int hour3;
var int sleeprandtry;
var int sleephpres;
var int sleepmpres;

func void PC_Sleep(var int t)
{
	AI_StopProcessInfos(self);
	player_mobsi_production = MOBSI_NONE;
	self.aivar[AIV_INVINCIBLE] = FALSE;
	if(Npc_IsPlayer(self))
	{
		if(Wld_IsTime(0,0,0,59))
		{
			realhour = 0;
		}
		else if(Wld_IsTime(1,0,1,59))
		{
			realhour = 1;
		}
		else if(Wld_IsTime(2,0,2,59))
		{
			realhour = 2;
		}
		else if(Wld_IsTime(3,0,3,59))
		{
			realhour = 3;
		}
		else if(Wld_IsTime(4,0,4,59))
		{
			realhour = 4;
		}
		else if(Wld_IsTime(5,0,5,59))
		{
			realhour = 5;
		}
		else if(Wld_IsTime(6,0,6,59))
		{
			realhour = 6;
		}
		else if(Wld_IsTime(7,0,7,59))
		{
			realhour = 7;
		}
		else if(Wld_IsTime(8,0,8,59))
		{
			realhour = 8;
		}
		else if(Wld_IsTime(9,0,9,59))
		{
			realhour = 9;
		}
		else if(Wld_IsTime(10,0,10,59))
		{
			realhour = 10;
		}
		else if(Wld_IsTime(11,0,11,59))
		{
			realhour = 11;
		}
		else if(Wld_IsTime(12,0,12,59))
		{
			realhour = 12;
		}
		else if(Wld_IsTime(13,0,13,59))
		{
			realhour = 13;
		}
		else if(Wld_IsTime(14,0,14,59))
		{
			realhour = 14;
		}
		else if(Wld_IsTime(15,0,15,59))
		{
			realhour = 15;
		}
		else if(Wld_IsTime(16,0,16,59))
		{
			realhour = 16;
		}
		else if(Wld_IsTime(17,0,17,59))
		{
			realhour = 17;
		}
		else if(Wld_IsTime(18,0,18,59))
		{
			realhour = 18;
		}
		else if(Wld_IsTime(19,0,19,59))
		{
			realhour = 19;
		}
		else if(Wld_IsTime(20,0,20,59))
		{
			realhour = 20;
		}
		else if(Wld_IsTime(21,0,21,59))
		{
			realhour = 21;
		}
		else if(Wld_IsTime(22,0,22,59))
		{
			realhour = 22;
		}
		else if(Wld_IsTime(23,0,23,59))
		{
			realhour = 23;
		};
		hour1 = realhour + t;
		hour2 = Hlp_Random(59);
		Wld_SetTime(hour1,hour2);
		Wld_StopEffect("DEMENTOR_FX");
		if(SC_IsObsessed == TRUE)
		{
			PrintScreen(PRINT_SleepOverObsessed,-1,-1,FONT_Screen,2);
		}
		else
		{
			if(t == 1)
			{
				sleephpres = (hero.attribute[ATR_HITPOINTS_MAX] * 10) / 100;
				sleepmpres = (hero.attribute[ATR_MANA_MAX] * 10) / 100;
				Npc_ChangeAttribute(hero,ATR_HITPOINTS,sleephpres);
				Npc_ChangeAttribute(hero,ATR_MANA,sleepmpres);
				if(hero.attribute[ATR_HITPOINTS] > hero.attribute[ATR_HITPOINTS_MAX])
				{
					hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
				}
				else if(hero.attribute[ATR_MANA] > hero.attribute[ATR_MANA_MAX])
				{
					hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA_MAX];
				};
				AI_PrintScreen("You slept for about 1 hour.",-1,52,FONT_SCREENBRIGHTLARGE,2);
			};
			if(t == 2)
			{
				sleephpres = (hero.attribute[ATR_HITPOINTS_MAX] * 20) / 100;
				sleepmpres = (hero.attribute[ATR_MANA_MAX] * 20) / 100;
				Npc_ChangeAttribute(hero,ATR_HITPOINTS,sleephpres);
				Npc_ChangeAttribute(hero,ATR_MANA,sleepmpres);
				if(hero.attribute[ATR_HITPOINTS] > hero.attribute[ATR_HITPOINTS_MAX])
				{
					hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
				}
				else if(hero.attribute[ATR_MANA] > hero.attribute[ATR_MANA_MAX])
				{
					hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA_MAX];
				};
				AI_PrintScreen("You slept for about 2 hours.",-1,52,FONT_SCREENBRIGHTLARGE,2);
			};
			if(t == 3)
			{
				sleephpres = (hero.attribute[ATR_HITPOINTS_MAX] * 30) / 100;
				sleepmpres = (hero.attribute[ATR_MANA_MAX] * 30) / 100;
				Npc_ChangeAttribute(hero,ATR_HITPOINTS,sleephpres);
				Npc_ChangeAttribute(hero,ATR_MANA,sleepmpres);
				if(hero.attribute[ATR_HITPOINTS] > hero.attribute[ATR_HITPOINTS_MAX])
				{
					hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
				}
				else if(hero.attribute[ATR_MANA] > hero.attribute[ATR_MANA_MAX])
				{
					hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA_MAX];
				};
				PrintScreen(PRINT_SleepOver,-1,-1,FONT_Screen,2);
			};
			if(t == 4)
			{
				sleephpres = (hero.attribute[ATR_HITPOINTS_MAX] * 40) / 100;
				sleepmpres = (hero.attribute[ATR_MANA_MAX] * 40) / 100;
				Npc_ChangeAttribute(hero,ATR_HITPOINTS,sleephpres);
				Npc_ChangeAttribute(hero,ATR_MANA,sleepmpres);
				if(hero.attribute[ATR_HITPOINTS] > hero.attribute[ATR_HITPOINTS_MAX])
				{
					hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
				}
				else if(hero.attribute[ATR_MANA] > hero.attribute[ATR_MANA_MAX])
				{
					hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA_MAX];
				};
				PrintScreen(PRINT_SleepOver,-1,-1,FONT_Screen,2);
			};
			if(t == 5)
			{
				sleephpres = (hero.attribute[ATR_HITPOINTS_MAX] * 50) / 100;
				sleepmpres = (hero.attribute[ATR_MANA_MAX] * 50) / 100;
				Npc_ChangeAttribute(hero,ATR_HITPOINTS,sleephpres);
				Npc_ChangeAttribute(hero,ATR_MANA,sleepmpres);
				if(hero.attribute[ATR_HITPOINTS] > hero.attribute[ATR_HITPOINTS_MAX])
				{
					hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
				}
				else if(hero.attribute[ATR_MANA] > hero.attribute[ATR_MANA_MAX])
				{
					hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA_MAX];
				};
				PrintScreen(PRINT_SleepOver,-1,-1,FONT_Screen,2);
			};
			if(t == 6)
			{
				sleephpres = (hero.attribute[ATR_HITPOINTS_MAX] * 60) / 100;
				sleepmpres = (hero.attribute[ATR_MANA_MAX] * 60) / 100;
				Npc_ChangeAttribute(hero,ATR_HITPOINTS,sleephpres);
				Npc_ChangeAttribute(hero,ATR_MANA,sleepmpres);
				if(hero.attribute[ATR_HITPOINTS] > hero.attribute[ATR_HITPOINTS_MAX])
				{
					hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
				}
				else if(hero.attribute[ATR_MANA] > hero.attribute[ATR_MANA_MAX])
				{
					hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA_MAX];
				};
				PrintScreen(PRINT_SleepOver,-1,-1,FONT_Screen,2);
			};
			if(t == 7)
			{
				sleephpres = (hero.attribute[ATR_HITPOINTS_MAX] * 70) / 100;
				sleepmpres = (hero.attribute[ATR_MANA_MAX] * 70) / 100;
				Npc_ChangeAttribute(hero,ATR_HITPOINTS,sleephpres);
				Npc_ChangeAttribute(hero,ATR_MANA,sleepmpres);
				if(hero.attribute[ATR_HITPOINTS] > hero.attribute[ATR_HITPOINTS_MAX])
				{
					hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
				}
				else if(hero.attribute[ATR_MANA] > hero.attribute[ATR_MANA_MAX])
				{
					hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA_MAX];
				};
				PrintScreen(PRINT_SleepOver,-1,-1,FONT_Screen,2);
			};
			if(t == 8)
			{
				sleephpres = (hero.attribute[ATR_HITPOINTS_MAX] * 80) / 100;
				sleepmpres = (hero.attribute[ATR_MANA_MAX] * 80) / 100;
				Npc_ChangeAttribute(hero,ATR_HITPOINTS,sleephpres);
				Npc_ChangeAttribute(hero,ATR_MANA,sleepmpres);
				if(hero.attribute[ATR_HITPOINTS] > hero.attribute[ATR_HITPOINTS_MAX])
				{
					hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
				}
				else if(hero.attribute[ATR_MANA] > hero.attribute[ATR_MANA_MAX])
				{
					hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA_MAX];
				};
				PrintScreen(PRINT_SleepOver,-1,-1,FONT_Screen,2);
			};
			if(t == 9)
			{
				sleephpres = (hero.attribute[ATR_HITPOINTS_MAX] * 90) / 100;
				sleepmpres = (hero.attribute[ATR_MANA_MAX] * 90) / 100;
				Npc_ChangeAttribute(hero,ATR_HITPOINTS,sleephpres);
				Npc_ChangeAttribute(hero,ATR_MANA,sleepmpres);
				if(hero.attribute[ATR_HITPOINTS] > hero.attribute[ATR_HITPOINTS_MAX])
				{
					hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
				}
				else if(hero.attribute[ATR_MANA] > hero.attribute[ATR_MANA_MAX])
				{
					hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA_MAX];
				};
				PrintScreen(PRINT_SleepOver,-1,-1,FONT_Screen,2);
			};
			if(t == 10)
			{
				hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
				hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA_MAX];
				PrintScreen(PRINT_SleepOver,-1,-1,FONT_Screen,2);
			};
			if(t == 11)
			{
				hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
				hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA_MAX];
				PrintScreen(PRINT_SleepOver,-1,-1,FONT_Screen,2);
			};
			if(t == 12)
			{
				hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
				hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA_MAX];
				PrintScreen(PRINT_SleepOver,-1,-1,FONT_Screen,2);
			};
		};
		PrintGlobals(PD_ITEM_MOBSI);
		Npc_SendPassivePerc(hero,PERC_ASSESSENTERROOM,NULL,hero);
	};
};

func void sleepabit_s1()
{
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	{
		self.aivar[AIV_INVINCIBLE] = TRUE;
		player_mobsi_production = MOBSI_SleepAbit;
		AI_ProcessInfos(hero);
		if(SC_IsObsessed == TRUE)
		{
			Wld_PlayEffect("DEMENTOR_FX",hero,hero,0,0,0,FALSE);
		};
	};
};


instance PC_NoSleep(C_Info)
{
	npc = PC_Hero;
	nr = 999;
	condition = PC_NoSleep_Condition;
	information = PC_NoSleep_Info;
	important = 0;
	permanent = 1;
	description = Dialog_Ende;
};


func int PC_NoSleep_Condition()
{
	if(player_mobsi_production == MOBSI_SleepAbit)
	{
		return 1;
	};
};

func void PC_NoSleep_Info()
{
	AI_StopProcessInfos(self);
	Wld_StopEffect("DEMENTOR_FX");
	self.aivar[AIV_INVINCIBLE] = FALSE;
	player_mobsi_production = MOBSI_NONE;
};


instance PC_SLEEPTIME_1(C_Info)
{
	npc = PC_Hero;
	condition = pc_sleeptime_1_condition;
	information = pc_sleeptime_1_info;
	important = 0;
	permanent = 1;
	description = "Sleep for about 1 hour";
};


func int pc_sleeptime_1_condition()
{
	if(player_mobsi_production == MOBSI_SleepAbit)
	{
		return TRUE;
	};
};

func void pc_sleeptime_1_info()
{
	PC_Sleep(1);
	not_complete_sword = FALSE;
};


instance PC_SLEEPTIME_2(C_Info)
{
	npc = PC_Hero;
	condition = pc_sleeptime_2_condition;
	information = pc_sleeptime_2_info;
	important = 0;
	permanent = 1;
	description = "Sleep for about 2 hours";
};


func int pc_sleeptime_2_condition()
{
	if(player_mobsi_production == MOBSI_SleepAbit)
	{
		return TRUE;
	};
};

func void pc_sleeptime_2_info()
{
	PC_Sleep(2);
	not_complete_sword = FALSE;
};


instance PC_SLEEPTIME_3(C_Info)
{
	npc = PC_Hero;
	condition = pc_sleeptime_3_condition;
	information = pc_sleeptime_3_info;
	important = 0;
	permanent = 1;
	description = "Sleep for about 3 hours";
};


func int pc_sleeptime_3_condition()
{
	if(player_mobsi_production == MOBSI_SleepAbit)
	{
		return TRUE;
	};
};

func void pc_sleeptime_3_info()
{
	PC_Sleep(3);
	not_complete_sword = FALSE;
};


instance PC_SLEEPTIME_4(C_Info)
{
	npc = PC_Hero;
	condition = pc_sleeptime_4_condition;
	information = pc_sleeptime_4_info;
	important = 0;
	permanent = 1;
	description = "Sleep for about 4 hours";
};


func int pc_sleeptime_4_condition()
{
	if(player_mobsi_production == MOBSI_SleepAbit)
	{
		return TRUE;
	};
};

func void pc_sleeptime_4_info()
{
	PC_Sleep(4);
	not_complete_sword = FALSE;
};


instance PC_SLEEPTIME_5(C_Info)
{
	npc = PC_Hero;
	condition = pc_sleeptime_5_condition;
	information = pc_sleeptime_5_info;
	important = 0;
	permanent = 1;
	description = "Sleep for about 5 hours";
};


func int pc_sleeptime_5_condition()
{
	if(player_mobsi_production == MOBSI_SleepAbit)
	{
		return TRUE;
	};
};

func void pc_sleeptime_5_info()
{
	PC_Sleep(5);
	not_complete_sword = FALSE;
};


instance PC_SLEEPTIME_6(C_Info)
{
	npc = PC_Hero;
	condition = pc_sleeptime_6_condition;
	information = pc_sleeptime_6_info;
	important = 0;
	permanent = 1;
	description = "Sleep for about 6 hours";
};


func int pc_sleeptime_6_condition()
{
	if(player_mobsi_production == MOBSI_SleepAbit)
	{
		return TRUE;
	};
};

func void pc_sleeptime_6_info()
{
	PC_Sleep(6);
	not_complete_sword = FALSE;
};


instance PC_SLEEPTIME_7(C_Info)
{
	npc = PC_Hero;
	condition = pc_sleeptime_7_condition;
	information = pc_sleeptime_7_info;
	important = 0;
	permanent = 1;
	description = "Sleep for about 7 hours";
};


func int pc_sleeptime_7_condition()
{
	if(player_mobsi_production == MOBSI_SleepAbit)
	{
		return TRUE;
	};
};

func void pc_sleeptime_7_info()
{
	PC_Sleep(7);
	not_complete_sword = FALSE;
};


instance PC_SLEEPTIME_8(C_Info)
{
	npc = PC_Hero;
	condition = pc_sleeptime_8_condition;
	information = pc_sleeptime_8_info;
	important = 0;
	permanent = 1;
	description = "Sleep for about 8 hours";
};


func int pc_sleeptime_8_condition()
{
	if(player_mobsi_production == MOBSI_SleepAbit)
	{
		return TRUE;
	};
};

func void pc_sleeptime_8_info()
{
	PC_Sleep(8);
	not_complete_sword = FALSE;
};


instance PC_SLEEPTIME_9(C_Info)
{
	npc = PC_Hero;
	condition = pc_sleeptime_9_condition;
	information = pc_sleeptime_9_info;
	important = 0;
	permanent = 1;
	description = "Sleep for about 9 hours";
};


func int pc_sleeptime_9_condition()
{
	if(player_mobsi_production == MOBSI_SleepAbit)
	{
		return TRUE;
	};
};

func void pc_sleeptime_9_info()
{
	PC_Sleep(9);
	not_complete_sword = FALSE;
};


instance PC_SLEEPTIME_10(C_Info)
{
	npc = PC_Hero;
	condition = pc_sleeptime_10_condition;
	information = pc_sleeptime_10_info;
	important = 0;
	permanent = 1;
	description = "Sleep for about 10 hours";
};


func int pc_sleeptime_10_condition()
{
	if(player_mobsi_production == MOBSI_SleepAbit)
	{
		return TRUE;
	};
};

func void pc_sleeptime_10_info()
{
	PC_Sleep(10);
	not_complete_sword = FALSE;
};


instance PC_SLEEPTIME_11(C_Info)
{
	npc = PC_Hero;
	condition = pc_sleeptime_11_condition;
	information = pc_sleeptime_11_info;
	important = 0;
	permanent = 1;
	description = "Sleep for about 11 hours";
};


func int pc_sleeptime_11_condition()
{
	if(player_mobsi_production == MOBSI_SleepAbit)
	{
		return TRUE;
	};
};

func void pc_sleeptime_11_info()
{
	PC_Sleep(11);
	not_complete_sword = FALSE;
};


instance PC_SLEEPTIME_12(C_Info)
{
	npc = PC_Hero;
	condition = pc_sleeptime_12_condition;
	information = pc_sleeptime_12_info;
	important = 0;
	permanent = 1;
	description = "Sleep for about 12 hours";
};


func int pc_sleeptime_12_condition()
{
	if(player_mobsi_production == MOBSI_SleepAbit)
	{
		return TRUE;
	};
};

func void pc_sleeptime_12_info()
{
	PC_Sleep(12);
	not_complete_sword = FALSE;
};

func int b_usewrongbed()
{
	if((Npc_IsPlayer(self) == FALSE) || ((Npc_GetDistToWP(hero,"NW_CITY_HOTEL_BED_02") <= 150) || (Npc_GetDistToWP(hero,"NW_CITY_HOTEL_BED_04") <= 150) || (Npc_GetDistToWP(hero,"NW_CITY_HOTEL_BED_06") <= 200) || (Npc_GetDistToWP(hero,"NW_CITY_HOTEL_BED_07") <= 150) || (Npc_GetDistToWP(hero,"NW_CITY_HOTEL_BED_08") <= 220) || (Npc_GetDistToWP(hero,"NW_TAV_SLEEP_R01") <= 220) || (Npc_GetDistToWP(hero,"NW_TAV_SLEEP_R02") <= 220) || (Npc_GetDistToWP(hero,"NW_FARM1_XTWR_IN_02") <= 200) || (Npc_GetDistToWP(hero,"NW_BFS_FREE_01") <= 150) || ((Npc_GetDistToWP(hero,"NW_XARDAS_TOWER_IN1_31") <= 750) && (Npc_GetDistToWP(Lester,"NW_XARDAS_TOWER_IN1_31") > 750)) || (Npc_GetDistToWP(hero,"NW_BFS_FREE_02") <= 150) || (Npc_GetDistToWP(hero,"OC_GUARD_ROOM_01_CENTER") <= 250) || (Npc_GetDistToWP(hero,"OC_JAIL_SLEEP") <= 200) || (Npc_GetDistToWP(hero,"OW_SAWHUT_SLEEP_01") <= 500) || (Npc_GetDistToWP(hero,"OW_MOVEMENT_LURKER_NEARBGOBBO01") <= 950) || (Npc_GetDistToWP(hero,"LOCATION_23_CAVE_1_IN_1") <= 500) || (Npc_GetDistToWP(hero,"OW_ICEREGION_OLDBUILD_SLEEP") <= 200) || (Npc_GetDistToWP(hero,"DT_E2_07") <= 350) || (Npc_GetDistToWP(hero,"NW_CASTLEMINE_HUT_08") <= 350) || (Npc_GetDistToWP(hero,"NW_CASTLEMINE_PATH_HUT_IN_BED") <= 250) || (Npc_GetDistToWP(hero,"NW_CASTLEMINE_TOWER_08") <= 350) || (Npc_GetDistToWP(hero,"ADW_ENTRANCE_BUILDING2_SLEEP_01") <= 150) || (Npc_GetDistToWP(hero,"ADW_ENTRANCE_RUIN3_02") <= 250) || (Npc_GetDistToWP(hero,"ADW_PIRATECAMP_TOWER_BED") <= 250) || ((Npc_GetDistToWP(hero,"ADW_PIRATECAMP_HUTADD_02") <= 400) && (Npc_HasItems(hero,ITAR_PIR_M_Addon) >= 1)) || (Npc_GetDistToWP(hero,"ADW_CANYON_ORCS_12") <= 350) || (Npc_GetDistToWP(hero,"ADW_SWAMP_SLEEP_01") <= 250) || (Npc_GetDistToWP(hero,"ADW_SWAMP_SLEEP_02") <= 200) || (Npc_GetDistToWP(hero,"BL_UP_PLACE_04_SIDE_02") <= 200) || (Npc_GetDistToWP(hero,"BL_INN_UPSIDE_SLEEP_02") <= 150) || (Npc_GetDistToWP(hero,"BL_INN_UPSIDE_SLEEP_03") <= 150) || (Npc_GetDistToWP(hero,"BL_INN_UPSIDE_SLEEP_04") <= 150) || ((Npc_GetDistToWP(hero,"BL_DOWN_HUT_02_SLEEP") <= 200) && Npc_IsDead(Skinner)) || ((Npc_GetDistToWP(hero,"BL_BEDS_SLEEP_02") <= 600) && Npc_IsDead(Esteban)) || (Npc_GetDistToWP(hero,"NW_HERO_SLEEP_WILD_01") <= 250) || (Npc_GetDistToWP(hero,"NW_HERO_SLEEP_WILD_02") <= 250) || (Npc_GetDistToWP(hero,"NW_HERO_SLEEP_CAVE_01") <= 250) || (((Npc_GetDistToWP(hero,"NW_MONASTERY_NOVICE03_06") <= 160) || (Npc_GetDistToWP(hero,"NW_MONASTERY_MAGE04_BED") <= 210) || (Npc_GetDistToWP(hero,"NW_MONASTERY_NOVICE02_07") <= 170) || (Npc_GetDistToWP(hero,"NW_MONASTERY_NOVICE01_06") <= 150) || (Npc_GetDistToWP(hero,"NW_MONASTERY_NOVICE01_07") <= 170) || (Npc_GetDistToWP(hero,"NW_MONASTERY_NOVICE01_05") <= 150)) && ((hero.guild == GIL_NOV) || (hero.guild == GIL_KDF))) || (((Npc_GetDistToWP(hero,"NW_LHCASTLE_SLEEP_KNIGHT") <= 800) || (Npc_GetDistToWP(hero,"NW_HERO_SLEEP_KNIGHT_01") <= 190) || (Npc_GetDistToWP(hero,"OC_EBR_ROOM_03_SLEEP") <= 200) || (Npc_GetDistToWP(hero,"OC_GUARD_ROOM_02_SLEEP_01") <= 200) || (Npc_GetDistToWP(hero,"OC_GUARD_ROOM_02_SLEEP_02") <= 200)) && ((hero.guild == GIL_MIL) || (hero.guild == GIL_KDF) || (hero.guild == GIL_PAL))) || ((Npc_GetDistToWP(hero,"NW_HERO_SLEEP_SMITH") <= 200) && (Player_IsApprentice == APP_Harad)) || ((Npc_GetDistToWP(hero,"NW_CITY_HABOUR_POOR_AREA_HUT_06_BED_02") <= 200) && (Edda_Schlafplatz == TRUE)) || (Npc_GetDistToWP(hero,"OC_NEWWAY_18_HUT2") <= 300) || (Npc_GetDistToWP(hero,"LOCATION_19_03_ROOM6_BED") <= 400) || (Npc_GetDistToWP(hero,"OC_NEWWAY_16_HUT1") <= 300) || (Npc_GetDistToWP(hero,"OC_NEWWAY_03_HUT") <= 300) || (Npc_GetDistToWP(hero,"OC_NEWWAY_MAD_BED") <= 300) || (CurrentLevel == DRAGONISLAND_ZEN)))
	{
		return TRUE;
	}
	else
	{
		return TRUE;
	};
};

