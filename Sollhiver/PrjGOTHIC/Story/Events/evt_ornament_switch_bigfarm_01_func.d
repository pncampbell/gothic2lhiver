
func void evt_ornament_switch_bigfarm_01_func()
{
	if(ornament_switched_bigfarm == FALSE)
	{
		Wld_InsertNpc(Stoneguardian_Ornament,"FP_EVENT_SPAWN_STONEGUARDIAN_ORNAMENT_BIGFARM_01");
		Wld_InsertItem(ItMi_OrnamentEffekt_BIGFARM_Addon,"FP_EVENT_STONEGUARDIAN_ORNAMENT_EFFECT_BIGFARM_01");
		Wld_PlayEffect("FX_EarthQuake",hero,hero,0,0,0,FALSE);
		Wld_PlayEffect("spellFX_INCOVATION_WHITE",ItMi_OrnamentEffekt_BIGFARM_Addon,ItMi_OrnamentEffekt_BIGFARM_Addon,0,0,0,FALSE);
		Snd_Play("Ravens_Earthquake4");
		Snd_Play("Ravens_Earthquake2");
		Snd_Play("THRILLJINGLE_02");
		Wld_PlayEffect("spellFX_LIGHTSTAR_RingRitual",ItMi_OrnamentEffekt_BIGFARM_Addon,ItMi_OrnamentEffekt_BIGFARM_Addon,0,0,0,FALSE);
		Log_CreateTopic(TOPIC_Addon_Ornament,LOG_MISSION);
		Log_SetTopicStatus(TOPIC_Addon_Ornament,LOG_Running);
		B_LogEntry(TOPIC_Addon_Ornament,"I activated the mechanism of the stone circle near Sekob's farm. There was a big bang, and a stone sentinel tried to kill me.");
		ornament_switched_bigfarm = TRUE;
	};
};

func void evt_ornament_switch_farm_01_func()
{
	if(ornament_switched_farm == FALSE)
	{
		Wld_PlayEffect("FX_EarthQuake",hero,hero,0,0,0,FALSE);
		Log_CreateTopic(TOPIC_Addon_Ornament,LOG_MISSION);
		Log_SetTopicStatus(TOPIC_Addon_Ornament,LOG_Running);
		B_LogEntry(TOPIC_Addon_Ornament,"I activated the mechanism of the stone circle near Lobart's farm. There was a tremor, but nothing else happened.");
		ornament_switched_farm = TRUE;
	};
};

func void evt_ornament_switch_forest_01_func()
{
	if(ornament_switched_forest == FALSE)
	{
		Wld_InsertNpc(Stoneguardian_Ornament,"FP_EVENT_SPAWN_STONEGUARDIAN_ORNAMENT_FOREST_01");
		Wld_InsertItem(ItMi_OrnamentEffekt_FOREST_Addon,"FP_EVENT_STONEGUARDIAN_ORNAMENT_EFFECT_FOREST_01");
		Wld_PlayEffect("FX_EarthQuake",hero,hero,0,0,0,FALSE);
		Wld_PlayEffect("spellFX_INCOVATION_WHITE",ItMi_OrnamentEffekt_FOREST_Addon,ItMi_OrnamentEffekt_FOREST_Addon,0,0,0,FALSE);
		Snd_Play("Ravens_Earthquake4");
		Snd_Play("Ravens_Earthquake2");
		Snd_Play("THRILLJINGLE_02");
		Wld_PlayEffect("spellFX_LIGHTSTAR_RingRitual",ItMi_OrnamentEffekt_FOREST_Addon,ItMi_OrnamentEffekt_FOREST_Addon,0,0,0,FALSE);
		Log_CreateTopic(TOPIC_Addon_Ornament,LOG_MISSION);
		Log_SetTopicStatus(TOPIC_Addon_Ornament,LOG_Running);
		B_LogEntry(TOPIC_Addon_Ornament,"I activated the mechanism of the stone circle in the northern forest. A large stone sentinel appeared. He was in a rotten mood.");
		ornament_switched_forest = TRUE;
	};
};

