
var int anselm_itemsgiven_chapter_1;
var int anselm_itemsgiven_chapter_2;
var int anselm_itemsgiven_chapter_3;
var int anselm_itemsgiven_chapter_4;
var int anselm_itemsgiven_chapter_5;

func void b_givetradeinv_anselm(var C_Npc slf)
{
	if((Kapitel >= 1) && (anselm_itemsgiven_chapter_1 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,31);
		CreateInvItems(slf,ItWr_Astronomy_Mis,1);
		CreateInvItems(slf,ItWr_ZweihandBuch,1);
		CreateInvItems(slf,ItWr_EinhandBuch,1);
		CreateInvItems(slf,itwr_bloodfly_01,1);
		CreateInvItems(slf,itwr_astronomie,1);
		CreateInvItems(slf,itwr_kampfkunst,1);
		CreateInvItems(slf,itwr_jagd_und_beute,1);
		CreateInvItems(slf,itwr_lehren_der_goetter1,1);
		CreateInvItems(slf,itwr_lehren_der_goetter2,1);
		CreateInvItems(slf,itwr_lehren_der_goetter3,1);
		CreateInvItems(slf,itwr_myrtanas_lyrik,1);
		CreateInvItems(slf,itwr_das_magische_erz,1);
		CreateInvItems(slf,itwr_schlacht_um_varant1,1);
		CreateInvItems(slf,itwr_schlacht_um_varant2,1);
		anselm_itemsgiven_chapter_1 = TRUE;
	};
	if((Kapitel >= 2) && (anselm_itemsgiven_chapter_2 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,60);
		anselm_itemsgiven_chapter_2 = TRUE;
	};
	if((Kapitel >= 3) && (anselm_itemsgiven_chapter_3 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,120);
		anselm_itemsgiven_chapter_3 = TRUE;
	};
	if((Kapitel >= 4) && (anselm_itemsgiven_chapter_4 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,220);
		anselm_itemsgiven_chapter_4 = TRUE;
	};
	if((Kapitel >= 5) && (anselm_itemsgiven_chapter_5 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,321);
		anselm_itemsgiven_chapter_5 = TRUE;
	};
};

