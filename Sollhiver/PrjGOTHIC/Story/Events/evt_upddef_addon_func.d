
var int activebonus1;
var int activebonus2;
var int wite_winf;
var int asss_winf;

var string screen_wght;
var string screen_wght1;
var string screen_mwght;

func void evt_upddef_addon_func()
{
	if((passive_hp == TRUE) && (hero.attribute[ATR_HITPOINTS] >= 1) && !C_BodyStateContains(hero,BS_DEAD))
	{
		Npc_ChangeAttribute(hero,ATR_HITPOINTS,1);
	};
	if(passive_mp == TRUE)
	{
		Npc_ChangeAttribute(hero,ATR_MANA,1);
	};
	if((passive_enchhp >= 1) && (hero.attribute[ATR_HITPOINTS] >= 1) && !C_BodyStateContains(hero,BS_DEAD))
	{
		Npc_ChangeAttribute(hero,ATR_HITPOINTS,1);
	};
	if((passive_enchhp >= 2) && (hero.attribute[ATR_HITPOINTS] >= 1) && !C_BodyStateContains(hero,BS_DEAD))
	{
		Npc_ChangeAttribute(hero,ATR_HITPOINTS,1);
	};
	if(passive_enchmp >= 1)
	{
		Npc_ChangeAttribute(hero,ATR_MANA,1);
	};
	if(passive_enchmp >= 2)
	{
		Npc_ChangeAttribute(hero,ATR_MANA,1);
	};
	if((passive_acrobatic == TRUE) && (passive_acrobatic_on == FALSE))
	{
		Mdl_ApplyOverlayMds(hero,"Humans_Acrobatic.mds");
		passive_acrobatic_on = TRUE;
	};
	if((constantino_heal_time > 0) && (hero.attribute[ATR_HITPOINTS] >= 1) && !C_BodyStateContains(hero,BS_DEAD))
	{
		Npc_ChangeAttribute(hero,ATR_HITPOINTS,5);
		constantino_heal_time -= 1;
	};
	if(constantino_heal_time < 0)
	{
		constantino_heal_time = 0;
	};
	if((constantino_mana_time > 0) && (hero.attribute[ATR_HITPOINTS] >= 1) && !C_BodyStateContains(hero,BS_DEAD))
	{
		Npc_ChangeAttribute(hero,ATR_MANA,5);
		constantino_mana_time -= 1;
	};
	if(constantino_mana_time < 0)
	{
		constantino_mana_time = 0;
	};
	if((hero.HitChance[NPC_TALENT_1H] >= 60) || (hero.HitChance[NPC_TALENT_2H] >= 60))
	{
		orblig = 0;
	}
	else if((hero.HitChance[NPC_TALENT_1H] >= 50) || (hero.HitChance[NPC_TALENT_2H] >= 50))
	{
		orblig = 10 + Hlp_Random(10);
	}
	else if((hero.HitChance[NPC_TALENT_1H] >= 40) || (hero.HitChance[NPC_TALENT_2H] >= 40))
	{
		orblig = 20 + Hlp_Random(20);
	}
	else if((hero.HitChance[NPC_TALENT_1H] >= 30) || (hero.HitChance[NPC_TALENT_2H] >= 30))
	{
		orblig = 30 + Hlp_Random(30);
	}
	else if((hero.HitChance[NPC_TALENT_1H] >= 20) || (hero.HitChance[NPC_TALENT_2H] >= 20))
	{
		orblig = 40 + Hlp_Random(40);
	}
	else if((hero.HitChance[NPC_TALENT_1H] >= 10) || (hero.HitChance[NPC_TALENT_2H] >= 10))
	{
		orblig = 50 + Hlp_Random(50);
	}
	else if((hero.HitChance[NPC_TALENT_1H] >= 1) || (hero.HitChance[NPC_TALENT_2H] >= 1))
	{
		orblig = 60 + Hlp_Random(60);
	};
	if((pcblock == TRUE) && c_bodystatecontainsadd(hero,BS_PARADE))
	{
		if(orblig >= 1)
		{
			Npc_ChangeAttribute(hero,ATR_HITPOINTS,-orblig);
			PrintScreen(PRINT_BLOCK_CHANCE,-1,52,FONT_SCREENBRIGHTLARGE,1);
			AI_PlayAni(hero,"T_STUMBLEB");
		};
	};
	if((Npc_GetDistToWP(Sarah,"TAVERN02") >= 450) && !C_BodyStateContains(Sarah,BS_SIT))
	{
		Wld_SendUntrigger("EVT_PIANO_01_TRIGGERLIST");
	};
	if(CurrentLevel == DRAGONISLAND_ZEN)
	{
		if(Npc_IsInFightMode(FireDragonIsland,FMODE_FIST) && (Npc_GetDistToNpc(FireDragonIsland,other) > FIGHT_DIST_DRAGON_MAGIC))
		{
			AI_RemoveWeapon(FireDragonIsland);
		};
		if(Npc_IsInFightMode(UndeadDragon,FMODE_FIST) && (Npc_GetDistToNpc(UndeadDragon,other) > FIGHT_DIST_DRAGON_MAGIC))
		{
			AI_RemoveWeapon(UndeadDragon);
		};
		if((FireDragonIsland.attribute[ATR_HITPOINTS] < FireDragonIsland.attribute[ATR_HITPOINTS_MAX]) && (FireDragonIsland.attribute[ATR_HITPOINTS] > (FireDragonIsland.attribute[ATR_HITPOINTS_MAX] / 10)) && !C_BodyStateContains(FireDragonIsland,BS_DEAD))
		{
			FireDragonIsland.attribute[ATR_HITPOINTS] += 20;
		};
		if((UndeadDragon.attribute[ATR_HITPOINTS] < UndeadDragon.attribute[ATR_HITPOINTS_MAX]) && (UndeadDragon.attribute[ATR_HITPOINTS] > (UndeadDragon.attribute[ATR_HITPOINTS_MAX] / 10)) && !C_BodyStateContains(UndeadDragon,BS_DEAD))
		{
			UndeadDragon.attribute[ATR_HITPOINTS] += 20;
		};
	};
	if(CurrentLevel == OldWorld_Zen)
	{
		if(Npc_IsInFightMode(FireDragon,FMODE_FIST) && (Npc_GetDistToNpc(FireDragon,other) > FIGHT_DIST_DRAGON_MAGIC))
		{
			AI_RemoveWeapon(FireDragon);
		};
		if(Npc_IsInFightMode(IceDragon,FMODE_FIST) && (Npc_GetDistToNpc(IceDragon,other) > FIGHT_DIST_DRAGON_MAGIC))
		{
			AI_RemoveWeapon(IceDragon);
		};
		if(Npc_IsInFightMode(RockDragon,FMODE_FIST) && (Npc_GetDistToNpc(RockDragon,other) > FIGHT_DIST_DRAGON_MAGIC))
		{
			AI_RemoveWeapon(RockDragon);
		};
		if(Npc_IsInFightMode(SwampDragon,FMODE_FIST) && (Npc_GetDistToNpc(SwampDragon,other) > FIGHT_DIST_DRAGON_MAGIC))
		{
			AI_RemoveWeapon(SwampDragon);
		};
		if((FireDragon.attribute[ATR_HITPOINTS] < FireDragon.attribute[ATR_HITPOINTS_MAX]) && (FireDragon.attribute[ATR_HITPOINTS] > (FireDragon.attribute[ATR_HITPOINTS_MAX] / 10)) && !C_BodyStateContains(FireDragon,BS_DEAD))
		{
			FireDragon.attribute[ATR_HITPOINTS] += 20;
		};
		if((IceDragon.attribute[ATR_HITPOINTS] < IceDragon.attribute[ATR_HITPOINTS_MAX]) && (IceDragon.attribute[ATR_HITPOINTS] > (IceDragon.attribute[ATR_HITPOINTS_MAX] / 10)) && !C_BodyStateContains(IceDragon,BS_DEAD))
		{
			IceDragon.attribute[ATR_HITPOINTS] += 20;
		};
		if((RockDragon.attribute[ATR_HITPOINTS] < RockDragon.attribute[ATR_HITPOINTS_MAX]) && (RockDragon.attribute[ATR_HITPOINTS] > (RockDragon.attribute[ATR_HITPOINTS_MAX] / 10)) && !C_BodyStateContains(RockDragon,BS_DEAD))
		{
			RockDragon.attribute[ATR_HITPOINTS] += 20;
		};
		if((SwampDragon.attribute[ATR_HITPOINTS] < SwampDragon.attribute[ATR_HITPOINTS_MAX]) && (SwampDragon.attribute[ATR_HITPOINTS] > (SwampDragon.attribute[ATR_HITPOINTS_MAX] / 10)) && !C_BodyStateContains(SwampDragon,BS_DEAD))
		{
			SwampDragon.attribute[ATR_HITPOINTS] += 20;
		};
	};
	if(drg_sd == TRUE)
	{
		drg_sd = FALSE;
	};
	if((Npc_GetDistToNpc(amort,hero) < 5000) && (CurrentLevel == OldWorld_Zen) && (amortbattle == FALSE))
	{
		amort.attribute[ATR_HITPOINTS] = amort.attribute[ATR_HITPOINTS_MAX];
		amortbattle_onetime = FALSE;
	};
	if((CurrentLevel == NEWWORLD_ZEN) && (trollblack.attribute[ATR_HITPOINTS] < trollblack.attribute[ATR_HITPOINTS_MAX]) && (trollblack.attribute[ATR_HITPOINTS] > (trollblack.attribute[ATR_HITPOINTS_MAX] / 15)) && !C_BodyStateContains(trollblack,BS_DEAD))
	{
		trollblack.attribute[ATR_HITPOINTS] += 10;
	};
	if(CurrentLevel == ADDONWORLD_ZEN)
	{
		if(MIS_Addon_Greg_ClearCanyon == LOG_Running)
		{
			if(((Npc_GetDistToWP(AlligatorJack,"ADW_ENTRANCE_2_PIRATECAMP_13") < 3000) || (Npc_GetDistToWP(AlligatorJack,"ADW_CANYON_PATH_TO_LIBRARY_19") < 3000) || (Npc_GetDistToWP(AlligatorJack,"ADW_CANYON_PATH_TO_MINE2_13") < 3000) || (Npc_GetDistToWP(AlligatorJack,"ADW_CANYON_PATH_TO_BANDITS_27") < 3000)) && !Npc_IsInState(AlligatorJack,ZS_Attack))
			{
				if(C_BodyStateContains(AlligatorJack,BS_RUN))
				{
					Npc_ClearAIQueue(AlligatorJack);
				};
				AI_TurnToNPC(AlligatorJack,hero);
				B_Say(AlligatorJack,AlligatorJack,"DIA_Addon_AlligatorJack_TheHunt_Enough_12_01");
				AlligatorJack.aivar[AIV_PARTYMEMBER] = FALSE;
				B_StartOtherRoutine(AlligatorJack,"START");
			};
			if(((Npc_GetDistToWP(Skip,"ADW_ENTRANCE_2_PIRATECAMP_13") < 3000) || (Npc_GetDistToWP(Skip,"ADW_CANYON_PATH_TO_LIBRARY_19") < 3000) || (Npc_GetDistToWP(Skip,"ADW_CANYON_PATH_TO_MINE2_13") < 3000) || (Npc_GetDistToWP(Skip,"ADW_CANYON_PATH_TO_BANDITS_27") < 3000)) && !Npc_IsInState(Skip,ZS_Attack) && (Skip.aivar[AIV_PARTYMEMBER] == TRUE))
			{
				if(C_BodyStateContains(Skip,BS_RUN))
				{
					Npc_ClearAIQueue(Skip);
				};
				AI_TurnToNPC(Skip,hero);
				B_Say(Skip,Skip,"DIA_Addon_Skip_TooFar_08_03");
				Skip.aivar[AIV_PARTYMEMBER] = FALSE;
				B_StartOtherRoutine(Skip,"START");
			};
			if(((Npc_GetDistToWP(Matt,"ADW_ENTRANCE_2_PIRATECAMP_13") < 3000) || (Npc_GetDistToWP(Matt,"ADW_CANYON_PATH_TO_LIBRARY_19") < 3000) || (Npc_GetDistToWP(Matt,"ADW_CANYON_PATH_TO_MINE2_13") < 3000) || (Npc_GetDistToWP(Matt,"ADW_CANYON_PATH_TO_BANDITS_27") < 3000)) && !Npc_IsInState(Matt,ZS_Attack) && (Matt.aivar[AIV_PARTYMEMBER] == TRUE))
			{
				if(C_BodyStateContains(Matt,BS_RUN))
				{
					Npc_ClearAIQueue(Matt);
				};
				AI_TurnToNPC(Matt,hero);
				B_Say(Matt,Matt,"DIA_Addon_Matt_TooFar_10_02");
				Matt.aivar[AIV_PARTYMEMBER] = FALSE;
				B_StartOtherRoutine(Matt,"START");
			};
			if(((Npc_GetDistToWP(Brandon,"ADW_ENTRANCE_2_PIRATECAMP_13") < 3000) || (Npc_GetDistToWP(Brandon,"ADW_CANYON_PATH_TO_LIBRARY_19") < 3000) || (Npc_GetDistToWP(Brandon,"ADW_CANYON_PATH_TO_MINE2_13") < 3000) || (Npc_GetDistToWP(Brandon,"ADW_CANYON_PATH_TO_BANDITS_27") < 3000)) && !Npc_IsInState(Brandon,ZS_Attack) && (Brandon.aivar[AIV_PARTYMEMBER] == TRUE))
			{
				if(C_BodyStateContains(Brandon,BS_RUN))
				{
					Npc_ClearAIQueue(Brandon);
				};
				AI_TurnToNPC(Brandon,hero);
				B_Say(Brandon,Brandon,"DIA_Addon_Brandon_TooFar_04_02");
				Brandon.aivar[AIV_PARTYMEMBER] = FALSE;
				B_StartOtherRoutine(Brandon,"START");
			};
			if(((Npc_GetDistToWP(RoastPirate,"ADW_ENTRANCE_2_PIRATECAMP_13") < 3000) || (Npc_GetDistToWP(RoastPirate,"ADW_CANYON_PATH_TO_LIBRARY_19") < 3000) || (Npc_GetDistToWP(RoastPirate,"ADW_CANYON_PATH_TO_MINE2_13") < 3000) || (Npc_GetDistToWP(RoastPirate,"ADW_CANYON_PATH_TO_BANDITS_27") < 3000)) && !Npc_IsInState(RoastPirate,ZS_Attack) && (RoastPirate.aivar[AIV_PARTYMEMBER] == TRUE))
			{
				if(C_BodyStateContains(RoastPirate,BS_RUN))
				{
					Npc_ClearAIQueue(RoastPirate);
				};
				AI_TurnToNPC(RoastPirate,hero);
				B_Say(RoastPirate,RoastPirate,"$RUNAWAY");
				RoastPirate.aivar[AIV_PARTYMEMBER] = FALSE;
				B_StartOtherRoutine(RoastPirate,"START");
			};
			if(((Npc_GetDistToWP(BenchPirate,"ADW_ENTRANCE_2_PIRATECAMP_13") < 3000) || (Npc_GetDistToWP(BenchPirate,"ADW_CANYON_PATH_TO_LIBRARY_19") < 3000) || (Npc_GetDistToWP(BenchPirate,"ADW_CANYON_PATH_TO_MINE2_13") < 3000) || (Npc_GetDistToWP(BenchPirate,"ADW_CANYON_PATH_TO_BANDITS_27") < 3000)) && !Npc_IsInState(BenchPirate,ZS_Attack) && (BenchPirate.aivar[AIV_PARTYMEMBER] == TRUE))
			{
				if(C_BodyStateContains(BenchPirate,BS_RUN))
				{
					Npc_ClearAIQueue(BenchPirate);
				};
				AI_TurnToNPC(BenchPirate,hero);
				B_Say(BenchPirate,BenchPirate,"$RUNAWAY");
				BenchPirate.aivar[AIV_PARTYMEMBER] = FALSE;
				B_StartOtherRoutine(BenchPirate,"START");
			};
		};
	};
	if((hero.flags == NPC_FLAG_IMMORTAL) && !C_BodyStateContains(hero,BS_PARADE))
	{
		hero.flags = 0;
		sndlock = FALSE;
	};
	if(load_check > 0)
	{
		load_check -= 1;
	};
	Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
	if(stat_sworddef < 0)
	{
		stat_sworddef = 0;
	};
	if(dead_time >= 14)
	{
		dead_time = 0;
		if(C_BodyStateContains(hero,BS_DEAD))
		{
			Snd_Play("MYSTERY_03");
		};
	};
	if(C_BodyStateContains(hero,BS_DEAD))
	{
		if(dead_check == FALSE)
		{
			dead_check = TRUE;
		};
		dead_time += 1;
		PrintScreen("You are dead.",-1,20,FONT_SCREENBRIGHTLARGE,2);
	};
	if(!C_BodyStateContains(hero,BS_DEAD) && (dead_check == TRUE))
	{
		dead_time = 0;
		dead_check = FALSE;
		Wld_StopEffect("PCDEAD_FX");
	};
	if((start_check == TRUE) && (hero.level == 0))
	{
		if(hero.attribute[ATR_HITPOINTS_MAX] != 0)
		{
			AI_Wait(hero,2);
			Wld_PlayEffect("START_BLEND",hero,hero,0,0,0,FALSE);
			Wld_PlayEffect("spellFX_LIGHTSTAR_RED",hero,hero,0,0,0,FALSE);
			Snd_Play("AMBIENTTONE_01_HIGH");
			start_check = FALSE;
			Wld_SendTrigger("XARSTAR");
		};
	};
	Wld_SendTrigger("UPD_DEF_ADDON");
};

