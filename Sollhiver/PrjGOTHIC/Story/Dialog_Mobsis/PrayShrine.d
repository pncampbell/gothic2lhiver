
var int PrayDay;
var int praydayone_0;
var int praydayone_10;
var int praydayone_50;
var int praydayone_100;

var string concatDonation;

var int Shrine_STR_Bonus;
var int Shrine_DEX_Bonus;
var int Shrine_MANA_Bonus;
var int SpecialBless;
var int ShrineIsObsessed;
var int shrinehealing;
var int ShrinesHealed;
var int ShrineIsObsessed_NW_TROLLAREA_PATH_37;
var int ShrineIsObsessed_NW_FARM1_CONNECT_XARDAS;
var int ShrineIsObsessed_NW_TROLLAREA_PATH_66;
var int ShrineIsObsessed_NW_TROLLAREA_PATH_04;
var int ShrineIsObsessed_SAGITTA;
var int ShrineIsObsessed_NW_BIGMILL_MALAKSVERSTECK_02;
var int ShrineIsObsessed_NW_FARM3_BIGWOOD_02;

func void C_IsShrineObsessed(var C_Npc slf)
{
	if(Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(hero))
	{
		ShrineIsObsessed = TRUE;
		if((Npc_GetDistToWP(hero,"NW_TROLLAREA_PATH_37") < 2000) && (ShrineIsObsessed_NW_TROLLAREA_PATH_37 == TRUE))
		{
			if(shrinehealing == TRUE)
			{
				ShrineIsObsessed_NW_TROLLAREA_PATH_37 = FALSE;
				ShrineIsObsessed = FALSE;
			};
		}
		else if((Npc_GetDistToWP(hero,"NW_FARM1_CONNECT_XARDAS") < 2000) && (ShrineIsObsessed_NW_FARM1_CONNECT_XARDAS == TRUE))
		{
			if(shrinehealing == TRUE)
			{
				ShrineIsObsessed_NW_FARM1_CONNECT_XARDAS = FALSE;
				ShrineIsObsessed = FALSE;
			};
		}
		else if((Npc_GetDistToWP(hero,"NW_TROLLAREA_PATH_66") < 2000) && (ShrineIsObsessed_NW_TROLLAREA_PATH_66 == TRUE))
		{
			if(shrinehealing == TRUE)
			{
				ShrineIsObsessed_NW_TROLLAREA_PATH_66 = FALSE;
				ShrineIsObsessed = FALSE;
			};
		}
		else if((Npc_GetDistToWP(hero,"NW_TROLLAREA_PATH_04") < 2000) && (ShrineIsObsessed_NW_TROLLAREA_PATH_04 == TRUE))
		{
			if(shrinehealing == TRUE)
			{
				ShrineIsObsessed_NW_TROLLAREA_PATH_04 = FALSE;
				ShrineIsObsessed = FALSE;
			};
		}
		else if((Npc_GetDistToWP(hero,"SAGITTA") < 2000) && (ShrineIsObsessed_SAGITTA == TRUE))
		{
			if(shrinehealing == TRUE)
			{
				ShrineIsObsessed_SAGITTA = FALSE;
				ShrineIsObsessed = FALSE;
			};
		}
		else if((Npc_GetDistToWP(hero,"NW_BIGMILL_MALAKSVERSTECK_02") < 2000) && (ShrineIsObsessed_NW_BIGMILL_MALAKSVERSTECK_02 == TRUE))
		{
			if(shrinehealing == TRUE)
			{
				ShrineIsObsessed_NW_BIGMILL_MALAKSVERSTECK_02 = FALSE;
				ShrineIsObsessed = FALSE;
			};
		}
		else if((Npc_GetDistToWP(hero,"NW_FARM3_BIGWOOD_02") < 2000) && (ShrineIsObsessed_NW_FARM3_BIGWOOD_02 == TRUE))
		{
			if(shrinehealing == TRUE)
			{
				ShrineIsObsessed_NW_FARM3_BIGWOOD_02 = FALSE;
				ShrineIsObsessed = FALSE;
			};
		}
		else
		{
			ShrineIsObsessed = FALSE;
		};
	};
};


