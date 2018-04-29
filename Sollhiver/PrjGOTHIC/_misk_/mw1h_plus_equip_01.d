
var int hero_itmw_1hfs;
var int hero_itsh_1hfs;
var int morgan_1hfs;

func void mw1h_plus_equip_01()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_1H] >= 100) || (self.HitChance[NPC_TALENT_1H] <= 0))
		{
			hero_itmw_1hfs = 0;
		}
		else if((self.HitChance[NPC_TALENT_1H] <= 99) && (self.HitChance[NPC_TALENT_1H] > 0) && (self.HitChance[NPC_TALENT_1H] < 100))
		{
			hero_itmw_1hfs = 1;
		};
		B_AddFightSkill(self,NPC_TALENT_1H,hero_itmw_1hfs);
		b_meleeweaponchange(hero_itmw_1hfs,0,0);
	};
};

func void mw1h_plus_unequip_01()
{
	if(Npc_IsPlayer(self) && (meleeweaponchangedhero || (scriptpatchweaponchange == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_1H,-hero_itmw_1hfs);
		b_meleeweaponundochange();
	};
};

func void mw1h_plus_equip_02()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_1H] >= 100) || (self.HitChance[NPC_TALENT_1H] <= 0))
		{
			hero_itmw_1hfs = 0;
		}
		else if((self.HitChance[NPC_TALENT_1H] >= 99) && (self.HitChance[NPC_TALENT_1H] < 100))
		{
			hero_itmw_1hfs = 1;
		}
		else if((self.HitChance[NPC_TALENT_1H] <= 98) && (self.HitChance[NPC_TALENT_1H] > 0))
		{
			hero_itmw_1hfs = 2;
		};
		B_AddFightSkill(self,NPC_TALENT_1H,hero_itmw_1hfs);
		b_meleeweaponchange(hero_itmw_1hfs,0,0);
	};
};

func void mw1h_plus_unequip_02()
{
	if(Npc_IsPlayer(self) && (meleeweaponchangedhero || (scriptpatchweaponchange == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_1H,-hero_itmw_1hfs);
		b_meleeweaponundochange();
	};
};

func void mw1h_plus_equip_03()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_1H] >= 100) || (self.HitChance[NPC_TALENT_1H] <= 0))
		{
			hero_itmw_1hfs = 0;
		}
		else if((self.HitChance[NPC_TALENT_1H] >= 98) && (self.HitChance[NPC_TALENT_1H] < 100))
		{
			hero_itmw_1hfs = 100 - self.HitChance[NPC_TALENT_1H];
		}
		else if((self.HitChance[NPC_TALENT_1H] <= 97) && (self.HitChance[NPC_TALENT_1H] > 0))
		{
			hero_itmw_1hfs = 3;
		};
		B_AddFightSkill(self,NPC_TALENT_1H,hero_itmw_1hfs);
		b_meleeweaponchange(hero_itmw_1hfs,0,0);
	};
};

func void mw1h_plus_unequip_03()
{
	if(Npc_IsPlayer(self) && (meleeweaponchangedhero || (scriptpatchweaponchange == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_1H,-hero_itmw_1hfs);
		b_meleeweaponundochange();
	};
};

func void mw1h_plus_equip_04()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_1H] >= 100) || (self.HitChance[NPC_TALENT_1H] <= 0))
		{
			hero_itmw_1hfs = 0;
		}
		else if((self.HitChance[NPC_TALENT_1H] >= 97) && (self.HitChance[NPC_TALENT_1H] < 100))
		{
			hero_itmw_1hfs = 100 - self.HitChance[NPC_TALENT_1H];
		}
		else if((self.HitChance[NPC_TALENT_1H] <= 96) && (self.HitChance[NPC_TALENT_1H] > 0))
		{
			hero_itmw_1hfs = 4;
		};
		B_AddFightSkill(self,NPC_TALENT_1H,hero_itmw_1hfs);
		b_meleeweaponchange(hero_itmw_1hfs,0,0);
	};
};

