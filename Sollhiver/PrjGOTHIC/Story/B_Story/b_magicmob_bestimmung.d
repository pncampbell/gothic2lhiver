
func int b_magicmob_bestimmung()
{
	if(Hlp_StrCmp(Npc_GetNearestWP(self),"NW_NEWWORLD_MAGICORE_01") && (MAGICMOB_01_AMOUNT_MAX > magicmob_01_amount))
	{
		magicmob_01_amount = magicmob_01_amount + 1;
		return TRUE;
	}
	else if(Hlp_StrCmp(Npc_GetNearestWP(self),"NW_NEWWORLD_MAGICORE_02") && (MAGICMOB_02_AMOUNT_MAX > magicmob_02_amount))
	{
		magicmob_02_amount = magicmob_02_amount + 1;
		return TRUE;
	}
	else if(Hlp_StrCmp(Npc_GetNearestWP(self),"OW_OLDWORLD_MAGICORE_01") && (MAGICMOB_03_AMOUNT_MAX > magicmob_03_amount))
	{
		magicmob_03_amount = magicmob_03_amount + 1;
		return TRUE;
	}
	else if(Hlp_StrCmp(Npc_GetNearestWP(self),"OW_OLDWORLD_MAGICORE_02") && (MAGICMOB_04_AMOUNT_MAX > magicmob_04_amount))
	{
		magicmob_04_amount = magicmob_04_amount + 1;
		return TRUE;
	}
	else if(Hlp_StrCmp(Npc_GetNearestWP(self),"OW_OLDWORLD_MAGICORE_03") && (MAGICMOB_05_AMOUNT_MAX > magicmob_05_amount))
	{
		magicmob_05_amount = magicmob_05_amount + 1;
		return TRUE;
	}
	else if(Hlp_StrCmp(Npc_GetNearestWP(self),"OW_OLDWORLD_MAGICORE_04") && (MAGICMOB_06_AMOUNT_MAX > magicmob_06_amount))
	{
		magicmob_06_amount = magicmob_06_amount + 1;
		return TRUE;
	}
	else if(Hlp_StrCmp(Npc_GetNearestWP(self),"OW_OLDWORLD_MAGICORE_05") && (MAGICMOB_07_AMOUNT_MAX > magicmob_07_amount))
	{
		magicmob_07_amount = magicmob_07_amount + 1;
		return TRUE;
	}
	else if(Hlp_StrCmp(Npc_GetNearestWP(self),"OW_OLDWORLD_MAGICORE_06") && (MAGICMOB_08_AMOUNT_MAX > magicmob_08_amount))
	{
		magicmob_08_amount = magicmob_08_amount + 1;
		return TRUE;
	}
	else if(Hlp_StrCmp(Npc_GetNearestWP(self),"OW_OLDWORLD_MAGICORE_07") && (MAGICMOB_09_AMOUNT_MAX > magicmob_09_amount))
	{
		magicmob_09_amount = magicmob_09_amount + 1;
		return TRUE;
	}
	else if(Hlp_StrCmp(Npc_GetNearestWP(self),"OW_OLDWORLD_MAGICORE_08") && (MAGICMOB_10_AMOUNT_MAX > magicmob_10_amount))
	{
		magicmob_10_amount = magicmob_10_amount + 1;
		return TRUE;
	};
	return FALSE;
};

func void magichacken_s1()
{
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	{
		self.aivar[AIV_INVINCIBLE] = TRUE;
		player_mobsi_production = MOBSI_MAGICHACKEN;
		AI_ProcessInfos(hero);
	};
};


instance PC_MAGICHACKEN_END(C_Info)
{
	npc = PC_Hero;
	nr = 999;
	condition = pc_magichacken_end_condition;
	information = pc_magichacken_end_info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int pc_magichacken_end_condition()
{
	if(player_mobsi_production == MOBSI_MAGICHACKEN)
	{
		return TRUE;
	};
};

func void pc_magichacken_end_info()
{
	Truemmer_Count = 0;
	b_endproductiondialog();
};


instance PC_MAGICHACKEN_ADDON_HOUR(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_magichacken_addon_hour_condition;
	information = pc_magichacken_addon_hour_info;
	permanent = TRUE;
	description = "Mine ore";
};


func int pc_magichacken_addon_hour_condition()
{
	if(player_mobsi_production == MOBSI_MAGICHACKEN)
	{
		return TRUE;
	};
};

func void pc_magichacken_addon_hour_info()
{
	if(b_magicmob_bestimmung() == TRUE)
	{
		if((player_talent_oremaster[0] == FALSE) && (player_talent_oremaster[1] == FALSE) && (player_talent_oremaster[2] == FALSE))
		{
			AI_Wait(hero,5);
			CreateInvItems(hero,ItMi_Nugget,1);
			Print(PRINT_OREPROCESS);
			b_addon_gemshacken();
			AI_PrintScreen("1 lump of ore mined!",-1,52,FONT_SCREENBRIGHTLARGE,2);
			Truemmer_Count = 0;
			b_endproductiondialog();
		}
		else if((player_talent_oremaster[0] == TRUE) && (player_talent_oremaster[1] == FALSE) && (player_talent_oremaster[2] == FALSE))
		{
			AI_Wait(hero,5);
			CreateInvItems(hero,ItMi_Nugget,2);
			Print(PRINT_OREPROCESS);
			b_addon_gemshacken();
			AI_PrintScreen("2 lumps of ore mined!",-1,52,FONT_SCREENBRIGHTLARGE,2);
			Truemmer_Count = 0;
			b_endproductiondialog();
		}
		else if((player_talent_oremaster[1] == TRUE) && (player_talent_oremaster[0] == TRUE) && (player_talent_oremaster[2] == FALSE))
		{
			AI_Wait(hero,5);
			CreateInvItems(hero,ItMi_Nugget,3);
			Print(PRINT_OREPROCESS);
			b_addon_gemshacken();
			AI_PrintScreen("3 lumps of ore mined!",-1,52,FONT_SCREENBRIGHTLARGE,2);
			Truemmer_Count = 0;
			b_endproductiondialog();
		}
		else if((player_talent_oremaster[2] == TRUE) && (player_talent_oremaster[0] == TRUE) && (player_talent_oremaster[1] == TRUE))
		{
			AI_Wait(hero,5);
			CreateInvItems(hero,ItMi_Nugget,4);
			Print(PRINT_OREPROCESS);
			b_addon_gemshacken();
			AI_PrintScreen("4 lumps of ore mined!",-1,52,FONT_SCREENBRIGHTLARGE,2);
			Truemmer_Count = 0;
			b_endproductiondialog();
		};
	}
	else if((Npc_GetDistToWP(hero,"OW_NEWMINE_05") <= 2500) || (Npc_GetDistToWP(hero,"OW_XN_PATH_MINE_05") <= 1200) || (Npc_GetDistToWP(hero,"OW_XN_PATH_06_ADD_ORE") <= 500) || (Npc_GetDistToWP(hero,"OW_MINE2_GRIMES") <= 1200))
	{
		AI_PrintScreen("Someone has already been here!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else
	{
		PrintScreen("There's nothing else to be had here!",-1,-1,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};

