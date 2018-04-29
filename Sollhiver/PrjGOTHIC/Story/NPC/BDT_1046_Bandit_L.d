
instance BDT_1046_Bandit_L(Npc_Default)
{
	name[0] = NAME_Bandit;
	guild = GIL_BDT;
	id = 1046;
	voice = 1;
	flags = 0;
	npcType = NPCTYPE_AMBIENT;
	aivar[AIV_EnemyOverride] = TRUE;
	aivar[91] = TRUE;
	B_SetAttributesToChapter(self,1);
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1h_MISC_Sword);
	EquipItem(self,itsh_g3_01_old);
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,MALE,"Hum_Head_Bald",Face_N_Mud,BodyTex_N,ItAr_BDT_M);
	Mdl_SetModelFatness(self,1);
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,30);
	daily_routine = Rtn_Start_1046;
};


func void Rtn_Start_1046()
{
	TA_Stand_ArmsCrossed(0,0,12,0,"NW_CASTLEMINE_PATH_01");
	TA_Stand_ArmsCrossed(12,0,0,0,"NW_CASTLEMINE_PATH_01");
};

