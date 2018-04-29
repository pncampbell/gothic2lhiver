
var int Zuris_ItemsGiven_Chapter_1;
var int Zuris_ItemsGiven_Chapter_2;
var int Zuris_ItemsGiven_Chapter_3;
var int Zuris_ItemsGiven_Chapter_4;
var int Zuris_ItemsGiven_Chapter_5;

func void B_GiveTradeInv_Zuris(var C_Npc slf)
{
	if((Kapitel >= 1) && (Zuris_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItPo_Mana_01,10);
		CreateInvItems(slf,ItPo_Health_01,10);
		CreateInvItems(slf,ItPo_Health_Addon_04,2);
		CreateInvItems(slf,ItPo_Mana_Addon_04,2);
		CreateInvItems(slf,ItMi_ApfelTabak,2);
		CreateInvItems(slf,ItFo_Addon_Pfeffer_01,1);
		Zuris_ItemsGiven_Chapter_1 = TRUE;
	};
	if((Kapitel >= 2) && (Zuris_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,60);
		CreateInvItems(slf,ItPo_Health_Addon_04,2);
		CreateInvItems(slf,ItPo_Mana_Addon_04,2);
		CreateInvItems(slf,ItPo_Mana_01,15);
		CreateInvItems(slf,ItPo_Mana_02,1);
		CreateInvItems(slf,ItPo_Health_01,15);
		CreateInvItems(slf,ItPo_Health_02,2);
		CreateInvItems(slf,ItMi_ApfelTabak,5);
		CreateInvItems(slf,ItPo_Perm_STR,1);
		Zuris_ItemsGiven_Chapter_2 = TRUE;
	};
	if((Kapitel >= 3) && (Zuris_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,120);
		CreateInvItems(slf,ItPo_Health_Addon_04,2);
		CreateInvItems(slf,ItPo_Mana_Addon_04,2);
		CreateInvItems(slf,ItPo_Mana_01,25);
		CreateInvItems(slf,ItPo_Mana_02,3);
		CreateInvItems(slf,ItPo_Health_01,25);
		CreateInvItems(slf,ItPo_Health_02,15);
		CreateInvItems(slf,ItPo_Perm_Mana,1);
		CreateInvItems(slf,ItPo_Speed,1);
		Zuris_ItemsGiven_Chapter_3 = TRUE;
	};
	if((Kapitel >= 4) && (Zuris_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,220);
		CreateInvItems(slf,ItPo_Health_Addon_04,3);
		CreateInvItems(slf,ItPo_Mana_Addon_04,3);
		CreateInvItems(slf,ItPo_Mana_01,35);
		CreateInvItems(slf,ItPo_Mana_02,15);
		CreateInvItems(slf,ItPo_Health_01,35);
		CreateInvItems(slf,ItPo_Health_02,20);
		CreateInvItems(slf,ItPo_Health_03,10);
		CreateInvItems(slf,ItPo_Perm_Mana,1);
		CreateInvItems(slf,ItPo_Speed,1);
		Zuris_ItemsGiven_Chapter_4 = TRUE;
	};
	if((Kapitel >= 5) && (Zuris_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,321);
		CreateInvItems(slf,ItPo_Health_Addon_04,5);
		CreateInvItems(slf,ItPo_Mana_Addon_04,5);
		CreateInvItems(slf,ItPo_Mana_01,55);
		CreateInvItems(slf,ItPo_Mana_02,35);
		CreateInvItems(slf,ItPo_Mana_03,15);
		CreateInvItems(slf,ItPo_Health_01,55);
		CreateInvItems(slf,ItPo_Health_02,30);
		CreateInvItems(slf,ItPo_Health_03,20);
		CreateInvItems(slf,ItPo_Perm_Health,1);
		CreateInvItems(slf,ItPo_Speed,1);
		Zuris_ItemsGiven_Chapter_5 = TRUE;
	};
};
