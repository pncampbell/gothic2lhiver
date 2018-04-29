
instance DIA_Sarah_EXIT(C_Info)
{
	npc = VLK_470_Sarah;
	nr = 999;
	condition = DIA_Sarah_EXIT_Condition;
	information = DIA_Sarah_EXIT_Info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int DIA_Sarah_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Sarah_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Sarah_PICKPOCKET(C_Info)
{
	npc = VLK_470_Sarah;
	nr = 900;
	condition = DIA_Sarah_PICKPOCKET_Condition;
	information = DIA_Sarah_PICKPOCKET_Info;
	permanent = TRUE;
	description = Pickpocket_60_Female;
};


func int DIA_Sarah_PICKPOCKET_Condition()
{
	return C_Beklauen(57,60);
};

func void DIA_Sarah_PICKPOCKET_Info()
{
	Info_ClearChoices(DIA_Sarah_PICKPOCKET);
	Info_AddChoice(DIA_Sarah_PICKPOCKET,Dialog_Back,DIA_Sarah_PICKPOCKET_BACK);
	Info_AddChoice(DIA_Sarah_PICKPOCKET,DIALOG_PICKPOCKET,DIA_Sarah_PICKPOCKET_DoIt);
};

func void DIA_Sarah_PICKPOCKET_DoIt()
{
	B_Beklauen();
	Info_ClearChoices(DIA_Sarah_PICKPOCKET);
};

func void DIA_Sarah_PICKPOCKET_BACK()
{
	Info_ClearChoices(DIA_Sarah_PICKPOCKET);
};


instance DIA_Sarah_Greet(C_Info)
{
	npc = VLK_470_Sarah;
	nr = 1;
	condition = DIA_Sarah_Greet_Condition;
	information = DIA_Sarah_Greet_Info;
	permanent = TRUE;
	important = TRUE;
};


func int DIA_Sarah_Greet_Condition()
{
	if(Npc_IsInState(self,ZS_Talk) && (Canthar_Ausgeliefert == TRUE))
	{
		return TRUE;
	};
};

func void DIA_Sarah_Greet_Info()
{
	AI_Output(self,other,"DIA_Sarah_Add_16_07");	//Ah! There you are again!
};


instance DIA_Sarah_HALLO(C_Info)
{
	npc = VLK_470_Sarah;
	condition = DIA_Sarah_HALLO_Condition;
	information = DIA_Sarah_HALLO_Info;
	permanent = FALSE;
	description = "How's business?";
};


func int DIA_Sarah_HALLO_Condition()
{
	return TRUE;
};

func void DIA_Sarah_HALLO_Info()
{
	AI_Output(other,self,"DIA_Sarah_HALLO_15_00");	//How's business?
	AI_Output(self,other,"DIA_Sarah_HALLO_16_01");	//When the paladins came, I first thought that was a good business opportunity.
	AI_Output(self,other,"DIA_Sarah_HALLO_16_02");	//But they let Harad make their weapons, and neither Hakon nor I make even one gold piece off of them.
	AI_Output(self,other,"DIA_Sarah_HALLO_16_03");	//Moreover, the farmers no longer supply us with food, and all the prices have gone up.
	Log_CreateTopic(TOPIC_CityTrader,LOG_NOTE);
	B_LogEntry(TOPIC_CityTrader,"Sarah sells weapons at the marketplace.");
};


instance DIA_Sarah_Bauern(C_Info)
{
	npc = VLK_470_Sarah;
	nr = 2;
	condition = DIA_Sarah_Bauern_Condition;
	information = DIA_Sarah_Bauern_Info;
	permanent = FALSE;
	description = "What's the problem with the farmers?";
};


func int DIA_Sarah_Bauern_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Sarah_HALLO))
	{
		return TRUE;
	};
};

func void DIA_Sarah_Bauern_Info()
{
	AI_Output(other,self,"DIA_Sarah_Bauern_15_00");	//What's the problem with the farmers?
	AI_Output(self,other,"DIA_Sarah_Bauern_16_01");	//They refuse to deliver their goods.
	AI_Output(self,other,"DIA_Sarah_Bauern_16_02");	//Now that the ships no longer come in, the city depends entirely on supplies provided by the farmers, of course.
	AI_Output(self,other,"DIA_Sarah_Bauern_16_03");	//And Onar, the largest farmer, has hired mercenaries to protect his farm from the city guards. Otherwise, they'd simply snatch the goods for themselves.
	AI_Output(self,other,"DIA_Sarah_Add_16_01");	//But the mercenaries don't just guard Onar's farm.
	AI_Output(self,other,"DIA_Sarah_Add_16_02");	//They come as far as the small farms outside of town to intimidate the farmers.
	AI_Output(self,other,"DIA_Sarah_Add_16_03");	//I saw them as I was passing Akil's farm. I wouldn't like to be in his shoes now.
};


