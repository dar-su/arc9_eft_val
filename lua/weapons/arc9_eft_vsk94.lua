
--copy of 9a

AddCSLuaFile()

SWEP.Base = "arc9_eft_9a91"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"

SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_carb")
SWEP.Class = ARC9:GetPhrase("eft_class_weapon_carb")

ARC9:AddPhrase("eft_weapon_vsk", "KBP VSK-94", "en")
ARC9:AddPhrase("eft_weapon_vsk", "КБП ВСК-94", "ru")
ARC9:AddPhrase("eft_weapon_vsk", "KBP WSK-94", "uwu")
SWEP.PrintName = ARC9:GetPhrase("eft_weapon_vsk")

SWEP.DefaultBodygroups = "010000000000000"

SWEP.Description = [[The VSK-94 (Voyskovoy Snayperskiy Kompleks - "Military Sniper Complex") is a marksman rifle designed on the base of the 9A-91 assault rifle as a cheaper alternative to the VSS "Vintorez". The silencer, unlike the VSS, is not integrated, which allows the rifle to be used without it if needed. Manufactured by Tula KBP Instrument Design Bureau. ]]

SWEP.Spread = 3.266 * ARC9.MOAToAcc

SWEP.DefaultElements = {"vskuwu"} -- owo

SWEP.Firemodes = {
    { Mode = 1, PoseParam = 2 },
    { Mode = -1, PoseParam = 1}
}

SWEP.Attachments = {
    {
        Installed = "eft_vsk_brl",
        SubAttachments = {
            {
                Installed = "eft_vsk_supp",
            },
            {
                Installed = "eft_vsk_hg_vsk",
            }
        }
    },
    _,
    _,
    {
        Category = "eft_vsk_stock",
        Installed = "eft_vsk_stockk",
    },
}