instance PC_PrayShrine_HEALSHRINE(C_Info)
{
	npc = PC_Hero;
	nr = 1;
	condition = PC_PrayShrine_HEALSHRINE_Condition;
	information = PC_PrayShrine_HEALSHRINE_Info;
	permanent = TRUE;
	description = "Purify shrine";
};


func int PC_PrayShrine_HEALSHRINE_Condition()
{
	if((player_mobsi_production == MOBSI_PrayShrine) && Npc_HasItems(hero,ItMi_UltharsHolyWater_Mis) && (ShrineIsObsessed == TRUE))
	{
		return TRUE;
	};
};

func void PC_PrayShrine_HEALSHRINE_Info()
{
	var string ShrinesText;
	var string ShrinesLeft;
	Wld_PlayEffect("spellFX_HealShrine",hero,hero,0,0,0,FALSE);
	Snd_Play("MFX_Heal_Cast");
	shrinehealing = TRUE;
	C_IsShrineObsessed(self);
	shrinehealing = FALSE;
	ShrinesHealed = ShrinesHealed + 1;
	if(ShrinesHealed < 7)
	{
		B_Say(self,self,"$HEALSHRINE");
		ShrinesLeft = IntToString(7 - ShrinesHealed);
		ShrinesText = ConcatStrings(ShrinesLeft,PRINT_NumberLeft);
		AI_PrintScreen(ShrinesText,-1,YPOS_GoldGiven,FONT_ScreenSmall,2);
	}
	else
	{
		B_Say(self,self,"$HEALLASTSHRINE");
		MIS_Ulthar_HeileSchreine_PAL = LOG_SUCCESS;
	};
	B_GivePlayerXP(XP_Ambient);
	b_endproductiondialog();
};

func void PrayShrine_S1()
{
	var C_Npc her;
	her = Hlp_GetNpc(PC_Hero);
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	{
		C_IsShrineObsessed(self);
		if(ShrineIsObsessed == TRUE)
		{
			Wld_PlayEffect("DEMENTOR_FX",hero,hero,0,0,0,FALSE);
		};
		self.aivar[AIV_INVINCIBLE] = TRUE;
		player_mobsi_production = MOBSI_PrayShrine;
		AI_ProcessInfos(hero);
	};
};


instance PC_PRAYSHRINE_FIRST(C_Info)
{
	npc = PC_Hero;
	nr = 452;
	condition = pc_prayshrine_first_condition;
	information = pc_prayshrine_first_info;
	permanent = TRUE;
	important = TRUE;
};


func int pc_prayshrine_first_condition()
{
	if(player_mobsi_production == MOBSI_PrayShrine)
	{
		return TRUE;
	};
};

func void pc_prayshrine_first_info()
{
	B_Say(hero,hero,"$BEZI_INNOS");
};


