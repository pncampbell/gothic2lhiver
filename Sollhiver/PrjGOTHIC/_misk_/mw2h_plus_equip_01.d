
var int hero_itmw_2hfs;

func void mw2h_plus_equip_01()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_2H] >= 100) || (self.HitChance[NPC_TALENT_2H] <= 0))
		{
			hero_itmw_2hfs = 0;
		}
		else if((self.HitChance[NPC_TALENT_2H] <= 99) && (self.HitChance[NPC_TALENT_2H] > 0) && (self.HitChance[NPC_TALENT_2H] < 100))
		{
			hero_itmw_2hfs = 1;
		};
		B_AddFightSkill(self,NPC_TALENT_2H,hero_itmw_2hfs);
		b_meleeweaponchange(0,hero_itmw_2hfs,0);
	};
};

func void mw2h_plus_unequip_01()
{
	if(Npc_IsPlayer(self) && (meleeweaponchangedhero || (scriptpatchweaponchange == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_2H,-hero_itmw_2hfs);
		b_meleeweaponundochange();
	};
};

func void mw2h_plus_equip_02()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_2H] >= 100) || (self.HitChance[NPC_TALENT_2H] <= 0))
		{
			hero_itmw_2hfs = 0;
		}
		else if((self.HitChance[NPC_TALENT_2H] >= 99) && (self.HitChance[NPC_TALENT_2H] < 100))
		{
			hero_itmw_2hfs = 1;
		}
		else if((self.HitChance[NPC_TALENT_2H] <= 98) && (self.HitChance[NPC_TALENT_2H] > 0))
		{
			hero_itmw_2hfs = 2;
		};
		B_AddFightSkill(self,NPC_TALENT_2H,hero_itmw_2hfs);
		b_meleeweaponchange(0,hero_itmw_2hfs,0);
	};
};

func void mw2h_plus_unequip_02()
{
	if(Npc_IsPlayer(self) && (meleeweaponchangedhero || (scriptpatchweaponchange == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_2H,-hero_itmw_2hfs);
		b_meleeweaponundochange();
	};
};

func void mw2h_plus_equip_03()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_2H] >= 100) || (self.HitChance[NPC_TALENT_2H] <= 0))
		{
			hero_itmw_2hfs = 0;
		}
		else if((self.HitChance[NPC_TALENT_2H] >= 98) && (self.HitChance[NPC_TALENT_2H] < 100))
		{
			hero_itmw_2hfs = 100 - self.HitChance[NPC_TALENT_2H];
		}
		else if((self.HitChance[NPC_TALENT_2H] <= 97) && (self.HitChance[NPC_TALENT_2H] > 0))
		{
			hero_itmw_2hfs = 3;
		};
		B_AddFightSkill(self,NPC_TALENT_2H,hero_itmw_2hfs);
		b_meleeweaponchange(0,hero_itmw_2hfs,0);
	};
};

func void mw2h_plus_unequip_03()
{
	if(Npc_IsPlayer(self) && (meleeweaponchangedhero || (scriptpatchweaponchange == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_2H,-hero_itmw_2hfs);
		b_meleeweaponundochange();
	};
};

func void mw2h_plus_equip_04()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_2H] >= 100) || (self.HitChance[NPC_TALENT_2H] <= 0))
		{
			hero_itmw_2hfs = 0;
		}
		else if((self.HitChance[NPC_TALENT_2H] >= 97) && (self.HitChance[NPC_TALENT_2H] < 100))
		{
			hero_itmw_2hfs = 100 - self.HitChance[NPC_TALENT_2H];
		}
		else if((self.HitChance[NPC_TALENT_2H] <= 96) && (self.HitChance[NPC_TALENT_2H] > 0))
		{
			hero_itmw_2hfs = 4;
		};
		B_AddFightSkill(self,NPC_TALENT_2H,hero_itmw_2hfs);
		b_meleeweaponchange(0,hero_itmw_2hfs,0);
	};
};

