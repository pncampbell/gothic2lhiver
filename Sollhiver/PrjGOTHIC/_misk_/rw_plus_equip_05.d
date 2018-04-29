
var int hero_itrw_bfs;

func void rw_plus_equip_05()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_BOW] >= 100) || (self.HitChance[NPC_TALENT_BOW] <= 0))
		{
			hero_itrw_bfs = 0;
		}
		else if((self.HitChance[NPC_TALENT_BOW] >= 96) && (self.HitChance[NPC_TALENT_BOW] < 100))
		{
			hero_itrw_bfs = 100 - self.HitChance[NPC_TALENT_BOW];
		}
		else if((self.HitChance[NPC_TALENT_BOW] <= 95) && (self.HitChance[NPC_TALENT_BOW] > 0))
		{
			hero_itrw_bfs = 5;
		};
		B_AddFightSkill(self,NPC_TALENT_BOW,hero_itrw_bfs);
		b_rangedweaponchange(hero_itrw_bfs,0);
	};
};

func void rw_plus_unequip_05()
{
	if(Npc_IsPlayer(self) && (rangeweaponchangedhero || (scriptpatchweaponchange_ranged == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_BOW,-hero_itrw_bfs);
		b_rangedweaponundochange();
	};
};

func void rw_plus_equip_07()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_BOW] >= 100) || (self.HitChance[NPC_TALENT_BOW] <= 0))
		{
			hero_itrw_bfs = 0;
		}
		else if((self.HitChance[NPC_TALENT_BOW] >= 94) && (self.HitChance[NPC_TALENT_BOW] < 100))
		{
			hero_itrw_bfs = 100 - self.HitChance[NPC_TALENT_BOW];
		}
		else if((self.HitChance[NPC_TALENT_BOW] <= 93) && (self.HitChance[NPC_TALENT_BOW] > 0))
		{
			hero_itrw_bfs = 7;
		};
		B_AddFightSkill(self,NPC_TALENT_BOW,hero_itrw_bfs);
		b_rangedweaponchange(hero_itrw_bfs,0);
	};
};

func void rw_plus_unequip_07()
{
	if(Npc_IsPlayer(self) && (rangeweaponchangedhero || (scriptpatchweaponchange_ranged == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_BOW,-hero_itrw_bfs);
		b_rangedweaponundochange();
	};
};

func void rw_plus_equip_10()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_BOW] >= 100) || (self.HitChance[NPC_TALENT_BOW] <= 0))
		{
			hero_itrw_bfs = 0;
		}
		else if((self.HitChance[NPC_TALENT_BOW] >= 91) && (self.HitChance[NPC_TALENT_BOW] < 100))
		{
			hero_itrw_bfs = 100 - self.HitChance[NPC_TALENT_BOW];
		}
		else if((self.HitChance[NPC_TALENT_BOW] <= 90) && (self.HitChance[NPC_TALENT_BOW] > 0))
		{
			hero_itrw_bfs = 10;
		};
		B_AddFightSkill(self,NPC_TALENT_BOW,hero_itrw_bfs);
		b_rangedweaponchange(hero_itrw_bfs,0);
	};
};

func void rw_plus_unequip_10()
{
	if(Npc_IsPlayer(self) && (rangeweaponchangedhero || (scriptpatchweaponchange_ranged == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_BOW,-hero_itrw_bfs);
		b_rangedweaponundochange();
	};
};

func void rw_minus_equip_05()
{
	if(Npc_IsPlayer(self))
	{
		if(self.HitChance[NPC_TALENT_BOW] >= 20)
		{
			hero_itrw_bfs = 5;
		}
		else if((self.HitChance[NPC_TALENT_BOW] <= 19) && (self.HitChance[NPC_TALENT_BOW] > 15))
		{
			hero_itrw_bfs = self.HitChance[NPC_TALENT_BOW] - 15;
		}
		else if(self.HitChance[NPC_TALENT_BOW] <= 15)
		{
			hero_itrw_bfs = 0;
		};
		B_AddFightSkill(self,NPC_TALENT_BOW,-hero_itrw_bfs);
		b_rangedweaponchange(-hero_itrw_bfs,0);
	};
};

func void rw_minus_unequip_05()
{
	if(Npc_IsPlayer(self) && (rangeweaponchangedhero || (scriptpatchweaponchange_ranged == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_BOW,hero_itrw_bfs);
		b_rangedweaponundochange();
	};
};

func void rw_minus_equip_10()
{
	if(Npc_IsPlayer(self))
	{
		if(self.HitChance[NPC_TALENT_BOW] >= 25)
		{
			hero_itrw_bfs = 10;
		}
		else if((self.HitChance[NPC_TALENT_BOW] <= 24) && (self.HitChance[NPC_TALENT_BOW] > 15))
		{
			hero_itrw_bfs = self.HitChance[NPC_TALENT_BOW] - 15;
		}
		else if(self.HitChance[NPC_TALENT_BOW] <= 15)
		{
			hero_itrw_bfs = 0;
		};
		B_AddFightSkill(self,NPC_TALENT_BOW,-hero_itrw_bfs);
		b_rangedweaponchange(-hero_itrw_bfs,0);
	};
};

func void rw_minus_unequip_10()
{
	if(Npc_IsPlayer(self) && (rangeweaponchangedhero || (scriptpatchweaponchange_ranged == FALSE)))
	{
		B_AddFightSkill(self,NPC_TALENT_BOW,hero_itrw_bfs);
		b_rangedweaponundochange();
	};
};

