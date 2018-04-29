
var int romil_itemsgiven_chapter_1;
var int romil_itemsgiven_chapter_2;
var int romil_itemsgiven_chapter_3;
var int romil_itemsgiven_chapter_4;
var int romil_itemsgiven_chapter_5;

func void b_givetradeinv_romil(var C_Npc slf)
{
	if((Kapitel >= 1) && (romil_itemsgiven_chapter_1 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,31);
		CreateInvItems(slf,ItFo_Bacon,3);
		CreateInvItems(slf,ItFo_Sausage,5);
		CreateInvItems(slf,ItFoMuttonRaw,11);
		romil_itemsgiven_chapter_1 = TRUE;
	};
	if((Kapitel >= 2) && (romil_itemsgiven_chapter_2 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,60);
		CreateInvItems(slf,ItFo_Bacon,1);
		CreateInvItems(slf,ItFo_Sausage,2);
		CreateInvItems(slf,ItFoMuttonRaw,5);
		romil_itemsgiven_chapter_2 = TRUE;
	};
	if((Kapitel >= 3) && (romil_itemsgiven_chapter_3 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,120);
		CreateInvItems(slf,ItFo_Bacon,1);
		CreateInvItems(slf,ItFo_Sausage,4);
		CreateInvItems(slf,ItFoMuttonRaw,10);
		romil_itemsgiven_chapter_3 = TRUE;
	};
	if((Kapitel >= 4) && (romil_itemsgiven_chapter_4 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,220);
		CreateInvItems(slf,ItFo_Sausage,1);
		CreateInvItems(slf,ItFoMuttonRaw,4);
		romil_itemsgiven_chapter_4 = TRUE;
	};
	if((Kapitel >= 5) && (romil_itemsgiven_chapter_5 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,321);
		CreateInvItems(slf,ItFo_Bacon,2);
		romil_itemsgiven_chapter_5 = TRUE;
	};
};

