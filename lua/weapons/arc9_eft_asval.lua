AddCSLuaFile()

SWEP.Base = "arc9_base"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_ar")
-- SWEP.SubCategory = "_Not for your eyesss"
SWEP.Credits = { 
    [ARC9:GetPhrase("eft_trivia_author") .. "1"] = "Darsu", 
    [ARC9:GetPhrase("eft_trivia_assets") .. "2"] = "Battlestate Games LTD", 
    [ARC9:GetPhrase("eft_trivia_help") .. "3"] = "Mal0", 
    [ARC9:GetPhrase("eft_trivia_arc9") .. "4"] = "Arctic",
}

ARC9:AddPhrase("eft_weapon_asval", "AS VAL", "en")
ARC9:AddPhrase("eft_weapon_asval", "АС ВАЛ", "ru")
ARC9:AddPhrase("eft_weapon_asval", "AS WAW :3", "uwu")
SWEP.PrintName = ARC9:GetPhrase("eft_weapon_asval")

SWEP.Class = ARC9:GetPhrase("eft_class_weapon_ar")
SWEP.Trivia = {
    [ARC9:GetPhrase("eft_trivia_manuf") .. "1"] = ARC9:GetPhrase("eft_trivia_manuf_tsniitochmash"),
    [ARC9:GetPhrase("eft_trivia_cal") .. "2"] = "9x39mm",
    [ARC9:GetPhrase("eft_trivia_act") .. "3"] = ARC9:GetPhrase("eft_trivia_act_gas"),
    [ARC9:GetPhrase("eft_trivia_country") .. "4"] = ARC9:GetPhrase("eft_trivia_country_ru"),
    [ARC9:GetPhrase("eft_trivia_year") .. "5"] = "1987"
}

SWEP.Description = [[AS VAL (Avtomat Specialniy VAL - "Special Automatic rifle VAL") is a silenced automatic rifle with an integral suppressor designed for special forces units. Developed in TsNIITochMash and based on the VSS Vintorez platform.]]

-- SWEP.StandardPresets = {
--     "[A3 CIV]XQAAAQBfAQAAAAAAAAA9iIIiM7tuo1AtT00OeFDsVU+tnMnW9ZeiddySUmIu7C+UsFaM11Cx2EhOgx4CMxwqQD+bkg/Dr72/4bycjqlN+bmAR4YN2E9oKMpksCcz3byDbSfgK2yI8mZ048WgNIglE8rAsdQA1V12iWfUmz7MbN0dNevvDlxpBmQgyf1nj/iAUBoe2IjaazRzmicqaxqZ4Sk=",
--     "[A3 CQB]XQAAAQCQAQAAAAAAAAA9iIIiM7tuo1AtT00OeFDsVU+tnMnW9ZeiddySUmIu7C+UsFaM11Cx2EhOgx4CMxwqQD+bkg/Dr72/4bycjqlN+bmAR4YN2E9oKMRY90kA7PFwj+bJuFBRDnQyZxrpbNPJIdSlUsIzG0LEi97lPI7j+I1XaRKVeBet7bdFCrVWK50XpDtpdQAeDWfBZfO3Ei0uP9+yZW+si7klgKk+Lnr4ndTKMsKvA8IiPP7M9R7y7vI="
-- }

SWEP.Slot = 2
SWEP.WorldModel = "models/weapons/w_rif_ak47.mdl"
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_vss_val.mdl"
SWEP.ViewModelFOVBase = 62
SWEP.MirrorVMWM = true
SWEP.DefaultBodygroups = "0000000000000"

SWEP.BarrelLength = 50
------------------------- [[[           STATS            ]]] -------------------------

--          Damage SP-5

SWEP.DamageMax = 71 * 0.5
SWEP.DamageMin = 59.21 * 0.5
SWEP.PhysBulletMuzzleVelocity = 290 /0.0254
SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254 * 1

SWEP.Penetration =      28 *2.54/100/0.0254
SWEP.PenetrationDelta = 39/100
SWEP.ArmorPiercing =    39/100
SWEP.RicochetChance =   30/100

