
instance DIA_Harad_EXIT(C_Info)
{
	npc = VLK_412_Harad;
	nr = 999;
	condition = DIA_Harad_EXIT_Condition;
	information = DIA_Harad_EXIT_Info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int DIA_Harad_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Harad_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Harad_Hallo(C_Info)
{
	npc = VLK_412_Harad;
	nr = 2;
	condition = DIA_Harad_Hallo_Condition;
	information = DIA_Harad_Hallo_Info;
	permanent = FALSE;
	important = TRUE;
};


func int DIA_Harad_Hallo_Condition()
{
	if(Npc_IsInState(self,ZS_Talk) && (self.aivar[AIV_TalkedToPlayer] == TRUE))
	{
		return TRUE;
	};
};

func void DIA_Harad_Hallo_Info()
{
	AI_Output(self,other,"DIA_Harad_Hallo_12_00");	//(grumpy) What do you want?
};


instance DIA_Harad_Arbeit(C_Info)
{
	npc = VLK_412_Harad;
	nr = 1;
	condition = DIA_Harad_Arbeit_Condition;
	information = DIA_Harad_Arbeit_Info;
	permanent = FALSE;
	description = "I'm looking for work.";
};


func int DIA_Harad_Arbeit_Condition()
{
	return TRUE;
};

func void DIA_Harad_Arbeit_Info()
{
	AI_Output(other,self,"DIA_Harad_Arbeit_15_00");	//I'm looking for work!
	AI_Output(self,other,"DIA_Harad_Arbeit_12_01");	//Hm - I could use a new apprentice.
	AI_Output(self,other,"DIA_Harad_Arbeit_12_02");	//Brian will have finished his apprenticeship soon, and then he'll leave the city.
	AI_Output(self,other,"DIA_Harad_Arbeit_12_03");	//Are you good for anything?
	AI_Output(other,self,"DIA_Harad_Arbeit_15_04");	//If you mean, do I know blacksmith's work ...
	AI_Output(self,other,"DIA_Harad_Arbeit_12_05");	//No. That's not what I meant.
	AI_Output(self,other,"DIA_Harad_Arbeit_12_06");	//Sooner or later, the orcs are going to lay siege to the city, and then the only men who will count will be those who are in a position to defend our city.
	if(other.guild == GIL_NONE)
	{
		AI_Output(self,other,"DIA_Harad_Arbeit_12_07");	//And I won't take on anyone as an apprentice who will disgrace me by fleeing the city with the women and the good-for-nothings, instead of holding the fort here with the men.
	};
	Log_CreateTopic(TOPIC_Lehrling,LOG_MISSION);
	Log_SetTopicStatus(TOPIC_Lehrling,LOG_Running);
	B_LogEntry(TOPIC_Lehrling,"If I can convince Harad that I'm not a good-for-nothing, he'll accept me as his apprentice.");
};


instance DIA_Harad_Taugenichts(C_Info)
{
	npc = VLK_412_Harad;
	nr = 1;
	condition = DIA_Harad_Taugenichts_Condition;
	information = DIA_Harad_Taugenichts_Info;
	permanent = FALSE;
	description = "I'm not a good-for-nothing!";
};


func int DIA_Harad_Taugenichts_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Harad_Arbeit))
	{
		return TRUE;
	};
};

func void DIA_Harad_Taugenichts_Info()
{
	AI_Output(other,self,"DIA_Harad_Taugenichts_15_00");	//I'm not a good-for-nothing!
	AI_Output(self,other,"DIA_Harad_Taugenichts_12_01");	//Those are big words! Can you back them up with big deeds?
	AI_Output(other,self,"DIA_Harad_Taugenichts_15_02");	//What are you getting at?
	AI_Output(self,other,"DIA_Harad_Taugenichts_12_03");	//Bring me an orc's weapon.
	AI_Output(self,other,"DIA_Harad_Taugenichts_12_04");	//Orcs have been seen near the city. With a bit of luck, you won't have to search for long.
	AI_Output(self,other,"DIA_Harad_Taugenichts_12_05");	//If you manage to bring one down, I'll take you on as an apprentice.
	AI_Output(self,other,"DIA_Harad_Taugenichts_12_06");	//Provided the other masters agree.
	MIS_Harad_Orc = LOG_Running;
	Log_CreateTopic(TOPIC_HaradOrk,LOG_MISSION);
	Log_SetTopicStatus(TOPIC_HaradOrk,LOG_Running);
	B_LogEntry(TOPIC_HaradOrk,"An orc has been sited outside the city. The smith Harad wants me to kill it. An orc weapon will be evidence enough.");
};


instance DIA_Harad_OrcRunning(C_Info)
{
	npc = VLK_412_Harad;
	nr = 1;
	condition = DIA_Harad_OrcRunning_Condition;
	information = DIA_Harad_OrcRunning_Info;
	permanent = FALSE;
	description = "Let's talk again about that orc thing ...";
};


func int DIA_Harad_OrcRunning_Condition()
{
	if((MIS_Harad_Orc == LOG_Running) && (Harad_HakonMission == FALSE))
	{
		return TRUE;
	};
};

func void DIA_Harad_OrcRunning_Info()
{
	AI_Output(other,self,"DIA_Harad_OrcRunning_15_00");	//Let's talk again about that orc thing ...
	AI_Output(self,other,"DIA_Harad_OrcRunning_12_01");	//(brusque) What?
	Info_ClearChoices(DIA_Harad_OrcRunning);
	Info_AddChoice(DIA_Harad_OrcRunning,"Your orc is as good as dead!",DIA_Harad_OrcRunning_Done);
	Info_AddChoice(DIA_Harad_OrcRunning,"An orc is a damn tough opponent ...",DIA_Harad_OrcRunning_TooHard);
};

func void DIA_Harad_OrcRunning_TooHard()
{
	AI_Output(other,self,"DIA_Harad_OrcRunning_TooHard_15_00");	//But an orc is a damn tough opponent ...
	AI_Output(self,other,"DIA_Harad_OrcRunning_TooHard_12_01");	//Hm - looking at you, you might be right. You don't have much meat on your bones. But that can change.
	AI_Output(self,other,"DIA_Harad_OrcRunning_TooHard_12_02");	//Nevertheless, you have to prove to me that you have the courage to fight.
	AI_Output(other,self,"DIA_Harad_OrcRunning_TooHard_15_03");	//So couldn't it be something slightly smaller?
	AI_Output(self,other,"DIA_Harad_OrcRunning_TooHard_12_04");	//Hm - (considering) Hakon, the weapons dealer in the marketplace, told me that he was attacked by bandits a few days ago.
	AI_Output(self,other,"DIA_Harad_OrcRunning_TooHard_12_05");	//The bastards are said to be roaming around somewhere outside the east gate.
	AI_Output(self,other,"DIA_Harad_OrcRunning_TooHard_12_06");	//Those cowardly rogues shouldn't be terribly bright.
	AI_Output(self,other,"DIA_Harad_OrcRunning_TooHard_12_07");	//Hunt the bastards down! Every single one of them. Then I'll know that we can use you here in the city.
	Harad_HakonMission = TRUE;
	Log_CreateTopic(TOPIC_Lehrling,LOG_MISSION);
	Log_SetTopicStatus(TOPIC_Lehrling,LOG_Running);
	if(MIS_HakonBandits != LOG_Running)
	{
		B_LogEntry(TOPIC_Lehrling,"Harad told me bandits robbed the merchant Hakon outside the city. If I can hunt them down, he'll be convinced that I'm good. I should have a word with Hakon. Maybe he knows a bit more about where those bandits hang out.");
	}
	else
	{
		B_LogEntry(TOPIC_Lehrling,"Harad told me bandits robbed the merchant Hakon outside the city. If I can hunt them down, he'll be convinced that I'm good.");
	};
	Info_ClearChoices(DIA_Harad_OrcRunning);
};

func void DIA_Harad_OrcRunning_Done()
{
	AI_Output(other,self,"DIA_Harad_OrcRunning_Done_15_00");	//Your orc is as good as dead!
	AI_Output(self,other,"DIA_Harad_OrcRunning_Done_12_01");	//Good! Then stop wasting your breath and let your deeds speak for themselves.
	Info_ClearChoices(DIA_Harad_OrcRunning);
};


instance DIA_Harad_OrcSuccess(C_Info)
{
	npc = VLK_412_Harad;
	nr = 1;
	condition = DIA_Harad_OrcSuccess_Condition;
	information = DIA_Harad_OrcSuccess_Info;
	permanent = FALSE;
	description = "I've got the orc weapon you wanted.";
};


