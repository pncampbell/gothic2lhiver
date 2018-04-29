
prototype Mst_Default_OrcShaman(C_Npc)
{
	name[0] = "Orc shaman";
	guild = GIL_ORC;
	aivar[AIV_MM_REAL_ID] = ID_ORCSHAMAN;
	voice = 18;
	level = 35;
	attribute[ATR_STRENGTH] = 120;
	attribute[ATR_DEXTERITY] = 170;
	attribute[ATR_HITPOINTS_MAX] = 380;
	attribute[ATR_HITPOINTS] = 380;
	attribute[ATR_MANA_MAX] = 100;
	attribute[ATR_MANA] = 100;
	protection[PROT_BLUNT] = 130;
	protection[PROT_EDGE] = 130;
	protection[PROT_POINT] = 130;
	protection[PROT_FIRE] = 100;
	protection[PROT_FLY] = 65;
	protection[PROT_MAGIC] = 65;
	HitChance[NPC_TALENT_1H] = 60;
	HitChance[NPC_TALENT_2H] = 60;
	HitChance[NPC_TALENT_BOW] = 60;
	HitChance[NPC_TALENT_CROSSBOW] = 60;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_ORC;
	senses = SENSE_HEAR | SENSE_SEE;
	senses_range = PERC_DIST_ORC_ACTIVE_MAX;
	aivar[AIV_MM_FollowTime] = FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
};

func void B_SetVisuals_OrcShaman()
{
	Mdl_SetVisual(self,"Orc.mds");
	Mdl_SetVisualBody(self,"Orc_BodyShaman",DEFAULT,DEFAULT,"Orc_HeadShaman",DEFAULT,DEFAULT,-1);
};


instance OrcShaman_Sit(Mst_Default_OrcShaman)
{
	B_SetVisuals_OrcShaman();
	EquipItem(self,ItMw_2H_OrcAxe_01);
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_OrcSitStart] = OnlyRoutine;
};

instance OrcShaman_Hosh_Pak(Mst_Default_OrcShaman)
{
	name[0] = "Hosh-Pak";
	B_SetVisuals_OrcShaman();
	EquipItem(self,ItMw_2H_OrcAxe_01);
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_OrcSitStart] = OnlyRoutine;
};

instance OrcShaman_Sit_CanyonLibraryKey(Mst_Default_OrcShaman)
{
	name[0] = "Leader of the horde";
	B_SetVisuals_OrcShaman();
	EquipItem(self,ItMw_2H_OrcAxe_01);
	CreateInvItems(self,itke_canyonlibrary_hierarchy_books_addon,1);
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_OrcSitStart] = OnlyRoutine;
};

instance orcshaman_sit_xpasskey(Mst_Default_OrcShaman)
{
	name[0] = "Orc shaman";
	B_SetVisuals_OrcShaman();
	EquipItem(self,ItMw_2H_OrcAxe_01);
	CreateInvItems(self,itke_xpass_ork,1);
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_OrcSitStart] = OnlyRoutine;
};