instance PC_PrayShrine_End(C_Info)
{
	npc = PC_Hero;
	nr = 999;
	condition = PC_PrayShrine_End_Condition;
	information = PC_PrayShrine_End_Info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int PC_PrayShrine_End_Condition()
{
	if(player_mobsi_production == MOBSI_PrayShrine)
	{
		return TRUE;
	};
};

func void PC_PrayShrine_End_Info()
{
	b_endproductiondialog();
};


instance PC_PrayShrine_Paladine(C_Info)
{
	npc = PC_Hero;
	nr = 3;
	condition = PC_PrayShrine_Paladine_Condition;
	information = PC_PrayShrine_Paladine_Info;
	permanent = FALSE;
	description = "Say a prayer for the paladins.";
};


func int PC_PrayShrine_Paladine_Condition()
{
	if((player_mobsi_production == MOBSI_PrayShrine) && (MIS_MardukBeten == LOG_Running) && (Kapitel == 1))
	{
		return TRUE;
	};
};

func void PC_PrayShrine_Paladine_Info()
{
	PrintScreen(Pray_Paladin1,-1,33,FONT_ScreenSmall,3);
	PrintScreen(Pray_Paladin2,-1,36,FONT_ScreenSmall,4);
	PrintScreen(Pray_Paladin3,-1,39,FONT_ScreenSmall,5);
	PrintScreen(Pray_Paladin4,-1,42,FONT_ScreenSmall,6);
};


instance PC_PRAYSHRINE_DOMINIC(C_Info)
{
	npc = PC_Hero;
	nr = 1;
	condition = pc_prayshrine_dominic_condition;
	information = pc_prayshrine_dominic_info;
	permanent = TRUE;
	description = "Pray for Dominque's Soul (500 gold)";
};


func int pc_prayshrine_dominic_condition()
{
	if((player_mobsi_production == MOBSI_PrayShrine) && (hero.guild == GIL_PAL) && (Npc_HasItems(hero,itsh_knight_ds) >= 1) && (dominicfree == FALSE))
	{
		return TRUE;
	};
};

func void pc_prayshrine_dominic_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= 500)
	{
		Npc_RemoveInvItems(hero,ItMi_Gold,500);
		PrintScreen(PRINT_BLESSDOMINIC,-1,33,FONT_ScreenSmall,3);
		Wld_PlayEffect("spellFX_LIGHTSTAR_WHITE",hero,hero,0,0,0,FALSE);
		Snd_Play("SFX_HealObsession");
		dominicfree = TRUE;
	}
	else
	{
		PrintScreen(Print_NotEnoughGold,-1,33,FONT_ScreenSmall,2);
	};
	b_endproductiondialog();
};


instance PC_PrayShrine_Pray(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = PC_PrayShrine_Pray_Condition;
	information = PC_PrayShrine_Pray_Info;
	permanent = TRUE;
	description = "Pray";
};


func int PC_PrayShrine_Pray_Condition()
{
	if(player_mobsi_production == MOBSI_PrayShrine)
	{
		return TRUE;
	};
};

func void PC_PrayShrine_Pray_Info()
{
	if(ShrineIsObsessed == TRUE)
	{
		SC_IsObsessed = TRUE;
		PrintScreen(PRINT_SCIsObsessed,-1,-1,FONT_Screen,2);
		Snd_Play("DEM_Die");
	}
	else
	{
		B_Say(hero,hero,"$BEZI_BLOGO");
		Info_ClearChoices(PC_PrayShrine_Pray);
		Info_AddChoice(PC_PrayShrine_Pray,Dialog_Back,PC_PrayShrine_Pray_Back);
		Info_AddChoice(PC_PrayShrine_Pray,"I want to pray and donate 0 gold pieces.",PC_PrayShrine_Pray_NoPay);
		if(Npc_HasItems(hero,ItMi_Gold) >= 100)
		{
			Info_AddChoice(PC_PrayShrine_Pray,"I want to pray and donate 100 gold pieces.",PC_PrayShrine_Pray_SmallPay);
		};
		if(Npc_HasItems(hero,ItMi_Gold) >= 200)
		{
			Info_AddChoice(PC_PrayShrine_Pray,"I want to pray and donate 200 gold pieces.",PC_PrayShrine_Pray_MediumPay);
		};
		if(Npc_HasItems(hero,ItMi_Gold) >= 300)
		{
			Info_AddChoice(PC_PrayShrine_Pray,"I want to pray and donate 300 gold pieces.",PC_PrayShrine_Pray_BigPay);
		};
	};
};

func void PC_PrayShrine_Pray_Back()
{
	Info_ClearChoices(PC_PrayShrine_Pray);
};

func void PC_PrayShrine_Pray_NoPay()
{
	var int zufall;
	zufall = Hlp_Random(100);
	if(PrayDay == Wld_GetDay())
	{
		PrintScreen(Print_BlessNone,-1,-1,FONT_Screen,2);
	}
	else if(zufall < 5)
	{
		B_BlessAttribute(hero,ATR_HITPOINTS_MAX,1);
	}
	else
	{
		PrintScreen(Print_BlessNone,-1,-1,FONT_Screen,2);
	};
	PrayDay = Wld_GetDay();
	Info_ClearChoices(PC_PrayShrine_Pray);
};