func int DIA_Harad_OrcSuccess_Condition()
{
	if(MIS_Harad_Orc == LOG_Running)
	{
		if((Npc_HasItems(other,ItMw_2H_OrcAxe_01) > 0) || (Npc_HasItems(other,ItMw_2H_OrcAxe_02) > 0) || (Npc_HasItems(other,ItMw_2H_OrcAxe_03) > 0) || (Npc_HasItems(other,ItMw_2H_OrcAxe_04) > 0) || (Npc_HasItems(other,ItMw_2H_OrcSword_01) > 0))
		{
			return TRUE;
		};
	};
};

func void DIA_Harad_OrcSuccess_Info()
{
	AI_Output(other,self,"DIA_Harad_OrcSuccess_15_00");	//I've got the orc weapon you wanted.
	AI_Output(self,other,"DIA_Harad_OrcSuccess_12_01");	//Show me ...
	if(Npc_HasItems(other,ItMw_2H_OrcAxe_01) > 0)
	{
		B_GiveInvItems(other,self,ItMw_2H_OrcAxe_01,1);
	}
	else if(Npc_HasItems(other,ItMw_2H_OrcAxe_02) > 0)
	{
		B_GiveInvItems(other,self,ItMw_2H_OrcAxe_02,1);
	}
	else if(Npc_HasItems(other,ItMw_2H_OrcAxe_03) > 0)
	{
		B_GiveInvItems(other,self,ItMw_2H_OrcAxe_03,1);
	}
	else if(Npc_HasItems(other,ItMw_2H_OrcAxe_04) > 0)
	{
		B_GiveInvItems(other,self,ItMw_2H_OrcAxe_04,1);
	}
	else
	{
		B_GiveInvItems(other,self,ItMw_2H_OrcSword_01,1);
	};
	if(Harad_HakonMission == TRUE)
	{
		AI_Output(self,other,"DIA_Harad_OrcSuccess_12_02");	//You did it AFTER ALL? Good man!
	};
	AI_Output(self,other,"DIA_Harad_OrcSuccess_12_03");	//It's been a while since I've had a weapon like this in my hands - I was a soldier back in the Orc War.
	AI_Output(self,other,"DIA_Harad_OrcSuccess_12_04");	//Those were tough times, I can tell you.
	if(Player_IsApprentice == APP_Harad)
	{
		AI_Output(self,other,"DIA_Harad_OrcSuccess_12_05");	//I knew there was a reason I took you on as an apprentice. Well done!
	}
	else if(Player_IsApprentice == APP_NONE)
	{
		AI_Output(self,other,"DIA_Harad_OrcSuccess_12_06");	//I didn't think you could do it. I'm impressed.
	}
	else
	{
		AI_Output(self,other,"DIA_Harad_OrcSuccess_12_07");	//Too bad you've decided on another path.
		AI_Output(self,other,"DIA_Harad_OrcSuccess_12_08");	//I could have really used you.
	};
	MIS_Harad_Orc = LOG_SUCCESS;
	B_GivePlayerXP(XP_Harad_Orc);
	B_LogEntry(TOPIC_Lehrling,"Harad will accept me as his apprentice if I can get the approval of the other masters.");
};


var int Harad_StartGuild;

instance DIA_Harad_LEHRLING(C_Info)
{
	npc = VLK_412_Harad;
	nr = 1;
	condition = DIA_Harad_LEHRLING_Condition;
	information = DIA_Harad_LEHRLING_Info;
	permanent = TRUE;
	description = "When can I start as your apprentice?";
};


func int DIA_Harad_LEHRLING_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Harad_Arbeit) && (Player_IsApprentice == APP_NONE))
	{
		return TRUE;
	};
};

func void DIA_Harad_LEHRLING_Info()
{
	var int stimmen;
	stimmen = 0;
	AI_Output(other,self,"DIA_Harad_LEHRLING_15_00");	//When can I start as your apprentice?
	if((MIS_Harad_Orc == LOG_SUCCESS) || ((MIS_HakonBandits == LOG_SUCCESS) && (Harad_HakonMission == TRUE)))
	{
		if(MIS_Harad_Orc == LOG_SUCCESS)
		{
			AI_Output(self,other,"DIA_Harad_LEHRLING_12_01");	//We can really use a man around here who can beat an orc.
			if(MIS_HakonBandits == LOG_SUCCESS)
			{
				AI_Output(self,other,"DIA_Harad_LEHRLING_12_02");	//Moreover, Hakon told me how you settled the business with the bandits. Good man!
			};
		}
		else
		{
			AI_Output(self,other,"DIA_Harad_LEHRLING_12_03");	//You didn't kill an orc, but Hakon told me how you settled the business with the bandits. Good man!
		};
		AI_Output(self,other,"DIA_Harad_LEHRLING_12_04");	//As far as I am concerned, you can start here right away.
		stimmen = stimmen + 1;
		AI_Output(self,other,"DIA_Harad_LEHRLING_12_05");	//As for the other masters ...
		if(Thorben.aivar[AIV_TalkedToPlayer] == TRUE)
		{
			if(MIS_Thorben_GetBlessings == LOG_SUCCESS)
			{
				AI_Output(self,other,"DIA_Harad_LEHRLING_12_06");	//Thorben has given you his blessing.
				stimmen = stimmen + 1;
			}
			else
			{
				AI_Output(self,other,"DIA_Harad_LEHRLING_12_07");	//Good old Thorben just wants you to get the blessing of the gods. I think that's a good idea.
			};
		}
		else
		{
			AI_Output(self,other,"DIA_Harad_LEHRLING_12_08");	//Thorben says he's never spoken to you.
		};
		if(Bosper.aivar[AIV_TalkedToPlayer] == TRUE)
		{
			AI_Output(self,other,"DIA_Harad_LEHRLING_12_09");	//Bosper tried to talk me out of it. He wants you as an apprentice for himself.
			if((MIS_Bosper_Bogen == LOG_SUCCESS) || (MIS_Bosper_WolfFurs == LOG_SUCCESS))
			{
				AI_Output(self,other,"DIA_Harad_LEHRLING_12_10");	//I had a brief, but intense, discussion with him on this matter.
				AI_Output(self,other,"DIA_Harad_LEHRLING_12_11");	//In the end, he agreed.
				stimmen = stimmen + 1;
			}
			else
			{
				AI_Output(self,other,"DIA_Harad_LEHRLING_12_12");	//He asked me to at least give him the opportunity to interest you in his profession.
				AI_Output(self,other,"DIA_Harad_LEHRLING_12_13");	//Take a look at it - you can always decide afterwards. Unless you don't want his vote, that is.
			};
		}
		else
		{
			AI_Output(self,other,"DIA_Harad_LEHRLING_12_14");	//And Bosper doesn't know you yet.
		};
		if(Constantino.aivar[AIV_TalkedToPlayer] == TRUE)
		{
			if(B_GetGreatestPetzCrime(self) == CRIME_NONE)
			{
				AI_Output(self,other,"DIA_Harad_LEHRLING_12_15");	//As usual, Constantino doesn't care about anything. He said that as far as he's concerned, you can start wherever you like.
				stimmen = stimmen + 1;
			}
			else
			{
				AI_Output(self,other,"DIA_Harad_LEHRLING_12_16");	//Constantino says you are accused of a crime here in the city - is that true?
				AI_Output(self,other,"DIA_Harad_LEHRLING_12_17");	//If so, then you should get that straightened out immediately!
			};
		}
		else
		{
			AI_Output(self,other,"DIA_Harad_LEHRLING_12_18");	//Constantino has never heard of you.
		};
		if(Matteo.aivar[AIV_TalkedToPlayer] == TRUE)
		{
			if(MIS_Matteo_Gold == LOG_SUCCESS)
			{
				AI_Output(self,other,"DIA_Harad_LEHRLING_12_19");	//And Matteo says you brought him back his gold. Seems to me, you're an honorable young man.
				stimmen = stimmen + 1;
			}
			else if(MIS_Matteo_Gold == LOG_Running)
			{
				AI_Output(self,other,"DIA_Harad_LEHRLING_12_20");	//And Matteo says you still owe him something. I don't know what there is between you, but you should get that straightened out.
			}
			else
			{
				AI_Output(self,other,"DIA_Harad_LEHRLING_12_21");	//And Matteo says he's never talked about this with you.
			};
		}
		else
		{
			AI_Output(self,other,"DIA_Harad_LEHRLING_12_22");	//And Matteo says he's never seen you in his shop.
		};
		if(stimmen >= 4)
		{
			if(stimmen == 5)
			{
				AI_Output(self,other,"DIA_Harad_LEHRLING_12_23");	//That means you have the approval of all the masters!
			}
			else
			{
				AI_Output(self,other,"DIA_Harad_LEHRLING_12_24");	//That means you have the approval of four masters. That's enough to be accepted as an apprentice.
			};
			AI_Output(self,other,"DIA_Harad_LEHRLING_12_25");	//Are you ready to start your apprenticeship with me?
			Info_ClearChoices(DIA_Harad_LEHRLING);
			Info_AddChoice(DIA_Harad_LEHRLING,"Good - I'll think about it.",DIA_Harad_LEHRLING_Later);
			Info_AddChoice(DIA_Harad_LEHRLING,"I'm in!",DIA_Harad_LEHRLING_OK);
		}
		else
		{
			AI_Output(self,other,"DIA_Harad_LEHRLING_12_26");	//You need the approval of at least four masters in order to be accepted as an apprentice in the lower part of town.
			AI_Output(self,other,"DIA_Harad_LEHRLING_12_27");	//So you should talk to all of them who still aren't convinced about you.
		};
	}
	else
	{
		AI_Output(self,other,"DIA_Harad_LEHRLING_12_28");	//Not before you've proven to me that you're good for something.
	};
};

