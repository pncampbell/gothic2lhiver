
func void b_giveplayerwood()
{
	if((player_talent_woodmaster[0] == FALSE) && (player_talent_woodmaster[1] == FALSE) && (player_talent_woodmaster[2] == FALSE))
	{
		CreateInvItems(hero,itmi_woodbar_big,1);
		AI_PrintScreen("1 wooden bar acquired!",-1,52,FONT_SCREENBRIGHTLARGE,3);
	}
	else if((player_talent_woodmaster[0] == TRUE) && (player_talent_woodmaster[1] == FALSE) && (player_talent_woodmaster[2] == FALSE))
	{
		CreateInvItems(hero,itmi_woodbar_big,2);
		AI_PrintScreen("2 wooden bars acquired!",-1,52,FONT_SCREENBRIGHTLARGE,3);
	}
	else if((player_talent_woodmaster[1] == TRUE) && (player_talent_woodmaster[0] == TRUE) && (player_talent_woodmaster[2] == FALSE))
	{
		CreateInvItems(hero,itmi_woodbar_big,3);
		AI_PrintScreen("3 wooden bars acquired!",-1,52,FONT_SCREENBRIGHTLARGE,3);
	}
	else if((player_talent_woodmaster[2] == TRUE) && (player_talent_woodmaster[0] == TRUE) && (player_talent_woodmaster[1] == TRUE))
	{
		CreateInvItems(hero,itmi_woodbar_big,4);
		AI_PrintScreen("4 wooden bars acquired!",-1,52,FONT_SCREENBRIGHTLARGE,3);
	};
};