SWEP.DamageLookupTable = {
    {   10/0.0254 * 1, 
    71 * 0.5     },

    {   100 /0.0254 * 1, 
    69.25 * 0.5     },

    {   200 /0.0254 * 1, 
    67.73 * 0.5     },

    {   300 /0.0254 * 1, 
    66.35 * 0.5     },

    {   400 /0.0254 * 1, 
    65.12 * 0.5     },

    {   500 /0.0254 * 1, 
    63.94 * 0.5     },

    {   600 /0.0254 * 1, 
    62.85 * 0.5     },

    {   700 /0.0254 * 1, 
    61.87 * 0.5     },

    {   800 /0.0254 * 1, 
    60.92 * 0.5     },

    {   900 /0.0254 * 1, 
    60 * 0.5     },

    {   1000 /0.0254 * 1, 
    59.21 * 0.5     },
}

--          Spread
SWEP.Spread = 3.438 * ARC9.MOAToAcc
SWEP.SpreadAddHipFire = 0.02
SWEP.SpreadMultMove = 1.5
SWEP.SpreadAddMove = 0.015


--          Recoil
-- touch these

SWEP.Recoil = 0.8 -- general multiplier of main recoil

SWEP.RecoilUp   = 3.25  -- up recoil
SWEP.RecoilSide = 0.8 -- sideways recoil
SWEP.RecoilRandomUp   = 0.55 -- random up/down
SWEP.RecoilRandomSide = 0.65   -- random left/right

SWEP.RecoilAutoControl = 3.1 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 0.69 -- general multiplier for it

local EFT_VisualRecoilUp_BURST_SEMI   = 0.05   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 0.5   --   when fullautoing
local EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.08   --   when fullautoing
SWEP.VisualRecoilRoll = 4 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 2 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = 10 -- same but in sights only

SWEP.VisualRecoilDampingConst = 100  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 5 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 0.5 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = 0.1 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = -0.15 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

SWEP.VisualRecoilCenter = Vector(2, 14, 0) -- ugh, i dont now what to set it too, but probably it should be diffferent on each gun
local EFT_ShotsToSwitchToFullAutoBehaviur = 3 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 0.3 -- camera roll each shot + makes camera go more up when fullautoing

-- dont touch this i guess

SWEP.RecoilMultHipFire = 1
SWEP.RecoilMultCrouch = 0.75
SWEP.RecoilUpMultFirstShot = 0.85
SWEP.RecoilUpMultRecoil = 1.2

SWEP.RecoilDissipationRate = 5
SWEP.RecoilAutoControlMultHipFire = 0.75
SWEP.RecoilAutoControl_DontTryToReturnBack = true
SWEP.RecoilResetTime = 0.03
SWEP.RecoilFullResetTime = 0.2

SWEP.UseVisualRecoil = true 
SWEP.VisualRecoilMultHipFire = 1
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilMultCrouch = 0.75

SWEP.VisualRecoilDampingConstMultFirstShot = 3

-- SWEP.VisualRecoilThinkFunc = function(springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING, recamount)
--     return springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING
-- end

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount, self)
    local fullauto = math.Clamp(recamount - EFT_ShotsToSwitchToFullAutoBehaviur, 0, 3) * 0.33333333
    up = Lerp(fullauto, EFT_VisualRecoilUp_BURST_SEMI, up)
    side = Lerp(fullauto, EFT_VisualRecoilSide_BURST_SEMI, side)

    if recamount < 2 then
        if self:GetSightAmount() < 0.2 then up = 1 end -- only for visual when hipfiring
    end

    return up, side, roll, punch
end

SWEP.RecoilKickAffectPitch = true
SWEP.RecoilKickDamping = 10

--          Heating

SWEP.Malfunction = true 
SWEP.MalfunctionNeverLastShoot = false 
SWEP.MalfunctionMeanShotsToFail = 500
SWEP.MalfunctionMeanShotsToFailMultHot = 0
SWEP.Overheat = true
SWEP.HeatCapacity = 78
SWEP.HeatDissipation = 2.0
SWEP.HeatPerShot = 1
SWEP.HeatLockout = false


--          Firemodes

SWEP.RPM = 900
-- SWEP.Firemodes = { { Mode = -1 }, { Mode = 1 } } -- auto, semi
SWEP.Firemodes = {
    { Mode = -1, PoseParam = 2},
    { Mode = 1, PoseParam = 1 }
}

--          Speed

SWEP.AimDownSightsTime = 0.33
SWEP.SprintToFireTime = 0.35

SWEP.SpeedMult = 0.95
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 0.7
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1


--          Other

SWEP.FreeAimRadius = 2
SWEP.FreeAimRadiusSights = 0

