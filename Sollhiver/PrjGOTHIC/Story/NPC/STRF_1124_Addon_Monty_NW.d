
instance STRF_1124_Addon_Monty_NW(Npc_Default)
{
	name[0] = "Monty";
	guild = GIL_VLK;
	id = 1124;
	voice = 8;
	flags = 0;
	npcType = npctype_main;
	aivar[AIV_IgnoresArmor] = TRUE;
	aivar[AIV_ToughGuy] = TRUE;
	B_SetAttributesToChapter(self,2);
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_2H_Axe_L_01);
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_N_NormalBart04,BodyTex_N,ITAR_Bau_L);
	Mdl_SetModelFatness(self,1);
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,30);
	daily_routine = Rtn_Start_1124;
};


func void Rtn_Start_1124()
{
	TA_Study_WP(9,5,17,35,"NW_CITY_HABOUR_WERFT_IN_01");
	TA_Stand_ArmsCrossed(17,35,19,35,"NW_CITY_GARVELL_ADD01");
	TA_Sit_Chair(19,35,9,5,"NW_CITY_GARVELL_ADD07");
};

