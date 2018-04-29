
func void ZS_Potion_Alchemy()
{
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Constantino))
	{
		if(constantino_flag == 0)
		{
			constantino_flasks = Npc_HasItems(self,ItMi_Flask);
			constantino_flag = 1;
		};
	}
	else if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Salandril))
	{
		if(salandril_flag == 0)
		{
			salandril_flasks = Npc_HasItems(self,ItMi_Flask);
			salandril_flag = 1;
		};
	}
	else if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Sagitta))
	{
		if(sagitta_flag == 0)
		{
			sagitta_flasks = Npc_HasItems(self,ItMi_Flask);
			sagitta_flag = 1;
		};
	}
	else if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Ignaz))
	{
		if(ignaz_flag == 0)
		{
			ignaz_flasks = Npc_HasItems(self,ItMi_Flask);
			ignaz_flag = 1;
		};
	}
	else if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(lucia))
	{
		if(lucia_flag == 0)
		{
			lucia_flasks = Npc_HasItems(self,ItMi_Flask);
			lucia_flag = 1;
		};
	}
	else if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Samuel))
	{
		if(samuel_flag == 0)
		{
			samuel_flasks = Npc_HasItems(self,ItMi_Flask);
			samuel_flag = 1;
		};
	};
	Perception_Set_Normal();
	B_ResetAll(self);
	AI_SetWalkMode(self,NPC_WALK);
	if(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == FALSE)
	{
		AI_GotoWP(self,self.wp);
	};
};

func int ZS_Potion_Alchemy_Loop()
{
	if(!C_BodyStateContains(self,BS_MOBINTERACT_INTERRUPT) && Wld_IsMobAvailable(self,"LAB"))
	{
		AI_UseMob(self,"LAB",1);
	};
	return LOOP_CONTINUE;
};

func void ZS_Potion_Alchemy_End()
{
	AI_UseMob(self,"LAB",-1);
};

