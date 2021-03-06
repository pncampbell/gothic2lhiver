
instance VLK_461_Carl(Npc_Default)
{
	name[0] = "Carl";
	guild = GIL_VLK;
	id = 461;
	voice = 5;
	flags = 0;
	npcType = npctype_main;
	aivar[AIV_ToughGuy] = TRUE;
	B_SetAttributesToChapter(self,3);
	fight_tactic = FAI_HUMAN_NORMAL;
	EquipItem(self,ItMw_1H_Mace_L_04);
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,MALE,"Hum_Head_Thief",Face_L_NormalBart01,BodyTex_L,ITAR_Smith);
	Mdl_SetModelFatness(self,0);
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,40);
	daily_routine = Rtn_Start_461;
};


func void Rtn_Start_461()
{
	TA_Smalltalk(20,0,22,0,"NW_CITY_HABOUR_POOR_AREA_PATH_06");
	TA_Stand_Drinking(22,0,1,0,"NW_CITY_HABOUR_POOR_AREA_PATH_06");
	TA_Sleep(1,0,5,0,"NW_CITY_HABOUR_HUT_03_BED_02");
	TA_Sit_Bench(5,0,6,0,"NW_CITY_HABOUR_POOR_AREA_HUT_03_B");
	TA_Smith_Fire(6,0,6,10,"NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil(6,10,6,20,"NW_CITY_POOR_SMITH_01");
	TA_Smith_Fire(6,20,6,30,"NW_CITY_POOR_SMITH_02");
	ta_smith_wbench(6,30,7,0,"NW_CITY_POOR_SMITH_ARMOR");
	ta_wash_self(7,0,7,20,"NW_CITY_POOR_SMITH_ARMOR");
	TA_Smith_Fire(7,20,7,30,"NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil(7,30,7,40,"NW_CITY_POOR_SMITH_01");
	TA_Smith_Cool(7,40,7,50,"NW_CITY_POOR_SMITH_03");
	ta_smith_wbench(7,50,8,0,"NW_CITY_POOR_SMITH_ARMOR");
	TA_Smith_Fire(8,0,8,10,"NW_CITY_POOR_SMITH_02");
	ta_smith_wbench(8,10,8,20,"NW_CITY_POOR_SMITH_ARMOR");
	TA_Smith_Fire(8,20,8,30,"NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil(8,30,8,40,"NW_CITY_POOR_SMITH_01");
	TA_Smith_Cool(8,40,8,50,"NW_CITY_POOR_SMITH_03");
	ta_smith_wbench(8,50,9,0,"NW_CITY_POOR_SMITH_ARMOR");
	TA_Smith_Fire(9,0,9,10,"NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil(9,10,9,20,"NW_CITY_POOR_SMITH_01");
	TA_Smith_Fire(9,20,9,30,"NW_CITY_POOR_SMITH_02");
	ta_smith_wbench(9,30,9,50,"NW_CITY_POOR_SMITH_ARMOR");
	ta_wash_self(9,50,10,0,"NW_CITY_POOR_SMITH_ARMOR");
	TA_Smith_Fire(10,0,10,10,"NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil(10,10,10,20,"NW_CITY_POOR_SMITH_01");
	TA_Smith_Fire(10,20,10,30,"NW_CITY_POOR_SMITH_02");
	ta_smith_wbench(10,30,10,50,"NW_CITY_POOR_SMITH_ARMOR");
	ta_wash_self(10,50,11,0,"NW_CITY_POOR_SMITH_ARMOR");
	TA_Smith_Fire(11,0,11,10,"NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil(11,10,11,20,"NW_CITY_POOR_SMITH_01");
	TA_Smith_Fire(11,20,11,30,"NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil(11,30,11,40,"NW_CITY_POOR_SMITH_01");
	TA_Smith_Cool(11,40,11,50,"NW_CITY_POOR_SMITH_03");
	ta_smith_wbench(11,50,12,0,"NW_CITY_POOR_SMITH_ARMOR");
	TA_Smith_Fire(12,0,12,10,"NW_CITY_POOR_SMITH_02");
	ta_smith_wbench(12,10,12,20,"NW_CITY_POOR_SMITH_ARMOR");
	TA_Smith_Fire(12,20,12,30,"NW_CITY_POOR_SMITH_02");
	ta_smith_wbench(12,30,13,0,"NW_CITY_POOR_SMITH_ARMOR");
	TA_Smith_Fire(13,0,13,10,"NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil(13,10,13,20,"NW_CITY_POOR_SMITH_01");
	TA_Smith_Fire(13,20,13,30,"NW_CITY_POOR_SMITH_02");
	ta_smith_wbench(13,30,13,50,"NW_CITY_POOR_SMITH_ARMOR");
	ta_wash_self(13,50,14,0,"NW_CITY_POOR_SMITH_ARMOR");
	TA_Smith_Fire(14,0,14,10,"NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil(14,10,14,20,"NW_CITY_POOR_SMITH_01");
	TA_Smith_Fire(14,20,14,30,"NW_CITY_POOR_SMITH_02");
	ta_smith_wbench(14,30,14,50,"NW_CITY_POOR_SMITH_ARMOR");
	ta_wash_self(14,50,15,0,"NW_CITY_POOR_SMITH_ARMOR");
	TA_Smith_Fire(15,0,15,10,"NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil(15,10,15,20,"NW_CITY_POOR_SMITH_01");
	TA_Smith_Fire(15,20,15,30,"NW_CITY_POOR_SMITH_02");
	ta_smith_wbench(15,30,15,50,"NW_CITY_POOR_SMITH_ARMOR");
	ta_wash_self(15,50,16,0,"NW_CITY_POOR_SMITH_ARMOR");
	TA_Smith_Fire(16,0,16,10,"NW_CITY_POOR_SMITH_02");
	ta_smith_wbench(16,10,16,20,"NW_CITY_POOR_SMITH_ARMOR");
	TA_Smith_Fire(16,20,16,30,"NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil(16,30,16,40,"NW_CITY_POOR_SMITH_01");
	TA_Smith_Cool(16,40,16,50,"NW_CITY_POOR_SMITH_03");
	TA_Smith_Anvil(16,50,17,0,"NW_CITY_POOR_SMITH_01");
	TA_Smith_Fire(17,0,17,10,"NW_CITY_POOR_SMITH_02");
	ta_smith_wbench(17,10,17,20,"NW_CITY_POOR_SMITH_ARMOR");
	TA_Smith_Fire(17,20,17,30,"NW_CITY_POOR_SMITH_02");
	ta_smith_wbench(17,30,17,50,"NW_CITY_POOR_SMITH_ARMOR");
	ta_wash_self(17,50,18,0,"NW_CITY_POOR_SMITH_ARMOR");
	TA_Smith_Fire(18,0,18,10,"NW_CITY_POOR_SMITH_02");
	TA_Smith_Anvil(18,10,18,20,"NW_CITY_POOR_SMITH_01");
	TA_Smith_Fire(18,20,18,30,"NW_CITY_POOR_SMITH_02");
	ta_smith_wbench(18,30,19,0,"NW_CITY_POOR_SMITH_ARMOR");
	ta_wash_self(19,0,19,20,"NW_CITY_POOR_SMITH_ARMOR");
	TA_Smith_Fire(19,20,19,30,"NW_CITY_POOR_SMITH_02");
	ta_smith_wbench(19,30,19,40,"NW_CITY_POOR_SMITH_ARMOR");
	TA_Smith_Anvil(19,40,19,50,"NW_CITY_POOR_SMITH_01");
	TA_Smith_Cool(19,50,20,0,"NW_CITY_POOR_SMITH_03");
};

