
func int B_TeachPlayerTalentTakeAnimalTrophy(var C_Npc slf,var C_Npc oth,var int trophy)
{
	var int kosten;
	kosten = B_GetLearnCostTalent(oth,NPC_TALENT_TAKEANIMALTROPHY,trophy);
	if(oth.lp < kosten)
	{
		PrintScreen(PRINT_NotEnoughLearnPoints,-1,-1,FONT_ScreenSmall,2);
		B_Say(slf,oth,"$NOLEARNNOPOINTS");
		return FALSE;
	};
	oth.lp = oth.lp - kosten;
	Log_CreateTopic(TOPIC_TalentAnimalTrophy,LOG_NOTE);
	B_LogEntry(TOPIC_TalentAnimalTrophy,"Now I can:");
	if(trophy == TROPHY_Teeth)
	{
		player_talent_takeanimaltrophy[TROPHY_Teeth] = TRUE;
		B_LogEntry(TOPIC_TalentAnimalTrophy,"... remove teeth from dead animals.");
	};
	if(trophy == TROPHY_MEAT)
	{
		player_talent_takeanimaltrophy[1] = TRUE;
		B_LogEntry(TOPIC_TalentAnimalTrophy,"... extract the meat from dead animals.");
	};
	if(trophy == TROPHY_Claws)
	{
		player_talent_takeanimaltrophy[2] = TRUE;
		B_LogEntry(TOPIC_TalentAnimalTrophy,"... remove claws from dead animals.");
	};
	if(trophy == TROPHY_Fur)
	{
		player_talent_takeanimaltrophy[3] = TRUE;
		B_LogEntry(TOPIC_TalentAnimalTrophy,"... remove fur from dead animals.");
	};
	if(trophy == TROPHY_ReptileSkin)
	{
		player_talent_takeanimaltrophy[14] = TRUE;
		B_LogEntry(TOPIC_TalentAnimalTrophy,"... remove skin from reptiles.");
	};
	if(trophy == TROPHY_Heart)
	{
		player_talent_takeanimaltrophy[4] = TRUE;
		B_LogEntry(TOPIC_TalentAnimalTrophy,"... remove heart from dead golems and dead demons.");
	};
	if(trophy == TROPHY_ShadowHorn)
	{
		player_talent_takeanimaltrophy[5] = TRUE;
		B_LogEntry(TOPIC_TalentAnimalTrophy,"... remove horn from dead shadowbeasts.");
	};
	if(trophy == TROPHY_FireTongue)
	{
		player_talent_takeanimaltrophy[6] = TRUE;
		B_LogEntry(TOPIC_TalentAnimalTrophy,"... remove tongue from dead fire lizards.");
	};
	if(trophy == TROPHY_BFWing)
	{
		player_talent_takeanimaltrophy[7] = TRUE;
		B_LogEntry(TOPIC_TalentAnimalTrophy,"... remove wings from dead bloodflies.");
	};
	if(trophy == TROPHY_BFSting)
	{
		player_talent_takeanimaltrophy[8] = TRUE;
		B_LogEntry(TOPIC_TalentAnimalTrophy,"... remove sting from dead bloodflies and hornets.");
	};
	if(trophy == TROPHY_Mandibles)
	{
		player_talent_takeanimaltrophy[9] = TRUE;
		B_LogEntry(TOPIC_TalentAnimalTrophy,"... remove mandibles from dead animals.");
	};
	if(trophy == TROPHY_CrawlerPlate)
	{
		player_talent_takeanimaltrophy[10] = TRUE;
		B_LogEntry(TOPIC_TalentAnimalTrophy,"... remove plates from dead minecrawlers.");
	};
	if(trophy == TROPHY_DrgSnapperHorn)
	{
		player_talent_takeanimaltrophy[11] = TRUE;
		B_LogEntry(TOPIC_TalentAnimalTrophy,"... remove horn from dead dragon snappers.");
	};
	if(trophy == TROPHY_DragonScale)
	{
		player_talent_takeanimaltrophy[12] = TRUE;
		B_LogEntry(TOPIC_TalentAnimalTrophy,"... remove scales from the hide of dead dragons.");
	};
	if(trophy == TROPHY_DragonBlood)
	{
		player_talent_takeanimaltrophy[13] = TRUE;
		B_LogEntry(TOPIC_TalentAnimalTrophy,"... collect blood from dead dragons.");
	};
	PrintScreen(PRINT_LearnTakeAnimalTrophy,-1,-1,FONT_Screen,2);
	Npc_SetTalentSkill(oth,NPC_TALENT_TAKEANIMALTROPHY,1);
	return TRUE;
};

