
prototype Mst_Default_Shadowbeast(C_Npc)
{
	name[0] = "Shadowbeast";
	guild = GIL_SHADOWBEAST;
	aivar[AIV_MM_REAL_ID] = ID_SHADOWBEAST;
	level = 35;
	attribute[ATR_STRENGTH] = 200;
	attribute[ATR_DEXTERITY] = 200;
	attribute[ATR_HITPOINTS_MAX] = 450;
	attribute[ATR_HITPOINTS] = 450;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 125;
	protection[PROT_EDGE] = 125;
	protection[PROT_POINT] = 75;
	protection[PROT_FIRE] = 55;
	protection[PROT_FLY] = 125;
	protection[PROT_MAGIC] = 20;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_SHADOWBEAST;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime] = FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_SleepStart] = 6;
	aivar[AIV_MM_SleepEnd] = 20;
	aivar[AIV_MM_RoamStart] = 20;
	aivar[AIV_MM_RoamEnd] = 6;
};

func void B_SetVisuals_Shadowbeast()
{
	Mdl_SetVisual(self,"Shadow.mds");
	Mdl_SetVisualBody(self,"Sha_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance Shadowbeast(Mst_Default_Shadowbeast)
{
	B_SetVisuals_Shadowbeast();
	Npc_SetToFistMode(self);
};

instance BeachShadowbeast1(Mst_Default_Shadowbeast)
{
	B_SetVisuals_Shadowbeast();
	Npc_SetToFistMode(self);
};

instance shadowbeasttransform(Mst_Default_Shadowbeast)
{
	Npc_PercEnable(self,PERC_ASSESSSURPRISE,b_stopmagictransform);
	B_SetVisuals_Shadowbeast();
	Npc_SetToFistMode(self);
};

