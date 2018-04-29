
func int B_TeachPlayerTalentRunes(var C_Npc slf,var C_Npc oth,var int spell)
{
	var int kosten;
	var C_Npc ScrollTrader;
	kosten = B_GetLearnCostTalent(oth,NPC_TALENT_RUNES,spell);
	if(oth.lp < kosten)
	{
		PrintScreen(PRINT_NotEnoughLearnPoints,-1,-1,FONT_ScreenSmall,2);
		B_Say(slf,oth,"$NOLEARNNOPOINTS");
		return FALSE;
	};
	oth.lp = oth.lp - kosten;
	Log_CreateTopic(TOPIC_TalentRunes,LOG_NOTE);
	B_LogEntry(TOPIC_TalentRunes,"To create a rune I need the scroll for the spell and certain ingredients for each rune. Using those ingredients and a blank runestone I can create the desired rune at a rune table.");
	if(Npc_IsDead(Gorax) == FALSE)
	{
		ScrollTrader = Hlp_GetNpc(Gorax);
	}
	else if(Npc_IsDead(Isgaroth) == FALSE)
	{
		ScrollTrader = Hlp_GetNpc(Isgaroth);
	}
	else if(Npc_IsDead(Engor) == FALSE)
	{
		ScrollTrader = Hlp_GetNpc(Engor);
	}
	else if(Npc_IsDead(Orlan) == FALSE)
	{
		ScrollTrader = Hlp_GetNpc(Orlan);
	}
	else if(Npc_IsDead(Cronos_ADW) == FALSE)
	{
		ScrollTrader = Hlp_GetNpc(Cronos_ADW);
	};
	if(spell == SPL_PalLight)
	{
		player_talent_runes[SPL_PalLight] = TRUE;
	};
	if(spell == SPL_PalLightHeal)
	{
		player_talent_runes[SPL_PalLightHeal] = TRUE;
	};
	if(spell == SPL_PalHolyBolt)
	{
		player_talent_runes[SPL_PalHolyBolt] = TRUE;
	};
	if(spell == SPL_PalMediumHeal)
	{
		player_talent_runes[SPL_PalMediumHeal] = TRUE;
	};
	if(spell == SPL_PalRepelEvil)
	{
		player_talent_runes[SPL_PalRepelEvil] = TRUE;
	};
	if(spell == SPL_PalFullHeal)
	{
		player_talent_runes[SPL_PalFullHeal] = TRUE;
	};
	if(spell == SPL_PalDestroyEvil)
	{
		player_talent_runes[SPL_PalDestroyEvil] = TRUE;
	};
	if(spell == SPL_PalTeleportSecret)
	{
		player_talent_runes[SPL_PalTeleportSecret] = TRUE;
	};
	if(spell == SPL_TeleportSeaport)
	{
		player_talent_runes[SPL_TeleportSeaport] = TRUE;
	};
	if(spell == SPL_TeleportMonastery)
	{
		player_talent_runes[SPL_TeleportMonastery] = TRUE;
	};
	if(spell == SPL_TeleportFarm)
	{
		player_talent_runes[SPL_TeleportFarm] = TRUE;
	};
	if(spell == SPL_TeleportXardas)
	{
		player_talent_runes[SPL_TeleportXardas] = TRUE;
	};
	if(spell == SPL_TeleportPassNW)
	{
		player_talent_runes[SPL_TeleportPassNW] = TRUE;
	};
	if(spell == SPL_TeleportPassOW)
	{
		player_talent_runes[SPL_TeleportPassOW] = TRUE;
	};
	if(spell == SPL_TeleportOC)
	{
		player_talent_runes[SPL_TeleportOC] = TRUE;
	};
	if(spell == SPL_Light)
	{
		player_talent_runes[SPL_Light] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_Light,1);
		B_LogEntry(TOPIC_TalentRunes,"'Light' ingredients: 1 gold piece.");
	};
	if(spell == SPL_Firebolt)
	{
		player_talent_runes[SPL_Firebolt] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_Firebolt,1);
		B_LogEntry(TOPIC_TalentRunes,"'Fire arrow' ingredients: 1 sulfur.");
	};
	if(spell == SPL_Icebolt)
	{
		player_talent_runes[SPL_Icebolt] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_Icebolt,1);
		B_LogEntry(TOPIC_TalentRunes,"'Ice arrow' ingredients: 1 glacier quartz.");
	};
	if(spell == SPL_LightHeal)
	{
		player_talent_runes[SPL_LightHeal] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_LightHeal,1);
		B_LogEntry(TOPIC_TalentRunes,"'Heal light wounds' ingredients: 1 healing plant.");
	};
	if(spell == SPL_SummonGoblinSkeleton)
	{
		player_talent_runes[SPL_SummonGoblinSkeleton] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_SumGobSkel,1);
		B_LogEntry(TOPIC_TalentRunes,"'Summon goblin skeleton' ingredients: 1 goblin's bone.");
	};
	if(spell == SPL_InstantFireball)
	{
		player_talent_runes[SPL_InstantFireball] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_InstantFireball,1);
		B_LogEntry(TOPIC_TalentRunes,"'Fireball' ingredients: 1 pitch.");
	};
	if(spell == SPL_Zap)
	{
		player_talent_runes[SPL_Zap] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_Zap,1);
		B_LogEntry(TOPIC_TalentRunes,"'Small lightning' ingredients: 1 rock crystal.");
	};
	if(spell == SPL_SummonWolf)
	{
		player_talent_runes[SPL_SummonWolf] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_SumWolf,1);
		B_LogEntry(TOPIC_TalentRunes,"'Summon wolf' ingredients: 1 wolf skin.");
	};
	if(spell == SPL_WindFist)
	{
		player_talent_runes[SPL_WindFist] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_Windfist,1);
		B_LogEntry(TOPIC_TalentRunes,"'Wind fist' ingredients: 1 coal.");
	};
	if(spell == SPL_Sleep)
	{
		player_talent_runes[SPL_Sleep] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_Sleep,1);
		B_LogEntry(TOPIC_TalentRunes,"'Sleep' ingredients: 1 swampweed.");
	};
	if(spell == SPL_MediumHeal)
	{
		player_talent_runes[SPL_MediumHeal] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_MediumHeal,1);
		B_LogEntry(TOPIC_TalentRunes,"'Heal medium wounds' ingredients: 1 healing herb.");
	};
	if(spell == SPL_LightningFlash)
	{
		player_talent_runes[SPL_LightningFlash] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_LightningFlash,1);
		B_LogEntry(TOPIC_TalentRunes,"'Lightning' ingredients: 1 rock crystal and 1 glacier quartz.");
	};
	if(spell == SPL_ChargeFireball)
	{
		player_talent_runes[SPL_ChargeFireball] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_ChargeFireBall,1);
		B_LogEntry(TOPIC_TalentRunes,"'Large fireball' ingredients: 1 sulfur and 1 pitch.");
	};
	if(spell == SPL_SummonSkeleton)
	{
		player_talent_runes[SPL_SummonSkeleton] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_SumSkel,1);
		B_LogEntry(TOPIC_TalentRunes,"'Summon skeleton' ingredients: 1 skeleton's bone.");
	};
	if(spell == SPL_Fear)
	{
		player_talent_runes[SPL_Fear] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_Fear,1);
		B_LogEntry(TOPIC_TalentRunes,"'Fear' ingredients: 1 black pearl.");
	};
	if(spell == SPL_IceCube)
	{
		player_talent_runes[SPL_IceCube] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_IceCube,1);
		B_LogEntry(TOPIC_TalentRunes,"'Ice block' ingredients: 1 glacier quartz and 1 aquamarine.");
	};
	if(spell == SPL_ChargeZap)
	{
		player_talent_runes[SPL_ChargeZap] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_ThunderBall,1);
		B_LogEntry(TOPIC_TalentRunes,"'Ball lightning' ingredients: 1 sulfur and 1 rock crystal.");
	};
	if(spell == SPL_SummonGolem)
	{
		player_talent_runes[SPL_SummonGolem] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_SumGol,1);
		B_LogEntry(TOPIC_TalentRunes,"'Summon golem' ingredients: 1 heart of a stone golem.");
	};
	if(spell == SPL_DestroyUndead)
	{
		player_talent_runes[SPL_DestroyUndead] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_HarmUndead,1);
		B_LogEntry(TOPIC_TalentRunes,"'Destroy undead' ingredients: 1 holy water.");
	};
	if(spell == SPL_Pyrokinesis)
	{
		player_talent_runes[SPL_Pyrokinesis] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_Pyrokinesis,1);
		B_LogEntry(TOPIC_TalentRunes,"'Large fire storm' ingredients: 1 sulfur and 1 tongue of a fire lizard.");
	};
	if(spell == SPL_Firestorm)
	{
		player_talent_runes[SPL_Firestorm] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_Firestorm,1);
		B_LogEntry(TOPIC_TalentRunes,"'Small fire storm' ingredients: 1 sulfur and 1 pitch.");
	};
	if(spell == SPL_IceWave)
	{
		player_talent_runes[SPL_IceWave] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_IceWave,1);
		B_LogEntry(TOPIC_TalentRunes,"'Ice wave' ingredients: 1 glacier quartz and 1 aquamarine.");
	};
	if(spell == SPL_SummonDemon)
	{
		player_talent_runes[SPL_SummonDemon] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_SumDemon,1);
		B_LogEntry(TOPIC_TalentRunes,"'Summon demon' ingredients: 1 heart of a demon.");
	};
	if(spell == SPL_FullHeal)
	{
		player_talent_runes[SPL_FullHeal] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_FullHeal,1);
		B_LogEntry(TOPIC_TalentRunes,"'Heal heavy wounds' ingredients: 1 healing root.");
	};
	if(spell == SPL_Firerain)
	{
		player_talent_runes[SPL_Firerain] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_Firerain,1);
		B_LogEntry(TOPIC_TalentRunes,"'Fire rain' ingredients: 1 pitch and 1 tongue of a fire lizard.");
	};
	if(spell == SPL_BreathOfDeath)
	{
		player_talent_runes[SPL_BreathOfDeath] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_BreathOfDeath,1);
		B_LogEntry(TOPIC_TalentRunes,"'Breath of death' ingredients: 1 coal and 1 black pearl.");
	};
	if(spell == SPL_MassDeath)
	{
		player_talent_runes[SPL_MassDeath] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_MassDeath,1);
		B_LogEntry(TOPIC_TalentRunes,"'Wave of death' ingredients: 1 skeleton's bone and 1 black pearl.");
	};
	if(spell == SPL_ArmyOfDarkness)
	{
		player_talent_runes[SPL_ArmyOfDarkness] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_ArmyOfDarkness,1);
		B_LogEntry(TOPIC_TalentRunes,"'Army of darkness' ingredients: 1 skeleton's bone, 1 black pearl, 1 heart of a stone golem and 1 heart of a demon.");
	};
	if(spell == SPL_Shrink)
	{
		player_talent_runes[SPL_Shrink] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_Shrink,1);
		B_LogEntry(TOPIC_TalentRunes,"'Shrink monster' ingredients: 1 goblin's bone and 1 troll fang.");
	};
	if(spell == SPL_Whirlwind)
	{
		player_talent_runes[SPL_Whirlwind] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_Whirlwind,1);
		B_LogEntry(TOPIC_TalentRunes,Log_Text_Addon_TalentRune_Whirlwind);
	};
	if(spell == SPL_WaterFist)
	{
		player_talent_runes[SPL_WaterFist] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_Waterfist,1);
		B_LogEntry(TOPIC_TalentRunes,Log_Text_Addon_TalentRune_Waterfist);
	};
	if(spell == SPL_IceLance)
	{
		player_talent_runes[SPL_IceLance] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_Icelance,1);
		B_LogEntry(TOPIC_TalentRunes,Log_Text_Addon_TalentRune_Icelance);
	};
	if(spell == SPL_Geyser)
	{
		player_talent_runes[SPL_Geyser] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_Geyser,1);
		B_LogEntry(TOPIC_TalentRunes,Log_Text_Addon_TalentRune_Geyser);
	};
	if(spell == SPL_Thunderstorm)
	{
		player_talent_runes[SPL_Thunderstorm] = TRUE;
		CreateInvItems(ScrollTrader,ItSc_Thunderstorm,1);
		B_LogEntry(TOPIC_TalentRunes,Log_Text_Addon_TalentRune_Thunderstorm);
	};
	PrintScreen(PRINT_LearnRunes,-1,-1,FONT_Screen,2);
	Npc_SetTalentSkill(oth,NPC_TALENT_RUNES,1);
	return TRUE;
};