func void mw1h_plus_unequip_04()
{
	if(Npc_IsPlayer(self) && (meleeweaponchangedhero || (scriptpatchweaponchange == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_1H,-hero_itmw_1hfs);
		b_meleeweaponundochange();
	};
};

func void mw1h_plus_equip_05()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_1H] >= 100) || (self.HitChance[NPC_TALENT_1H] <= 0))
		{
			hero_itmw_1hfs = 0;
		}
		else if((self.HitChance[NPC_TALENT_1H] >= 96) && (self.HitChance[NPC_TALENT_1H] < 100))
		{
			hero_itmw_1hfs = 100 - self.HitChance[NPC_TALENT_1H];
		}
		else if((self.HitChance[NPC_TALENT_1H] <= 95) && (self.HitChance[NPC_TALENT_1H] > 0))
		{
			hero_itmw_1hfs = 5;
		};
		B_AddFightSkill(self,NPC_TALENT_1H,hero_itmw_1hfs);
		b_meleeweaponchange(hero_itmw_1hfs,0,0);
	};
};

func void mw1h_plus_unequip_05()
{
	if(Npc_IsPlayer(self) && (meleeweaponchangedhero || (scriptpatchweaponchange == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_1H,-hero_itmw_1hfs);
		b_meleeweaponundochange();
	};
};

func void mw1h_plus_equip_06()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_1H] >= 100) || (self.HitChance[NPC_TALENT_1H] <= 0))
		{
			hero_itmw_1hfs = 0;
		}
		else if((self.HitChance[NPC_TALENT_1H] >= 95) && (self.HitChance[NPC_TALENT_1H] < 100))
		{
			hero_itmw_1hfs = 100 - self.HitChance[NPC_TALENT_1H];
		}
		else if((self.HitChance[NPC_TALENT_1H] <= 94) && (self.HitChance[NPC_TALENT_1H] > 0))
		{
			hero_itmw_1hfs = 6;
		};
		B_AddFightSkill(self,NPC_TALENT_1H,hero_itmw_1hfs);
		b_meleeweaponchange(hero_itmw_1hfs,0,0);
	};
};

func void mw1h_plus_unequip_06()
{
	if(Npc_IsPlayer(self) && (meleeweaponchangedhero || (scriptpatchweaponchange == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_1H,-hero_itmw_1hfs);
		b_meleeweaponundochange();
	};
};

func void mw1h_plus_equip_07()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_1H] >= 100) || (self.HitChance[NPC_TALENT_1H] <= 0))
		{
			hero_itmw_1hfs = 0;
		}
		else if((self.HitChance[NPC_TALENT_1H] >= 94) && (self.HitChance[NPC_TALENT_1H] < 100))
		{
			hero_itmw_1hfs = 100 - self.HitChance[NPC_TALENT_1H];
		}
		else if((self.HitChance[NPC_TALENT_1H] <= 93) && (self.HitChance[NPC_TALENT_1H] > 0))
		{
			hero_itmw_1hfs = 7;
		};
		B_AddFightSkill(self,NPC_TALENT_1H,hero_itmw_1hfs);
		b_meleeweaponchange(hero_itmw_1hfs,0,0);
	};
};

func void mw1h_plus_unequip_07()
{
	if(Npc_IsPlayer(self) && (meleeweaponchangedhero || (scriptpatchweaponchange == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_1H,-hero_itmw_1hfs);
		b_meleeweaponundochange();
	};
};

func void mw1h_plus_equip_08()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_1H] >= 100) || (self.HitChance[NPC_TALENT_1H] <= 0))
		{
			hero_itmw_1hfs = 0;
		}
		else if((self.HitChance[NPC_TALENT_1H] >= 93) && (self.HitChance[NPC_TALENT_1H] < 100))
		{
			hero_itmw_1hfs = 100 - self.HitChance[NPC_TALENT_1H];
		}
		else if((self.HitChance[NPC_TALENT_1H] <= 92) && (self.HitChance[NPC_TALENT_1H] > 0))
		{
			hero_itmw_1hfs = 8;
		};
		B_AddFightSkill(self,NPC_TALENT_1H,hero_itmw_1hfs);
		b_meleeweaponchange(hero_itmw_1hfs,0,0);
	};
};

