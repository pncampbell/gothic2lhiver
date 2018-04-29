
func void b_sh_blockchance()
{
	shblockchance = Hlp_Random(100);
	if((sh_b_chance_15 == TRUE) && (shblockchance >= 85))
	{
		hero.flags = NPC_FLAG_IMMORTAL;
	}
	else if((sh_b_chance_25 == TRUE) && (shblockchance >= 75))
	{
		hero.flags = NPC_FLAG_IMMORTAL;
	}
	else if((sh_b_chance_35 == TRUE) && (shblockchance >= 65))
	{
		hero.flags = NPC_FLAG_IMMORTAL;
	}
	else if((sh_b_chance_45 == TRUE) && (shblockchance >= 55))
	{
		hero.flags = NPC_FLAG_IMMORTAL;
	}
	else if((sh_b_chance_55 == TRUE) && (shblockchance >= 45))
	{
		hero.flags = NPC_FLAG_IMMORTAL;
	}
	else if((sh_b_chance_65 == TRUE) && (shblockchance >= 35))
	{
		hero.flags = NPC_FLAG_IMMORTAL;
	}
	else if((sh_b_chance_75 == TRUE) && (shblockchance >= 25))
	{
		hero.flags = NPC_FLAG_IMMORTAL;
	}
	else
	{
		hero.flags = 0;
	};
};

func void b_sh_blocksnd()
{
	if(sndlock == FALSE)
	{
		Snd_Play("SHIELD_HEAVY");
		sndlock = TRUE;
	};
};