func void DIA_Harad_LEHRLING_OK()
{
	AI_Output(other,self,"DIA_Harad_LEHRLING_OK_15_00");	//Count me in!
	AI_Output(self,other,"DIA_Harad_LEHRLING_OK_12_01");	//Good! I'll teach you how to forge a decent sword.
	AI_Output(other,self,"DIA_Harad_Aufgaben_15_00");	//What are my tasks as an apprentice?
	AI_Output(self,other,"DIA_Harad_Aufgaben_12_01");	//Three guesses.
	AI_Output(other,self,"DIA_Harad_Aufgaben_15_02");	//Forge, forge, and forge?
	AI_Output(self,other,"DIA_Harad_Aufgaben_12_03");	//You aren't as dumb as you look. I pay per blade. If you don't work, there's no money. It's that simple.
	AI_Output(self,other,"DIA_Harad_Aufgaben_12_05");	//Furthermore, I'll teach you everything you need to know to make a plain sword.
	AI_Output(self,other,"DIA_Harad_Aufgaben_12_06");	//Making magic blades is only something for experienced smiths - and you're a long way from that ...
	AI_Output(self,other,"DIA_Harad_Aufgaben_12_07");	//If you need a place to sleep, you can bunk down somewhere in my house. Everything clear so far?
	if(player_talent_smith[0] == TRUE)
	{
		AI_Output(other,self,"DIA_Harad_LEHRLING_OK_15_02");	//I already know how to do that!
		AI_Output(self,other,"DIA_Harad_LEHRLING_OK_12_03");	//Well, all the better!
	};
	if(other.attribute[ATR_STRENGTH] < (T_MED - 60))
	{
		AI_Output(self,other,"DIA_Harad_LEHRLING_OK_12_04");	//Besides that, it's time you got a bit stronger. You're wasting away before my very eyes!
	};
	Player_IsApprentice = APP_Harad;
	Npc_ExchangeRoutine(Lothar,"START");
	Harad_StartGuild = other.guild;
	Harad_Lehrling_Day = Wld_GetDay();
	Wld_AssignRoomToGuild("schmied",GIL_NONE);
	MIS_Apprentice = LOG_SUCCESS;
	B_LogEntry(Topic_Bonus,"Harad has accepted me as his apprentice. I now have access to the upper quarter.");
	B_LogEntry(Topic_Bonus,"Harad will buy the weapons I forge for a good price.");
	Log_CreateTopic(TOPIC_CityTeacher,LOG_NOTE);
	B_GivePlayerXP(XP_Lehrling);
	B_LogEntry(TOPIC_CityTeacher,"Harad can teach me the art of smithery. He can also help me become stronger.");
	Info_ClearChoices(DIA_Harad_LEHRLING);
};

func void DIA_Harad_LEHRLING_Later()
{
	AI_Output(other,self,"DIA_Harad_LEHRLING_Later_15_00");	//Good - I'll think about it.
	if(!Npc_IsDead(Brian))
	{
		AI_Output(self,other,"DIA_Harad_LEHRLING_Later_12_01");	//Take your time. Brian will still be here for a while.
	};
	Info_ClearChoices(DIA_Harad_LEHRLING);
};


instance DIA_Harad_Zustimmung(C_Info)
{
	npc = VLK_412_Harad;
	nr = 2;
	condition = DIA_Harad_Zustimmung_Condition;
	information = DIA_Harad_Zustimmung_Info;
	permanent = TRUE;
	description = "Can I sign on as an apprentice with a different master?";
};


func int DIA_Harad_Zustimmung_Condition()
{
	if((Player_IsApprentice == APP_NONE) && Npc_KnowsInfo(other,DIA_Harad_Arbeit))
	{
		return TRUE;
	};
};


var int DIA_Harad_Zustimmung_Permanent;

func void DIA_Harad_Zustimmung_Info()
{
	AI_Output(other,self,"DIA_Harad_Zustimmung_15_00");	//Can I sign on as an apprentice with a different master?
	if((MIS_Harad_Orc == LOG_SUCCESS) || ((MIS_HakonBandits == LOG_SUCCESS) && (Harad_HakonMission == TRUE)))
	{
		AI_Output(self,other,"DIA_Harad_Zustimmung_12_01");	//You're a good man.
		if(MIS_HakonBandits == LOG_SUCCESS)
		{
			AI_Output(self,other,"DIA_Harad_Zustimmung_12_02");	//Hakon told me how you handled the bandits.
		};
		AI_Output(self,other,"DIA_Harad_Zustimmung_12_03");	//I'll give you my approval.
		if(DIA_Harad_Zustimmung_Permanent == FALSE)
		{
			B_GivePlayerXP(XP_Zustimmung);
			DIA_Harad_Zustimmung_Permanent = TRUE;
		};
		B_LogEntry(TOPIC_Lehrling,"Harad will give his approval if I want to start as an apprentice somewhere.");
		if(!Npc_IsDead(Brian))
		{
			AI_Output(self,other,"DIA_Harad_Zustimmung_12_04");	//Brian will still be here for a while. And a strong lad to take his place will turn up in time.
		};
	}
	else
	{
		AI_Output(self,other,"DIA_Harad_Zustimmung_12_05");	//The other masters may well approve. But I will only give you my approval when you first prove that you're good for something!
	};
};


var int Harad_MILKommentar;
var int Harad_PALKommentar;
var int Harad_INNOSKommentar;

instance DIA_Harad_AlsLehrling(C_Info)
{
	npc = VLK_412_Harad;
	nr = 1;
	condition = DIA_Harad_AlsLehrling_Condition;
	information = DIA_Harad_AlsLehrling_Info;
	permanent = TRUE;
	important = TRUE;
};


func int DIA_Harad_AlsLehrling_Condition()
{
	if((Player_IsApprentice == APP_Harad) && Npc_IsInState(self,ZS_Talk))
	{
		return TRUE;
	};
};