func void PC_PrayShrine_Pray_SmallPay()
{
	var int zufall;
	B_Say(hero,hero,"$BEZI_MASZZLOTO");
	Npc_RemoveInvItems(hero,ItMi_Gold,100);
	zufall = Hlp_Random(100);
	if(zufall < 60)
	{
		PrintScreen(Print_BlessNone,-1,-1,FONT_Screen,2);
	}
	else
	{
		B_BlessAttribute(hero,ATR_HITPOINTS_MAX,1);
	};
	Info_ClearChoices(PC_PrayShrine_Pray);
};

func void PC_PrayShrine_Pray_MediumPay()
{
	var int zufall;
	B_Say(hero,hero,"$BEZI_MASZZLOTO");
	Npc_RemoveInvItems(hero,ItMi_Gold,200);
	zufall = Hlp_Random(100);
	if(zufall < 40)
	{
		PrintScreen(Print_BlessNone,-1,-1,FONT_Screen,2);
	}
	else
	{
		B_BlessAttribute(hero,ATR_HITPOINTS_MAX,2);
	};
	Info_ClearChoices(PC_PrayShrine_Pray);
};

func void PC_PrayShrine_Pray_BigPay()
{
	var int zufall;
	B_Say(hero,hero,"$BEZI_MASZZLOTO");
	zufall = Hlp_Random(100);
	Npc_RemoveInvItems(hero,ItMi_Gold,300);
	if(zufall < 20)
	{
		PrintScreen(Print_BlessNone,-1,-1,FONT_Screen,2);
	}
	else if((Shrine_STR_Bonus < 10) && (hero.guild != GIL_KDF) && (hero.guild != GIL_NOV) && (zufall >= 20) && (zufall <= 60))
	{
		B_BlessAttribute(hero,ATR_STRENGTH,1);
		Shrine_STR_Bonus += 1;
	}
	else if((Shrine_DEX_Bonus < 10) && (hero.guild != GIL_KDF) && (hero.guild != GIL_NOV) && (zufall > 60))
	{
		B_BlessAttribute(hero,ATR_DEXTERITY,1);
		Shrine_DEX_Bonus += 1;
	}
	else if((Shrine_MANA_Bonus < 20) && (hero.guild != GIL_SLD) && (hero.guild != GIL_DJG))
	{
		B_BlessAttribute(hero,ATR_MANA_MAX,1);
		Shrine_MANA_Bonus += 1;
	}
	else
	{
		B_BlessAttribute(hero,ATR_HITPOINTS_MAX,3);
	};
	Info_ClearChoices(PC_PrayShrine_Pray);
};


instance PC_PrayShrine_BlessSword(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = PC_PrayShrine_BlessSword_Condition;
	information = PC_PrayShrine_BlessSword_Info;
	permanent = TRUE;
	description = Bless_Sword;
};


func int PC_PrayShrine_BlessSword_Condition()
{
	if((player_mobsi_production == MOBSI_PrayShrine) && (hero.guild == GIL_PAL) && (Npc_GetDistToWP(hero,"NW_MONASTERY_CHAPELL_02") <= 500) && ((Npc_HasItems(hero,ItMw_1H_Blessed_01) >= 1) || (Npc_HasItems(hero,ItMw_2H_Blessed_01) >= 1)))
	{
		return TRUE;
	};
};