func void mw1h_plus_unequip_08()
{
	if(Npc_IsPlayer(self) && (meleeweaponchangedhero || (scriptpatchweaponchange == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_1H,-hero_itmw_1hfs);
		b_meleeweaponundochange();
	};
};

func void mw1h_plus_equip_09()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_1H] >= 100) || (self.HitChance[NPC_TALENT_1H] <= 0))
		{
			hero_itmw_1hfs = 0;
		}
		else if((self.HitChance[NPC_TALENT_1H] >= 92) && (self.HitChance[NPC_TALENT_1H] < 100))
		{
			hero_itmw_1hfs = 100 - self.HitChance[NPC_TALENT_1H];
		}
		else if((self.HitChance[NPC_TALENT_1H] <= 91) && (self.HitChance[NPC_TALENT_1H] > 0))
		{
			hero_itmw_1hfs = 9;
		};
		B_AddFightSkill(self,NPC_TALENT_1H,hero_itmw_1hfs);
		b_meleeweaponchange(hero_itmw_1hfs,0,0);
	};
};

func void mw1h_plus_unequip_09()
{
	if(Npc_IsPlayer(self) && (meleeweaponchangedhero || (scriptpatchweaponchange == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_1H,-hero_itmw_1hfs);
		b_meleeweaponundochange();
	};
};

func void mw1h_plus_equip_10()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_1H] >= 100) || (self.HitChance[NPC_TALENT_1H] <= 0))
		{
			hero_itmw_1hfs = 0;
		}
		else if((self.HitChance[NPC_TALENT_1H] >= 91) && (self.HitChance[NPC_TALENT_1H] < 100))
		{
			hero_itmw_1hfs = 100 - self.HitChance[NPC_TALENT_1H];
		}
		else if((self.HitChance[NPC_TALENT_1H] <= 90) && (self.HitChance[NPC_TALENT_1H] > 0))
		{
			hero_itmw_1hfs = 10;
		};
		B_AddFightSkill(self,NPC_TALENT_1H,hero_itmw_1hfs);
		b_meleeweaponchange(hero_itmw_1hfs,0,0);
	};
};

func void mw1h_plus_unequip_10()
{
	if(Npc_IsPlayer(self) && (meleeweaponchangedhero || (scriptpatchweaponchange == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_1H,-hero_itmw_1hfs);
		b_meleeweaponundochange();
	};
};

func void glamdring_equip_10()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_1H] >= 100) || (self.HitChance[NPC_TALENT_1H] <= 0))
		{
			hero_itmw_1hfs = 0;
		}
		else if((self.HitChance[NPC_TALENT_1H] >= 91) && (self.HitChance[NPC_TALENT_1H] < 100))
		{
			hero_itmw_1hfs = 100 - self.HitChance[NPC_TALENT_1H];
		}
		else if((self.HitChance[NPC_TALENT_1H] <= 90) && (self.HitChance[NPC_TALENT_1H] > 0))
		{
			hero_itmw_1hfs = 10;
		};
		self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] + 30;
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] + 30;
		B_AddFightSkill(self,NPC_TALENT_1H,hero_itmw_1hfs);
		b_meleeweaponchange(hero_itmw_1hfs,0,30);
	};
};

func void glamdring_unequip_10()
{
	if(Npc_IsPlayer(self) && (meleeweaponchangedhero || (scriptpatchweaponchange == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_1H,-hero_itmw_1hfs);
		self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] - 30;
		if(self.attribute[ATR_MANA] > 30)
		{
			self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - 30;
		}
		else
		{
			self.attribute[ATR_MANA] = 0;
		};
		b_meleeweaponundochange();
	};
};

func void mw1h_minus_equip_10()
{
	if(Npc_IsPlayer(self))
	{
		if(self.HitChance[NPC_TALENT_1H] >= 25)
		{
			hero_itmw_1hfs = 10;
		}
		else if((self.HitChance[NPC_TALENT_1H] <= 24) && (self.HitChance[NPC_TALENT_1H] > 15))
		{
			hero_itmw_1hfs = self.HitChance[NPC_TALENT_1H] - 15;
		}
		else if(self.HitChance[NPC_TALENT_1H] <= 15)
		{
			hero_itmw_1hfs = 0;
		};
		B_AddFightSkill(self,NPC_TALENT_1H,-hero_itmw_1hfs);
		b_meleeweaponchange(hero_itmw_1hfs,0,0);
	};
};