func void DIA_Harad_AlsLehrling_Info()
{
	if((other.guild == GIL_MIL) && (Harad_StartGuild != GIL_MIL) && (Harad_MILKommentar == FALSE))
	{
		AI_Output(self,other,"DIA_Harad_AlsLehrling_12_00");	//You're with the militia now? I'm proud of you!
		AI_Output(self,other,"DIA_Harad_AlsLehrling_12_01");	//As long as you're in the army, naturally I won't expect you to fulfill your duties as an apprentice as well.
		AI_Output(self,other,"DIA_Harad_AlsLehrling_12_02");	//But if you need anything, you can come to me any time.
		Harad_MILKommentar = TRUE;
	}
	else if((other.guild == GIL_PAL) && (Harad_StartGuild != GIL_PAL) && (Harad_PALKommentar == FALSE))
	{
		AI_Output(self,other,"DIA_Harad_AlsLehrling_12_03");	//You managed to get accepted with the paladins!
		AI_Output(self,other,"DIA_Harad_AlsLehrling_12_04");	//I'm glad I took you on as an apprentice. Even if you didn't spend a lot of time behind the anvil.
		Harad_PALKommentar = TRUE;
	}
	else if(((other.guild == GIL_NOV) || (other.guild == GIL_KDF)) && (Harad_StartGuild != GIL_NOV) && (Harad_StartGuild != GIL_KDF) && (Harad_INNOSKommentar == FALSE))
	{
		AI_Output(self,other,"DIA_Harad_AlsLehrling_12_05");	//So you've entered the monastery. I'd have preferred it if you'd stayed in the city. We need every good man.
		AI_Output(self,other,"DIA_Harad_AlsLehrling_12_06");	//But if you had to follow the call of Innos, then that's the way it is.
		AI_Output(self,other,"DIA_Harad_AlsLehrling_12_07");	//If you need anything from me, I'm here for you.
		Harad_INNOSKommentar = TRUE;
	}
	else if((Harad_Lehrling_Day <= (Wld_GetDay() - 4)) && (Harad_MILKommentar == FALSE) && (Harad_PALKommentar == FALSE) && (Harad_INNOSKommentar == FALSE))
	{
		AI_Output(self,other,"DIA_Harad_AlsLehrling_12_08");	//It's been a while since the last time you were here. Where have you been hanging around, hm?
		Harad_Lehrling_Day = Wld_GetDay();
	}
	else
	{
		AI_Output(self,other,"DIA_Harad_AlsLehrling_12_09");	//There you are again ...
		Harad_Lehrling_Day = Wld_GetDay();
	};
};


instance DIA_Harad_Waffen(C_Info)
{
	npc = VLK_412_Harad;
	nr = 3;
	condition = DIA_Harad_Waffen_Condition;
	information = DIA_Harad_Waffen_Info;
	permanent = FALSE;
	description = "Do you sell weapons, too?";
};


func int DIA_Harad_Waffen_Condition()
{
	if(Kapitel == 1)
	{
		return TRUE;
	};
};

func void DIA_Harad_Waffen_Info()
{
	AI_Output(other,self,"DIA_Harad_Waffen_15_00");	//Do you sell weapons, too?
	AI_Output(self,other,"DIA_Harad_Waffen_12_01");	//Forget it. Everything I make goes to the paladins or the militia.
	AI_Output(self,other,"DIA_Harad_Add_12_00");	//I have a commission for 100 swords from Lord Hagen. He wants to equip the city guard.
};


instance DIA_Harad_SellBlades(C_Info)
{
	npc = VLK_412_Harad;
	nr = 200;
	condition = DIA_Harad_SellBlades_Condition;
	information = DIA_Harad_SellBlades_Info;
	permanent = TRUE;
	description = "Sale forged weapons.";
};


func int DIA_Harad_SellBlades_Condition()
{
	if(Player_IsApprentice == APP_Harad)
	{
		return TRUE;
	};
};

func void DIA_Harad_SellBlades_Info()
{
	var C_Item EquipWeap;
	var int anzahl_firstblade;
	var int anzahl_firstblade2h;
	var int anzahl_1hfinesword;
	var int anzahl_2hfinesword;
	var int anzahl_sot;
	var int anzahl_claymore;
	var int anzahl_finebastard;
	var int anzahl_flameberge;
	var int anzahl_anduril;
	var int anzahl_demonslayer;
	var int gesamt;
	var string concatText;
	var int lohn;
	AI_Output(other,self,"DIA_Harad_SellBlades_15_00");	//I want to sell the weapons I forged.
	EquipWeap = Npc_GetEquippedMeleeWeapon(other);
	anzahl_firstblade = Npc_HasItems(other,itmw_firstblade);
	if(Hlp_IsItem(EquipWeap,itmw_firstblade) == TRUE)
	{
		if(anzahl_firstblade > 1)
		{
			Npc_RemoveInvItems(other,itmw_firstblade,anzahl_firstblade);
		};
		anzahl_firstblade -= 1;
	};
	anzahl_firstblade2h = Npc_HasItems(other,itmw_firstblade2h);
	if(Hlp_IsItem(EquipWeap,itmw_firstblade2h) == TRUE)
	{
		if(anzahl_firstblade2h > 1)
		{
			Npc_RemoveInvItems(other,itmw_firstblade2h,anzahl_firstblade2h);
		};
		anzahl_firstblade2h -= 1;
	};
	anzahl_1hfinesword = Npc_HasItems(other,itmw_1hfinesword);
	if(Hlp_IsItem(EquipWeap,itmw_1hfinesword) == TRUE)
	{
		if(anzahl_1hfinesword > 1)
		{
			Npc_RemoveInvItems(other,itmw_1hfinesword,anzahl_1hfinesword);
		};
		anzahl_1hfinesword = anzahl_1hfinesword - 1;
	};
	anzahl_2hfinesword = Npc_HasItems(other,itmw_2hfinesword);
	if(Hlp_IsItem(EquipWeap,itmw_2hfinesword) == TRUE)
	{
		if(anzahl_2hfinesword > 1)
		{
			Npc_RemoveInvItems(other,itmw_2hfinesword,anzahl_2hfinesword);
		};
		anzahl_2hfinesword = anzahl_2hfinesword - 1;
	};
	anzahl_sot = Npc_HasItems(other,itmw_sot);
	if(Hlp_IsItem(EquipWeap,itmw_sot) == TRUE)
	{
		if(anzahl_sot > 1)
		{
			Npc_RemoveInvItems(other,itmw_sot,anzahl_sot);
		};
		anzahl_sot = anzahl_sot - 1;
	};
	anzahl_claymore = Npc_HasItems(other,itmw_claymore);
	if(Hlp_IsItem(EquipWeap,itmw_claymore) == TRUE)
	{
		if(anzahl_claymore > 1)
		{
			Npc_RemoveInvItems(other,itmw_claymore,anzahl_claymore);
		};
		anzahl_claymore = anzahl_claymore - 1;
	};
	anzahl_finebastard = Npc_HasItems(other,itmw_finebastard);
	if(Hlp_IsItem(EquipWeap,itmw_finebastard) == TRUE)
	{
		if(anzahl_finebastard > 1)
		{
			Npc_RemoveInvItems(other,itmw_finebastard,anzahl_finebastard);
		};
		anzahl_finebastard = anzahl_finebastard - 1;
	};
	anzahl_flameberge = Npc_HasItems(other,itmw_flameberge);
	if(Hlp_IsItem(EquipWeap,itmw_flameberge) == TRUE)
	{
		if(anzahl_flameberge > 1)
		{
			Npc_RemoveInvItems(other,itmw_flameberge,anzahl_flameberge);
		};
		anzahl_flameberge = anzahl_flameberge - 1;
	};
	anzahl_anduril = Npc_HasItems(other,itmw_anduril);
	if(Hlp_IsItem(EquipWeap,itmw_anduril) == TRUE)
	{
		if(anzahl_anduril > 1)
		{
			Npc_RemoveInvItems(other,itmw_anduril,anzahl_anduril);
		};
		anzahl_anduril = anzahl_anduril - 1;
	};
	anzahl_demonslayer = Npc_HasItems(other,itmw_demonslayer);
	if(Hlp_IsItem(EquipWeap,itmw_demonslayer) == TRUE)
	{
		if(anzahl_demonslayer > 1)
		{
			Npc_RemoveInvItems(other,itmw_demonslayer,anzahl_demonslayer);
		};
		anzahl_demonslayer = anzahl_demonslayer - 1;
	};
	gesamt = anzahl_firstblade + anzahl_firstblade2h + anzahl_1hfinesword + anzahl_2hfinesword + anzahl_sot + anzahl_claymore + anzahl_finebastard + anzahl_flameberge + anzahl_anduril + anzahl_demonslayer;
	if(gesamt == 0)
	{
		if((Hlp_IsItem(EquipWeap,itmw_firstblade) == TRUE) || (Hlp_IsItem(EquipWeap,itmw_firstblade2h) == TRUE) || (Hlp_IsItem(EquipWeap,itmw_1hfinesword) == TRUE) || (Hlp_IsItem(EquipWeap,itmw_2hfinesword) == TRUE) || (Hlp_IsItem(EquipWeap,itmw_sot) == TRUE) || (Hlp_IsItem(EquipWeap,itmw_claymore) == TRUE) || (Hlp_IsItem(EquipWeap,itmw_finebastard) == TRUE) || (Hlp_IsItem(EquipWeap,itmw_flameberge) == TRUE) || (Hlp_IsItem(EquipWeap,itmw_anduril) == TRUE) || (Hlp_IsItem(EquipWeap,itmw_demonslayer) == TRUE))
		{
			AI_Output(self,other,"DIA_Harad_SellBlades_12_01");	//All you have is the one on your belt. You'd better keep it.
		}
		else
		{
			AI_Output(self,other,"DIA_Harad_SellBlades_12_04");	//Then make some! I'll only accept plain swords.
		};
	}
	else
	{
		AI_Output(self,other,"DIA_Harad_SellBlades_12_02");	//Good - give it here.
		if(Hlp_IsItem(EquipWeap,itmw_firstblade) != TRUE)
		{
			Npc_RemoveInvItems(other,itmw_firstblade,anzahl_firstblade);
		};
		if(Hlp_IsItem(EquipWeap,itmw_firstblade2h) != TRUE)
		{
			Npc_RemoveInvItems(other,itmw_firstblade2h,anzahl_firstblade2h);
		};
		if(Hlp_IsItem(EquipWeap,itmw_1hfinesword) != TRUE)
		{
			Npc_RemoveInvItems(other,itmw_1hfinesword,anzahl_1hfinesword);
		};
		if(Hlp_IsItem(EquipWeap,itmw_2hfinesword) != TRUE)
		{
			Npc_RemoveInvItems(other,itmw_2hfinesword,anzahl_2hfinesword);
		};
		if(Hlp_IsItem(EquipWeap,itmw_sot) != TRUE)
		{
			Npc_RemoveInvItems(other,itmw_sot,anzahl_sot);
		};
		if(Hlp_IsItem(EquipWeap,itmw_claymore) != TRUE)
		{
			Npc_RemoveInvItems(other,itmw_claymore,anzahl_claymore);
		};
		if(Hlp_IsItem(EquipWeap,itmw_finebastard) != TRUE)
		{
			Npc_RemoveInvItems(other,itmw_finebastard,anzahl_finebastard);
		};
		if(Hlp_IsItem(EquipWeap,itmw_flameberge) != TRUE)
		{
			Npc_RemoveInvItems(other,itmw_flameberge,anzahl_flameberge);
		};
		if(Hlp_IsItem(EquipWeap,itmw_anduril) != TRUE)
		{
			Npc_RemoveInvItems(other,itmw_anduril,anzahl_anduril);
		};
		if(Hlp_IsItem(EquipWeap,itmw_demonslayer) != TRUE)
		{
			Npc_RemoveInvItems(other,itmw_demonslayer,anzahl_demonslayer);
		};
		concatText = ConcatStrings(IntToString(gesamt),PRINT_ItemsGegeben);
		AI_PrintScreen(concatText,-1,YPOS_ItemGiven,FONT_ScreenSmall,2);
		AI_Output(self,other,"DIA_Harad_SellBlades_12_03");	//Fine, and here's your pay.
		lohn = (anzahl_firstblade * VALUE_FIRSTBLADE) + (anzahl_firstblade2h * VALUE_FIRSTBLADE2H) + (anzahl_1hfinesword * VALUE_1HFINESWORD) + (anzahl_2hfinesword * VALUE_2HFINESWORD) + (anzahl_sot * VALUE_SOT) + (anzahl_claymore * VALUE_CLAYMORE) + (anzahl_finebastard * VALUE_FINEBASTARD) + (anzahl_flameberge * VALUE_FLAMEBERGE) + (anzahl_anduril * VALUE_ANDURIL) + (anzahl_demonslayer * VALUE_DEMONSLAYER);
		lohn = lohn / 3;
		B_GiveInvItems(self,other,ItMi_Gold,lohn);
	};
};

