
instance DIA_Carl_EXIT(C_Info)
{
	npc = VLK_461_Carl;
	nr = 999;
	condition = DIA_Carl_EXIT_Condition;
	information = DIA_Carl_EXIT_Info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int DIA_Carl_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Carl_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

func void B_CarlSayHallo()
{
	AI_Output(self,other,"DIA_Carl_Hallo_05_00");	//It would seem that we have a few thieves in the city who steal stuff from the rich people.
	AI_Output(self,other,"DIA_Carl_Hallo_05_01");	//The city guard recently turned the harbor district upside-down - but they didn't find anything.
};


instance DIA_Carl_PICKPOCKET(C_Info)
{
	npc = VLK_461_Carl;
	nr = 900;
	condition = DIA_Carl_PICKPOCKET_Condition;
	information = DIA_Carl_PICKPOCKET_Info;
	permanent = TRUE;
	description = Pickpocket_40;
};


func int DIA_Carl_PICKPOCKET_Condition()
{
	return C_Beklauen(34,40);
};

func void DIA_Carl_PICKPOCKET_Info()
{
	Info_ClearChoices(DIA_Carl_PICKPOCKET);
	Info_AddChoice(DIA_Carl_PICKPOCKET,Dialog_Back,DIA_Carl_PICKPOCKET_BACK);
	Info_AddChoice(DIA_Carl_PICKPOCKET,DIALOG_PICKPOCKET,DIA_Carl_PICKPOCKET_DoIt);
};

func void DIA_Carl_PICKPOCKET_DoIt()
{
	B_Beklauen();
	Info_ClearChoices(DIA_Carl_PICKPOCKET);
};

func void DIA_Carl_PICKPOCKET_BACK()
{
	Info_ClearChoices(DIA_Carl_PICKPOCKET);
};


instance DIA_Carl_Hallo(C_Info)
{
	npc = VLK_461_Carl;
	nr = 2;
	condition = DIA_Carl_Hallo_Condition;
	information = DIA_Carl_Hallo_Info;
	permanent = FALSE;
	important = TRUE;
};


func int DIA_Carl_Hallo_Condition()
{
	if(Npc_IsInState(self,ZS_Talk))
	{
		return TRUE;
	};
};

func void DIA_Carl_Hallo_Info()
{
	AI_Output(self,other,"DIA_Carl_Hallo_05_02");	//What led you into this poor area? What are looking for here?
	Info_ClearChoices(DIA_Carl_Hallo);
	Info_AddChoice(DIA_Carl_Hallo,"I've lost my way.",DIA_Carl_Hallo_verlaufen);
	Info_AddChoice(DIA_Carl_Hallo,"I'm just looking around a bit.",DIA_Carl_Hallo_umsehen);
};

func void DIA_Carl_Hallo_verlaufen()
{
	AI_Output(other,self,"DIA_Carl_Hallo_verlaufen_15_00");	//I've lost my way.
	AI_Output(self,other,"DIA_Carl_Hallo_verlaufen_05_01");	//Then watch out that you aren't robbed.
	B_CarlSayHallo();
	Info_ClearChoices(DIA_Carl_Hallo);
};

func void DIA_Carl_Hallo_umsehen()
{
	AI_Output(other,self,"DIA_Carl_Hallo_umsehen_15_00");	//I'm just looking around a bit.
	AI_Output(self,other,"DIA_Carl_Hallo_umsehen_05_01");	//Aha. Then you had better not be caught looking around.
	B_CarlSayHallo();
	Info_ClearChoices(DIA_Carl_Hallo);
};


instance DIA_Carl_Diebe(C_Info)
{
	npc = VLK_461_Carl;
	nr = 3;
	condition = DIA_Carl_Diebe_Condition;
	information = DIA_Carl_Diebe_Info;
	permanent = FALSE;
	description = "What do you know about the thieves?";
};


func int DIA_Carl_Diebe_Condition()
{
	return TRUE;
};

func void DIA_Carl_Diebe_Info()
{
	AI_Output(other,self,"DIA_Carl_Diebe_15_00");	//What do you know about the thieves?
	AI_Output(self,other,"DIA_Carl_Diebe_05_01");	//Nothing. But all the citizens are scared and have become distrustful - particularly towards strangers.
	AI_Output(self,other,"DIA_Carl_Diebe_05_02");	//Don't get caught in strange houses - no one takes kindly to that.
	AI_Output(self,other,"DIA_Carl_Diebe_05_03");	//Yes, you have to protect yourself against thieves. A sturdy cudgel works best.
};


instance DIA_Carl_Lernen(C_Info)
{
	npc = VLK_461_Carl;
	nr = 3;
	condition = DIA_Carl_Lernen_Condition;
	information = DIA_Carl_Lernen_Info;
	permanent = FALSE;
	description = "Can you teach me something?";
};


func int DIA_Carl_Lernen_Condition()
{
	return TRUE;
};

func void DIA_Carl_Lernen_Info()
{
	AI_Output(other,self,"DIA_Carl_Lernen_15_00");	//Can you teach me anything?
	AI_Output(self,other,"DIA_Carl_Lernen_05_01");	//Oh, I'm forging a fews fittings and nails, and repairing iron parts.
	AI_Output(self,other,"DIA_Carl_Lernen_05_02");	//But I don't know enough about forging weapons to be able to instruct you.
	AI_Output(self,other,"DIA_Carl_Lernen_05_03");	//If you want to learn that, then go see Harad. He sure knows how to forge weapons!
	AI_Output(self,other,"DIA_Carl_Lernen_05_04");	//But if you wanna train your muscles a bit, I can help you with that.
	if((player_talent_smith[0] || player_talent_smith[13]) == TRUE)
	{
		AI_Output(other,self,"DIA_Harad_LEHRLING_OK_15_02");	//I already know how to do that!
		AI_Output(self,other,"DIA_Carl_bezahlen_05_02");	//Good, we can get started as soon as you're ready.
		AI_Output(self,other,"DIA_Carl_bezahlen_05_03");	//Get the gold, then I'll train you.
		Log_CreateTopic(TOPIC_CityTeacher,LOG_NOTE);
		B_LogEntry(TOPIC_CityTeacher,"Carl, the smith in the harbor district, can help me become stronger.");
	}
	else if((player_talent_smith[0] || player_talent_smith[13]) == FALSE)
	{
		AI_Output(other,self,"DIA_Lehmar_GELDLEIHEN_back_15_00");	//I'll think about it.
		Log_CreateTopic(TOPIC_CityTeacher,LOG_NOTE);
		B_LogEntry(TOPIC_CityTeacher,"Carl, the smith in the harbor district, can help me become stronger.");
	};
};


instance DIA_CARL_REQUEST(C_Info)
{
	npc = VLK_461_Carl;
	nr = 3;
	condition = dia_carl_request_condition;
	information = dia_carl_request_info;
	permanent = TRUE;
	description = "I want to train with you (250 gold).";
};


func int dia_carl_request_condition()
{
	if(Npc_KnowsInfo(other,DIA_Carl_Lernen) && (carl_teacharmor == FALSE) && ((player_talent_smith[0] || player_talent_smith[13]) == TRUE))
	{
		return TRUE;
	};
};

func void dia_carl_request_info()
{
	AI_Output(other,self,"DIA_Carl_bezahlen_15_00");	//I want to train with you.
	if(Npc_KnowsInfo(other,DIA_Edda_Statue))
	{
		AI_Output(self,other,"DIA_Carl_bezahlen_05_01");	//I heard what you did for Edda. I'll train you for nothing.
		carl_teacharmor = TRUE;
	}
	else if(B_GiveInvItems(other,self,ItMi_Gold,250))
	{
		AI_Output(self,other,"DIA_Carl_bezahlen_05_02");	//Good, we can get started as soon as you're ready.
		carl_teacharmor = TRUE;
	}
	else
	{
		AI_Output(self,other,"DIA_Carl_bezahlen_05_03");	//Get the gold, then I'll train you.
	};
};


instance dia_carl_teach_arm(C_Info)
{
	npc = VLK_461_Carl;
	nr = 90;
	condition = dia_carl_teach_arm_condition;
	information = dia_carl_teach_arm_info;
	permanent = TRUE;
	description = "Learn armor crafting/forging.";
};


func int dia_carl_teach_arm_condition()
{
	if((carl_teacharmor == TRUE) && ((player_talent_armor[0] == FALSE) || (player_talent_armor[1] == FALSE) || (player_talent_armor[2] == FALSE)))
	{
		return TRUE;
	};
};

func void dia_carl_teach_arm_info()
{
	if((player_talent_armor[0] == FALSE) || (player_talent_armor[1] == FALSE) || (player_talent_armor[2] == FALSE))
	{
		Info_ClearChoices(dia_carl_teach_arm);
		Info_AddChoice(dia_carl_teach_arm,Dialog_Back,dia_carl_teach_arm_back);
	};
	if(player_talent_armor[0] == FALSE)
	{
		Info_AddChoice(dia_carl_teach_arm,B_BuildLearnString("Learn: Armor crafting - Learner",B_GetLearnCostTalent(other,NPC_TALENT_ARMOR,ARMASTERY_1)),dia_carl_teach_arm_armastery_1);
	}
	else if((Kapitel == 1) && (player_talent_armor[0] == TRUE) && (player_talent_armor[1] == FALSE))
	{
		AI_Output(self,other,"DIA_Carl_Lernen_05_73");	//You need more practice, come back later.
		b_endproductiondialog();
	}
	else if((player_talent_armor[1] == FALSE) && (player_talent_armor[0] == TRUE) && (Kapitel >= 2))
	{
		Info_AddChoice(dia_carl_teach_arm,B_BuildLearnString("Learn: Armor crafting - Apprentice",B_GetLearnCostTalent(other,NPC_TALENT_ARMOR,ARMASTERY_2)),dia_carl_teach_arm_armastery_2);
	}
	else if((Kapitel == 2) && (player_talent_armor[1] == TRUE) && (player_talent_armor[2] == FALSE))
	{
		AI_Output(self,other,"DIA_Carl_Lernen_05_74");	//You will not become a professionist so fast. You still need a lot of practice to master everything.
		b_endproductiondialog();
	}
	else if((player_talent_armor[2] == FALSE) && (player_talent_armor[0] == TRUE) && (player_talent_armor[1] == TRUE) && (Kapitel >= 3))
	{
		Info_AddChoice(dia_carl_teach_arm,B_BuildLearnString("Learn: Armor crafting - Master",B_GetLearnCostTalent(other,NPC_TALENT_ARMOR,ARMASTERY_3)),dia_carl_teach_arm_armastery_3);
	};
};

func void dia_carl_teach_arm_back()
{
	Info_ClearChoices(dia_carl_teach_arm);
};

func void dia_carl_teach_arm_armastery_1()
{
	b_teachplayertalentarmor(self,other,ARMASTERY_1);
	Info_ClearChoices(dia_carl_teach_arm);
};

func void dia_carl_teach_arm_armastery_2()
{
	b_teachplayertalentarmor(self,other,ARMASTERY_2);
	Info_ClearChoices(dia_carl_teach_arm);
};

func void dia_carl_teach_arm_armastery_3()
{
	b_teachplayertalentarmor(self,other,ARMASTERY_3);
	Info_ClearChoices(dia_carl_teach_arm);
};


instance DIA_CARL_TRADEARMOR(C_Info)
{
	npc = VLK_461_Carl;
	nr = 4;
	condition = dia_carl_tradearmor_condition;
	information = dia_carl_tradearmor_info;
	permanent = TRUE;
	trade = TRUE;
	description = "Show me your wares.";
};


func int dia_carl_tradearmor_condition()
{
	if(Npc_KnowsInfo(other,DIA_Carl_Lernen))
	{
		return TRUE;
	};
};

func void dia_carl_tradearmor_info()
{
	b_clearsmithinv(self);
	B_GiveTradeInv(self);
	AI_Output(other,self,"DIA_Hakon_Trade_15_00");	//Show me your wares.
};