func void mw2h_plus_unequip_04()
{
	if(Npc_IsPlayer(self) && (meleeweaponchangedhero || (scriptpatchweaponchange == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_2H,-hero_itmw_2hfs);
		b_meleeweaponundochange();
	};
};

func void mw2h_plus_equip_05()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_2H] >= 100) || (self.HitChance[NPC_TALENT_2H] <= 0))
		{
			hero_itmw_2hfs = 0;
		}
		else if((self.HitChance[NPC_TALENT_2H] >= 96) && (self.HitChance[NPC_TALENT_2H] < 100))
		{
			hero_itmw_2hfs = 100 - self.HitChance[NPC_TALENT_2H];
		}
		else if((self.HitChance[NPC_TALENT_2H] <= 95) && (self.HitChance[NPC_TALENT_2H] > 0))
		{
			hero_itmw_2hfs = 5;
		};
		B_AddFightSkill(self,NPC_TALENT_2H,hero_itmw_2hfs);
		b_meleeweaponchange(0,hero_itmw_2hfs,0);
	};
};

func void mw2h_plus_unequip_05()
{
	if(Npc_IsPlayer(self) && (meleeweaponchangedhero || (scriptpatchweaponchange == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_2H,-hero_itmw_2hfs);
		b_meleeweaponundochange();
	};
};

func void mw2h_plus_equip_06()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_2H] >= 100) || (self.HitChance[NPC_TALENT_2H] <= 0))
		{
			hero_itmw_2hfs = 0;
		}
		else if((self.HitChance[NPC_TALENT_2H] >= 95) && (self.HitChance[NPC_TALENT_2H] < 100))
		{
			hero_itmw_2hfs = 100 - self.HitChance[NPC_TALENT_2H];
		}
		else if((self.HitChance[NPC_TALENT_2H] <= 94) && (self.HitChance[NPC_TALENT_2H] > 0))
		{
			hero_itmw_2hfs = 6;
		};
		B_AddFightSkill(self,NPC_TALENT_2H,hero_itmw_2hfs);
		b_meleeweaponchange(0,hero_itmw_2hfs,0);
	};
};

func void mw2h_plus_unequip_06()
{
	if(Npc_IsPlayer(self) && (meleeweaponchangedhero || (scriptpatchweaponchange == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_2H,-hero_itmw_2hfs);
		b_meleeweaponundochange();
	};
};

func void mw2h_plus_equip_07()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_2H] >= 100) || (self.HitChance[NPC_TALENT_2H] <= 0))
		{
			hero_itmw_2hfs = 0;
		}
		else if((self.HitChance[NPC_TALENT_2H] >= 94) && (self.HitChance[NPC_TALENT_2H] < 100))
		{
			hero_itmw_2hfs = 100 - self.HitChance[NPC_TALENT_2H];
		}
		else if((self.HitChance[NPC_TALENT_2H] <= 93) && (self.HitChance[NPC_TALENT_2H] > 0))
		{
			hero_itmw_2hfs = 7;
		};
		B_AddFightSkill(self,NPC_TALENT_2H,hero_itmw_2hfs);
		b_meleeweaponchange(0,hero_itmw_2hfs,0);
	};
};

func void mw2h_plus_unequip_07()
{
	if(Npc_IsPlayer(self) && (meleeweaponchangedhero || (scriptpatchweaponchange == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_2H,-hero_itmw_2hfs);
		b_meleeweaponundochange();
	};
};

func void mw2h_plus_equip_08()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_2H] >= 100) || (self.HitChance[NPC_TALENT_2H] <= 0))
		{
			hero_itmw_2hfs = 0;
		}
		else if((self.HitChance[NPC_TALENT_2H] >= 93) && (self.HitChance[NPC_TALENT_2H] < 100))
		{
			hero_itmw_2hfs = 100 - self.HitChance[NPC_TALENT_2H];
		}
		else if((self.HitChance[NPC_TALENT_2H] <= 92) && (self.HitChance[NPC_TALENT_2H] > 0))
		{
			hero_itmw_2hfs = 8;
		};
		B_AddFightSkill(self,NPC_TALENT_2H,hero_itmw_2hfs);
		b_meleeweaponchange(0,hero_itmw_2hfs,0);
	};
};