SWEP.Sway = 1
SWEP.SwayMove = 0.5
SWEP.SwayMidAir = 10
SWEP.SwayMultCrouch = 0.75
SWEP.SwayMultHipFire = 0.2
SWEP.SwayMultSights = 0.25
SWEP.HoldBreathTime = 40
SWEP.RestoreBreathTime = 30
SWEP.BreathInSound = false 
SWEP.BreathOutSound = false
SWEP.BreathRunOutSound = "arc9_eft_shared/bear3_breath_sprint.ogg"


--          Generic stats

SWEP.Ammo = "ar2"
SWEP.ChamberSize = 0 -- no mag
SWEP.ClipSize = 1 -- actual chamber (no mag)
SWEP.SupplyLimit = 4
SWEP.SecondarySupplyLimit = 4
SWEP.ReloadInSights = true
SWEP.DropMagazineSounds = { }
SWEP.DropMagazineAmount = 1
SWEP.DropMagazineTime = 0.63
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(-180, 90, 0)
SWEP.DropMagazineVelocity = Vector(0, -10, -30)
SWEP.Bash = false
SWEP.PrimaryBash = false
SWEP.TracerNum = 0
SWEP.TracerColor = Color(255, 225, 200)



------------------------- [[[           Other            ]]] -------------------------

--          Positions and offsets

SWEP.IronSights = {
    Pos = Vector(-4.25, -7, 1.76 ),
    Ang = Angle(0, 0.35, 0),
    Midpoint = { Pos = Vector(-1, 0, 8), Ang = Angle(0, 0, -145) },
    Magnification = 1.1,
    ViewModelFOV = 54
}

SWEP.ActivePos = Vector(-0.7, -3.9, -.35)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintAng = Angle(50, 10, -45)
SWEP.SprintPos = Vector(4, -5, 0)

SWEP.NearWallAng = Angle(0, 55, 0)
SWEP.NearWallPos = Vector(0, 0, -15)

SWEP.CrouchPos = Vector(-0.7, -3.8, .35)
SWEP.CrouchAng = Angle(0, 0, -1)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(18.2, 26, 3.7)
SWEP.CustomizeSnapshotFOV = 95
SWEP.CustomizeRotateAnchor = Vector(18.2, -4.25, -3.7)


--          Third person stuff

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "physgun"

SWEP.WorldModelOffset = {
    Pos = Vector(-8.3, 5.5, -6),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-4, 4, -4), -- rpg
    TPIKAng = Angle(-11.5, 0, 180),
    Scale = 1
}

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN


--          Effects

SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)
SWEP.CamQCA_Mult = 1
SWEP.CamQCA_Mult_ADS = 0.05

SWEP.MuzzleParticle = "muzzleflash_4"
SWEP.AfterShotParticle = "barrel_smoke"

SWEP.CaseEffectQCA = 2
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/9x39.mdl"
SWEP.ShellScale = 1
SWEP.ShellVelocity = 1
SWEP.ShellCorrectAng = Angle(0, 180, 180)
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    [1] = "patron_in_weapon",
    [2] = "patron_in_mag0",
    [3] = "patron_in_mag1",
    [4] = "patron_in_mag2",
    [5] = "patron_in_mag3",
}

-- SWEP.HideBones = { -- please do it later
--     "vm_mag2",
--     "tag_mag2"
-- }

-- SWEP.ReloadHideBoneTables = {
--     [1] = {
--         "vm_mag",
--         "tag_mag"
--     },
--     [2] = {
--         "vm_mag2",
--         "tag_mag2"
--     }
-- }




------------------------- [[[           Sounds            ]]] -------------------------

local path = "weapons/darsu_eft/val/"

SWEP.ShootPitchVariation = 0
SWEP.DistantShootVolume = 0.05
SWEP.DistantShootVolumeActual = 0.05

SWEP.ShootSound = { path .. "fire_new/vss_loop_close1.ogg", path .. "fire_new/vss_loop_close2.ogg", path .. "fire_new/vss_loop_close3.ogg", path .. "fire_new/vss_loop_close4.ogg" }
SWEP.LayerSound = path .. "fire_new/vss_loop_closetail.ogg"

SWEP.ShootSoundSilenced = { path .. "fire_new/vss_loop_close1.ogg", path .. "fire_new/vss_loop_close2.ogg", path .. "fire_new/vss_loop_close3.ogg", path .. "fire_new/vss_loop_close4.ogg" }
SWEP.LayerSoundSilenced = path .. "fire_new/vss_loop_closetail.ogg"

