
func int C_NpcIsUndead(var C_Npc slf)
{
	if((slf.guild == GIL_GOBBO_SKELETON) || (slf.guild == gil_summoned_gobbo_skeleton) || (slf.guild == GIL_SKELETON) || (slf.guild == gil_summoned_skeleton) || (slf.guild == GIL_SKELETON_MAGE) || (slf.guild == GIL_ZOMBIE) || (slf.guild == GIL_SHADOWBEAST_SKELETON) || (slf.guild == GIL_UNDEADORC) || (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_UNDEAD))
	{
		return TRUE;
	};
	return FALSE;
};