func void mw2h_plus_unequip_08()
{
	if(Npc_IsPlayer(self) && (meleeweaponchangedhero || (scriptpatchweaponchange == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_2H,-hero_itmw_2hfs);
		b_meleeweaponundochange();
	};
};

func void mw2h_plus_equip_09()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_2H] >= 100) || (self.HitChance[NPC_TALENT_2H] <= 0))
		{
			hero_itmw_2hfs = 0;
		}
		else if((self.HitChance[NPC_TALENT_2H] >= 92) && (self.HitChance[NPC_TALENT_2H] < 100))
		{
			hero_itmw_2hfs = 100 - self.HitChance[NPC_TALENT_2H];
		}
		else if((self.HitChance[NPC_TALENT_2H] <= 91) && (self.HitChance[NPC_TALENT_2H] > 0))
		{
			hero_itmw_2hfs = 9;
		};
		B_AddFightSkill(self,NPC_TALENT_2H,hero_itmw_2hfs);
		b_meleeweaponchange(0,hero_itmw_2hfs,0);
	};
};

func void mw2h_plus_unequip_09()
{
	if(Npc_IsPlayer(self) && (meleeweaponchangedhero || (scriptpatchweaponchange == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_2H,-hero_itmw_2hfs);
		b_meleeweaponundochange();
	};
};

func void mw2h_plus_equip_10()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_2H] >= 100) || (self.HitChance[NPC_TALENT_2H] <= 0))
		{
			hero_itmw_2hfs = 0;
		}
		else if((self.HitChance[NPC_TALENT_2H] >= 91) && (self.HitChance[NPC_TALENT_2H] < 100))
		{
			hero_itmw_2hfs = 100 - self.HitChance[NPC_TALENT_2H];
		}
		else if((self.HitChance[NPC_TALENT_2H] <= 90) && (self.HitChance[NPC_TALENT_2H] > 0))
		{
			hero_itmw_2hfs = 10;
		};
		B_AddFightSkill(self,NPC_TALENT_2H,hero_itmw_2hfs);
		b_meleeweaponchange(0,hero_itmw_2hfs,0);
	};
};

func void mw2h_plus_unequip_10()
{
	if(Npc_IsPlayer(self) && (meleeweaponchangedhero || (scriptpatchweaponchange == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_2H,-hero_itmw_2hfs);
		b_meleeweaponundochange();
	};
};

func void mw2h_plus_equip_15()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_2H] >= 100) || (self.HitChance[NPC_TALENT_2H] <= 0))
		{
			hero_itmw_2hfs = 0;
		}
		else if((self.HitChance[NPC_TALENT_2H] >= 86) && (self.HitChance[NPC_TALENT_2H] < 100))
		{
			hero_itmw_2hfs = 100 - self.HitChance[NPC_TALENT_2H];
		}
		else if((self.HitChance[NPC_TALENT_2H] <= 85) && (self.HitChance[NPC_TALENT_2H] > 0))
		{
			hero_itmw_2hfs = 15;
		};
		B_AddFightSkill(self,NPC_TALENT_2H,hero_itmw_2hfs);
		b_meleeweaponchange(0,hero_itmw_2hfs,0);
	};
};