SWEP.ShootSoundIndoor = { path .. "fire_new/vss_loop_indoor_close1.ogg", path .. "fire_new/vss_loop_indoor_close2.ogg", path .. "fire_new/vss_loop_indoor_close3.ogg", path .. "fire_new/vss_loop_indoor_close4.ogg" }
SWEP.LayerSoundIndoor = path .. "fire_new/vss_loop_indoor_close_tail.ogg"

SWEP.ShootSoundSilencedIndoor = { path .. "fire_new/vss_loop_indoor_close1.ogg", path .. "fire_new/vss_loop_indoor_close2.ogg", path .. "fire_new/vss_loop_indoor_close3.ogg", path .. "fire_new/vss_loop_indoor_close4.ogg" }
SWEP.LayerSoundSilencedIndoor = path .. "fire_new/vss_loop_indoor_close_tail.ogg"

SWEP.DistantShootSound = { path .. "fire_new/vss_loop_distant1.ogg", path .. "fire_new/vss_loop_distant2.ogg" }
SWEP.DistantShootSoundSilenced = { path .. "fire_new/vss_loop_distant1.ogg", path .. "fire_new/vss_loop_distant2.ogg" }
SWEP.DistantShootSoundIndoor = { path .. "fire_new/vss_loop_indoor_distant1.ogg", path .. "fire_new/vss_loop_indoor_distant2.ogg" }
SWEP.DistantShootSoundSilencedIndoor = { path .. "fire_new/vss_loop_indoor_distant1.ogg", path .. "fire_new/vss_loop_indoor_distant2.ogg" }


SWEP.FiremodeSound = "" -- we will have own in sound tables
SWEP.ToggleAttSound = "" -- we will have own in sound tables
SWEP.DryFireSound = "" -- we will have own in sound tables


SWEP.EnterSightsSound = ARC9EFT.ADSRifle
SWEP.ExitSightsSound = ARC9EFT.ADSRifleOut


SWEP.SuppressEmptySuffix = false 

------------------------- [[[           Hooks & functions            ]]] -------------------------

-- -- Anti integrated zeroing
-- local sposoffset, sangoffset = Vector(0, 0, -0.05), Angle(0, 0.5, 0)

-- function SWEP:GetSightPositions()
--     local s = self:GetSight()

--     if self:GetValue("FoldSights") then
--         return s.Pos, s.Ang
--     else
--         return s.Pos + sposoffset, s.Ang + sangoffset
--     end
-- end

------------------------- [[[           Animations            ]]] -------------------------

SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()
    if !IsFirstTimePredicted() then return end

    local ending = ""
    local mag = ""
    local nomag = false 

    if elements["mag10"] then mag = "_0"
    elseif elements["mag20"] then mag = "_1"
    elseif elements["mag30"] then mag = "_1"
    else nomag = true end
    
    local empty = swep:Clip1() == 0

    -- 0 looking
    -- 1 mag check  (!nomag)
    -- 2 slide checking  (!empty)
    
    if anim == "inspect" then
        swep.EFTInspectnum = (swep.EFTInspectnum or 0) + 1
        local rand = swep.EFTInspectnum
        if rand == 3 then swep.EFTInspectnum = 0 rand = 0 end
        
        if rand == 2 and nomag then rand = 0 swep.EFTInspectnum = 0 end
        
        if rand == 2 and ARC9EFTBASE and SERVER then
            net.Start("arc9eftmagcheck")
            net.WriteBool(false) -- accurate or not based on mag type
            net.WriteUInt(math.min(swep:Clip1(), swep:GetCapacity()), 9)
            net.WriteUInt(swep:GetCapacity(), 9)
            net.Send(swep:GetOwner())
            rand = rand .. mag
        end

        return anim .. rand
    end
    
    if anim == "reload" or anim == "reload_empty" then
        if nomag then return "reload_single" end
        if empty then return "reload_empty" .. mag end
        return anim .. mag
    end
    if anim == "firemode_1" or anim == "firemode_2" then
        if elements["vssuwu"] then return anim .. "vss" end
    end

    if anim == "fix" then
        local rand = math.Truncate(util.SharedRandom("hi", 1, 4.99))
        -- 0 = misfire, 1 = eject, 2 = feed, 3 = bolt, 4 = bolt 
        if ARC9EFTBASE and SERVER then
            timer.Simple(0.25, function()
                if IsValid(swep) and IsValid(swep:GetOwner()) then
                    net.Start("arc9eftjam")
                    net.WriteUInt(rand, 3)
                    net.Send(swep:GetOwner())
                end
            end)
        end
        
        return "jam" .. rand
    end
