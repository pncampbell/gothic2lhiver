
func int B_GetBestPlayerMap()
{
	if(CurrentLevel == NEWWORLD_ZEN)
	{
		if(Npc_HasItems(hero,ItWr_Map_NewWorld) >= 1)
		{
			return ItWr_Map_NewWorld;
		}
		else if(Npc_HasItems(hero,ItWr_Map_Shrine_MIS) >= 1)
		{
			return ItWr_Map_Shrine_MIS;
		}
		else if(Npc_HasItems(hero,ItWr_Map_Caves_MIS) >= 1)
		{
			return ItWr_Map_Caves_MIS;
		}
		else if(Npc_HasItems(hero,ItWr_Map_NewWorld_Ornaments_Addon) >= 1)
		{
			return ItWr_Map_NewWorld_Ornaments_Addon;
		}
		else if(Npc_HasItems(hero,ItWr_Map_NewWorld_Dexter) >= 1)
		{
			return ItWr_Map_NewWorld_Dexter;
		}
		else if(Npc_HasItems(hero,ItWr_ShatteredGolem_MIS) >= 1)
		{
			return ItWr_ShatteredGolem_MIS;
		}
		else if(Npc_HasItems(hero,ItWr_Map_Orcelite_MIS) >= 1)
		{
			return ItWr_Map_Orcelite_MIS;
		}
		else if(Npc_HasItems(hero,ItWr_Map_NewWorld_City) >= 1)
		{
			return ItWr_Map_NewWorld_City;
		};
	}
	else if(CurrentLevel == OldWorld_Zen)
	{
		if(Npc_HasItems(hero,ItWr_Map_OldWorld) >= 1)
		{
			return ItWr_Map_OldWorld;
		}
		else if(Npc_HasItems(hero,ItWr_Map_OldWorld_Oremines_MIS) >= 1)
		{
			return ItWr_Map_OldWorld_Oremines_MIS;
		};
	}
	else if(CurrentLevel == DRAGONISLAND_ZEN)
	{
	}
	else if(CurrentLevel == ADDONWORLD_ZEN)
	{
		if(Npc_HasItems(hero,ItWr_Map_AddonWorld) >= 1)
		{
			return ItWr_Map_AddonWorld;
		}
		else if(Npc_HasItems(hero,ItWR_Addon_TreasureMap) >= 1)
		{
			return ItWR_Addon_TreasureMap;
		};
	};
	return 0;
};

func int B_GetAnyPlayerMap()
{
	if(Npc_HasItems(hero,ItWr_Map_NewWorld) >= 1)
	{
		return ItWr_Map_NewWorld;
	}
	else if(Npc_HasItems(hero,ItWr_Map_Shrine_MIS) >= 1)
	{
		return ItWr_Map_Shrine_MIS;
	}
	else if(Npc_HasItems(hero,ItWr_Map_Caves_MIS) >= 1)
	{
		return ItWr_Map_Caves_MIS;
	}
	else if(Npc_HasItems(hero,ItWr_Map_NewWorld_Ornaments_Addon) >= 1)
	{
		return ItWr_Map_NewWorld_Ornaments_Addon;
	}
	else if(Npc_HasItems(hero,ItWr_Map_NewWorld_Dexter) >= 1)
	{
		return ItWr_Map_NewWorld_Dexter;
	}
	else if(Npc_HasItems(hero,ItWr_ShatteredGolem_MIS) >= 1)
	{
		return ItWr_ShatteredGolem_MIS;
	}
	else if(Npc_HasItems(hero,ItWr_Map_Orcelite_MIS) >= 1)
	{
		return ItWr_Map_Orcelite_MIS;
	}
	else if(Npc_HasItems(hero,ItWr_Map_NewWorld_City) >= 1)
	{
		return ItWr_Map_NewWorld_City;
	}
	else if(Npc_HasItems(hero,ItWr_Map_OldWorld) >= 1)
	{
		return ItWr_Map_OldWorld;
	}
	else if(Npc_HasItems(hero,ItWr_Map_OldWorld_Oremines_MIS) >= 1)
	{
		return ItWr_Map_OldWorld_Oremines_MIS;
	}
	else if(Npc_HasItems(hero,ItWr_Map_AddonWorld) >= 1)
	{
		return ItWr_Map_AddonWorld;
	}
	else if(Npc_HasItems(hero,ItWR_Addon_TreasureMap) >= 1)
	{
		return ItWR_Addon_TreasureMap;
	};
	return 0;
};

