
instance Pal_201_Ingmar(Npc_Default)
{
	name[0] = "Ingmar";
	guild = GIL_PAL;
	id = 201;
	voice = 6;
	flags = 0;
	npcType = npctype_main;
	aivar[91] = TRUE;
	B_SetAttributesToChapter(self,5);
	fight_tactic = FAI_HUMAN_MASTER;
	EquipItem(self,ItMw_1h_Pal_Sword);
	EquipItem(self,itsh_paladin_a);
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_N_ToughBart01,BodyTex_N,ItAr_PAl_H);
	Mdl_SetModelFatness(self,1.5);
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,80);
	daily_routine = Rtn_Start_201;
};


func void Rtn_Start_201()
{
	TA_Stand_WP(8,0,23,0,"NW_CITY_CITYHALL_WARROOM_02");
	TA_Stand_WP(23,0,8,0,"NW_CITY_CITYHALL_WARROOM_02");
};

func void rtn_exlord_201()
{
	TA_Stand_ArmsCrossed(8,0,20,0,"NW_CITY_HAGEN");
	TA_Stand_ArmsCrossed(20,0,8,0,"NW_CITY_HAGEN");
};