func void B_Harad_TeachSmith()
{
	AI_Output(self,other,"DIA_Harad_TeachCommon_12_01");	//It's quite simple, boy. Get a piece of raw steel and hold it in the fire until it glows.
	AI_Output(self,other,"DIA_Harad_TeachCommon_12_02");	//Then you pound the blade into shape on the anvil.
};

func void B_HaradSmithChoices()
{
	Info_ClearChoices(DIA_Harad_TeachSmith);
	Info_AddChoice(DIA_Harad_TeachSmith,Dialog_Back,DIA_Harad_TeachSmith_BACK);
	if((player_talent_smith[12] == FALSE) && (player_talent_smith[11] == TRUE))
	{
		Info_AddChoice(DIA_Harad_TeachSmith,B_BuildLearnString(NAME_ITMW_ANDURIL,B_GetLearnCostTalent(other,NPC_TALENT_SMITH,WEAPON_ANDURIL)),dia_harad_teachsmith_anduril);
	};
	if((player_talent_smith[11] == FALSE) && (player_talent_smith[10] == TRUE))
	{
		Info_AddChoice(DIA_Harad_TeachSmith,B_BuildLearnString(NAME_ITMW_FINEBASTARD,B_GetLearnCostTalent(other,NPC_TALENT_SMITH,WEAPON_FINEBASTARD)),dia_harad_teachsmith_finebastard);
	};
	if((player_talent_smith[10] == FALSE) && (player_talent_smith[9] == TRUE))
	{
		Info_AddChoice(DIA_Harad_TeachSmith,B_BuildLearnString(NAME_ITMW_SOT,B_GetLearnCostTalent(other,NPC_TALENT_SMITH,WEAPON_SOT)),dia_harad_teachsmith_sot);
	};
	if((player_talent_smith[9] == FALSE) && (player_talent_smith[0] == TRUE))
	{
		Info_AddChoice(DIA_Harad_TeachSmith,B_BuildLearnString(NAME_ITMW_1HFINESWORD,B_GetLearnCostTalent(other,NPC_TALENT_SMITH,WEAPON_1HFINESWORD)),dia_harad_teachsmith_1hfinesword);
	};
	if(player_talent_smith[0] == FALSE)
	{
		Info_AddChoice(DIA_Harad_TeachSmith,B_BuildLearnString(NAME_ITMW_FIRSTBLADE,B_GetLearnCostTalent(other,NPC_TALENT_SMITH,WEAPON_FIRSTBLADE)),dia_harad_teachsmith_firstblade);
	};
};

func void b_haradsmithchoicesheavy()
{
	Info_ClearChoices(dia_harad_teachsmithheavy);
	Info_AddChoice(dia_harad_teachsmithheavy,Dialog_Back,dia_harad_teachsmithheavy_back);
	if((player_talent_smith[17] == FALSE) && (player_talent_smith[16] == TRUE))
	{
		Info_AddChoice(dia_harad_teachsmithheavy,B_BuildLearnString(NAME_ITMW_FLAMEBERGE,B_GetLearnCostTalent(other,NPC_TALENT_SMITH,WEAPON_FLAMEBERGE)),dia_harad_teachsmith_flameberge);
	};
	if((player_talent_smith[16] == FALSE) && (player_talent_smith[14] == TRUE))
	{
		Info_AddChoice(dia_harad_teachsmithheavy,B_BuildLearnString(NAME_ITMW_DEMONSLAYER,B_GetLearnCostTalent(other,NPC_TALENT_SMITH,WEAPON_DEMONSLAYER)),dia_harad_teachsmith_demonslayer);
	};
	if((player_talent_smith[14] == FALSE) && (player_talent_smith[15] == TRUE))
	{
		Info_AddChoice(dia_harad_teachsmithheavy,B_BuildLearnString(NAME_ITMW_CLAYMORE,B_GetLearnCostTalent(other,NPC_TALENT_SMITH,WEAPON_CLAYMORE)),dia_harad_teachsmith_claymore);
	};
	if((player_talent_smith[15] == FALSE) && (player_talent_smith[13] == TRUE))
	{
		Info_AddChoice(dia_harad_teachsmithheavy,B_BuildLearnString(NAME_ITMW_2HFINESWORD,B_GetLearnCostTalent(other,NPC_TALENT_SMITH,WEAPON_2HFINESWORD)),dia_harad_teachsmith_2hfinesword);
	};
	if(player_talent_smith[13] == FALSE)
	{
		Info_AddChoice(dia_harad_teachsmithheavy,B_BuildLearnString(NAME_ITMW_FIRSTBLADE2H,B_GetLearnCostTalent(other,NPC_TALENT_SMITH,WEAPON_FIRSTBLADE2H)),dia_harad_teachsmith_firstblade2h);
	};
};