func int b_teachplayerpalrunes(var C_Npc slf,var C_Npc oth,var int spell)
{
	var int kosten;
	kosten = B_GetLearnCostTalent(oth,NPC_TALENT_RUNES,spell);
	if(oth.lp < kosten)
	{
		PrintScreen(PRINT_NotEnoughLearnPoints,-1,-1,FONT_ScreenSmall,2);
		B_Say(slf,oth,"$NOLEARNNOPOINTS");
		return FALSE;
	};
	oth.lp = oth.lp - kosten;
	if(spell == SPL_PalLight)
	{
		player_talent_runes[SPL_PalLight] = TRUE;
		CreateInvItems(slf,ItRu_PalLight,1);
		B_GiveInvItems(slf,oth,ItRu_PalLight,1);
	};
	if(spell == SPL_PalLightHeal)
	{
		player_talent_runes[SPL_PalLightHeal] = TRUE;
		CreateInvItems(slf,ItRu_PalLightHeal,1);
		B_GiveInvItems(slf,oth,ItRu_PalLightHeal,1);
	};
	if(spell == SPL_PalHolyBolt)
	{
		player_talent_runes[SPL_PalHolyBolt] = TRUE;
		CreateInvItems(slf,ItRu_PalHolyBolt,1);
		B_GiveInvItems(slf,oth,ItRu_PalHolyBolt,1);
	};
	if(spell == SPL_PalMediumHeal)
	{
		player_talent_runes[SPL_PalMediumHeal] = TRUE;
		CreateInvItems(slf,ItRu_PalMediumHeal,1);
		B_GiveInvItems(slf,oth,ItRu_PalMediumHeal,1);
	};
	if(spell == SPL_PalRepelEvil)
	{
		player_talent_runes[SPL_PalRepelEvil] = TRUE;
		CreateInvItems(slf,ItRu_PalRepelEvil,1);
		B_GiveInvItems(slf,oth,ItRu_PalRepelEvil,1);
	};
	if(spell == SPL_PalFullHeal)
	{
		player_talent_runes[SPL_PalFullHeal] = TRUE;
		CreateInvItems(slf,ItRu_PalFullHeal,1);
		B_GiveInvItems(slf,oth,ItRu_PalFullHeal,1);
	};
	if(spell == SPL_PalDestroyEvil)
	{
		player_talent_runes[SPL_PalDestroyEvil] = TRUE;
		CreateInvItems(slf,ItRu_PalDestroyEvil,1);
		B_GiveInvItems(slf,oth,ItRu_PalDestroyEvil,1);
	};
	if(spell == SPL_PalTeleportSecret)
	{
		player_talent_runes[SPL_PalTeleportSecret] = TRUE;
		CreateInvItems(slf,ItRu_PalTeleportSecret,1);
		B_GiveInvItems(slf,oth,ItRu_PalTeleportSecret,1);
	};
	return TRUE;
};

