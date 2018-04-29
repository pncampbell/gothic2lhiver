
var int mage_gate_onetime;

func void evt_mage_gate_open()
{
	var C_Npc Milten;
	Milten = Hlp_GetNpc(PC_Mage_OW);
	if(mage_gate_onetime == FALSE)
	{
		B_StartOtherRoutine(Milten,"GATEOPEN");
		mage_gate_onetime = TRUE;
	};
};