func void mw2h_plus_unequip_15()
{
	if(Npc_IsPlayer(self) && (meleeweaponchangedhero || (scriptpatchweaponchange == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_2H,-hero_itmw_2hfs);
		b_meleeweaponundochange();
	};
};

func void mw2h_minus_equip_05()
{
	if(Npc_IsPlayer(self))
	{
		if(self.HitChance[NPC_TALENT_2H] >= 20)
		{
			hero_itmw_2hfs = 5;
		}
		else if((self.HitChance[NPC_TALENT_2H] <= 19) && (self.HitChance[NPC_TALENT_2H] > 15))
		{
			hero_itmw_2hfs = self.HitChance[NPC_TALENT_2H] - 15;
		}
		else if(self.HitChance[NPC_TALENT_2H] <= 15)
		{
			hero_itmw_2hfs = 0;
		};
		B_AddFightSkill(self,NPC_TALENT_2H,-hero_itmw_2hfs);
		b_meleeweaponchange(0,hero_itmw_2hfs,0);
	};
};

func void mw2h_minus_unequip_05()
{
	if(Npc_IsPlayer(self) && (meleeweaponchangedhero || (scriptpatchweaponchange == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_2H,hero_itmw_2hfs);
		b_meleeweaponundochange();
	};
};

func void mw2h_minus_equip_07()
{
	if(Npc_IsPlayer(self))
	{
		if(self.HitChance[NPC_TALENT_2H] >= 22)
		{
			hero_itmw_2hfs = 7;
		}
		else if((self.HitChance[NPC_TALENT_2H] <= 21) && (self.HitChance[NPC_TALENT_2H] > 15))
		{
			hero_itmw_2hfs = self.HitChance[NPC_TALENT_2H] - 15;
		}
		else if(self.HitChance[NPC_TALENT_2H] <= 15)
		{
			hero_itmw_2hfs = 0;
		};
		B_AddFightSkill(self,NPC_TALENT_2H,-hero_itmw_2hfs);
		b_meleeweaponchange(0,hero_itmw_2hfs,0);
	};
};

func void mw2h_minus_unequip_07()
{
	if(Npc_IsPlayer(self) && (meleeweaponchangedhero || (scriptpatchweaponchange == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_2H,hero_itmw_2hfs);
		b_meleeweaponundochange();
	};
};

func void mw2h_minus_equip_09()
{
	if(Npc_IsPlayer(self))
	{
		if(self.HitChance[NPC_TALENT_2H] >= 24)
		{
			hero_itmw_2hfs = 9;
		}
		else if((self.HitChance[NPC_TALENT_2H] <= 23) && (self.HitChance[NPC_TALENT_2H] > 15))
		{
			hero_itmw_2hfs = self.HitChance[NPC_TALENT_2H] - 15;
		}
		else if(self.HitChance[NPC_TALENT_2H] <= 15)
		{
			hero_itmw_2hfs = 0;
		};
		B_AddFightSkill(self,NPC_TALENT_2H,-hero_itmw_2hfs);
		b_meleeweaponchange(0,hero_itmw_2hfs,0);
	};
};

func void mw2h_minus_unequip_09()
{
	if(Npc_IsPlayer(self) && (meleeweaponchangedhero || (scriptpatchweaponchange == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_2H,hero_itmw_2hfs);
		b_meleeweaponundochange();
	};
};

func void mw2h_minus_equip_10()
{
	if(Npc_IsPlayer(self))
	{
		if(self.HitChance[NPC_TALENT_2H] >= 25)
		{
			hero_itmw_2hfs = 10;
		}
		else if((self.HitChance[NPC_TALENT_2H] <= 24) && (self.HitChance[NPC_TALENT_2H] > 15))
		{
			hero_itmw_2hfs = self.HitChance[NPC_TALENT_2H] - 15;
		}
		else if(self.HitChance[NPC_TALENT_2H] <= 15)
		{
			hero_itmw_2hfs = 0;
		};
		B_AddFightSkill(self,NPC_TALENT_2H,-hero_itmw_2hfs);
		b_meleeweaponchange(0,hero_itmw_2hfs,0);
	};
};

func void mw2h_minus_unequip_10()
{
	if(Npc_IsPlayer(self) && (meleeweaponchangedhero || (scriptpatchweaponchange == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_2H,hero_itmw_2hfs);
		b_meleeweaponundochange();
	};
};

