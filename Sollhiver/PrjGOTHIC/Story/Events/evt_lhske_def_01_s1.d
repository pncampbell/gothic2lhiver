
func void evt_lhske_def_01_s1()
{
	if(lhskedef1 == FALSE)
	{
		Wld_PlayEffect("FX_EarthQuake",self,self,0,0,0,FALSE);
		lhskedef1 = TRUE;
		Wld_InsertNpc(Skeleton,"FP_ROAM_LOCATION_19_LHSKEDEF_01");
		Wld_InsertNpc(Skeleton_Lord,"FP_ROAM_LOCATION_19_LHSKEDEF_02");
		Wld_InsertNpc(Skeleton,"FP_ROAM_LOCATION_19_LHSKEDEF_03");
		Wld_InsertNpc(skeleton_lord_m,"FP_ROAM_LOCATION_19_LHSKEDEF_04");
		Wld_InsertNpc(skeleton_lord_m,"FP_ROAM_LOCATION_19_LHSKEDEF_05");
		Wld_InsertNpc(Skeleton,"FP_ROAM_LOCATION_19_LHSKEDEF_06");
		Wld_InsertNpc(Skeleton,"FP_ROAM_LOCATION_19_LHSKEDEF_07");
		Wld_InsertNpc(SkeletonMage,"FP_ROAM_LOCATION_19_LHSKEDEF_08");
	};
	if(Npc_HasItems(hero,itke_lhske01_addon) >= 1)
	{
		Npc_RemoveInvItems(hero,itke_lhske01_addon,1);
	};
};

