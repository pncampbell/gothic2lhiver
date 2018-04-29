
func void b_reffightskill()
{
	if(hero.attribute[ATR_DEXTERITY] < 160)
	{
		Mdl_RemoveOverlayMds(hero,"Humans_Acrobatic.mds");
		passive_acrobatic = FALSE;
		passive_acrobatic_on = FALSE;
	};
	B_AddFightSkill(hero,NPC_TALENT_1H,0);
	B_AddFightSkill(hero,NPC_TALENT_2H,0);
	B_AddFightSkill(hero,NPC_TALENT_BOW,0);
	B_AddFightSkill(hero,NPC_TALENT_CROSSBOW,0);
	Mdl_RemoveOverlayMds(hero,"Humans_Wounded_AD.mds");
	dead_time = 0;
	dead_check = FALSE;
	Wld_StopEffect("PCDEAD_FX");
};

