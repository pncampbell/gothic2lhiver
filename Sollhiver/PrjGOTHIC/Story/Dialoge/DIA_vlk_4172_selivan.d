
instance DIA_SELIVAN_EXIT(C_Info)
{
	npc = vlk_4172_selivan;
	nr = 999;
	condition = dia_selivan_exit_condition;
	information = dia_selivan_exit_info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int dia_selivan_exit_condition()
{
	return TRUE;
};

func void dia_selivan_exit_info()
{
	AI_StopProcessInfos(self);
};


instance DIA_SELIVAN_TRADE(C_Info)
{
	npc = vlk_4172_selivan;
	nr = 99;
	condition = dia_selivan_trade_condition;
	information = dia_selivan_trade_info;
	permanent = TRUE;
	trade = TRUE;
	description = "Trade";
};


func int dia_selivan_trade_condition()
{
	if(Npc_GetDistToWP(self,"NW_CITY_HABOUR_ENCHANT_IN_STAND") <= 500)
	{
		return TRUE;
	};
};

func void dia_selivan_trade_info()
{
	AI_Output(other,self,"DIA_Orlan_TRADE_15_00");	//Show me your wares.
	B_GiveTradeInv(self);
};


instance dia_selivan_teach_enchanting(C_Info)
{
	npc = vlk_4172_selivan;
	nr = 1;
	condition = dia_selivan_teach_enchanting_condition;
	information = dia_selivan_teach_enchanting_info;
	permanent = TRUE;
	description = "Can you teach me anything?";
};


func int dia_selivan_teach_enchanting_condition()
{
	if((player_talent_enchanting[0] == FALSE) || (player_talent_enchanting[1] == FALSE) || (player_talent_enchanting[2] == FALSE) || (enchant_special_01 == FALSE) || (enchant_special_02 == FALSE))
	{
		return TRUE;
	};
};

func void dia_selivan_teach_enchanting_info()
{
	AI_Output(other,self,"DIA_Carl_Lernen_15_00");	//Can you teach me anything?
	if((player_talent_enchanting[0] == FALSE) || (player_talent_enchanting[1] == FALSE) || (player_talent_enchanting[2] == FALSE) || (enchant_special_01 == FALSE) || (enchant_special_02 == FALSE))
	{
		Info_ClearChoices(dia_selivan_teach_enchanting);
		Info_AddChoice(dia_selivan_teach_enchanting,Dialog_Back,dia_selivan_teach_enchanting_back);
	};
	if(player_talent_enchanting[0] == FALSE)
	{
		Info_AddChoice(dia_selivan_teach_enchanting,B_BuildLearnString("Learn enchanting - Novice",B_GetLearnCostTalent(other,NPC_TALENT_ENCHANTING,ENCHANTMASTERY_0)),dia_selivan_teach_enchanting_enchantmastery_0);
	}
	else if((player_talent_enchanting[1] == FALSE) && (player_talent_enchanting[0] == TRUE))
	{
		Info_AddChoice(dia_selivan_teach_enchanting,B_BuildLearnString("Learn enchanting - Wizard",B_GetLearnCostTalent(other,NPC_TALENT_ENCHANTING,ENCHANTMASTERY_1)),dia_selivan_teach_enchanting_enchantmastery_1);
	}
	else if((player_talent_enchanting[2] == FALSE) && (player_talent_enchanting[0] == TRUE) && (player_talent_enchanting[1] == TRUE))
	{
		Info_AddChoice(dia_selivan_teach_enchanting,B_BuildLearnString("Learn enchanting - Master Wizard",B_GetLearnCostTalent(other,NPC_TALENT_ENCHANTING,ENCHANTMASTERY_2)),dia_selivan_teach_enchanting_enchantmastery_2);
	};
	if((player_talent_enchanting[2] == TRUE) && (enchant_special_01 == FALSE))
	{
		Info_AddChoice(dia_selivan_teach_enchanting,"Special enchantment - Ring of body regeneration (5 LP)",dia_selivan_teach_enchanting_special_01);
	};
	if((player_talent_enchanting[2] == TRUE) && (enchant_special_02 == FALSE))
	{
		Info_AddChoice(dia_selivan_teach_enchanting,"Special enchantment - Ring of metal restoration (5 LP)",dia_selivan_teach_enchanting_special_02);
	};
};

func void dia_selivan_teach_enchanting_back()
{
	Info_ClearChoices(dia_selivan_teach_enchanting);
};

func void dia_selivan_teach_enchanting_enchantmastery_0()
{
	AI_Output(other,self,"DIA_Addon_Cavalorn_TEACH_15_00");	//I want to learn your abilities.
	if(hero.guild == GIL_KDF)
	{
		if(Npc_GetTalentSkill(other,NPC_TALENT_MAGE) >= 1)
		{
			b_teachplayertalentenchanting(self,other,ENCHANTMASTERY_0);
			Info_ClearChoices(dia_selivan_teach_enchanting);
		}
		else
		{
			AI_Output(self,other,"DIA_Addon_Selivan_TEACH_01_00");	//Sorry, but my knowledge can only be shared to a man with magical abilities.
			AI_PrintScreen(PRINT_MAGECIRCLE_1_MISSING,-1,52,FONT_SCREENBRIGHTLARGE,3);
			AI_StopProcessInfos(self);
		};
	}
	else
	{
		AI_Output(self,other,"DIA_Addon_Selivan_TEACH_01_00");	//Sorry, but my knowledge can only be shared to a man with magical abilities.
		AI_StopProcessInfos(self);
	};
};

func void dia_selivan_teach_enchanting_enchantmastery_1()
{
	AI_Output(other,self,"DIA_Addon_Cavalorn_TEACH_15_00");	//I want to learn your abilities.
	if(hero.guild == GIL_KDF)
	{
		if(Npc_GetTalentSkill(other,NPC_TALENT_MAGE) >= 1)
		{
			b_teachplayertalentenchanting(self,other,ENCHANTMASTERY_1);
			Info_ClearChoices(dia_selivan_teach_enchanting);
		}
		else
		{
			AI_Output(self,other,"DIA_Addon_Selivan_TEACH_01_00");	//Sorry, but my knowledge can only be shared to a man with magical abilities.
			AI_PrintScreen(PRINT_MAGECIRCLE_2_MISSING,-1,52,FONT_SCREENBRIGHTLARGE,3);
			AI_StopProcessInfos(self);
		};
	}
	else
	{
		AI_Output(self,other,"DIA_Addon_Selivan_TEACH_01_00");	//Sorry, but my knowledge can only be shared to a man with magical abilities.
		AI_StopProcessInfos(self);
	};
};

func void dia_selivan_teach_enchanting_enchantmastery_2()
{
	AI_Output(other,self,"DIA_Addon_Cavalorn_TEACH_15_00");	//I want to learn your abilities.
	if(hero.guild == GIL_KDF)
	{
		if(Npc_GetTalentSkill(other,NPC_TALENT_MAGE) >= 1)
		{
			b_teachplayertalentenchanting(self,other,ENCHANTMASTERY_2);
			Info_ClearChoices(dia_selivan_teach_enchanting);
		}
		else
		{
			AI_Output(self,other,"DIA_Addon_Selivan_TEACH_01_00");	//Sorry, but my knowledge can only be shared to a man with magical abilities.
			AI_PrintScreen(PRINT_MAGECIRCLE_3_MISSING,-1,52,FONT_SCREENBRIGHTLARGE,3);
			AI_StopProcessInfos(self);
		};
	}
	else
	{
		AI_Output(self,other,"DIA_Addon_Selivan_TEACH_01_00");	//Sorry, but my knowledge can only be shared to a man with magical abilities.
		AI_StopProcessInfos(self);
	};
};

func void dia_selivan_teach_enchanting_special_01()
{
	AI_Output(other,self,"DIA_Addon_Cavalorn_TEACH_15_00");	//I want to learn your abilities.
	if(hero.guild == GIL_KDF)
	{
		if(Npc_GetTalentSkill(other,NPC_TALENT_MAGE) >= 3)
		{
			if(player_talent_enchanting[2] == TRUE)
			{
				if(enchant_special_01 == FALSE)
				{
					if(hero.lp < 5)
					{
						PrintScreen(PRINT_NotEnoughLearnPoints,-1,-1,FONT_ScreenSmall,2);
						B_Say(self,other,"$NOLEARNNOPOINTS");
						AI_StopProcessInfos(self);
					}
					else
					{
						hero.lp = hero.lp - 5;
						enchant_special_01 = TRUE;
						B_LogEntry(TOPIC_TALENTENCHANTING,"    ");
						B_LogEntry(TOPIC_TALENTENCHANTING,LOGTEXT_ADDON_ENCSPEC_01);
						B_LogEntry(TOPIC_TALENTENCHANTING,LOGTEXT_ENCH_SPEC01);
						AI_PrintScreen("Special enchantment - Ring of regeneration",-1,52,FONT_SCREENBRIGHTLARGE,3);
						Info_ClearChoices(dia_selivan_teach_enchanting);
					};
				};
			}
			else
			{
				AI_Output(self,other,"DIA_Addon_Selivan_TEACH_01_00");	//Sorry, but my knowledge can only be shared to a man with magical abilities.
				AI_PrintScreen("Required: Enchanting - Master Wizard",-1,52,FONT_SCREENBRIGHTLARGE,3);
				AI_StopProcessInfos(self);
			};
		}
		else
		{
			AI_Output(self,other,"DIA_Addon_Selivan_TEACH_01_00");	//Sorry, but my knowledge can only be shared to a man with magical abilities.
			AI_PrintScreen(PRINT_MAGECIRCLE_3_MISSING,-1,52,FONT_SCREENBRIGHTLARGE,3);
			AI_StopProcessInfos(self);
		};
	}
	else
	{
		AI_Output(self,other,"DIA_Addon_Selivan_TEACH_01_00");	//Sorry, but my knowledge can only be shared to a man with magical abilities.
		AI_StopProcessInfos(self);
	};
};

func void dia_selivan_teach_enchanting_special_02()
{
	AI_Output(other,self,"DIA_Addon_Cavalorn_TEACH_15_00");	//I want to learn your abilities.
	if(hero.guild == GIL_KDF)
	{
		if(Npc_GetTalentSkill(other,NPC_TALENT_MAGE) >= 3)
		{
			if(player_talent_enchanting[2] == TRUE)
			{
				if(enchant_special_02 == FALSE)
				{
					if(hero.lp < 5)
					{
						PrintScreen(PRINT_NotEnoughLearnPoints,-1,-1,FONT_ScreenSmall,2);
						B_Say(self,other,"$NOLEARNNOPOINTS");
						AI_StopProcessInfos(self);
					}
					else
					{
						hero.lp = hero.lp - 5;
						enchant_special_02 = TRUE;
						B_LogEntry(TOPIC_TALENTENCHANTING,"     ");
						B_LogEntry(TOPIC_TALENTENCHANTING,LOGTEXT_ADDON_ENCSPEC_02);
						B_LogEntry(TOPIC_TALENTENCHANTING,LOGTEXT_ENCH_SPEC02);
						AI_PrintScreen("Special enchantment - Ring of mental restoration",-1,52,FONT_SCREENBRIGHTLARGE,3);
						Info_ClearChoices(dia_selivan_teach_enchanting);
					};
				};
			}
			else
			{
				AI_Output(self,other,"DIA_Addon_Selivan_TEACH_01_00");	//Sorry, but my knowledge can only be shared to a man with magical abilities.
				AI_PrintScreen("Required: Enchanting - Master Wizard",-1,52,FONT_SCREENBRIGHTLARGE,3);
				AI_StopProcessInfos(self);
			};
		}
		else
		{
			AI_Output(self,other,"DIA_Addon_Selivan_TEACH_01_00");	//Sorry, but my knowledge can only be shared to a man with magical abilities.
			AI_PrintScreen(PRINT_MAGECIRCLE_3_MISSING,-1,52,FONT_SCREENBRIGHTLARGE,3);
			AI_StopProcessInfos(self);
		};
	}
	else
	{
		AI_Output(self,other,"DIA_Addon_Selivan_TEACH_01_00");	//Sorry, but my knowledge can only be shared to a man with magical abilities.
		AI_StopProcessInfos(self);
	};
};