func void b_haradsmithchoicesshields()
{
	Info_ClearChoices(dia_harad_teachsmithshields);
	Info_AddChoice(dia_harad_teachsmithshields,Dialog_Back,dia_harad_teachsmithshields_back);
	if((player_talent_smith[24] == FALSE) && (player_talent_smith[23] == TRUE))
	{
		Info_AddChoice(dia_harad_teachsmithshields,B_BuildLearnString(NAME_ITSH_HARAD_05,B_GetLearnCostTalent(other,NPC_TALENT_SMITH,WEAPON_SH_HARAD_05)),dia_harad_teachsmith_sh_05);
	};
	if((player_talent_smith[23] == FALSE) && (player_talent_smith[22] == TRUE))
	{
		Info_AddChoice(dia_harad_teachsmithshields,B_BuildLearnString(NAME_ITSH_HARAD_04,B_GetLearnCostTalent(other,NPC_TALENT_SMITH,WEAPON_SH_HARAD_04)),dia_harad_teachsmith_sh_04);
	};
	if((player_talent_smith[22] == FALSE) && (player_talent_smith[21] == TRUE))
	{
		Info_AddChoice(dia_harad_teachsmithshields,B_BuildLearnString(NAME_ITSH_HARAD_03,B_GetLearnCostTalent(other,NPC_TALENT_SMITH,WEAPON_SH_HARAD_03)),dia_harad_teachsmith_sh_03);
	};
	if((player_talent_smith[21] == FALSE) && (player_talent_smith[20] == TRUE))
	{
		Info_AddChoice(dia_harad_teachsmithshields,B_BuildLearnString(NAME_ITSH_HARAD_02,B_GetLearnCostTalent(other,NPC_TALENT_SMITH,WEAPON_SH_HARAD_02)),dia_harad_teachsmith_sh_02);
	};
	if(player_talent_smith[20] == FALSE)
	{
		Info_AddChoice(dia_harad_teachsmithshields,B_BuildLearnString(NAME_ITSH_HARAD_01,B_GetLearnCostTalent(other,NPC_TALENT_SMITH,WEAPON_SH_HARAD_01)),dia_harad_teachsmith_sh_01);
	};
};


instance DIA_Harad_TeachSmith(C_Info)
{
	npc = VLK_412_Harad;
	nr = 50;
	condition = DIA_Harad_TeachSmith_Condition;
	information = DIA_Harad_TeachSmith_Info;
	permanent = TRUE;
	description = "Teach me how to forge one-handed sword!";
};


func int DIA_Harad_TeachSmith_Condition()
{
	if(Player_IsApprentice == APP_Harad)
	{
		if((player_talent_smith[0] == FALSE) || (player_talent_smith[9] == FALSE) || (player_talent_smith[10] == FALSE) || (player_talent_smith[11] == FALSE) || (player_talent_smith[12] == FALSE))
		{
			return TRUE;
		};
	};
};

func void DIA_Harad_TeachSmith_Info()
{
	AI_Output(other,self,"DIA_Harad_TeachCommon_15_00");	//Teach me how to forge a decent sword!
	B_HaradSmithChoices();
};


instance dia_harad_teachsmithheavy(C_Info)
{
	npc = VLK_412_Harad;
	nr = 50;
	condition = dia_harad_teachsmithheavy_condition;
	information = dia_harad_teachsmithheavy_info;
	permanent = TRUE;
	description = "Teach me how to forge two-handed sword!";
};


func int dia_harad_teachsmithheavy_condition()
{
	if(Player_IsApprentice == APP_Harad)
	{
		if((player_talent_smith[13] == FALSE) || (player_talent_smith[15] == FALSE) || (player_talent_smith[14] == FALSE) || (player_talent_smith[16] == FALSE) || (player_talent_smith[17] == FALSE))
		{
			return TRUE;
		};
	};
};

func void dia_harad_teachsmithheavy_info()
{
	AI_Output(other,self,"DIA_Harad_TeachCommon_15_00");	//Teach me how to forge a decent sword!
	b_haradsmithchoicesheavy();
};


instance dia_harad_teachsmithshields(C_Info)
{
	npc = VLK_412_Harad;
	nr = 50;
	condition = dia_harad_teachsmithshields_condition;
	information = dia_harad_teachsmithshields_info;
	permanent = TRUE;
	description = "Learn how to forge shields";
};


func int dia_harad_teachsmithshields_condition()
{
	if(Player_IsApprentice == APP_Harad)
	{
		if((player_talent_smith[20] == FALSE) || (player_talent_smith[21] == FALSE) || (player_talent_smith[22] == FALSE) || (player_talent_smith[23] == FALSE) || (player_talent_smith[24] == FALSE))
		{
			return TRUE;
		};
	};
};

func void dia_harad_teachsmithshields_info()
{
	b_haradsmithchoicesshields();
};

func void DIA_Harad_TeachSmith_BACK()
{
	Info_ClearChoices(DIA_Harad_TeachSmith);
};

func void dia_harad_teachsmithheavy_back()
{
	Info_ClearChoices(dia_harad_teachsmithheavy);
};

func void dia_harad_teachsmithshields_back()
{
	Info_ClearChoices(dia_harad_teachsmithshields);
};

func void dia_harad_teachsmith_firstblade()
{
	B_Harad_TeachSmith();
	AI_Output(self,other,"DIA_Harad_TeachCommon_12_03");	//Your first swords won't be masterpieces, but you can learn everything else later.
	B_TeachPlayerTalentSmith(self,other,WEAPON_FIRSTBLADE);
	B_HaradSmithChoices();
	cmplt1hsword_01 = FALSE;
};

func void dia_harad_teachsmith_1hfinesword()
{
	if(cmplt1hsword_01 == FALSE)
	{
		AI_PrintScreen(PRINT_NMPREBOW,-1,52,FONT_SCREENBRIGHTLARGE,3);
		AI_StopProcessInfos(self);
	}
	else
	{
		B_Harad_TeachSmith();
		B_TeachPlayerTalentSmith(self,other,WEAPON_1HFINESWORD);
		B_HaradSmithChoices();
	};
};

func void dia_harad_teachsmith_sot()
{
	if(cmplt1hsword_02 == FALSE)
	{
		AI_PrintScreen(PRINT_NMPREBOW,-1,52,FONT_SCREENBRIGHTLARGE,3);
		AI_StopProcessInfos(self);
	}
	else
	{
		B_Harad_TeachSmith();
		B_TeachPlayerTalentSmith(self,other,WEAPON_SOT);
		B_HaradSmithChoices();
	};
};

func void dia_harad_teachsmith_finebastard()
{
	if(cmplt1hsword_03 == FALSE)
	{
		AI_PrintScreen(PRINT_NMPREBOW,-1,52,FONT_SCREENBRIGHTLARGE,3);
		AI_StopProcessInfos(self);
	}
	else
	{
		B_Harad_TeachSmith();
		B_TeachPlayerTalentSmith(self,other,WEAPON_FINEBASTARD);
		B_HaradSmithChoices();
	};
};

func void dia_harad_teachsmith_anduril()
{
	if(cmplt1hsword_04 == FALSE)
	{
		AI_PrintScreen(PRINT_NMPREBOW,-1,52,FONT_SCREENBRIGHTLARGE,3);
		AI_StopProcessInfos(self);
	}
	else
	{
		B_Harad_TeachSmith();
		B_TeachPlayerTalentSmith(self,other,WEAPON_ANDURIL);
		B_HaradSmithChoices();
	};
};

func void dia_harad_teachsmith_firstblade2h()
{
	B_Harad_TeachSmith();
	AI_Output(self,other,"DIA_Harad_TeachCommon_12_03");	//Your first swords won't be masterpieces, but you can learn everything else later.
	B_TeachPlayerTalentSmith(self,other,WEAPON_FIRSTBLADE2H);
	b_haradsmithchoicesheavy();
	cmplt2hsword_01 = FALSE;
};

func void dia_harad_teachsmith_2hfinesword()
{
	if(cmplt2hsword_01 == FALSE)
	{
		AI_PrintScreen(PRINT_NMPREBOW,-1,52,FONT_SCREENBRIGHTLARGE,3);
		AI_StopProcessInfos(self);
	}
	else
	{
		B_Harad_TeachSmith();
		B_TeachPlayerTalentSmith(self,other,WEAPON_2HFINESWORD);
		b_haradsmithchoicesheavy();
	};
};

func void dia_harad_teachsmith_claymore()
{
	if(cmplt2hsword_02 == FALSE)
	{
		AI_PrintScreen(PRINT_NMPREBOW,-1,52,FONT_SCREENBRIGHTLARGE,3);
		AI_StopProcessInfos(self);
	}
	else
	{
		B_Harad_TeachSmith();
		B_TeachPlayerTalentSmith(self,other,WEAPON_CLAYMORE);
		b_haradsmithchoicesheavy();
	};
};

