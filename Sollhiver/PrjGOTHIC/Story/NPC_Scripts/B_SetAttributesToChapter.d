
func void B_SetAttributesToChapter(var C_Npc slf,var int kap)
{
	Npc_SetTalentSkill(slf,NPC_TALENT_MAGE,6);
	if(kap == 0)
	{
		slf.level = 3;
		slf.attribute[ATR_STRENGTH] = 15;
		slf.aivar[REAL_STRENGTH] = 15;
		slf.attribute[ATR_DEXTERITY] = 15;
		slf.aivar[REAL_DEXTERITY] = 20;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 60;
		slf.attribute[ATR_HITPOINTS] = 60;
	};
	if(kap == 1)
	{
		slf.level = 10;
		slf.attribute[ATR_STRENGTH] = 50;
		slf.aivar[REAL_STRENGTH] = 50;
		slf.attribute[ATR_DEXTERITY] = 50;
		slf.aivar[REAL_DEXTERITY] = 50;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 200;
		slf.attribute[ATR_HITPOINTS] = 200;
	};
	if(kap == 2)
	{
		slf.level = 20;
		slf.attribute[ATR_STRENGTH] = 100;
		slf.aivar[REAL_STRENGTH] = 100;
		slf.attribute[ATR_DEXTERITY] = 100;
		slf.aivar[REAL_DEXTERITY] = 100;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 320;
		slf.attribute[ATR_HITPOINTS] = 320;
	};
	if(kap == 3)
	{
		slf.level = 30;
		slf.attribute[ATR_STRENGTH] = 125;
		slf.aivar[REAL_STRENGTH] = 125;
		slf.attribute[ATR_DEXTERITY] = 125;
		slf.aivar[REAL_DEXTERITY] = 125;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 400;
		slf.attribute[ATR_HITPOINTS] = 400;
	};
	if(kap == 4)
	{
		slf.level = 40;
		slf.attribute[ATR_STRENGTH] = 150;
		slf.aivar[REAL_STRENGTH] = 150;
		slf.attribute[ATR_DEXTERITY] = 150;
		slf.aivar[REAL_DEXTERITY] = 150;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 520;
		slf.attribute[ATR_HITPOINTS] = 520;
	};
	if(kap == 5)
	{
		slf.level = 50;
		slf.attribute[ATR_STRENGTH] = 175;
		slf.aivar[REAL_STRENGTH] = 175;
		slf.attribute[ATR_DEXTERITY] = 175;
		slf.aivar[REAL_DEXTERITY] = 175;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 640;
		slf.attribute[ATR_HITPOINTS] = 640;
	};
	if(kap >= 6)
	{
		slf.level = 50;
		slf.attribute[ATR_STRENGTH] = 200;
		slf.aivar[REAL_STRENGTH] = 200;
		slf.attribute[ATR_DEXTERITY] = 200;
		slf.aivar[REAL_DEXTERITY] = 200;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 800;
		slf.attribute[ATR_HITPOINTS] = 800;
	};
	if(kap == 7)
	{
		slf.level = 50;
		slf.attribute[ATR_STRENGTH] = 250;
		slf.aivar[REAL_STRENGTH] = 250;
		slf.attribute[ATR_DEXTERITY] = 250;
		slf.aivar[REAL_DEXTERITY] = 250;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 1000;
		slf.attribute[ATR_HITPOINTS] = 1000;
	};
	if(kap == 8)
	{
		slf.level = 15;
		slf.attribute[ATR_STRENGTH] = 120;
		slf.aivar[REAL_STRENGTH] = 120;
		slf.attribute[ATR_DEXTERITY] = 120;
		slf.aivar[REAL_DEXTERITY] = 120;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 1200;
		slf.attribute[ATR_HITPOINTS] = 1200;
	};
	slf.exp = 500 * ((slf.level + 1) / 2) * (slf.level + 1);
	slf.exp_next = 500 * ((slf.level + 2) / 2) * (slf.level + 1);
};