instance DIA_Sarah_AkilsHof(C_Info)
{
	npc = VLK_470_Sarah;
	nr = 3;
	condition = DIA_Sarah_AkilsHof_Condition;
	information = DIA_Sarah_AkilsHof_Info;
	permanent = FALSE;
	description = "Where can I find Akil's farm?";
};


func int DIA_Sarah_AkilsHof_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Sarah_Bauern))
	{
		return TRUE;
	};
};

func void DIA_Sarah_AkilsHof_Info()
{
	AI_Output(other,self,"DIA_Sarah_AkilsHof_15_00");	//Where will I find Akil's farm?
	AI_Output(self,other,"DIA_Sarah_Add_16_04");	//If you go out of the east gate here and follow the road to the right, you'll come to a stairway.
	AI_Output(self,other,"DIA_Sarah_Add_16_05");	//It leads up to Akil's farm.
	AI_Output(self,other,"DIA_Sarah_Add_16_06");	//But I wouldn't go there now - the mercenaries are certainly still there.
};


instance DIA_Sarah_Trade(C_Info)
{
	npc = VLK_470_Sarah;
	nr = 99;
	condition = DIA_Sarah_Trade_Condition;
	information = DIA_Sarah_Trade_Info;
	trade = TRUE;
	permanent = TRUE;
	description = DIALOG_TRADE_V4;
};


func int DIA_Sarah_Trade_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Sarah_HALLO) && (MIS_Canthars_KomproBrief != LOG_SUCCESS))
	{
		return TRUE;
	};
};

func void DIA_Sarah_Trade_Info()
{
	if(sarah_flag == 1)
	{
		b_clearsmithinv(self);
		if(sarah_swordraws > 0)
		{
			CreateInvItems(self,ItMiSwordraw,sarah_swordraws);
		};
		sarah_flag = 0;
	};
	AI_Output(other,self,"DIA_Sarah_Trade_15_00");	//Show me your wares.
	B_GiveTradeInv(self);
	Sarah_WaffenGesehen = TRUE;
};


instance DIA_Sarah_IMKNAST(C_Info)
{
	npc = VLK_470_Sarah;
	nr = 99;
	condition = DIA_Sarah_IMKNAST_Condition;
	information = DIA_Sarah_IMKNAST_Info;
	permanent = TRUE;
	important = TRUE;
};


func int DIA_Sarah_IMKNAST_Condition()
{
	if((MIS_Canthars_KomproBrief == LOG_SUCCESS) && Npc_IsInState(self,ZS_Talk))
	{
		return TRUE;
	};
};

func void DIA_Sarah_IMKNAST_Info()
{
	AI_Output(self,other,"DIA_Sarah_IMKNAST_16_00");	//You! You dare show your face here! I cannot prove it, but I bet that you played a part in this dirty game.
	AI_Output(self,other,"DIA_Sarah_IMKNAST_16_01");	//It's your fault that I'm here. Yours, and that of this damned Canthar - may Innos punish you!
	AI_StopProcessInfos(self);
};


instance DIA_Sarah_Success(C_Info)
{
	npc = VLK_470_Sarah;
	nr = 4;
	condition = DIA_Sarah_Success_Condition;
	information = DIA_Sarah_Success_Info;
	permanent = FALSE;
	description = "Canthar was trying to trick you ...";
};


func int DIA_Sarah_Success_Condition()
{
	if(Canthar_Ausgeliefert == TRUE)
	{
		return TRUE;
	};
};

func void DIA_Sarah_Success_Info()
{
	AI_Output(other,self,"DIA_Sarah_Success_15_00");	//Canthar was trying to trick you, and to get your booth for himself. But I've turned him over to the city guard.
	AI_Output(self,other,"DIA_Sarah_Success_16_01");	//Then you've made an enemy of a dangerous man. I've known the bastard for a long time, and he's always wanted my place for himself.
	AI_Output(self,other,"DIA_Sarah_Success_16_02");	//Take this weapon as a token of my gratitude.
	B_GivePlayerXP(XP_CantharImKnast);
	B_GiveInvItems(self,other,ItMw_Piratensaebel,1);
};