func void dia_harad_teachsmith_demonslayer()
{
	if(cmplt2hsword_03 == FALSE)
	{
		AI_PrintScreen(PRINT_NMPREBOW,-1,52,FONT_SCREENBRIGHTLARGE,3);
		AI_StopProcessInfos(self);
	}
	else
	{
		B_Harad_TeachSmith();
		B_TeachPlayerTalentSmith(self,other,WEAPON_DEMONSLAYER);
		b_haradsmithchoicesheavy();
	};
};

func void dia_harad_teachsmith_flameberge()
{
	if(cmplt2hsword_04 == FALSE)
	{
		AI_PrintScreen(PRINT_NMPREBOW,-1,52,FONT_SCREENBRIGHTLARGE,3);
		AI_StopProcessInfos(self);
	}
	else
	{
		B_Harad_TeachSmith();
		B_TeachPlayerTalentSmith(self,other,WEAPON_FLAMEBERGE);
		b_haradsmithchoicesheavy();
	};
};

func void dia_harad_teachsmith_sh_01()
{
	B_TeachPlayerTalentSmith(self,other,WEAPON_SH_HARAD_01);
	b_haradsmithchoicesshields();
};

func void dia_harad_teachsmith_sh_02()
{
	if(cmpltharsh_01 == FALSE)
	{
		AI_PrintScreen(PRINT_NMPREBOW,-1,52,FONT_SCREENBRIGHTLARGE,3);
		AI_StopProcessInfos(self);
	}
	else
	{
		B_TeachPlayerTalentSmith(self,other,WEAPON_SH_HARAD_02);
		b_haradsmithchoicesshields();
	};
};

func void dia_harad_teachsmith_sh_03()
{
	if(cmpltharsh_02 == FALSE)
	{
		AI_PrintScreen(PRINT_NMPREBOW,-1,52,FONT_SCREENBRIGHTLARGE,3);
		AI_StopProcessInfos(self);
	}
	else
	{
		B_TeachPlayerTalentSmith(self,other,WEAPON_SH_HARAD_03);
		b_haradsmithchoicesshields();
	};
};

func void dia_harad_teachsmith_sh_04()
{
	if(cmpltharsh_03 == FALSE)
	{
		AI_PrintScreen(PRINT_NMPREBOW,-1,52,FONT_SCREENBRIGHTLARGE,3);
		AI_StopProcessInfos(self);
	}
	else
	{
		B_TeachPlayerTalentSmith(self,other,WEAPON_SH_HARAD_04);
		b_haradsmithchoicesshields();
	};
};

func void dia_harad_teachsmith_sh_05()
{
	if(cmpltharsh_04 == FALSE)
	{
		AI_PrintScreen(PRINT_NMPREBOW,-1,52,FONT_SCREENBRIGHTLARGE,3);
		AI_StopProcessInfos(self);
	}
	else
	{
		B_TeachPlayerTalentSmith(self,other,WEAPON_SH_HARAD_05);
		b_haradsmithchoicesshields();
	};
};


var int Harad_Merke_STR;

instance DIA_Harad_TeachSTR(C_Info)
{
	npc = VLK_412_Harad;
	nr = 100;
	condition = DIA_Harad_TeachSTR_Condition;
	information = DIA_Harad_TeachSTR_Info;
	permanent = 1;
	description = "I want to become stronger!";
};


func int DIA_Harad_TeachSTR_Condition()
{
	if(Player_IsApprentice == APP_Harad)
	{
		return TRUE;
	};
};

func void DIA_Harad_TeachSTR_Info()
{
	AI_Output(other,self,"DIA_Harad_TeachSTR_15_00");	//I want to become stronger!
	Harad_Merke_STR = other.attribute[ATR_STRENGTH];
	Info_ClearChoices(DIA_Harad_TeachSTR);
	Info_AddChoice(DIA_Harad_TeachSTR,Dialog_Back,DIA_Harad_TeachSTR_BACK);
	Info_AddChoice(DIA_Harad_TeachSTR,B_BuildLearnString(PRINT_LearnSTR1,B_GetLearnCostAttribute(other,ATR_STRENGTH,1)),DIA_Harad_TeachSTR_1);
	Info_AddChoice(DIA_Harad_TeachSTR,B_BuildLearnString(PRINT_LearnSTR5,B_GetLearnCostAttribute(other,ATR_STRENGTH,5)),DIA_Harad_TeachSTR_5);
};

func void DIA_Harad_TeachSTR_BACK()
{
	if(Harad_Merke_STR < other.attribute[ATR_STRENGTH])
	{
		AI_Output(self,other,"DIA_Harad_TeachSTR_BACK_12_01");	//You've already put on a bit of muscle.
	};
	if(other.attribute[ATR_STRENGTH] < T_MEGA)
	{
		AI_Output(self,other,"DIA_Harad_TeachSTR_BACK_12_02");	//Come back if you want to learn more.
	};
	Info_ClearChoices(DIA_Harad_TeachSTR);
};

func void DIA_Harad_TeachSTR_1()
{
	B_TeachAttributePoints(self,other,ATR_STRENGTH,1,T_MEGA);
	Info_ClearChoices(DIA_Harad_TeachSTR);
	Info_AddChoice(DIA_Harad_TeachSTR,Dialog_Back,DIA_Harad_TeachSTR_BACK);
	Info_AddChoice(DIA_Harad_TeachSTR,B_BuildLearnString(PRINT_LearnSTR1,B_GetLearnCostAttribute(other,ATR_STRENGTH,1)),DIA_Harad_TeachSTR_1);
	Info_AddChoice(DIA_Harad_TeachSTR,B_BuildLearnString(PRINT_LearnSTR5,B_GetLearnCostAttribute(other,ATR_STRENGTH,5)),DIA_Harad_TeachSTR_5);
};

func void DIA_Harad_TeachSTR_5()
{
	B_TeachAttributePoints(self,other,ATR_STRENGTH,5,T_MEGA);
	Info_ClearChoices(DIA_Harad_TeachSTR);
	Info_AddChoice(DIA_Harad_TeachSTR,Dialog_Back,DIA_Harad_TeachSTR_BACK);
	Info_AddChoice(DIA_Harad_TeachSTR,B_BuildLearnString(PRINT_LearnSTR1,B_GetLearnCostAttribute(other,ATR_STRENGTH,1)),DIA_Harad_TeachSTR_1);
	Info_AddChoice(DIA_Harad_TeachSTR,B_BuildLearnString(PRINT_LearnSTR5,B_GetLearnCostAttribute(other,ATR_STRENGTH,5)),DIA_Harad_TeachSTR_5);
};


instance DIA_Harad_ImmerNoch(C_Info)
{
	npc = VLK_412_Harad;
	nr = 3;
	condition = DIA_Harad_ImmerNoch_Condition;
	information = DIA_Harad_ImmerNoch_Info;
	permanent = FALSE;
	description = "Are you still working for the paladins?";
};


func int DIA_Harad_ImmerNoch_Condition()
{
	if(Kapitel >= 2)
	{
		return TRUE;
	};
};

func void DIA_Harad_ImmerNoch_Info()
{
	AI_Output(other,self,"DIA_Harad_Add_15_01");	//Are you still working for the paladins?
	AI_Output(self,other,"DIA_Harad_Add_12_02");	//I finished the commission from Lord Hagen.
	AI_Output(self,other,"DIA_Harad_Add_12_03");	//Now I'm making magic ore blades for him - but for pay this time.
	AI_Output(self,other,"DIA_Harad_Add_12_04");	//But I also have the time again to make a few weapons on the side for the merchants in the marketplace.
	AI_Output(self,other,"DIA_Harad_Add_12_05");	//So, if you're looking for a good blade, you should try with them.
};


instance DIA_Harad_AboutErzklingen(C_Info)
{
	npc = VLK_412_Harad;
	nr = 3;
	condition = DIA_Harad_AboutErzklingen_Condition;
	information = DIA_Harad_AboutErzklingen_Info;
	permanent = FALSE;
	description = "Tell me more about magic ore blades!";
};


func int DIA_Harad_AboutErzklingen_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Harad_ImmerNoch))
	{
		return TRUE;
	};
};

func void DIA_Harad_AboutErzklingen_Info()
{
	AI_Output(other,self,"DIA_Harad_Add_15_06");	//Tell me more about magic ore blades!
	AI_Output(self,other,"DIA_Harad_Waffen_12_02");	//Creating a magic blade is a very complicated and expensive process, but the result is a blade that's easy to handle and practically indestructible.
	AI_Output(self,other,"DIA_Harad_Waffen_12_03");	//The blade is certainly of good quality, but it will only show its true power in the hands of a paladin.
	AI_Output(self,other,"DIA_Harad_Waffen_12_04");	//A paladin's sword is consecrated by Innos. As a result, the magic blade becomes an enchanted weapon that does incomparable damage!
};


