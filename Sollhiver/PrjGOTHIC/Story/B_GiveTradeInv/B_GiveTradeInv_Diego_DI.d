
var int diego_di_itemsgiven;

func void B_GiveTradeInv_Diego_DI(var C_Npc slf)
{
	if(diego_di_itemsgiven == FALSE)
	{
		CreateInvItems(slf,ItRw_Arrow,160);
		CreateInvItems(slf,ItRw_Bolt,120);
		CreateInvItems(slf,ItKE_lockpick,20);
		CreateInvItems(slf,ItRw_Bow_L_01,1);
		CreateInvItems(slf,itmi_leather,10);
		diego_di_itemsgiven = TRUE;
	};
};