func void mw1h_minus_unequip_10()
{
	if(Npc_IsPlayer(self) && (meleeweaponchangedhero || (scriptpatchweaponchange == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_1H,hero_itmw_1hfs);
		b_meleeweaponundochange();
	};
};

func void morgan_equip_10()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_1H] >= 100) || (self.HitChance[NPC_TALENT_1H] <= 0))
		{
			morgan_1hfs = 0;
		}
		else if((self.HitChance[NPC_TALENT_1H] >= 91) && (self.HitChance[NPC_TALENT_1H] < 100))
		{
			morgan_1hfs = 100 - self.HitChance[NPC_TALENT_1H];
		}
		else if((self.HitChance[NPC_TALENT_1H] <= 90) && (self.HitChance[NPC_TALENT_1H] > 0))
		{
			morgan_1hfs = 10;
		};
		B_AddFightSkill(self,NPC_TALENT_1H,morgan_1hfs);
	};
};

func void morgan_unequip_10()
{
	if(Npc_IsPlayer(self))
	{
		B_AddFightSkill(self,NPC_TALENT_1H,morgan_1hfs);
	};
};

func void b_sh_equip(var C_Npc self)
{
	self.aivar[91] = TRUE;
};

func void b_sh_unequip(var C_Npc self)
{
	self.aivar[91] = FALSE;
};


var int shield_normal_hp;

func void b_sh_hpraise(var C_Npc self,var int shhp)
{
	if(Npc_IsPlayer(self))
	{
		if(self.attribute[ATR_HITPOINTS] >= shhp)
		{
			self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] + shhp;
			self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] + shhp;
			shield_normal_hp = TRUE;
		}
		else
		{
			self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] + shhp;
			shield_normal_hp = FALSE;
		};
	};
};

func void b_sh_hpraise_unequip(var C_Npc self,var int shhp_unequip)
{
	if(Npc_IsPlayer(self))
	{
		self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] - shhp_unequip;
		if((shield_normal_hp == TRUE) && ((self.attribute[ATR_HITPOINTS] - shhp_unequip) < 2))
		{
			self.attribute[ATR_HITPOINTS] = 2;
		}
		else if(shield_normal_hp == TRUE)
		{
			self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] - shhp_unequip;
			shield_normal_hp = FALSE;
		};
	};
};

func void b_sworddef(var C_Npc self,var int edge_def)
{
	if(Npc_IsPlayer(self))
	{
		stat_sworddef = stat_sworddef + edge_def;
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
	};
};

func void b_shfs_equip_17()
{
	if(Npc_IsPlayer(self))
	{
		if(self.HitChance[NPC_TALENT_1H] >= 17)
		{
			hero_itsh_1hfs = 17;
		}
		else if(self.HitChance[NPC_TALENT_1H] < 17)
		{
			hero_itsh_1hfs = self.HitChance[NPC_TALENT_1H];
		};
		B_AddFightSkill(self,NPC_TALENT_1H,-hero_itsh_1hfs);
	};
};

func void b_shfs_unequip_17()
{
	if(Npc_IsPlayer(self))
	{
		B_AddFightSkill(self,NPC_TALENT_1H,hero_itsh_1hfs);
	};
};

func void b_shfs_equip_15()
{
	if(Npc_IsPlayer(self))
	{
		if(self.HitChance[NPC_TALENT_1H] >= 15)
		{
			hero_itsh_1hfs = 15;
		}
		else if(self.HitChance[NPC_TALENT_1H] < 15)
		{
			hero_itsh_1hfs = self.HitChance[NPC_TALENT_1H];
		};
		B_AddFightSkill(self,NPC_TALENT_1H,-hero_itsh_1hfs);
	};
};

func void b_shfs_unequip_15()
{
	if(Npc_IsPlayer(self))
	{
		B_AddFightSkill(self,NPC_TALENT_1H,hero_itsh_1hfs);
	};
};

