
instance BDT_10313_Addon_RangerBandit_L(Npc_Default)
{
	name[0] = NAME_Bandit;
	guild = GIL_BDT;
	id = 10313;
	voice = 13;
	flags = 0;
	npcType = NPCTYPE_AMBIENT;
	aivar[91] = TRUE;
	B_SetAttributesToChapter(self,1);
	fight_tactic = FAI_HUMAN_NORMAL;
	EquipItem(self,ItMw_Addon_BanditTrader);
	EquipItem(self,itsh_g3_broken);
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,MALE,"Hum_Head_Bald",Face_L_Tough02,BodyTex_L,ItAr_BDT_M);
	Mdl_SetModelFatness(self,0);
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,30);
	start_aistate = ZS_Bandit;
};

