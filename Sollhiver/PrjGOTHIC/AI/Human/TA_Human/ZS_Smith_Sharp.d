
func void ZS_Smith_Sharp()
{
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Bennet))
	{
		if(bennet_flag == 0)
		{
			bennet_swordraws = Npc_HasItems(self,ItMiSwordraw);
			bennet_flag = 1;
		};
	}
	else if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Brian))
	{
		if(brian_flag == 0)
		{
			brian_swordraws = Npc_HasItems(self,ItMiSwordraw);
			brian_flag = 1;
		};
	}
	else if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Sarah))
	{
		if(sarah_flag == 0)
		{
			sarah_swordraws = Npc_HasItems(self,ItMiSwordraw);
			sarah_flag = 1;
		};
	}
	else if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(huno))
	{
		if(huno_flag == 0)
		{
			huno_swordraws = Npc_HasItems(self,ItMiSwordraw);
			huno_flag = 1;
		};
	}
	else if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Bennet_DI))
	{
		if(bennet_di_flag == 0)
		{
			bennet_di_swordraws = Npc_HasItems(self,ItMiSwordraw);
			bennet_di_flag = 1;
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

func int ZS_Smith_Sharp_Loop()
{
	if(!C_BodyStateContains(self,BS_MOBINTERACT_INTERRUPT) && Wld_IsMobAvailable(self,"BSSHARP"))
	{
		AI_UseMob(self,"BSSHARP",1);
	};
	return LOOP_CONTINUE;
};

func void ZS_Smith_Sharp_End()
{
	AI_UseMob(self,"BSSHARP",-1);
};

