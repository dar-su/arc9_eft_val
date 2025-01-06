
--copy of val 

AddCSLuaFile()

SWEP.Base = "arc9_eft_asval"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"

SWEP.SaveBase = "arc9_eft_vss2" -- this gun got full rework so old presets aren't compatible

SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_snip")
SWEP.Class = ARC9:GetPhrase("eft_class_weapon_marks")

ARC9:AddPhrase("eft_weapon_vss", "VSS Vintorez", "en")
ARC9:AddPhrase("eft_weapon_vss", "ВСС Винторез", "ru")
ARC9:AddPhrase("eft_weapon_vss", "WSS Wintowez", "uwu")
SWEP.PrintName = ARC9:GetPhrase("eft_weapon_vss")

SWEP.DefaultBodygroups = "10000000000000"

SWEP.Description = [[VSS (Vintovka Sniperskaya Specialnaya - "Special Sniper Rifle") is an integrally suppressed sniper rifle, designed in the 80s in the TsNIITochMash institute for the needs of special-purpose teams and task forces.]]

SWEP.Spread = 3.266 * ARC9.MOAToAcc

SWEP.DefaultElements = {"vssuwu"} -- owo

SWEP.Firemodes = {
    { Mode = 1, RPM = 450, PoseParam = 1 },
    { Mode = -1, PoseParam = 2, RPM = 900}
}

SWEP.Attachments = {
    _,
    {
        Installed = "eft_val_hg_black",
    },
    _,
    {
        Installed = false
    },
    _,
    _,
    {
        Category = "eft_vss_stock",
        Installed = "eft_val_vss_stock",
    },
    {
        Installed = "eft_val_mag_10"
    },
}