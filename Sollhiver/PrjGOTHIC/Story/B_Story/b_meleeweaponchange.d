
var int playeristransformed;
var int hitchancebackuponeh;
var int hitchancebackuptwoh;
var int hitchancebackupbows;
var int hitchancebackupcbow;
var int manamaxbackup;
var int meleeweaponchangedhero;
var int rangeweaponchangedhero;
var int changedmanahero;
var int changedonehhero;
var int changedtwohhero;
var int changedbowshero;
var int changedcbowhero;
var int scriptpatchweaponchange;
var int scriptpatchweaponchange_ranged;

func void b_meleeweaponchange(var int oneh,var int twoh,var int manamax)
{
	meleeweaponchangedhero = TRUE;
	changedmanahero = manamax;
	changedonehhero = oneh;
	changedtwohhero = twoh;
	scriptpatchweaponchange = TRUE;
};

func void b_meleeweaponundochange()
{
	meleeweaponchangedhero = FALSE;
	changedmanahero = 0;
	changedonehhero = 0;
	changedtwohhero = 0;
	scriptpatchweaponchange = TRUE;
};

func void b_rangedweaponchange(var int bowhs,var int cbowhs)
{
	rangeweaponchangedhero = TRUE;
	changedbowshero = bowhs;
	changedcbowhero = cbowhs;
	scriptpatchweaponchange_ranged = TRUE;
};

func void b_rangedweaponundochange()
{
	rangeweaponchangedhero = FALSE;
	changedbowshero = 0;
	changedcbowhero = 0;
	scriptpatchweaponchange_ranged = TRUE;
};

func void b_startmagictransform()
{
	if(!playeristransformed)
	{
		playeristransformed = TRUE;
		hitchancebackuponeh = hero.HitChance[NPC_TALENT_1H] - changedonehhero;
		hitchancebackuptwoh = hero.HitChance[NPC_TALENT_2H] - changedtwohhero;
		hitchancebackupbows = hero.HitChance[NPC_TALENT_BOW] - changedbowshero;
		hitchancebackupcbow = hero.HitChance[NPC_TALENT_CROSSBOW] - changedcbowhero;
		manamaxbackup = hero.attribute[ATR_MANA_MAX] - changedmanahero;
		b_meleeweaponundochange();
		b_rangedweaponundochange();
	};
};

func void b_stopmagictransform()
{
	if(playeristransformed)
	{
		if(hitchancebackuponeh != hero.HitChance[NPC_TALENT_1H])
		{
			B_AddFightSkill(hero,NPC_TALENT_1H,(hitchancebackuponeh - hero.HitChance[NPC_TALENT_1H]) + changedonehhero);
		};
		if(hitchancebackuptwoh != hero.HitChance[NPC_TALENT_2H])
		{
			B_AddFightSkill(hero,NPC_TALENT_2H,(hitchancebackuptwoh - hero.HitChance[NPC_TALENT_2H]) + changedtwohhero);
		};
		if(hitchancebackupbows != hero.HitChance[NPC_TALENT_BOW])
		{
			B_AddFightSkill(hero,NPC_TALENT_BOW,(hitchancebackupbows - hero.HitChance[NPC_TALENT_BOW]) + changedbowshero);
		};
		if(hitchancebackupcbow != hero.HitChance[NPC_TALENT_CROSSBOW])
		{
			B_AddFightSkill(hero,NPC_TALENT_CROSSBOW,(hitchancebackupcbow - hero.HitChance[NPC_TALENT_CROSSBOW]) + changedcbowhero);
		};
		if(manamaxbackup != hero.attribute[ATR_MANA_MAX])
		{
			hero.attribute[ATR_MANA_MAX] = manamaxbackup + changedmanahero;
		};
		AI_UnequipWeapons(hero);
		playeristransformed = FALSE;
	};
};