func void PC_PrayShrine_BlessSword_Info()
{
	if(ShrineIsObsessed == TRUE)
	{
		SC_IsObsessed = TRUE;
		PrintScreen(PRINT_SCIsObsessed,-1,-1,FONT_Screen,2);
		Snd_Play("DEM_Die");
	}
	else if(Npc_HasItems(hero,ItMi_Gold) >= Gold_BlessSword)
	{
		Npc_RemoveInvItems(hero,ItMi_Gold,Gold_BlessSword);
		concatDonation = ConcatStrings(IntToString(Gold_BlessSword),PRINT_GoldGegeben);
		AI_PrintScreen(concatDonation,-1,YPOS_GoldGiven,FONT_ScreenSmall,2);
		if(Npc_HasItems(hero,ItMw_2H_Blessed_01) >= 1)
		{
			Npc_RemoveInvItems(hero,ItMw_2H_Blessed_01,1);
			CreateInvItems(hero,ItMw_2H_Blessed_02,1);
			Wld_PlayEffect("spellFX_PalHeal_ORIGIN",hero,hero,0,0,0,FALSE);
			Snd_Play("MFX_Heal_Cast");
			B_GivePlayerXP(XP_SwordBlessed);
		}
		else
		{
			Npc_RemoveInvItems(hero,ItMw_1H_Blessed_01,1);
			CreateInvItems(hero,ItMw_1H_Blessed_02,1);
			Wld_PlayEffect("spellFX_PalHeal_ORIGIN",hero,hero,0,0,0,FALSE);
			Snd_Play("MFX_Heal_Cast");
			B_GivePlayerXP(XP_SwordBlessed);
		};
	}
	else
	{
		AI_PrintScreen(Print_NotEnoughGold,-1,YPOS_GoldGiven,FONT_ScreenSmall,2);
	};
};


instance PC_PrayShrine_BlessSword_Final(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = PC_PrayShrine_BlessSword_Final_Condition;
	information = PC_PrayShrine_BlessSword_Final_Info;
	permanent = TRUE;
	description = Bless_Sword2;
};


func int PC_PrayShrine_BlessSword_Final_Condition()
{
	if((player_mobsi_production == MOBSI_PrayShrine) && (hero.guild == GIL_PAL) && (Npc_GetDistToWP(hero,"NW_MONASTERY_CHAPELL_02") <= 500) && (PAL_KnowsAbout_FINAL_BLESSING == TRUE) && ((Npc_HasItems(hero,ItMw_1H_Blessed_02) >= 1) || (Npc_HasItems(hero,ItMw_2H_Blessed_02) >= 1)))
	{
		return TRUE;
	};
};

func void PC_PrayShrine_BlessSword_Final_Info()
{
	if(ShrineIsObsessed == TRUE)
	{
		SC_IsObsessed = TRUE;
		PrintScreen(PRINT_SCIsObsessed,-1,-1,FONT_Screen,2);
		Snd_Play("DEM_Die");
	}
	else if((Npc_HasItems(hero,ItPo_PotionOfDeath_01_Mis) >= 1) || (Npc_HasItems(hero,ItPo_PotionOfDeath_02_Mis) >= 1))
	{
		Npc_RemoveInvItems(hero,ItPo_PotionOfDeath_01_Mis,1);
		Npc_RemoveInvItems(hero,ItPo_PotionOfDeath_02_Mis,1);
		if(Npc_HasItems(hero,ItMw_2H_Blessed_02) >= 1)
		{
			Npc_RemoveInvItems(hero,ItMw_2H_Blessed_02,1);
			CreateInvItems(hero,ItMw_2H_Blessed_03,1);
			Wld_PlayEffect("spellFX_PalHeal_ORIGIN",hero,hero,0,0,0,FALSE);
			Snd_Play("MFX_Heal_Cast");
			B_GivePlayerXP(XP_SwordBlessed2);
		}
		else
		{
			Npc_RemoveInvItems(hero,ItMw_1H_Blessed_02,1);
			CreateInvItems(hero,ItMw_1H_Blessed_03,1);
			Wld_PlayEffect("spellFX_PalHeal_ORIGIN",hero,hero,0,0,0,FALSE);
			Snd_Play("MFX_Heal_Cast");
			B_GivePlayerXP(XP_SwordBlessed2);
		};
	}
	else
	{
		AI_PrintScreen(PRINT_NoInnosTears,-1,YPOS_GoldGiven,FONT_ScreenSmall,2);
	};
};