func void evt_updhtf_addon_func()
{
	var int dominicbless;
	if((Npc_HasEquippedArmor(Sarah) == FALSE) && (Npc_GetDistToWP(Sarah,"NW_NM_02_ADD_07") >= 350))
	{
		AI_EquipArmor(Sarah,itar_w2_ves);
	};
	if((Npc_HasEquippedArmor(sonja) == FALSE) && (Npc_GetDistToWP(sonja,"NW_CITY_HABOUR_PUFF_SONJA") >= 350))
	{
		AI_EquipArmor(sonja,itar_baron_babe_addon);
	};
	if((Npc_HasEquippedArmor(lucia) == FALSE) && (Npc_GetDistToWP(lucia,"BL_INN_UPSIDE_BATH_01") >= 350))
	{
		AI_EquipArmor(lucia,itar_lucia_addon);
	};
	if(dominiccurse == TRUE)
	{
		dominicbless = Hlp_Random(15);
		if((hero.guild == GIL_PAL) && (dominicfree == TRUE))
		{
			if((hero.attribute[ATR_HITPOINTS] >= 1) && !C_BodyStateContains(hero,BS_DEAD))
			{
				Npc_ChangeAttribute(hero,ATR_HITPOINTS,dominicbless);
			};
		}
		else
		{
			Snd_Play("EVIL_SPELL_01");
			if(hero.attribute[ATR_HITPOINTS] > 0)
			{
				Npc_ChangeAttribute(hero,ATR_HITPOINTS,-dominicbless);
			};
		};
	};
	if(addon_pring == TRUE)
	{
		if(Npc_HasItems(hero,ItMi_PortalRing_Addon) >= 1)
		{
			Npc_RemoveInvItems(hero,ItMi_PortalRing_Addon,1);
			addon_pring = FALSE;
		};
	};
	if(addon_tmplopn == TRUE)
	{
		if(Npc_HasItems(hero,ItMi_TempelTorKey) >= 1)
		{
			Npc_RemoveInvItems(hero,ItMi_TempelTorKey,1);
			addon_tmplopn = FALSE;
		};
	};
	if(drg_lf == TRUE)
	{
		drg_lf = FALSE;
	};
	Wld_SendTrigger("UPD_HTF_ADDON");
};