end


SWEP.ReloadHideBoneTables = {
    [1] = {
        "mod_magazine",
        "patron_in_mag0",
        "patron_in_mag1",
        "patron_in_mag2",
        "patron_in_mag3",
    },
}

local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}

local rst_magcheck = {
    { s = randspin, t = 0.1 },
    { s = path .. "val_magout.ogg", t = 0.66 - 0.03 },
    { s = randspin, t = 1.0 },
    { s = path .. "val_magin.ogg", t = 2.74 - 0.05 },
    { s = randspin, t = 3.3 },
}

local rst_chamber = {
    { s = randspin, t = 0.2 },
    { s = path .. "val_boltout_slow.ogg", t = 0.58 - 0.05 },
    { s = path .. "val_boltin_slow.ogg", t = 1.16 - 0.05},
    { s = randspin, t = 1.38 },
}
local rst_reload = {
    { s = randspin, t = 0.1 },
    { s = path .. "val_magout.ogg", t = 0.57 - 0.05 },
    { s = pouchin, t = 1.05 },
    { s = pouchout, t = 1.45 },
    { s = path .. "val_magin.ogg", t = 2.36 - 0.05 },
    { s = randspin, t = 2.77 },
}

local rst_reloadempty = {
    { s = randspin, t = 0.1 },
    { s = path .. "val_magout.ogg", t = 0.25 - 0.05 },
    { s = randspin, t = 0.25 },
    { s = pouchout, t = 0.86 },
    { s = path .. "val_magin.ogg", t = 1.83  - 0.05},
    { s = randspin, t = 2.22 },
    { s = path .. "val_boltout.ogg", t = 2.85 - 0.05 },
    { s = path .. "val_boltin.ogg", t = 3.1  - 0.05},
    { s = randspin, t = 3.42 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.63},
    {hide = 0, t = 0.99}
}

local rst_look = {
    { s = randspin, t = 0.29 },
    { s = randspin, t = 1.44 },
    { s = randspin, t = 2.48 },
}
local rik_look = {
    { t = 0, lhik = 1 },
    { t = 1, lhik = 1 },
}
local rik_cham = {
    { t = 0, lhik = 1 },
    { t = 1, lhik = 1 },
}
local rik_mag = {
    { t = 0, lhik = 1 },
    { t = 0.13, lhik = 0 },
    { t = 0.86, lhik = 0 },
    { t = 0.93, lhik = 1 },
    { t = 1, lhik = 1 },
}

local rik_reload = {
    { t = 0, lhik = 1 },
    { t = 0.13, lhik = 0 },
    { t = 0.9, lhik = 0 },
    { t = 1, lhik = 1 },
}

local rik_reloadempty = {
    { t = 0, lhik = 1 },
    { t = 0.1, lhik = 1 },
    { t = 0.2, lhik = 0 },
    { t = 0.56, lhik = 0 },
    { t = 0.73, lhik = 1 },
    { t = 1, lhik = 1 },
}
local rik_reloadempty2 = {
    { t = 0, lhik = 1 },
    { t = 0.1, lhik = 1 },
    { t = 0.2, lhik = 0 },
    { t = 0.9, lhik = 0 },
    { t = 1, lhik = 1 },
}