func void b_shfs_equip_12()
{
	if(Npc_IsPlayer(self))
	{
		if(self.HitChance[NPC_TALENT_1H] >= 12)
		{
			hero_itsh_1hfs = 12;
		}
		else if(self.HitChance[NPC_TALENT_1H] < 12)
		{
			hero_itsh_1hfs = self.HitChance[NPC_TALENT_1H];
		};
		B_AddFightSkill(self,NPC_TALENT_1H,-hero_itsh_1hfs);
	};
};

func void b_shfs_unequip_12()
{
	if(Npc_IsPlayer(self))
	{
		B_AddFightSkill(self,NPC_TALENT_1H,hero_itsh_1hfs);
	};
};

func void b_shfs_equip_10()
{
	if(Npc_IsPlayer(self))
	{
		if(self.HitChance[NPC_TALENT_1H] >= 10)
		{
			hero_itsh_1hfs = 10;
		}
		else if(self.HitChance[NPC_TALENT_1H] < 10)
		{
			hero_itsh_1hfs = self.HitChance[NPC_TALENT_1H];
		};
		B_AddFightSkill(self,NPC_TALENT_1H,-hero_itsh_1hfs);
	};
};

func void b_shfs_unequip_10()
{
	if(Npc_IsPlayer(self))
	{
		B_AddFightSkill(self,NPC_TALENT_1H,hero_itsh_1hfs);
	};
};

func void b_shfs_equip_7()
{
	if(Npc_IsPlayer(self))
	{
		if(self.HitChance[NPC_TALENT_1H] >= 7)
		{
			hero_itsh_1hfs = 7;
		}
		else if(self.HitChance[NPC_TALENT_1H] < 7)
		{
			hero_itsh_1hfs = self.HitChance[NPC_TALENT_1H];
		};
		B_AddFightSkill(self,NPC_TALENT_1H,-hero_itsh_1hfs);
	};
};

func void b_shfs_unequip_7()
{
	if(Npc_IsPlayer(self))
	{
		B_AddFightSkill(self,NPC_TALENT_1H,hero_itsh_1hfs);
	};
};

func void b_shfs_equip_5()
{
	if(Npc_IsPlayer(self))
	{
		if(self.HitChance[NPC_TALENT_1H] >= 5)
		{
			hero_itsh_1hfs = 5;
		}
		else if(self.HitChance[NPC_TALENT_1H] < 5)
		{
			hero_itsh_1hfs = self.HitChance[NPC_TALENT_1H];
		};
		B_AddFightSkill(self,NPC_TALENT_1H,-hero_itsh_1hfs);
	};
};

func void b_shfs_unequip_5()
{
	if(Npc_IsPlayer(self))
	{
		B_AddFightSkill(self,NPC_TALENT_1H,hero_itsh_1hfs);
	};
};

func void b_shfs_equip_4()
{
	if(Npc_IsPlayer(self))
	{
		if(self.HitChance[NPC_TALENT_1H] >= 4)
		{
			hero_itsh_1hfs = 4;
		}
		else if(self.HitChance[NPC_TALENT_1H] < 4)
		{
			hero_itsh_1hfs = self.HitChance[NPC_TALENT_1H];
		};
		B_AddFightSkill(self,NPC_TALENT_1H,-hero_itsh_1hfs);
	};
};

func void b_shfs_unequip_4()
{
	if(Npc_IsPlayer(self))
	{
		B_AddFightSkill(self,NPC_TALENT_1H,hero_itsh_1hfs);
	};
};

func void b_shfs_equip_3()
{
	if(Npc_IsPlayer(self))
	{
		if(self.HitChance[NPC_TALENT_1H] >= 3)
		{
			hero_itsh_1hfs = 3;
		}
		else if(self.HitChance[NPC_TALENT_1H] < 3)
		{
			hero_itsh_1hfs = self.HitChance[NPC_TALENT_1H];
		};
		B_AddFightSkill(self,NPC_TALENT_1H,-hero_itsh_1hfs);
	};
};

func void b_shfs_unequip_3()
{
	if(Npc_IsPlayer(self))
	{
		B_AddFightSkill(self,NPC_TALENT_1H,hero_itsh_1hfs);
	};
};