instance DIA_Harad_Erzklingen(C_Info)
{
	npc = VLK_412_Harad;
	nr = 3;
	condition = DIA_Harad_Erzklingen_Condition;
	information = DIA_Harad_Erzklingen_Info;
	permanent = TRUE;
	description = "I want to buy a magic ore blade.";
};


func int DIA_Harad_Erzklingen_Condition()
{
	if((OreBladeBought == FALSE) && Npc_KnowsInfo(other,DIA_Harad_AboutErzklingen))
	{
		return TRUE;
	};
};


var int OreBladeBought;

func void DIA_Harad_Erzklingen_Info()
{
	AI_Output(other,self,"DIA_Harad_Erzklingen_15_00");	//I want to buy a magic ore blade.
	if(hero.guild != GIL_PAL)
	{
		AI_Output(self,other,"DIA_Harad_Erzklingen_12_01");	//I can only sell magic blades to the paladins. And even then only one each.
	}
	else
	{
		AI_Output(self,other,"DIA_Harad_Erzklingen_12_02");	//You paladins can count yourselves lucky to be allowed to wield such excellent blades.
		AI_Output(self,other,"DIA_Harad_Erzklingen_12_03");	//By decree of Lord Hagen, I may only sell you a single magic weapon.
		AI_Output(self,other,"DIA_Harad_Erzklingen_12_04");	//So, what can I offer you?
		Info_ClearChoices(DIA_Harad_Erzklingen);
		Info_AddChoice(DIA_Harad_Erzklingen,Dialog_Back,DIA_Harad_Erzklingen_Back);
		Info_AddChoice(DIA_Harad_Erzklingen,"Two-handed sword (2000 gold)",DIA_Harad_Erzklingen_2h);
		Info_AddChoice(DIA_Harad_Erzklingen,"One-handed sword (2000 gold)",DIA_Harad_Erzklingen_1h);
	};
};

func void DIA_Harad_Erzklingen_Back()
{
	Info_ClearChoices(DIA_Harad_Erzklingen);
};

func void B_Harad_NotEnoughGold()
{
	AI_Output(self,other,"B_Harad_NotEnoughGold_12_00");	//You don't have enough gold.
};

func void B_Harad_HaveFunWithYourSword()
{
	AI_Output(self,other,"B_Harad_HaveGunWithYourSword_12_00");	//Take good care of your new weapon. It's worth a fortune.
	OreBladeBought = TRUE;
	Info_ClearChoices(DIA_Harad_Erzklingen);
};

func void DIA_Harad_Erzklingen_2h()
{
	AI_Output(other,self,"DIA_Harad_Erzklingen_2h_15_00");	//I'll take the two-handed sword!
	if(Npc_HasItems(other,ItMi_Gold) >= Value_Blessed_2H_1)
	{
		B_GiveInvItems(other,self,ItMi_Gold,Value_Blessed_2H_1);
		CreateInvItems(self,ItMw_2H_Blessed_01,1);
		B_GiveInvItems(self,other,ItMw_2H_Blessed_01,1);
		B_Harad_HaveFunWithYourSword();
	}
	else
	{
		B_Harad_NotEnoughGold();
		Info_ClearChoices(DIA_Harad_Erzklingen);
		Info_AddChoice(DIA_Harad_Erzklingen,Dialog_Back,DIA_Harad_Erzklingen_Back);
		Info_AddChoice(DIA_Harad_Erzklingen,"Two-handed sword (2000 gold)",DIA_Harad_Erzklingen_2h);
		Info_AddChoice(DIA_Harad_Erzklingen,"One-handed sword (2000 gold)",DIA_Harad_Erzklingen_1h);
	};
};

func void DIA_Harad_Erzklingen_1h()
{
	AI_Output(other,self,"DIA_Harad_Erzklingen_1h_15_00");	//I'll take the one-handed sword!
	if(Npc_HasItems(other,ItMi_Gold) >= Value_Blessed_1H_1)
	{
		B_GiveInvItems(other,self,ItMi_Gold,Value_Blessed_1H_1);
		CreateInvItems(self,ItMw_1H_Blessed_01,1);
		B_GiveInvItems(self,other,ItMw_1H_Blessed_01,1);
		B_Harad_HaveFunWithYourSword();
	}
	else
	{
		B_Harad_NotEnoughGold();
		Info_ClearChoices(DIA_Harad_Erzklingen);
		Info_AddChoice(DIA_Harad_Erzklingen,Dialog_Back,DIA_Harad_Erzklingen_Back);
		Info_AddChoice(DIA_Harad_Erzklingen,"Two-handed sword (2000 gold)",DIA_Harad_Erzklingen_2h);
		Info_AddChoice(DIA_Harad_Erzklingen,"One-handed sword (2000 gold)",DIA_Harad_Erzklingen_1h);
	};
};


instance DIA_Harad_RepairNecklace(C_Info)
{
	npc = VLK_412_Harad;
	nr = 8;
	condition = DIA_Harad_RepairNecklace_Condition;
	information = DIA_Harad_RepairNecklace_Info;
	permanent = FALSE;
	description = "Can you repair jewelry?";
};


func int DIA_Harad_RepairNecklace_Condition()
{
	if((MIS_Bennet_InnosEyeRepairedSetting != LOG_SUCCESS) && (Npc_HasItems(other,ItMi_InnosEye_Broken_Mis) || (MIS_SCKnowsInnosEyeIsBroken == TRUE)))
	{
		return TRUE;
	};
};

func void DIA_Harad_RepairNecklace_Info()
{
	AI_Output(other,self,"DIA_Harad_RepairNecklace_15_00");	//Can you repair jewelry?
	AI_Output(self,other,"DIA_Harad_RepairNecklace_12_01");	//I'm a weapon smith, not a goldsmith. You probably won't find anyone here in the city who can help you.
	AI_Output(self,other,"DIA_Harad_RepairNecklace_12_02");	//People don't have money in their pockets any more, and nobody's gotten rich here in quite a while.
	AI_Output(self,other,"DIA_Harad_RepairNecklace_12_03");	//Most of them are just glad if they have enough to eat.
	MIS_SCKnowsInnosEyeIsBroken = TRUE;
};


instance DIA_Harad_Goldsmith(C_Info)
{
	npc = VLK_412_Harad;
	nr = 8;
	condition = DIA_Harad_Goldsmith_Condition;
	information = DIA_Harad_Goldsmith_Info;
	permanent = FALSE;
	description = "Where can I find a goldsmith?";
};


func int DIA_Harad_Goldsmith_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Harad_RepairNecklace))
	{
		return TRUE;
	};
};

func void DIA_Harad_Goldsmith_Info()
{
	AI_Output(other,self,"DIA_Harad_Goldsmith_15_00");	//Where can I find a goldsmith?
	AI_Output(self,other,"DIA_Harad_Goldsmith_12_01");	//There's supposed to be a good smith with the mercenaries on Onar's farm.
	AI_Output(self,other,"DIA_Harad_Goldsmith_12_02");	//Maybe you should look there.
};


instance DIA_Harad_PICKPOCKET(C_Info)
{
	npc = VLK_412_Harad;
	nr = 900;
	condition = DIA_Harad_PICKPOCKET_Condition;
	information = DIA_Harad_PICKPOCKET_Info;
	permanent = TRUE;
	description = Pickpocket_20;
};


func int DIA_Harad_PICKPOCKET_Condition()
{
	return C_Beklauen(14,35);
};

func void DIA_Harad_PICKPOCKET_Info()
{
	Info_ClearChoices(DIA_Harad_PICKPOCKET);
	Info_AddChoice(DIA_Harad_PICKPOCKET,Dialog_Back,DIA_Harad_PICKPOCKET_BACK);
	Info_AddChoice(DIA_Harad_PICKPOCKET,DIALOG_PICKPOCKET,DIA_Harad_PICKPOCKET_DoIt);
};

func void DIA_Harad_PICKPOCKET_DoIt()
{
	B_Beklauen();
	Info_ClearChoices(DIA_Harad_PICKPOCKET);
};

func void DIA_Harad_PICKPOCKET_BACK()
{
	Info_ClearChoices(DIA_Harad_PICKPOCKET);
};