SWEP.Animations = {
    ["idle"] = { 
        Source = "idle", 

        Time = 100,       -- REMOVE TIME !!!!!!!!

        RareSource = {"tooidle1"},
        RareSourceChance = 0.0015,
    },

    ["ready"] = {
        Source = {"ready0", "ready1"},
        EventTable = {
            { s = "arc9_eft_shared/weap_in.ogg", t = 0 },
            { s = path .. "val_boltout.ogg", t = 0.75 },
            { s = path .. "val_boltin.ogg", t = 0.95 },
            { s = randspin, t = 1.1 },   
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 1, lhik = 1 },
        }
    },
    ["1_ready"] = {
        Source = "ready2",
        EventTable = {
            { s = "arc9_eft_shared/weap_in.ogg", t = 0 },
            { s = path .. "val_boltout.ogg", t = 0.75 },
            { s = path .. "val_boltin.ogg", t = 0.95 },
            { s = randspin, t = 1.1 },   
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.001, lhik = 0 },
            { t = 0.76, lhik = 0 },
            { t = 0.92, lhik = 1 },
            { t = 1, lhik = 1 },
        }
    },

    ["draw"] = { Source = "draw", EventTable = { { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 } } },
    ["holster"] = { Source = "holster", EventTable = { { s = "arc9_eft_shared/weap_out.ogg", t = 0.05 } } },


    ["fire"] = { Source = "fire", NoIdle = true, EventTable = { { s = "arc9_eft_shared/weap_trigger_hammer.ogg", t = 0 } } },
    ["fire_dry"] = { Source = "fire_dry", EventTable = { { s = "arc9_eft_shared/weap_trigger_hammer.ogg", t = 0 } } },
    
    ["reload_0"] = {
        Source = "reload0",
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 1.0,
        EventTable = rst_reload,
        IKTimeLine = rik_reload
    },
    ["reload_empty_0"] = {
        Source = {"reload_empty0_0", "reload_empty0_1"},
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 0.8,
        EventTable = rst_reloadempty,
        IKTimeLine = rik_reloadempty
    },
    ["1_reload_empty_0"] = { -- seperate cuz differeitn lhik
        Source = "reload_empty0_2",
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 0.8,
        EventTable = rst_reloadempty,
        IKTimeLine = rik_reloadempty2
    },

    ["reload_1"] = {
        Source = "reload1",
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 1.0,
        EventTable = rst_reload,
        IKTimeLine = rik_reload
    },
    ["reload_empty_1"] = {
        Source = {"reload_empty1_0", "reload_empty1_1"},
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 0.8,
        EventTable = rst_reloadempty,
        IKTimeLine = rik_reloadempty
    },
    ["1_reload_empty_1"] = {
        Source = "reload_empty1_2",
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 0.8,
        EventTable = rst_reloadempty,
        IKTimeLine = rik_reloadempty2
    },

    ["reload_single"] = {
        Source = "reload_single",
        MinProgress = 0.95,
        FireASAP = true,
        MagSwapTime = 1.5,
        EventTable = {
            { s = randspin, t = 0.1 },
            { s = randspin, t = 0.44 },
            { s = path .. "val_boltout.ogg", t = 0.84 },
            { s = randspin, t = 1.11 },
            { s = "arc9_eft_shared/weap_round_pullout.ogg", t = 1.46},
            { s = path .. "ak_jam_feedfault_roundaftercharge.ogg", t = 2.14 },
            { s = path .. "val_boltin.ogg", t = 2.73},
            { s = randspin, t = 3.17 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.28, lhik = 1 },
            { t = 0.45, lhik = 0 },
            { t = 0.65, lhik = 0 },
            { t = 0.76, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },    
    


    ["inspect1"] = {
        Source = "look0",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_look,
        IKTimeLine = rik_look
    },

    ["inspect2_0"] = {
        Source = "checkmag0",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_magcheck,
        IKTimeLine = rik_mag
    },
    ["inspect2_1"] = {
        Source = "checkmag1",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_magcheck,
        IKTimeLine = rik_mag
    },

    ["inspect0"] = {
        Source = "look1",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_chamber,
        IKTimeLine = rik_cham
    },


    ["toggle"] = { Source = "mod_switch", EventTable = { { s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 } } },
    ["switchsights"] = { Source = "mod_switch", EventTable = { { s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 } } },


    ["jam1"] = {
        Source = "jam_shell", -- jam shell
        EventTable = {
            { s = randspin, t = 0.02 },
            { s = randspin, t = 0.48 },
            { s = randspin, t = 0.88 },
            { s = path .. "ak_jam_stuckbolt_in_starting.ogg", t = 1.23 },
            { s = path .. "longweapon_jam_rattle3.ogg", t = 1.66 },
            { s = randspin, t = 2.18 },
            { s = path .. "ak_jam_feedfault_roundaftercharge.ogg", t = 2.28 },
            { s = randspin, t = 2.74 },
            { s = path .. "val_boltin.ogg", t = 2.89},
            { s = randspin, t = 3.13 },
            { s = ARC9EFT.Shells556, t = 3.1 },
        },
        -- EjectAt = 4.7,        
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["jam2"] = {
        Source = "jam_feed", -- jam feed
        EventTable = {
            { s = randspin, t = 0.02 },
            { s = randspin, t = 0.48 },
            { s = randspin, t = 0.85 },
            { s = path .. "ak_jam_stuckbolt_in1.ogg", t = 1.5 },
            { s = path .. "ak_jam_stuckbolt_in2.ogg", t = 1.87 },
            { s = path .. "ak_jam_stuckbolt_in_starting.ogg", t = 2.28 },
            { s = path .. "longweapon_jam_rattle3.ogg", t = 2.8 },
            { s = path .. "longweapon_jam_rattle1.ogg", t = 3.36 },
            { s = path .. "ak_jam_feedfault_roundaftercharge.ogg", t = 3.45 },
            { s = path .. "val_boltin.ogg", t = 3.81},
            { s = randspin, t = 3.77 },
            { s = randspin, t = 4.25 },
            { s = ARC9EFT.Shells556, t = 4.1 },
        },
        -- EjectAt = 2.55,
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 1, lhik = 1 },
            },
    },
    ["jam3"] = {
        Source = "jam_hardjam", -- jam hard
        EventTable = {
            { s = randspin, t = 0.02 },
            { s = randspin, t = 0.48 },
            { s = randspin, t = 0.84 },
            { s = path .. "ak_jam_stuckbolt_in1.ogg", t = 1.38 },
            { s = path .. "ak_jam_stuckbolt_in2.ogg", t = 1.83 },
            { s = path .. "ak_jam_stuckbolt_in3.ogg", t = 2.34 },
            { s = randspin, t = 2.82 },
            { s = path .. "ak_jam_stuckbolt_out_hit2.ogg", t = 3.34 }, -- actual
            { s = path .. "ak_jam_stuckbolt_out_hit3.ogg", t = 3.83 }, -- actual
            { s = randspin, t = 4.19 },
            { s = path .. "ak_jam_stuckbolt_in_starting.ogg", t = 4.79 },
            { s = path .. "ak_jam_stuckbolt_out_hit2.ogg", t = 5.4 },
            { s = path .. "val_boltout.ogg", t = 5.61},
            { s = path .. "val_boltin.ogg", t = 6.09},
            { s = randspin, t = 6.45 },
        },
        EjectAt = 5.72,
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["jam4"] = {
        Source = "jam_softjam", -- jam soft
        EventTable = {
            { s = randspin, t = 0.02 },
            { s = randspin, t = 0.48 },
            { s = randspin, t = 0.86 },
            { s = path .. "ak_jam_stuckbolt_in3.ogg", t = 1.52 },
            { s = path .. "ak_jam_stuckbolt_in2.ogg", t = 1.95 },
            { s = randspin, t = 2.53 },
            { s = path .. "ak_jam_stuckbolt_in1.ogg", t = 3.1 },
            { s = path .. "val_boltout.ogg", t = 3.37},
            { s = path .. "val_boltin.ogg", t = 3.86},
            { s = randspin, t = 4.18 },
        },
        EjectAt = 3.49,
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    
    ["firemode_1"] = {
        Source = "firemode1",
        EventTable = {
            {s = "weapons/darsu_eft/ak/ak74_fireselector_down.ogg", t = 0.56 },
        },
    },
    ["firemode_2"] = {
        Source = "firemode0",
        EventTable = {
            {s = "weapons/darsu_eft/ak/ak74_fireselector_up.ogg", t = 0.56 },
        },
    },

    ["firemode_1vss"] = {
        Source = "firemode0",
        EventTable = {
            {s = "weapons/darsu_eft/ak/ak74_fireselector_down.ogg", t = 0.56 },
        },
    },
    ["firemode_2vss"] = {
        Source = "firemode1",
        EventTable = {
            {s = "weapons/darsu_eft/ak/ak74_fireselector_up.ogg", t = 0.56 },
        },
    },
}


------------------------- [[[           Attachments            ]]] -------------------------

SWEP.missingpartsnotifsent = 0

function SWEP:HookP_BlockFire()
    if  !self:GetValue("HasGrip") or 
        !self:GetValue("HasBarrel") or
        !self:GetValue("HasAmmoooooooo") then
            
            if SERVER and self.missingpartsnotifsent < CurTime() then
                self.missingpartsnotifsent = CurTime() + 3
                net.Start("arc9eftmissingparts")
                net.Send(self:GetOwner())
            end
            return true 
    end
end

function SWEP:Hook_RedPrintName()
    if  !self:GetValue("HasGrip") or 
        !self:GetValue("HasBarrel") or
        !self:GetValue("HasAmmoooooooo") then
            return true 
    end
end

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
--     if wep:GetValue("FoldSights") then
--         data.model:SetBodygroup(7, 2)
--     end
-- end

SWEP.AttachmentElements = {
    ["eft_val_vss_stock"] = { Bodygroups = { {4, 2} } },
    ["eft_val_stockk"] = { Bodygroups = { {4, 1} } },

    ["eft_val_dc_vss"] = { Bodygroups = { {1, 2} } },
    ["eft_val_dc_val"] = { Bodygroups = { {1, 1} } },

    ["eft_val_rs_vss"] = { Bodygroups = { {2, 2} } },
    ["eft_val_rs_val"] = { Bodygroups = { {2, 1} } },

    ["eft_val_grip_std"] = { Bodygroups = { {3, 1} } },
    ["eft_val_grip_rotor"] = { Bodygroups = { {3, 2} } },

    ["eft_val_supp_vss"] = { Bodygroups = { {5, 2} } },
    ["eft_val_supp_val"] = { Bodygroups = { {5, 1} } },

    ["eft_val_mount_6p"] = { Bodygroups = { {6, 1} } },
    ["eft_val_mount_b3c"] = { Bodygroups = { {6, 3} } },
    ["eft_val_mount_b3"] = { Bodygroups = { {6, 2} } },

    ["eft_ammo_9x39_fmj"] = { Bodygroups = { {7, 1} } },
    ["eft_ammo_9x39_sp5"] = { Bodygroups = { {7, 4} } },
    ["eft_ammo_9x39_sp6"] = { Bodygroups = { {7, 5} } },
    ["eft_ammo_9x39_bp"] = { Bodygroups = { {7, 2} } },
    ["eft_ammo_9x39_spp"] = { Bodygroups = { {7, 6} } },
    ["eft_ammo_9x39_pab9"] = { Bodygroups = { {7, 3} } },
}


SWEP.Attachments = {
    {
        PrintName = "Suppressor",
        Category = "eft_val_barrel",
        Bone = "mod_muzzle",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        Installed = "eft_val_supp_val",
        SubAttachments = {
            {},
            {
                Installed = "eft_val_rs_val",
            }
        }
    },
    {
        PrintName = "Charge",
        Category = "eft_ak_charge",
        Bone = "mod_charge",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0.25),
    },
    {
        PrintName = "Grip",
        Category = "eft_val_grip",
        Bone = "mod_pistol_grip",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        Installed = "eft_val_grip_std",
        ExcludeElements = {"vssuwu"},
    },
    {
        PrintName = "Dust cover",
        Category = "eft_val_dc",
        Bone = "mod_reciever",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        Installed = "eft_val_dc_val",
    },
    {
        PrintName = "Dovetail",
        Category = "eft_mount_dovetail",
        Bone = "mod_mount_000",
        Pos = Vector(0.05, 1.05, 0.49),
        Ang = Angle(0, -90, 0),
        -- ExcludeElements = {"railedcover", "nodovetail"},
        -- RequireElements = {"nmount"},
    },
    {
        PrintName = "Stock",
        Category = "eft_val_stock",
        Bone = "mod_stock",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        Installed = "eft_val_stockk",
        ExcludeElements = {"eft_val_grip_rotor"},
    },
    {
        PrintName = "Mag", 
        Category = "eft_val_mag",
        Bone = "mod_magazine",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(-1, 0, -1),
        Installed = "eft_val_mag_20"
    },
    {
        PrintName = "Ammunition",
        Category = "eft_ammo_9x39",
        Bone = "mod_magazine",
        Integral = "eft_ammo_9x39_sp5",
        Installed = "eft_ammo_9x39_sp5",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(-1, 0, -3),
    },
    {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_val"},
        Bone = "weapon",
        Pos = Vector(0, 4, -2),
        Ang = Angle(0, -90, 0),
        -- CosmeticOnly = true,
    },
}

SWEP.EFTErgo = 43
if ARC9EFTBASE then
    SWEP.AimDownSightsTimeHook = ARC9EFT.ErgoHook or nil
    SWEP.HoldBreathTimeHook = ARC9EFT.ErgoBreathHook or nil
    -- SWEP.HookP_TranslateSound = ARC9EFT.ErgoAdsVolume or nil
    SWEP.SpreadHook = ARC9EFT.SpreadBonus or nil
else
    print("Dum! install arc9 eft shared!!!!!!!!!!!!!!")
end
SWEP.AimDownSightsTimeMultShooting = 4

SWEP.RicochetSounds = ARC9EFT.RicochetSounds
SWEP.ShellSounds = ARC9EFT.Shells556