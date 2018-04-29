
instance bdt_10315_addon_rangerbandit_m(Npc_Default)
{
	name[0] = NAME_Bandit;
	guild = GIL_BDT;
	id = 10315;
	voice = 1;
	flags = 0;
	npcType = NPCTYPE_AMBIENT;
	B_SetAttributesToChapter(self,2);
	fight_tactic = FAI_HUMAN_NORMAL;
	EquipItem(self,ItMw_1h_Bau_Mace);
	EquipItem(self,ItRw_Sld_Bow);
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,MALE,"Hum_Head_FatBald",Face_N_Normal03,BodyTex_N,ItAr_BDT_M);
	Mdl_SetModelFatness(self,1);
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,55);
	daily_routine = rtn_start_10315;
};


func void rtn_start_10315()
{
	TA_Stand_ArmsCrossed(8,0,22,0,"NW_ONARFOREST_BDTCAVE_02");
	TA_Stand_ArmsCrossed(22,0,8,0,"NW_ONARFOREST_BDTCAVE_02");
};