func int player_hotkey_screen_map()
{
	var int OldInstance;
	var int NewInstance;
	OldInstance = B_GetPlayerMap();
	if((OldInstance > 0) && (Npc_HasItems(hero,OldInstance) < 1))
	{
		OldInstance = 0;
	};
	B_SetPlayerMap(OldInstance);
	NewInstance = OldInstance;
	if(CurrentLevel != NEWWORLD_ZEN)
	{
		if((OldInstance == ItWr_Map_Caves_MIS) || (OldInstance == ItWr_Map_NewWorld) || (OldInstance == ItWr_Map_NewWorld_City) || (OldInstance == ItWr_Map_NewWorld_Dexter) || (OldInstance == ItWr_Map_NewWorld_Ornaments_Addon) || (OldInstance == ItWr_Map_Orcelite_MIS) || (OldInstance == ItWr_Map_Shrine_MIS) || (OldInstance == ItWr_ShatteredGolem_MIS))
		{
			NewInstance = 0;
		};
	};
	if(CurrentLevel != OldWorld_Zen)
	{
		if((OldInstance == ItWr_Map_OldWorld) || (OldInstance == ItWr_Map_OldWorld_Oremines_MIS))
		{
			NewInstance = 0;
		};
	};
	if(CurrentLevel != DRAGONISLAND_ZEN)
	{
	};
	if(CurrentLevel != ADDONWORLD_ZEN)
	{
		if((OldInstance == ItWr_Map_AddonWorld) || (OldInstance == ItWR_Addon_TreasureMap))
		{
			NewInstance = 0;
		};
	};
	if(NewInstance <= 0)
	{
		NewInstance = B_GetBestPlayerMap();
	};
	if((NewInstance <= 0) && (OldInstance <= 0))
	{
		NewInstance = B_GetAnyPlayerMap();
	};
	if(NewInstance > 0)
	{
		B_SetPlayerMap(NewInstance);
		return NewInstance;
	}
	else
	{
		return OldInstance;
	};
};

func void B_LameSchlork()
{
	Snd_Play("DRINKBOTTLE");
};

func void player_hotkey_lame_potion()
{
	if((Npc_IsInState(hero,ZS_Dead) == FALSE) && (hero.attribute[ATR_MANA] < hero.attribute[ATR_MANA_MAX]))
	{
		if(Npc_HasItems(hero,ItPo_Mana_03))
		{
			constantino_mana_time += 5;
			if(constantino_mana_time > 30)
			{
				constantino_mana_time = 30;
			};
			Npc_RemoveInvItem(hero,ItPo_Mana_03);
			PrintScreen("Elixir of mana used",-1,17,FONT_SCREENBRIGHTLARGE,2);
			B_LameSchlork();
		}
		else if(Npc_HasItems(hero,ItPo_Mana_02))
		{
			constantino_mana_time += 10;
			if(constantino_mana_time > 30)
			{
				constantino_mana_time = 30;
			};
			Npc_RemoveInvItem(hero,ItPo_Mana_02);
			PrintScreen("Extract of mana used",-1,20,FONT_SCREENBRIGHTLARGE,2);
			B_LameSchlork();
		}
		else if(Npc_HasItems(hero,ItPo_Mana_01))
		{
			constantino_mana_time += 20;
			if(constantino_mana_time > 30)
			{
				constantino_mana_time = 30;
			};
			Npc_RemoveInvItem(hero,ItPo_Mana_01);
			PrintScreen("Essence of mana used",-1,23,FONT_SCREENBRIGHTLARGE,2);
			B_LameSchlork();
		}
		else
		{
			Print("No mana potions available!");
		};
	};
};

func void player_hotkey_lame_heal()
{
	if((Npc_IsInState(hero,ZS_Dead) == FALSE) && (hero.attribute[ATR_HITPOINTS] < hero.attribute[ATR_HITPOINTS_MAX]))
	{
		if(Npc_HasItems(hero,ItPo_Health_03))
		{
			constantino_heal_time += 30;
			if(constantino_heal_time > 60)
			{
				constantino_heal_time = 60;
			};
			Npc_RemoveInvItem(hero,ItPo_Health_03);
			PrintScreen("Elixir of healing used",-1,17,FONT_SCREENBRIGHTLARGE,2);
			B_LameSchlork();
		}
		else if(Npc_HasItems(hero,ItPo_Health_02))
		{
			constantino_heal_time += 20;
			if(constantino_heal_time > 60)
			{
				constantino_heal_time = 60;
			};
			Npc_RemoveInvItem(hero,ItPo_Health_02);
			PrintScreen("Extract of healing used",-1,20,FONT_SCREENBRIGHTLARGE,2);
			B_LameSchlork();
		}
		else if(Npc_HasItems(hero,ItPo_Health_01))
		{
			constantino_heal_time += 15;
			if(constantino_heal_time > 60)
			{
				constantino_heal_time = 60;
			};
			Npc_RemoveInvItem(hero,ItPo_Health_01);
			PrintScreen("Essence of healing used",-1,23,FONT_SCREENBRIGHTLARGE,2);
			B_LameSchlork();
		}
		else
		{
			Print("No healing potions available!");
		};
	};
};
