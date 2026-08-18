do local _a=string.char(103,97,107,117,114,97,110,95,107,101,121,46,116,120,116)local _b=string.char(104,116,116,112,115,58,47,47,103,97,107,117,114,97,110,45,108,105,99,101,110,115,101,46,108,101,118,105,112,97,121,112,97,108,51,51,50,46,119,111,114,107,101,114,115,46,100,101,118)local function _c(_d)_d=tostring(_d or"")_d=string.upper(_d)_d=string.gsub(_d,string.char(37,115,43),"")return _d end local function _e()if type(isfile)~=string.char(102,117,110,99,116,105,111,110)or type(readfile)~=string.char(102,117,110,99,116,105,111,110)then return nil end local _f,_g=pcall(isfile,_a)if not _f or not _g then return nil end local _h,_i=pcall(readfile,_a)if _h and type(_i)==string.char(115,116,114,105,110,103)then return _c(_i)end return nil end local function _j(_d)if type(writefile)~=string.char(102,117,110,99,116,105,111,110)then return end pcall(writefile,_a,_c(_d))end local function _k()if type(delfile)~=string.char(102,117,110,99,116,105,111,110)then return end pcall(delfile,_a)end local function _l()local _m=nil pcall(function()_m=game:GetService(string.char(80,108,97,121,101,114,115))end)if not _m then pcall(function()_m=game.Players end)end if not _m then return nil end local _n=_m.LocalPlayer if not _n then for _o=1,80 do task.wait(0.05)_n=_m.LocalPlayer if _n then break end end end local _p=_n and tonumber(_n.UserId)if not _p or _p<=0 then return nil end return tostring(math.floor(_p))end local function _q(_r)_r=tostring(_r or"")_r=string.gsub(_r,string.char(94,37,115,43),"")_r=string.gsub(_r,string.char(37,115,43,36),"")return _r end local function _s(_t,_p)return _b..string.char(47,99,108,97,105,109,63,107,101,121,61).._c(_t)..string.char(38,117,105,100,61)..tostring(_p)end local function _u(_t,_p)if string.find(_b,string.char(82,69,80,76,65,67,69,45,87,73,84,72,45,89,79,85,82,45,87,79,82,75,69,82),1,true)then return false,string.char(83,69,82,86,69,82,95,78,79,84,95,67,79,78,70,73,71,85,82,69,68)end local _v=_s(_t,_p)local _w=nil if type(request)==string.char(102,117,110,99,116,105,111,110)then _w=request elseif type(http_request)==string.char(102,117,110,99,116,105,111,110)then _w=http_request elseif type(syn)==string.char(116,97,98,108,101)and type(syn.request)==string.char(102,117,110,99,116,105,111,110)then _w=syn.request end if _w then local _x,_y=pcall(_w,{Url=_v,Method=string.char(71,69,84),Headers={[string.char(67,97,99,104,101,45,67,111,110,116,114,111,108)]=string.char(110,111,45,99,97,99,104,101),},})if _x and _y then local _r=_y if type(_y)==string.char(116,97,98,108,101)then _r=_y.Body or _y._r or _y.ResponseBody end _r=_q(_r)if _r~=""then return _r==string.char(79,75),_r end end end local _z,_r=pcall(function()return game:HttpGet(_v)end)if not _z then return false,string.char(78,69,84,87,79,82,75,95,69,82,82,79,82)end _r=_q(_r)return _r==string.char(79,75),_r end local _p=_l()if not _p then warn(string.char(91,71,97,107,117,114,97,110,32,75,101,121,93,32,99,111,117,108,100,32,110,111,116,32,114,101,97,100,32,76,111,99,97,108,80,108,97,121,101,114,46,85,115,101,114,73,100))return end print(string.char(91,71,97,107,117,114,97,110,32,75,101,121,93,32,82,111,98,108,111,120,32,85,115,101,114,73,100,58,32)..tostring(_p))local _A=type(iskeypressed)==string.char(102,117,110,99,116,105,111,110)and iskeypressed(0x71)==true local _B=not _A and _e()or nil if _B then local _C,_D=_u(_B,_p)if _C then print(string.char(91,71,97,107,117,114,97,110,32,75,101,121,93,32,115,97,118,101,100,32,107,101,121,32,97,99,99,101,112,116,101,100,32,102,111,114,32,85,115,101,114,73,100,32)..tostring(_p))else print(string.char(91,71,97,107,117,114,97,110,32,75,101,121,93,32,115,97,118,101,100,32,107,101,121,32,114,101,106,101,99,116,101,100,58,32)..tostring(_D))_k()_B=nil end end if not _B then if type(Drawing)~=string.char(116,97,98,108,101)or type(Drawing.new)~=string.char(102,117,110,99,116,105,111,110)then warn(string.char(91,71,97,107,117,114,97,110,32,75,101,121,93,32,68,114,97,119,105,110,103,32,117,110,97,118,97,105,108,97,98,108,101,59,32,107,101,121,32,119,105,110,100,111,119,32,99,97,110,110,111,116,32,111,112,101,110))return end local _E={}local function _F(_H)local _I=Drawing.new(_H)_E[#_E+1]=_I return _I end local function _J(_I,_K)local _L=pcall(function()_I.FontSize=_K end)if not _L then pcall(function()_I.Size=_K end)end end local function _M()for _o,_I in ipairs(_E)do pcall(function()_I.Visible=false end)pcall(function()if _I.Remove then _I:Remove()elseif _I.Destroy then _I:Destroy()end end)end end local function _N(_O,_P)local _I=_F(string.char(83,113,117,97,114,101))_I.Filled=true _I.Color=_O _I.ZIndex=_P or 1 return _I end local function _Q(_d,_O,_K,_P)local _I=_F(string.char(84,101,120,116))_I.Text=_d _I.Color=_O _I.ZIndex=_P or 2 _J(_I,_K or 12)pcall(function()_I.Outline=false end)return _I end local _R=nil pcall(function()_R=workspace.CurrentCamera.ViewportSize end)_R=_R or Vector2.new(1280,720)local _S=450 local _T=232 local _U=math.floor((_R.X-_S)/2)local _V=math.floor((_R.Y-_T)/2)local _W=_N(Color3.fromRGB(12,14,20),10)_W.Position=Vector2.new(_U,_V)_W.Size=Vector2.new(_S,_T)_W.Visible=true local _X=_N(Color3.fromRGB(20,23,33),11)_X.Position=Vector2.new(_U,_V)_X.Size=Vector2.new(_S,52)_X.Visible=true local _Y=_N(Color3.fromRGB(125,105,255),12)_Y.Position=Vector2.new(_U,_V+50)_Y.Size=Vector2.new(_S,2)_Y.Visible=true local _Z=_N(Color3.fromRGB(25,29,41),11)_Z.Position=Vector2.new(_U+18,_V+101)_Z.Size=Vector2.new(_S-36,42)_Z.Visible=true local _aa=_Q(string.char(71,97,107,117,114,97,110,32,65,99,99,101,115,115),Color3.fromRGB(242,244,249),16,13)_aa.Position=Vector2.new(_U+18,_V+14)_aa.Visible=true local _ba=_Q(string.char(75,101,121,32,105,115,32,112,101,114,109,97,110,101,110,116,108,121,32,98,111,117,110,100,32,116,111,32,116,104,101,32,102,105,114,115,116,32,82,111,98,108,111,120,32,85,115,101,114,73,100,32,116,104,97,116,32,99,108,97,105,109,115,32,105,116,46),Color3.fromRGB(151,160,184),10,13)_ba.Position=Vector2.new(_U+18,_V+34)_ba.Visible=true local _ca=_Q(string.char(85,115,101,114,73,100,58,32)..tostring(_p),Color3.fromRGB(125,105,255),10,13)_ca.Position=Vector2.new(_U+18,_V+70)_ca.Visible=true local _da=_Q(string.char(76,73,67,69,78,83,69,32,75,69,89),Color3.fromRGB(151,160,184),10,13)_da.Position=Vector2.new(_U+18,_V+85)_da.Visible=true local _ea=_Q("",Color3.fromRGB(242,244,249),12,13)_ea.Position=Vector2.new(_U+30,_V+116)_ea.Visible=true local _fa=_Q(string.char(84,121,112,101,32,97,32,107,101,121,44,32,116,104,101,110,32,112,114,101,115,115,32,69,78,84,69,82),Color3.fromRGB(151,160,184),10,13)_fa.Position=Vector2.new(_U+18,_V+160)_fa.Visible=true local _ga=_Q(string.char(66,65,67,75,83,80,65,67,69,32,100,101,108,101,116,101,32,32,124,32,32,69,78,84,69,82,32,99,108,97,105,109,47,99,104,101,99,107,32,32,124,32,32,70,50,32,115,104,111,119,115,32,116,104,105,115,32,115,99,114,101,101,110,32,110,101,120,116,32,108,97,117,110,99,104),Color3.fromRGB(111,120,145),9,13)_ga.Position=Vector2.new(_U+18,_V+205)_ga.Visible=true local _ha=""local _ia=false local _ja={}local _ka={}for _la=0x41,0x5A do _ka[#_ka+1]={_la=_la,char=string.char(_la),}end for _la=0x30,0x39 do _ka[#_ka+1]={_la=_la,char=string.char(_la),}end _ka[#_ka+1]={_la=0xBD,char=string.char(45),}local function _ma(_la)if type(iskeypressed)~=string.char(102,117,110,99,116,105,111,110)then return false end local _na=iskeypressed(_la)==true local _oa=_ja[_la]==true _ja[_la]=_na return _na and not _oa end local function _pa()if _ha==""then _ea.Text=string.char(71,75,82,45,46,46,46)_ea.Color=Color3.fromRGB(105,113,137)else _ea.Text=_ha _ea.Color=Color3.fromRGB(242,244,249)end end _pa()while not _ia do for _o,_qa in ipairs(_ka)do if _ma(_qa._la)then if#_ha<32 then _ha=_ha.._qa.char _pa()end end end if _ma(0x08)then if#_ha>0 then _ha=string.sub(_ha,1,#_ha-1)_pa()end end if _ma(0x0D)then local _ra=_c(_ha)_fa.Text=string.char(67,104,101,99,107,105,110,103,32,85,115,101,114,73,100,32,108,105,99,101,110,115,101,46,46,46)_fa.Color=Color3.fromRGB(125,105,255)local _sa,_ta=_u(_ra,_p)if _sa then _ia=true _j(_ra)_fa.Text=string.char(75,101,121,32,97,99,99,101,112,116,101,100,32,102,111,114,32,85,115,101,114,73,100,32)..tostring(_p)_fa.Color=Color3.fromRGB(94,220,145)if type(notify)==string.char(102,117,110,99,116,105,111,110)then pcall(notify,string.char(76,105,99,101,110,115,101,32,97,99,99,101,112,116,101,100,46),string.char(71,97,107,117,114,97,110),2)end task.wait(0.20)else if _ta==string.char(85,83,69,68)then _fa.Text=string.char(84,104,105,115,32,107,101,121,32,105,115,32,97,108,114,101,97,100,121,32,98,111,117,110,100,32,116,111,32,97,110,111,116,104,101,114,32,85,115,101,114,73,100)elseif _ta==string.char(73,78,86,65,76,73,68)then _fa.Text=string.char(73,110,118,97,108,105,100,32,108,105,99,101,110,115,101,32,107,101,121)elseif _ta==string.char(83,69,82,86,69,82,95,78,79,84,95,67,79,78,70,73,71,85,82,69,68)then _fa.Text=string.char(76,105,99,101,110,115,101,32,115,101,114,118,101,114,32,85,82,76,32,104,97,115,32,110,111,116,32,98,101,101,110,32,99,111,110,102,105,103,117,114,101,100)elseif _ta==string.char(78,69,84,87,79,82,75,95,69,82,82,79,82)then _fa.Text=string.char(76,105,99,101,110,115,101,32,115,101,114,118,101,114,32,99,111,117,108,100,32,110,111,116,32,98,101,32,114,101,97,99,104,101,100)else _fa.Text=string.char(76,105,99,101,110,115,101,32,114,101,106,101,99,116,101,100,58,32)..tostring(_ta)end _fa.Color=Color3.fromRGB(238,98,113)_ha=""_pa()end end task.wait(0.025)end _M()if not _ia then return end end end local _ua=string.char(104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,97,114,116,120,102,105,99,105,97,108,47,109,97,116,99,104,97,115,116,117,102,102,47,114,101,102,115,47,104,101,97,100,115,47,109,97,105,110,47,103,97,107,114,97,110,46,108,117,97)local _va=string.char(104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,97,114,116,120,102,105,99,105,97,108,47,109,97,116,99,104,97,115,116,117,102,102,47,114,101,102,115,47,104,101,97,100,115,47,109,97,105,110,47,97,110,105,109,97,116,105,111,110,116,114,97,99,107,101,114,46,108,117,97)local _wa=string.char(95,95,71,97,107,117,114,97,110,67,111,109,98,105,110,101,100,66,97,115,101,76,111,97,100,101,100)local _xa=[====[
local _gakuranOffsetsValid = type(offsets) == "table"
    and type(offsets.Misc) == "table"
    and type(offsets.Instance) == "table"
    and type(offsets.AnimationTrack) == "table"
    and type(offsets.Animator) == "table"
    and type(offsets.Misc.AnimationId) == "number"
    and type(offsets.Instance.ClassDescriptor) == "number"
    and type(offsets.Instance.ClassName) == "number"
    and type(offsets.Instance.Name) == "number"
    and type(offsets.AnimationTrack.TimePosition) == "number"
    and type(offsets.AnimationTrack.Animation) == "number"
    and type(offsets.AnimationTrack.Speed) == "number"
    and type(offsets.AnimationTrack.IsPlaying) == "number"
    and type(offsets.Animator.ActiveAnimations) == "number"

if not _gakuranOffsetsValid then
    print("[Gakuran AP Share] offset mirrors unavailable; using embedded fallback")
    offsets = {
        Misc = { AnimationId = 192 },
        Instance = { ClassDescriptor = 24, ClassName = 8, Name = 8 },
        AnimationTrack = {
            Animation = 184,
            Speed = 212,
            TimePosition = 216,
            IsPlaying = 2704,
        },
        Animator = { ActiveAnimations = 2944 },
    }
end

]====]local _ya=[====[

-- ===== v6.8.2 Striker runtime registration/timing patch =====
local STRIKER_FIRST_WINDUP = 0.35
local STRIKER_LAST_WINDUP = 0.12
local STRIKER_HIT_COUNT = 4
local STRIKER_PARRY_PHASE = 0.20 / 0.35
local STRIKER_FEINT_REACTION = 0.30

local function GetStrikerReactionTime(displayName)
    local name = tostring(displayName or "")
    local hitIndex = tonumber(string.match(name, "^(%d+)"))

    if hitIndex and hitIndex >= 1 and hitIndex <= STRIKER_HIT_COUNT then
        local alpha = (hitIndex - 1) / (STRIKER_HIT_COUNT - 1)
        local windup = STRIKER_FIRST_WINDUP
            + ((STRIKER_LAST_WINDUP - STRIKER_FIRST_WINDUP) * alpha)
        return math.max(0.01, windup * STRIKER_PARRY_PHASE)
    end

    if name == "M2" or name == "FeintM2" or name == "StrikerFeint" then
        return STRIKER_FEINT_REACTION
    end

    return nil
end

local function ApplyStrikerAnimationConfig(assetId, displayName)
    if not assetId then return false end

    local reactionTime = GetStrikerReactionTime(displayName)
    if reactionTime == nil then return false end

    local key = tostring(assetId)
    local info = GameConfig[key] or {}

    info.Style = "StrikerAnims"
    info.ReactionTime = reactionTime
    info.DefaultReactionTime = nil

    if tostring(displayName) == "M2"
        or tostring(displayName) == "FeintM2"
        or tostring(displayName) == "StrikerFeint" then
        -- Do NOT leave this named M2: the upstream ExecuteParry treats M2 as a
        -- generic heavy and Auto Dodge consumes it. Striker specifically wants
        -- us to ignore the 0.15s fake and parry the real 0.45s kick.
        info.DisplayName = "StrikerFeint"
        info.Heavy = false
        info.StrikerFeint = true
    else
        info.DisplayName = tostring(displayName)
    end

    GameConfig[key] = info
    return true
end

-- First patch whatever Striker IDs the live upstream base already knows.
local patchedUpstreamStrikerCount = 0
for assetId, info in pairs(GameConfig) do
    if type(info) == "table" and info.Style == "StrikerAnims" then
        if ApplyStrikerAnimationConfig(assetId, info.DisplayName) then
            patchedUpstreamStrikerCount += 1
        end
    end
end

-- Emergency fallback IDs cover both the current upstream set and the older set
-- from v6.7. They are only added if neither upstream nor live folder discovery
-- supplies Striker animations, so the Style Configurations tab stays clean.
local STRIKER_FALLBACK_IDS = {
    -- Current upstream IDs.
    ["rbxassetid://127909081017342"] = "1stM1",
    ["rbxassetid://79563637573277"] = "2ndM1",
    ["rbxassetid://118070233153900"] = "3rdM1",
    ["rbxassetid://77710266587706"] = "4thM1",
    ["rbxassetid://114364673509520"] = "M2",
    ["rbxassetid://132840225082238"] = "1stM1",
    ["rbxassetid://88761422474765"] = "2ndM1",
    ["rbxassetid://98462236639320"] = "3rdM1",
    ["rbxassetid://122451562066756"] = "4thM1",

    -- Older IDs used by the v6.7 wrapper.
    ["rbxassetid://116642061934550"] = "1stM1",
    ["rbxassetid://115234849770695"] = "2ndM1",
    ["rbxassetid://85554794950365"] = "3rdM1",
    ["rbxassetid://73777821288331"] = "4thM1",
    ["rbxassetid://99309341097380"] = "M2",
}

local function ReadLiveAnimationId(animationObject)
    -- Prefer the normal property when Matcha exposes it.
    local okProperty, propertyId = pcall(function()
        return animationObject.AnimationId
    end)
    if okProperty and type(propertyId) == "string" and propertyId ~= "" then
        return propertyId
    end

    -- Match the upstream LiteGrabber fallback when the property is unavailable.
    if animationObject and animationObject.Address and memory_read then
        local okMemory, memoryId = pcall(function()
            local animationIdPointer = memory_read("uintptr_t", animationObject.Address + 192)
            if not animationIdPointer or animationIdPointer == 0 then return nil end
            return memory_read("string", animationIdPointer)
        end)
        if okMemory and type(memoryId) == "string" and memoryId ~= "" then
            return memoryId
        end
    end

    return nil
end

local function RegisterLiveStrikerAnimations()
    local ok, registered = pcall(function()
        local replicatedStorage = game:GetService("ReplicatedStorage")
        local animations = replicatedStorage and replicatedStorage:FindFirstChild("Animations")
        local combat = animations and animations:FindFirstChild("Combat")
        local strikerFolder = combat and (
            combat:FindFirstChild("StrikerAnims")
            or combat:FindFirstChild("Striker")
        )

        if not strikerFolder then
            return 0
        end

        local count = 0
        for _, animationObject in ipairs(strikerFolder:GetChildren()) do
            local displayName = animationObject.Name
            if GetStrikerReactionTime(displayName) ~= nil then
                local liveId = ReadLiveAnimationId(animationObject)
                if liveId and ApplyStrikerAnimationConfig(liveId, displayName) then
                    count += 1
                end
            end
        end

        return count
    end)

    if ok and registered and registered > 0 then
        print(string.format("[Gakuran AP Share] registered %d live Striker animations", registered))
        return registered
    elseif not ok then
        warn("[Gakuran AP Share] live Striker animation discovery failed")
    else
        print("[Gakuran AP Share] live Striker folder unavailable")
    end

    return 0
end

local liveStrikerCount = RegisterLiveStrikerAnimations() or 0
if patchedUpstreamStrikerCount == 0 and liveStrikerCount == 0 then
    local fallbackCount = 0
    for assetId, displayName in pairs(STRIKER_FALLBACK_IDS) do
        if ApplyStrikerAnimationConfig(assetId, displayName) then
            fallbackCount += 1
        end
    end
    print(string.format("[Gakuran AP Share] registered %d fallback Striker animations", fallbackCount))
end
-- ===== end v6.8.1 Striker patch =====
]====]local _za=[====[
-- ===== v7.2.4 merge: Ali timing update only =====
local ALI_REACTION_TIMINGS = {
    ["1stM1"] = 0.120,
    ["2ndM1"] = 0.170,
    ["3rdM1"] = 0.210,
    ["4thM1"] = 0.110,
    ["M2"] = 0.270,
    ["M2Right"] = 0.270,
}

local aliTimingPatchCount = 0

for _, info in pairs(GameConfig or {}) do
    if type(info) == "table"
        and info.Style == "AliAnims" then

        local updated =
            ALI_REACTION_TIMINGS[tostring(info.DisplayName or "")]

        if updated ~= nil then
            info.ReactionTime = updated
            info.DefaultReactionTime = nil
            aliTimingPatchCount += 1
        end
    end
end

print(
    "[Gakuran AP Share] Ali timings updated: "
        .. tostring(aliTimingPatchCount)
)
-- ===== end Ali timing update =====
]====]local _Aa=[====[
-- ==========================================================
-- v7.2.4 merge: shared living-target guard
-- ==========================================================
local function GakuranIsLivingTarget(character)
    if not character
        or not character.Parent
        or character.ClassName ~= "Model" then

        return false
    end

    local humanoid =
        character:FindFirstChildWhichIsA("Humanoid")

    local root =
        character:FindFirstChild("HumanoidRootPart")

    return humanoid ~= nil
        and humanoid.Health > 0
        and root ~= nil
        and root.Parent ~= nil
end

local function GakuranPruneDeadTargets()
    if type(TargetCharacters) ~= "table" then
        return
    end

    local hadTarget = #TargetCharacters > 0
    local removedDead = false

    for index = #TargetCharacters, 1, -1 do
        if not GakuranIsLivingTarget(TargetCharacters[index]) then
            table.remove(TargetCharacters, index)
            removedDead = true
        end
    end

    if BlatantFaceThreatCharacter
        and not GakuranIsLivingTarget(
            BlatantFaceThreatCharacter
        ) then

        BlatantFaceThreatCharacter = nil
    end

    -- If a selected target dies, replace it immediately with the nearest
    -- living target from the same configured target pool. This only auto-picks
    -- after a death; an intentionally empty target list stays empty.
    if removedDead
        and hadTarget
        and #TargetCharacters == 0 then

        local localCharacter =
            LocalPlayer and LocalPlayer.Character

        local localRoot =
            localCharacter
            and localCharacter:FindFirstChild("HumanoidRootPart")

        if not localRoot then
            return
        end

        local candidates =
            GetAllCharactersInFolder() or {}

        local best = nil
        local bestDistance = math.huge
        local maxRange =
            tonumber(MaxCycleRange) or math.huge

        for _, character in ipairs(candidates) do
            if character ~= localCharacter
                and GakuranIsLivingTarget(character) then

                local root =
                    character:FindFirstChild("HumanoidRootPart")

                local distance =
                    (root.Position - localRoot.Position).Magnitude

                if distance <= maxRange
                    and distance < bestDistance then

                    best = character
                    bestDistance = distance
                end
            end
        end

        if best then
            TargetCharacters[1] = best
            CurrentIndex = 1
        end
    end
end
]====]local _Ba=[====[
local FrameAnimationCache = {}

local function GetFrameAnimations(character)
    if FrameAnimationCache[character] ~= nil then
        return FrameAnimationCache[character]
    end

    local ok, activeAnimations = pcall(function()
        return AnimationTracker:Update(character)
    end)

    if not ok or not activeAnimations then
        activeAnimations = {}
    end

    FrameAnimationCache[character] = activeAnimations
    return activeAnimations
end

]====]local _Ca=[====[
-- ==========================================================
-- v7.1.6 Snap Lock - Shift-Lock Sticky Parry Fix
-- ==========================================================
-- Regression fix:
-- v7.0+ changed Snap Lock to ONE CFrame write and then only relied on
-- Humanoid.AutoRotate=false. In Shift Lock, Roblox can still reclaim the body
-- facing, which makes the character briefly face the attacker and then snap
-- back before Auto Parry actually fires.
--
-- This restores the last known-good sticky-face behavior:
--   * select ONE attacker for the attack;
--   * never rotate the camera;
--   * never switch targets while that attack lock is active;
--   * keep AutoRotate disabled through the complete parry window;
--   * reassert BODY yaw only if Shift Lock actually drifts it away;
--   * reassert against the SAME target only, so there is no multi-target spin;
--   * Auto Parry still runs immediately after Snap Lock in the same frame;
--   * Snap Lock never changes BlockStart / BlockExpire / reaction timings.

local BLATANT_FACE_LEAD_TIME = 0.10
local BLATANT_FACE_SEEN_TTL = 0.90

-- Hold long enough for the actual F/parry window to finish before Shift Lock
-- regains control. This is intentionally longer than the broken single-write
-- version's effective facing duration.
local BLATANT_FACE_MIN_HOLD = 0.22
local BLATANT_FACE_AFTER_WINDOW = 0.12
local BLATANT_FACE_MAX_HOLD = 0.80

-- Reapply only after meaningful drift. This keeps the lock sticky without
-- hammering CFrame every render frame or causing visible jitter.
local BLATANT_FACE_REAPPLY_ANGLE = math.rad(1.25)

local BlatantFaceSeen = {}
local BlatantFaceThreat = {
    character = nil,
    animKey = nil,
    expireAt = 0,
}

local BlatantFaceLock = {
    animKey = nil,
    character = nil,
    targetRoot = nil,
    humanoid = nil,
    savedAutoRotate = nil,
    releaseAt = 0,
}

local function ClearBlatantFaceThreat()
    BlatantFaceThreat.character = nil
    BlatantFaceThreat.animKey = nil
    BlatantFaceThreat.expireAt = 0
    BlatantFaceThreatCharacter = nil
end

local function ReleaseBlatantFaceLock()
    local humanoid = BlatantFaceLock.humanoid
    local savedAutoRotate = BlatantFaceLock.savedAutoRotate

    if humanoid and humanoid.Parent and savedAutoRotate ~= nil then
        pcall(function()
            humanoid.AutoRotate = savedAutoRotate
        end)
    end

    BlatantFaceLock.animKey = nil
    BlatantFaceLock.character = nil
    BlatantFaceLock.targetRoot = nil
    BlatantFaceLock.humanoid = nil
    BlatantFaceLock.savedAutoRotate = nil
    BlatantFaceLock.releaseAt = 0
end

local function GetShortestYaw(localRoot, targetRoot)
    local offset = targetRoot.Position - localRoot.Position
    local flatOffset = Vector3.new(offset.X, 0, offset.Z)

    if flatOffset.Magnitude <= 0.001 then
        return nil, nil
    end

    local targetDirection = flatOffset.Unit
    local currentLook = localRoot.CFrame.LookVector

    local currentYaw = math.atan2(
        -currentLook.X,
        -currentLook.Z
    )

    local desiredYaw = math.atan2(
        -targetDirection.X,
        -targetDirection.Z
    )

    -- atan2(sin, cos) normalizes to [-pi, pi], so every correction uses the
    -- shortest possible rotational direction.
    local deltaYaw = math.atan2(
        math.sin(desiredYaw - currentYaw),
        math.cos(desiredYaw - currentYaw)
    )

    return currentYaw + deltaYaw, deltaYaw
end

local function ApplyTargetYaw(localRoot, targetRoot, forceWrite)
    local finalYaw, deltaYaw =
        GetShortestYaw(localRoot, targetRoot)

    if not finalYaw or not deltaYaw then
        return false, nil
    end

    if not forceWrite
        and math.abs(deltaYaw) < BLATANT_FACE_REAPPLY_ANGLE then
        return true, deltaYaw
    end

    local position = localRoot.Position

    localRoot.CFrame =
        CFrame.new(position.X, position.Y, position.Z)
        * CFrame.Angles(0, finalYaw, 0)

    return true, deltaYaw
end

local function BlatantFaceTask()
    -- EvaluateParryTriggers reads this later in the SAME RenderStepped frame.
    BlatantFaceThreatCharacter = nil

    local enabled =
        GakuranExtraUI
        and GakuranExtraUI.SnapToggle
        and GakuranExtraUI.SnapToggle.Get
        and GakuranExtraUI.SnapToggle.Get()

    local now = os.clock()

    if not enabled then
        ReleaseBlatantFaceLock()
        ClearBlatantFaceThreat()
        table.clear(BlatantFaceSeen)
        return
    end

    local localCharacter =
        LocalPlayer and LocalPlayer.Character

    local localRoot =
        localCharacter
        and localCharacter:FindFirstChild("HumanoidRootPart")

    local localHumanoid =
        localCharacter
        and localCharacter:FindFirstChildWhichIsA("Humanoid")

    if not localCharacter
        or not localRoot
        or not localHumanoid then
        ReleaseBlatantFaceLock()
        ClearBlatantFaceThreat()
        return
    end

    -- Keep AP bridged only while the exact attacker is still alive.
    if BlatantFaceThreat.character
        and GakuranIsLivingTarget(BlatantFaceThreat.character)
        and now <= BlatantFaceThreat.expireAt then

        BlatantFaceThreatCharacter =
            BlatantFaceThreat.character
    else
        ClearBlatantFaceThreat()
    end

    -- SHIFT-LOCK RESISTANT STICKY HOLD.
    -- Once an attack owns the lock, we do not search for another target until
    -- this lock finishes. We only correct yaw if Shift Lock actually pulls the
    -- body away from the SAME attacker.
    if BlatantFaceLock.humanoid then
        local lockStillValid =
            BlatantFaceLock.humanoid == localHumanoid
            and BlatantFaceLock.character
            and GakuranIsLivingTarget(BlatantFaceLock.character)
            and BlatantFaceLock.targetRoot
            and BlatantFaceLock.targetRoot.Parent
            and now < BlatantFaceLock.releaseAt

        if lockStillValid then
            if BlatantFaceThreat.character
                == BlatantFaceLock.character
                and now <= BlatantFaceThreat.expireAt then

                BlatantFaceThreatCharacter =
                    BlatantFaceLock.character
            end

            local _, correctionDelta =
                ApplyTargetYaw(
                    localRoot,
                    BlatantFaceLock.targetRoot,
                    false
                )

            if correctionDelta
                and math.abs(correctionDelta)
                    >= BLATANT_FACE_REAPPLY_ANGLE
                and AdaptiveTiming
                and AdaptiveTiming.OnSnapCorrection then

                AdaptiveTiming.OnSnapCorrection(
                    BlatantFaceLock.animKey
                )
            end

            return
        end

        ReleaseBlatantFaceLock()
    end

    -- Do not acquire a second target while the AP threat bridge from the
    -- previous attack is still alive for a few milliseconds.
    if BlatantFaceThreatCharacter then
        return
    end

    for animKey, expireAt in pairs(BlatantFaceSeen) do
        if expireAt <= now then
            BlatantFaceSeen[animKey] = nil
        end
    end

    -- PERFORMANCE: scan the exact AP target pool only.
    -- The old build walked every model in the selected workspace folder every
    -- RenderStepped while Snap Lock was armed. In populated servers that could
    -- become the largest extra per-frame cost in this wrapper.
    if not TargetCharacters or #TargetCharacters == 0 then
        return
    end

    local bestCharacter = nil
    local bestTargetRoot = nil
    local bestAnimKey = nil
    local bestBlockStart = nil
    local bestBlockExpire = math.huge
    local bestDistance = math.huge

    for _, character in ipairs(TargetCharacters) do
        if character
            and character ~= localCharacter
            and character.ClassName == "Model" then

            local targetRoot =
                character:FindFirstChild("HumanoidRootPart")

            local targetHumanoid =
                character:FindFirstChildWhichIsA("Humanoid")

            if targetRoot
                and targetHumanoid
                and targetHumanoid.Health > 0 then

                local distance =
                    (targetRoot.Position - localRoot.Position).Magnitude

                if distance <= AutoParryRange
                    and distance > 0.001 then

                    local activeAnimations =
                        GetFrameAnimations(character)

                    for _, anim in ipairs(activeAnimations) do
                        if not anim.AnimationId then
                            continue
                        end

                        local attackConfig =
                            GameConfig[tostring(anim.AnimationId)]

                        if not attackConfig then
                            continue
                        end

                        -- Heavy/counter/dodge paths are intentionally left alone.
                        -- Snap Lock should not steal control from Dodge().
                        local isHeavy =
                            attackConfig.DisplayName == "M2"
                            or attackConfig.DisplayName == "Heavy"
                            or attackConfig.Heavy

                        if isHeavy then
                            continue
                        end

                        local animKey =
                            anim.Address or anim

                        if BlatantFaceSeen[animKey] then
                            continue
                        end

                        local regData =
                            AnimationRegistry[animKey]

                        if regData
                            and regData.Processed then
                            continue
                        end

                        local blockStart =
                            regData and regData.BlockStart

                        local blockExpire =
                            regData and regData.BlockExpire

                        -- On the very first detected frame AP may not have a
                        -- registry entry yet. Estimate using AP's exact timing
                        -- helper, then AP will create/use its normal registry
                        -- data immediately after this task in the same frame.
                        if not blockStart
                            or not blockExpire then

                            local playbackSpeed =
                                math.abs(
                                    tonumber(anim.Speed) or 1
                                )

                            if playbackSpeed < 0.05 then
                                playbackSpeed = 1
                            end

                            local elapsedReal =
                                math.max(
                                    tonumber(anim.TimePosition) or 0,
                                    0
                                ) / playbackSpeed

                            local estimatedStart =
                                now
                                - elapsedReal
                                - ConstLatency

                            blockStart, blockExpire =
                                CalculateParryTiming(
                                    attackConfig,
                                    estimatedStart,
                                    character
                                )
                        end

                        if blockStart and blockExpire then
                            local timeUntilInput =
                                blockStart - now

                            local stillParryable =
                                now <= blockExpire

                            if stillParryable
                                and timeUntilInput
                                    <= BLATANT_FACE_LEAD_TIME then

                                -- One sticky threat only. Earliest expiring
                                -- parry window wins; distance is the tie-breaker.
                                if blockExpire < bestBlockExpire
                                    or (
                                        math.abs(
                                            blockExpire
                                            - bestBlockExpire
                                        ) <= 0.001
                                        and distance < bestDistance
                                    ) then

                                    bestBlockExpire = blockExpire
                                    bestBlockStart = blockStart
                                    bestDistance = distance
                                    bestCharacter = character
                                    bestTargetRoot = targetRoot
                                    bestAnimKey = animKey
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    if not bestTargetRoot
        or not bestAnimKey
        or not bestBlockStart
        or bestBlockExpire == math.huge then
        return
    end

    -- Bridge the exact faced attacker into AP through the complete parry
    -- window. This prevents "face them, then AP checks somebody else".
    BlatantFaceThreat.character = bestCharacter
    BlatantFaceThreat.animKey = bestAnimKey
    BlatantFaceThreat.expireAt =
        math.min(
            now + 0.65,
            bestBlockExpire + 0.08
        )

    BlatantFaceThreatCharacter = bestCharacter

    BlatantFaceSeen[bestAnimKey] =
        now + BLATANT_FACE_SEEN_TTL

    local _, deltaYaw =
        GetShortestYaw(localRoot, bestTargetRoot)

    if not deltaYaw then
        return
    end

    local savedAutoRotate = nil

    local gotAutoRotate, autoRotateValue =
        pcall(function()
            return localHumanoid.AutoRotate
        end)

    if gotAutoRotate then
        savedAutoRotate = autoRotateValue

        pcall(function()
            localHumanoid.AutoRotate = false
        end)
    end

    -- Initial shortest-path face. After this, only meaningful Shift-Lock drift
    -- is corrected and always toward the SAME attacker.
    ApplyTargetYaw(
        localRoot,
        bestTargetRoot,
        math.abs(deltaYaw) > math.rad(1.0)
    )

    BlatantFaceLock.animKey = bestAnimKey
    BlatantFaceLock.character = bestCharacter
    BlatantFaceLock.targetRoot = bestTargetRoot
    BlatantFaceLock.humanoid = localHumanoid
    BlatantFaceLock.savedAutoRotate = savedAutoRotate

    -- Do not give Shift Lock the body back until after the complete parry
    -- window. This is the core fix for snapping back before F actually fires.
    BlatantFaceLock.releaseAt =
        math.min(
            now + BLATANT_FACE_MAX_HOLD,
            math.max(
                now + BLATANT_FACE_MIN_HOLD,
                bestBlockExpire
                    + BLATANT_FACE_AFTER_WINDOW
            )
        )

    if AdaptiveTiming
        and AdaptiveTiming.OnSnap then

        AdaptiveTiming.OnSnap(
            bestAnimKey,
            bestCharacter,
            deltaYaw,
            bestBlockStart,
            bestBlockExpire
        )
    end
end

]====]local _Da=[====[
local ShadowStepTech = {
    BusyUntil = 0,
    CriticalKey = string.byte("R"),
}

function ShadowStepTech.GetNumber(name, fallback)
    local value = GakuranExtraUI and GakuranExtraUI[name]
    value = tonumber(value)
    if value == nil then return fallback end
    return math.max(0, value)
end

function ShadowStepTech.Trigger(withCritical)
    local now = os.clock()
    if now < ShadowStepTech.BusyUntil then return end

    local fDelay = ShadowStepTech.GetNumber("ShadowStepFDelay", 0.000)
    local chordHold = ShadowStepTech.GetNumber("ShadowStepHold", 0.035)
    local criticalDelay = ShadowStepTech.GetNumber("ShadowCriticalDelay", 0.255)
    local criticalHold = ShadowStepTech.GetNumber("ShadowCriticalHold", 0.080)

    local duration = fDelay + chordHold
        + (withCritical and (criticalDelay + criticalHold) or 0)

    ShadowStepTech.BusyUntil = now + math.max(0.10, duration + 0.035)

    task.spawn(function()
        if GakuranExtraUI
            and GakuranExtraUI.CombatAssist
            and GakuranExtraUI.CombatAssist.MarkDodge then
            GakuranExtraUI.CombatAssist.MarkDodge("ShadowStep")
        end

        keypress(DodgeKey)

        if fDelay > 0 then
            task.wait(fDelay)
        end

        keypress(ParryKey)

        if chordHold > 0 then
            task.wait(chordHold)
        end

        keyrelease(ParryKey)
        keyrelease(DodgeKey)

        if withCritical then
            if criticalDelay > 0 then
                task.wait(criticalDelay)
            end

            keypress(ShadowStepTech.CriticalKey)

            if criticalHold > 0 then
                task.wait(criticalHold)
            end

            keyrelease(ShadowStepTech.CriticalKey)
        end
    end)
end

_G.__GakuranShadowStep = function()
    ShadowStepTech.Trigger(false)
end

_G.__GakuranShadowStepCritical = function()
    ShadowStepTech.Trigger(true)
end

]====]local _Ea=[====[
-- ==========================================================
-- v7.2 Combat Assist
-- ==========================================================
-- Optional features:
--   * Critical Defense: Default / 50-50 / Dash-CD fallback-to-parry
--   * Wing Chun Counter Escape (experimental)
--   * Critical Aim Lock for the LOCAL player's R/M2
--
-- All are OFF/default-neutral at startup. Defensive Auto Parry remains the
-- highest-priority facing/input path.

GakuranExtraUI.CombatAssist = GakuranExtraUI.CombatAssist or {
    DashReadyAt = 0,
    CounterEscapeUntil = 0,
    CounterEscapeTarget = nil,
    CounterEscapeAnimKey = nil,

    CriticalAimAnimKey = nil,
    CriticalAimTarget = nil,
    CriticalAimTargetRoot = nil,
}

function GakuranExtraUI.CombatAssist.GetNumber(name, fallback)
    local value = tonumber(GakuranExtraUI[name])
    if value == nil then
        return fallback
    end
    return value
end

function GakuranExtraUI.CombatAssist.MarkDodge(source)
    local cooldown = math.max(
        0.10,
        GakuranExtraUI.CombatAssist.GetNumber(
            "CriticalDashCooldownEstimate",
            2.00
        )
    )

    GakuranExtraUI.CombatAssist.DashReadyAt =
        os.clock() + cooldown

    GakuranExtraUI.CombatAssist.LastDodgeSource =
        tostring(source or "unknown")
end

function GakuranExtraUI.CombatAssist.DashReady()
    return os.clock()
        >= (GakuranExtraUI.CombatAssist.DashReadyAt or 0)
end

function GakuranExtraUI.CombatAssist.IsHeavy(attackConfig)
    if not attackConfig then return false end

    local name = tostring(attackConfig.DisplayName or "")
    return attackConfig.Heavy == true
        or name == "M2"
        or name == "M2Right"
        or name == "Heavy"
        or name == "MomentumM2"
        or name == "Whirlwind"
        or string.find(name, "M2", 1, true) ~= nil
end

function GakuranExtraUI.CombatAssist.IsWingChunCounter(attackConfig)
    if not attackConfig then
        return false
    end

    local style = tostring(attackConfig.Style or "")
    local name = tostring(attackConfig.DisplayName or "")

    return (style == "WingChun" or style == "WingChunAnims")
        and name == "M2"
end

function GakuranExtraUI.CombatAssist.HandleHeavy(regData, attackConfig)
    local mode = tostring(
        GakuranExtraUI.CriticalDefenseMode or "Default"
    )

    if mode == "Default" then
        return false
    end

    -- Every non-default mode owns the critical decision so upstream Auto Dodge
    -- cannot immediately override it.
    if mode == "50/50 Parry/Dodge" then
        -- Use the registry's already-stable per-animation random number so the
        -- choice cannot flip back and forth across render frames.
        if AutoDodgeToggle.Get()
            and (tonumber(regData.RandomNum) or 100) <= 50 then

            Dodge()
        else
            if LastPendingRegData ~= regData then
                LastPendingRegData = regData
            end
            BlockStart(regData.BlockStart)
        end

        return true
    end

    if mode == "Dash CD -> Parry" then
        if AutoDodgeToggle.Get()
            and GakuranExtraUI.CombatAssist.DashReady() then

            Dodge()
        else
            if LastPendingRegData ~= regData then
                LastPendingRegData = regData
            end
            BlockStart(regData.BlockStart)
        end

        return true
    end

    return false
end

function GakuranExtraUI.CombatAssist.GetYawForDirection(direction)
    local flat = Vector3.new(direction.X, 0, direction.Z)
    if flat.Magnitude <= 0.001 then
        return nil
    end

    flat = flat.Unit
    return math.atan2(-flat.X, -flat.Z)
end

function GakuranExtraUI.CombatAssist.FaceDirection(
    localRoot,
    direction,
    minimumDegrees
)
    if not localRoot or not localRoot.Parent then
        return false
    end

    local yaw =
        GakuranExtraUI.CombatAssist.GetYawForDirection(direction)

    if not yaw then
        return false
    end

    local currentLook = localRoot.CFrame.LookVector
    local currentYaw =
        math.atan2(-currentLook.X, -currentLook.Z)

    local delta = math.atan2(
        math.sin(yaw - currentYaw),
        math.cos(yaw - currentYaw)
    )

    if math.abs(delta)
        < math.rad(tonumber(minimumDegrees) or 1.5) then
        return true
    end

    local position = localRoot.Position
    localRoot.CFrame =
        CFrame.new(position.X, position.Y, position.Z)
        * CFrame.Angles(0, currentYaw + delta, 0)

    return true
end

function GakuranExtraUI.CombatAssist.LocalIsM1ing()
    local active =
        GakuranExtraUI.CombatAssist.LocalAnimations or {}

    for _, anim in ipairs(active) do
        if anim and anim.AnimationId then
            local config =
                GameConfig[tostring(anim.AnimationId)]

            if config then
                local name =
                    tostring(config.DisplayName or anim.Name or "")

                if string.find(name, "M1", 1, true) then
                    return true
                end
            end
        end
    end

    return false
end

function GakuranExtraUI.CombatAssist.HandleWingChunCounter(
    character,
    localCharacter,
    localRoot,
    attackConfig,
    anim
)
    -- Wing Chun M2 is a counter, not a normal incoming parry attack. It is
    -- always excluded from normal AP execution below. This optional feature
    -- only tries to make an already-started local M1 whiff the counter.
    local toggle = GakuranExtraUI.WingChunCounterEscape

    if not toggle
        or not toggle.Get
        or not toggle.Get() then
        return
    end

    if not GakuranExtraUI.CombatAssist.LocalIsM1ing() then
        return
    end

    local targetRoot =
        character
        and character:FindFirstChild("HumanoidRootPart")

    if not targetRoot or not localRoot then
        return
    end

    local duration = math.clamp(
        GakuranExtraUI.CombatAssist.GetNumber(
            "WingChunEscapeHold",
            0.18
        ),
        0.08,
        0.35
    )

    local animKey = anim and (anim.Address or anim) or character

    if GakuranExtraUI.CombatAssist.CounterEscapeAnimKey
        ~= animKey then

        GakuranExtraUI.CombatAssist.CounterEscapeAnimKey =
            animKey

        GakuranExtraUI.CombatAssist.CounterEscapeTarget =
            targetRoot

        GakuranExtraUI.CombatAssist.CounterEscapeUntil =
            os.clock() + duration
    end

    -- Turn directly AWAY from the counter user. This is deliberately body-only;
    -- camera is never changed.
    local away =
        localRoot.Position - targetRoot.Position

    GakuranExtraUI.CombatAssist.FaceDirection(
        localRoot,
        away,
        0.75
    )
end

function GakuranExtraUI.CombatAssist.FindCriticalAnimation()
    local active =
        GakuranExtraUI.CombatAssist.LocalAnimations or {}

    for _, anim in ipairs(active) do
        if anim and anim.AnimationId then
            local config =
                GameConfig[tostring(anim.AnimationId)]

            if config
                and GakuranExtraUI.CombatAssist.IsHeavy(config)
                and not GakuranExtraUI.CombatAssist.IsWingChunCounter(config) then
                return anim, config
            end
        end
    end

    return nil, nil
end

function GakuranExtraUI.CombatAssist.FindNearestCriticalTarget(
    localRoot
)
    local maxRange = math.clamp(
        GakuranExtraUI.CombatAssist.GetNumber(
            "CriticalAimRange",
            12
        ),
        4,
        30
    )

    local bestCharacter = nil
    local bestRoot = nil
    local bestDistance = math.huge

    for _, character in ipairs(TargetCharacters or {}) do
        local root =
            character
            and character:FindFirstChild("HumanoidRootPart")

        local humanoid =
            character
            and character:FindFirstChildWhichIsA("Humanoid")

        if root
            and humanoid
            and humanoid.Health > 0 then

            local distance =
                (root.Position - localRoot.Position).Magnitude

            if distance <= maxRange
                and distance < bestDistance then

                bestDistance = distance
                bestCharacter = character
                bestRoot = root
            end
        end
    end

    return bestCharacter, bestRoot
end

function GakuranExtraUI.CombatAssist.Task(localCharacter, localAnimations)
    GakuranExtraUI.CombatAssist.LocalAnimations =
        localAnimations or {}

    local localRoot =
        localCharacter
        and localCharacter:FindFirstChild("HumanoidRootPart")

    if not localRoot then
        return
    end

    local now = os.clock()

    -- Experimental Wing Chun counter escape hold.
    if now
        < (GakuranExtraUI.CombatAssist.CounterEscapeUntil or 0) then

        local targetRoot =
            GakuranExtraUI.CombatAssist.CounterEscapeTarget

        local counterCharacter =
            targetRoot and targetRoot.Parent

        if targetRoot
            and targetRoot.Parent
            and GakuranIsLivingTarget(counterCharacter) then

            local away =
                localRoot.Position - targetRoot.Position

            GakuranExtraUI.CombatAssist.FaceDirection(
                localRoot,
                away,
                1.25
            )
        else
            GakuranExtraUI.CombatAssist.CounterEscapeTarget = nil
            GakuranExtraUI.CombatAssist.CounterEscapeAnimKey = nil
            GakuranExtraUI.CombatAssist.CounterEscapeUntil = 0
        end
    else
        GakuranExtraUI.CombatAssist.CounterEscapeTarget = nil
        GakuranExtraUI.CombatAssist.CounterEscapeAnimKey = nil
    end

    local aimToggle = GakuranExtraUI.CriticalAimLock

    if not aimToggle
        or not aimToggle.Get
        or not aimToggle.Get() then

        GakuranExtraUI.CombatAssist.CriticalAimAnimKey = nil
        GakuranExtraUI.CombatAssist.CriticalAimTarget = nil
        GakuranExtraUI.CombatAssist.CriticalAimTargetRoot = nil
        return
    end

    -- Defensive Snap/Parry always wins over offensive Critical Aim.
    if BlatantFaceLock
        and BlatantFaceLock.humanoid then
        return
    end

    if BlatantFaceThreatCharacter then
        return
    end

    local criticalAnim =
        GakuranExtraUI.CombatAssist.FindCriticalAnimation()

    if not criticalAnim then
        GakuranExtraUI.CombatAssist.CriticalAimAnimKey = nil
        GakuranExtraUI.CombatAssist.CriticalAimTarget = nil
        GakuranExtraUI.CombatAssist.CriticalAimTargetRoot = nil
        return
    end

    local animKey =
        criticalAnim.Address or criticalAnim

    if GakuranExtraUI.CombatAssist.CriticalAimAnimKey
        ~= animKey then

        local target, targetRoot =
            GakuranExtraUI.CombatAssist.FindNearestCriticalTarget(
                localRoot
            )

        GakuranExtraUI.CombatAssist.CriticalAimAnimKey =
            animKey

        GakuranExtraUI.CombatAssist.CriticalAimTarget =
            target

        GakuranExtraUI.CombatAssist.CriticalAimTargetRoot =
            targetRoot
    end

    local target =
        GakuranExtraUI.CombatAssist.CriticalAimTarget

    local targetRoot =
        GakuranExtraUI.CombatAssist.CriticalAimTargetRoot

    if not GakuranIsLivingTarget(target)
        or not targetRoot
        or not targetRoot.Parent then

        target, targetRoot =
            GakuranExtraUI.CombatAssist.FindNearestCriticalTarget(
                localRoot
            )

        GakuranExtraUI.CombatAssist.CriticalAimTarget =
            target

        GakuranExtraUI.CombatAssist.CriticalAimTargetRoot =
            targetRoot
    end

    if targetRoot
        and targetRoot.Parent
        and GakuranIsLivingTarget(target) then

        local direction =
            targetRoot.Position - localRoot.Position

        -- Sticky only for the duration of the user's own critical animation.
        -- No camera movement, and defensive Snap can override next frame.
        GakuranExtraUI.CombatAssist.FaceDirection(
            localRoot,
            direction,
            1.5
        )
    end
end

]====]local _Fa=[====[
-- ==========================================================
-- v7.0 All-Style Diagnostics + Conservative Learning Mode
-- ==========================================================
-- Low-register design: all persistent state/helpers live behind ONE table.
--
-- Learning safety:
--   * disabled by default;
--   * normal parry attacks only (never Wing Chun M2 counter);
--   * custom ParryFunction attacks are observed but never auto-learned;
--   * minimum 8 eligible outcomes before any decision;
--   * if success rate is already >= 80%, timing is considered stable;
--   * requires >= 3 misses and >= 35% miss rate;
--   * requires a consistent execution-error direction;
--   * changes only 0.002s (2ms) at a time;
--   * at least 4 new eligible samples between changes;
--   * total learned adjustment is clamped to +/-0.030s.
--
-- The learner intentionally refuses to guess when the data cannot tell whether
-- a miss was early or late.

local AdaptiveTiming = {
    Rows = {},
    ByRegData = {},
    RowByAnimKey = {},
    SnapByAnimKey = {},

    InputRegData = nil,
    PendingCustomRegData = nil,
    PendingCustomUntil = 0,

    Learned = rawget(_G, "__GakuranLearnedTimingValues") or {},
    History = {},
    Meta = {},

    Settings = {
        MinSamples = 8,
        WindowSamples = 12,
        MinMisses = 3,
        MinMissRate = 0.35,
        StableSuccessRate = 0.80,
        DriftThreshold = 0.012,
        ConsistencyRatio = 0.70,
        Step = 0.002,
        MaxAdjustment = 0.030,
        MinNewSamplesBetweenAdjustments = 4,
    },
}

_G.__GakuranLearnedTimingValues = AdaptiveTiming.Learned

function AdaptiveTiming.Fmt(value)
    if value == nil then
        return "-"
    end

    local numberValue = tonumber(value)
    if numberValue then
        return string.format("%.4f", numberValue)
    end

    return tostring(value)
end

function AdaptiveTiming.Style(attackConfig)
    return tostring(
        attackConfig
        and attackConfig.Style
        or "Unknown"
    )
end

function AdaptiveTiming.Attack(attackConfig, anim)
    return tostring(
        attackConfig
        and attackConfig.DisplayName
        or anim
        and anim.Name
        or "Unknown"
    )
end

function AdaptiveTiming.Key(attackConfig, anim)
    return AdaptiveTiming.Style(attackConfig)
        .. "|"
        .. AdaptiveTiming.Attack(attackConfig, anim)
end

function AdaptiveTiming.IsWingChunCounter(attackConfig)
    if not attackConfig then
        return false
    end

    local style = AdaptiveTiming.Style(attackConfig)
    local attack = AdaptiveTiming.Attack(attackConfig)

    return (style == "WingChun" or style == "WingChunAnims")
        and attack == "M2"
end

function AdaptiveTiming.DiagnosticsEnabled()
    if not GakuranExtraUI
        or not GakuranExtraUI.DiagToggle
        or not GakuranExtraUI.DiagToggle.Get then
        return true
    end

    return GakuranExtraUI.DiagToggle.Get() == true
end

function AdaptiveTiming.LearningEnabled()
    return GakuranExtraUI
        and GakuranExtraUI.LearningToggle
        and GakuranExtraUI.LearningToggle.Get
        and GakuranExtraUI.LearningToggle.Get() == true
end

function AdaptiveTiming.StyleSelected(attackConfig)
    local filter = GakuranExtraUI
        and GakuranExtraUI.DiagStyleFilter
        or "All Styles"

    if not filter
        or filter == ""
        or filter == "All"
        or filter == "All Styles" then
        return true
    end

    return AdaptiveTiming.Style(attackConfig) == tostring(filter)
end

function AdaptiveTiming.ShouldRecord(attackConfig)
    if not attackConfig then
        return false
    end

    -- Wing Chun M2 is a counter, not a normal parry timing sample.
    if AdaptiveTiming.IsWingChunCounter(attackConfig) then
        return false
    end

    if not AdaptiveTiming.StyleSelected(attackConfig) then
        return false
    end

    return AdaptiveTiming.DiagnosticsEnabled()
        or AdaptiveTiming.LearningEnabled()
end

function AdaptiveTiming.IsLearnable(attackConfig)
    if not attackConfig
        or AdaptiveTiming.IsWingChunCounter(attackConfig)
        or attackConfig.ParryFunction then
        return false
    end

    return true
end

function AdaptiveTiming.BaseReaction(attackConfig)
    return tonumber(
        attackConfig
        and (
            attackConfig.ReactionTime
            or attackConfig.DefaultReactionTime
        )
        or DefaultReactionTime
    ) or DefaultReactionTime
end

function AdaptiveTiming.StoredAdjustment(attackConfig, anim)
    local style = AdaptiveTiming.Style(attackConfig)
    local attack = AdaptiveTiming.Attack(attackConfig, anim)
    local styleTable = AdaptiveTiming.Learned[style]

    if not styleTable then
        return 0
    end

    return tonumber(styleTable[attack]) or 0
end

function AdaptiveTiming.GetAdjustment(attackConfig)
    if not AdaptiveTiming.LearningEnabled()
        or not AdaptiveTiming.IsLearnable(attackConfig) then
        return 0
    end

    return AdaptiveTiming.StoredAdjustment(attackConfig)
end

function AdaptiveTiming.SetAdjustment(attackConfig, value)
    local style = AdaptiveTiming.Style(attackConfig)
    local attack = AdaptiveTiming.Attack(attackConfig)

    AdaptiveTiming.Learned[style] =
        AdaptiveTiming.Learned[style] or {}

    AdaptiveTiming.Learned[style][attack] =
        math.clamp(
            tonumber(value) or 0,
            -AdaptiveTiming.Settings.MaxAdjustment,
            AdaptiveTiming.Settings.MaxAdjustment
        )

    _G.__GakuranLearnedTimingValues = AdaptiveTiming.Learned
end

function AdaptiveTiming.OnSnap(animKey, character, deltaYaw, blockStart, blockExpire)
    if not animKey then
        return
    end

    local snap = AdaptiveTiming.SnapByAnimKey[animKey] or {
        Used = true,
        Corrections = 0,
    }

    snap.Used = true
    snap.Target = tostring(character and character.Name or "?")
    snap.YawDegrees = math.deg(tonumber(deltaYaw) or 0)
    snap.BlockStart = blockStart
    snap.BlockExpire = blockExpire

    AdaptiveTiming.SnapByAnimKey[animKey] = snap

    local row = AdaptiveTiming.RowByAnimKey[animKey]
    if row then
        row.SnapUsed = true
        row.SnapTarget = snap.Target
        row.SnapYawDegrees = snap.YawDegrees
        row.SnapCorrections = snap.Corrections or 0
    end
end

function AdaptiveTiming.OnSnapCorrection(animKey)
    if not animKey then
        return
    end

    local snap =
        AdaptiveTiming.SnapByAnimKey[animKey]
        or {
            Used = true,
            Corrections = 0,
        }

    snap.Corrections =
        (snap.Corrections or 0) + 1

    AdaptiveTiming.SnapByAnimKey[animKey] = snap

    local row =
        AdaptiveTiming.RowByAnimKey[animKey]

    if row then
        row.SnapUsed = true
        row.SnapCorrections = snap.Corrections
    end
end

function AdaptiveTiming.NewRow(regData, attackConfig, anim, character, animKey)
    local learned = AdaptiveTiming.StoredAdjustment(attackConfig, anim)
    local applied = AdaptiveTiming.LearningEnabled()
        and AdaptiveTiming.IsLearnable(attackConfig)
        and learned
        or 0

    local baseReaction = AdaptiveTiming.BaseReaction(attackConfig)
    local snap = animKey and AdaptiveTiming.SnapByAnimKey[animKey] or nil

    local row = {
        Index = #AdaptiveTiming.Rows + 1,
        RegData = regData,
        AnimKey = animKey,

        Style = AdaptiveTiming.Style(attackConfig),
        Attack = AdaptiveTiming.Attack(attackConfig, anim),
        AnimationId = tostring(anim.AnimationId or "?"),
        Target = tostring(character and character.Name or "?"),

        BaseReaction = baseReaction,
        StoredLearnedAdjustment = learned,
        AppliedLearnedAdjustment = applied,
        EffectiveReaction = baseReaction + applied,

        FirstSeenClock = os.clock(),
        FirstSeenTrack = tonumber(anim.TimePosition) or 0,
        FirstSeenSpeed = tonumber(anim.Speed) or 1,
        LastTrack = tonumber(anim.TimePosition) or 0,
        LastSpeed = tonumber(anim.Speed) or 1,

        AnimationStart = regData and regData.StartTime or nil,
        BlockStart = regData and regData.BlockStart or nil,
        BlockExpire = regData and regData.BlockExpire or nil,

        CustomParryFunction = attackConfig.ParryFunction ~= nil,
        Learnable = AdaptiveTiming.IsLearnable(attackConfig),
        LearningState = "collecting",

        SnapUsed = snap and snap.Used == true or false,
        SnapTarget = snap and snap.Target or "-",
        SnapYawDegrees = snap and snap.YawDegrees or nil,
        SnapCorrections = snap and snap.Corrections or 0,

        Finalized = false,
    }

    table.insert(AdaptiveTiming.Rows, row)
    AdaptiveTiming.ByRegData[regData] = row

    if animKey then
        AdaptiveTiming.RowByAnimKey[animKey] = row
    end

    print(string.format(
        "[TIMING-DIAG][SEEN] #%d | %s | %s | Base=%s | Learned=%s | Effective=%s | Track=%s | Speed=%s | Snap=%s",
        row.Index,
        row.Style,
        row.Attack,
        AdaptiveTiming.Fmt(row.BaseReaction),
        AdaptiveTiming.Fmt(row.AppliedLearnedAdjustment),
        AdaptiveTiming.Fmt(row.EffectiveReaction),
        AdaptiveTiming.Fmt(row.FirstSeenTrack),
        AdaptiveTiming.Fmt(row.FirstSeenSpeed),
        tostring(row.SnapUsed)
    ))

    return row
end

function AdaptiveTiming.GetRow(regData, attackConfig, anim, character, animKey)
    if not AdaptiveTiming.ShouldRecord(attackConfig)
        or not regData then
        return nil
    end

    local row = AdaptiveTiming.ByRegData[regData]

    if row and row.Finalized and regData.DidALoop then
        row = nil
        AdaptiveTiming.ByRegData[regData] = nil
    end

    if not row then
        row = AdaptiveTiming.NewRow(
            regData,
            attackConfig,
            anim,
            character,
            animKey
        )
    end

    return row
end

function AdaptiveTiming.Observe(
    regData,
    attackConfig,
    anim,
    character,
    now,
    animKey
)
    local row = AdaptiveTiming.GetRow(
        regData,
        attackConfig,
        anim,
        character,
        animKey
    )

    if not row then
        return
    end

    row.LastObserveClock = now or os.clock()
    row.LastTrack = tonumber(anim.TimePosition) or row.LastTrack
    row.LastSpeed = tonumber(anim.Speed) or row.LastSpeed
    row.AnimationStart = regData.StartTime or row.AnimationStart
    row.BlockStart = regData.BlockStart or row.BlockStart
    row.BlockExpire = regData.BlockExpire or row.BlockExpire

    local snap = animKey and AdaptiveTiming.SnapByAnimKey[animKey] or nil
    if snap then
        row.SnapUsed = snap.Used == true
        row.SnapTarget = snap.Target or row.SnapTarget
        row.SnapYawDegrees = snap.YawDegrees or row.SnapYawDegrees
        row.SnapCorrections = snap.Corrections or row.SnapCorrections
    end
end

function AdaptiveTiming.MarkCustom(
    regData,
    attackConfig,
    anim,
    character,
    now,
    animKey
)
    local row = AdaptiveTiming.GetRow(
        regData,
        attackConfig,
        anim,
        character,
        animKey
    )

    if not row then
        return
    end

    row.CustomInvokedClock = now or os.clock()
    row.CustomInvokedRel = regData.StartTime
        and (row.CustomInvokedClock - regData.StartTime)
        or nil

    AdaptiveTiming.PendingCustomRegData = regData
    AdaptiveTiming.PendingCustomUntil = os.clock() + 1.50
end

function AdaptiveTiming.ResolveBlockRegData()
    if LastPendingRegData then
        local row = AdaptiveTiming.ByRegData[LastPendingRegData]
        if row and not row.Finalized then
            return LastPendingRegData
        end
    end

    if AdaptiveTiming.PendingCustomRegData
        and os.clock() <= AdaptiveTiming.PendingCustomUntil then

        local row =
            AdaptiveTiming.ByRegData[
                AdaptiveTiming.PendingCustomRegData
            ]

        if row and not row.Finalized then
            return AdaptiveTiming.PendingCustomRegData
        end
    end

    return nil
end

function AdaptiveTiming.OnBlockStart(startTime, holdFor)
    if not AdaptiveTiming.DiagnosticsEnabled()
        and not AdaptiveTiming.LearningEnabled() then
        return
    end

    local regData = AdaptiveTiming.ResolveBlockRegData()
    if not regData then
        return
    end

    local row = AdaptiveTiming.ByRegData[regData]
    if not row or row.Finalized then
        return
    end

    local now = os.clock()

    AdaptiveTiming.InputRegData = regData

    row.BlockCallClock = now
    row.BlockCallRel = regData.StartTime
        and (now - regData.StartTime)
        or nil

    row.RequestedBlockRel = (
        startTime
        and regData.StartTime
        and (startTime - regData.StartTime)
    ) or nil

    row.HoldFor = holdFor
    row.TrackAtTrigger = row.LastTrack
    row.SpeedAtTrigger = row.LastSpeed
    row.BlockStart = regData.BlockStart or row.BlockStart
    row.BlockExpire = regData.BlockExpire or row.BlockExpire
end

function AdaptiveTiming.OnInputRegistered(inputTime)
    local regData = AdaptiveTiming.InputRegData
    local row = regData and AdaptiveTiming.ByRegData[regData]

    if not row or row.Finalized then
        return
    end

    row.InputClock = inputTime
    row.InputRel = regData.StartTime
        and (inputTime - regData.StartTime)
        or nil

    if row.InputRel and row.RequestedBlockRel then
        row.TimingError =
            row.InputRel - row.RequestedBlockRel
    end
end

function AdaptiveTiming.OnParryRegistered(parryTime, inputLatency)
    local regData = AdaptiveTiming.InputRegData
    local row = regData and AdaptiveTiming.ByRegData[regData]

    if not row or row.Finalized then
        return
    end

    row.ParryRegisteredClock = parryTime
    row.ParryRegisteredRel = regData.StartTime
        and (parryTime - regData.StartTime)
        or nil

    row.InputLatency = inputLatency
end

function AdaptiveTiming.PushHistory(row)
    if not row
        or not row.Learnable
        or not row.InputRel
        or not row.RequestedBlockRel then
        return
    end

    if row.Outcome ~= "PARRY_SUCCESS"
        and row.Outcome ~= "WINDOW_EXCEEDED" then
        return
    end

    local key = row.Style .. "|" .. row.Attack
    AdaptiveTiming.History[key] =
        AdaptiveTiming.History[key] or {}

    local history = AdaptiveTiming.History[key]

    table.insert(history, {
        Success = row.Outcome == "PARRY_SUCCESS",
        Drift = row.InputRel - row.RequestedBlockRel,
    })

    while #history > 20 do
        table.remove(history, 1)
    end
end

function AdaptiveTiming.EvaluateLearning(row)
    if not AdaptiveTiming.LearningEnabled()
        or not row
        or not row.Learnable then
        return
    end

    local settings = AdaptiveTiming.Settings
    local key = row.Style .. "|" .. row.Attack
    local history = AdaptiveTiming.History[key]

    if not history
        or #history < settings.MinSamples then
        row.LearningState =
            "collecting "
            .. tostring(history and #history or 0)
            .. "/"
            .. tostring(settings.MinSamples)
        return
    end

    local sampleCount =
        math.min(#history, settings.WindowSamples)

    local startIndex = #history - sampleCount + 1
    local successCount = 0
    local missCount = 0
    local missDriftSum = 0
    local positiveMissDrift = 0
    local negativeMissDrift = 0

    for i = startIndex, #history do
        local sample = history[i]

        if sample.Success then
            successCount += 1
        else
            missCount += 1
            missDriftSum += sample.Drift

            if sample.Drift >= settings.DriftThreshold then
                positiveMissDrift += 1
            elseif sample.Drift <= -settings.DriftThreshold then
                negativeMissDrift += 1
            end
        end
    end

    local successRate = successCount / sampleCount
    local missRate = missCount / sampleCount

    if successRate >= settings.StableSuccessRate then
        row.LearningState =
            string.format("stable %.0f%%", successRate * 100)
        return
    end

    if missCount < settings.MinMisses
        or missRate < settings.MinMissRate then
        row.LearningState =
            string.format("watching %.0f%% success", successRate * 100)
        return
    end

    local meta = AdaptiveTiming.Meta[key] or {
        LastAdjustedSample = 0,
    }

    AdaptiveTiming.Meta[key] = meta

    if (#history - meta.LastAdjustedSample)
        < settings.MinNewSamplesBetweenAdjustments then
        row.LearningState = "waiting for more samples"
        return
    end

    local averageMissDrift = missDriftSum / missCount
    local dominantCount =
        math.max(positiveMissDrift, negativeMissDrift)

    local consistency = dominantCount / missCount

    if math.abs(averageMissDrift) < settings.DriftThreshold
        or consistency < settings.ConsistencyRatio then
        row.LearningState = "miss direction inconsistent"
        return
    end

    local current =
        AdaptiveTiming.StoredAdjustment({
            Style = row.Style,
            DisplayName = row.Attack,
        })

    local step = 0

    -- Positive drift means the real F event is consistently later than the
    -- requested timing on misses, so move the requested reaction slightly earlier.
    if averageMissDrift > 0 then
        step = -settings.Step
    elseif averageMissDrift < 0 then
        step = settings.Step
    end

    local newValue = math.clamp(
        current + step,
        -settings.MaxAdjustment,
        settings.MaxAdjustment
    )

    if math.abs(newValue - current) < 0.0001 then
        row.LearningState = "adjustment limit reached"
        return
    end

    AdaptiveTiming.SetAdjustment({
        Style = row.Style,
        DisplayName = row.Attack,
    }, newValue)

    meta.LastAdjustedSample = #history
    row.StoredLearnedAdjustment = newValue
    row.LearningState =
        string.format(
            "adjusted %+.3f -> total %+.3f",
            step,
            newValue
        )

    print(string.format(
        "[LEARNING] %s | %s | samples=%d success=%.0f%% missDrift=%+.4f | step=%+.3f | learned=%+.3f",
        row.Style,
        row.Attack,
        sampleCount,
        successRate * 100,
        averageMissDrift,
        step,
        newValue
    ))
end

function AdaptiveTiming.Finish(outcome, preferredRegData)
    local regData =
        preferredRegData or AdaptiveTiming.InputRegData

    local row =
        regData and AdaptiveTiming.ByRegData[regData]

    if not row or row.Finalized then
        return
    end

    row.Finalized = true
    row.Outcome = outcome
    row.EndClock = os.clock()

    if regData.StartTime then
        row.EndRel =
            row.EndClock - regData.StartTime
    end

    if row.InputRel and row.RequestedBlockRel then
        row.TimingError =
            row.InputRel - row.RequestedBlockRel
    end

    AdaptiveTiming.PushHistory(row)
    AdaptiveTiming.EvaluateLearning(row)

    print(string.format(
        "[TIMING-DIAG][RESULT] #%d | %s | %s | Outcome=%s | Base=%s | Learned=%s | Effective=%s | F=%s | Error=%s | Snap=%s | Corrections=%s | Learning=%s",
        row.Index,
        row.Style,
        row.Attack,
        tostring(outcome),
        AdaptiveTiming.Fmt(row.BaseReaction),
        AdaptiveTiming.Fmt(row.AppliedLearnedAdjustment),
        AdaptiveTiming.Fmt(row.EffectiveReaction),
        AdaptiveTiming.Fmt(row.InputRel),
        AdaptiveTiming.Fmt(row.TimingError),
        tostring(row.SnapUsed),
        tostring(row.SnapCorrections or 0),
        tostring(row.LearningState or "-")
    ))

    if AdaptiveTiming.InputRegData == regData then
        AdaptiveTiming.InputRegData = nil
    end

    if AdaptiveTiming.PendingCustomRegData == regData then
        AdaptiveTiming.PendingCustomRegData = nil
        AdaptiveTiming.PendingCustomUntil = 0
    end
end

function AdaptiveTiming.BuildClipboard()
    local lines = {
        table.concat({
            "Index",
            "Style",
            "Attack",
            "AnimationId",
            "Target",
            "BaseReaction",
            "StoredLearnedAdjustment",
            "AppliedLearnedAdjustment",
            "EffectiveReaction",
            "FirstSeenTrack",
            "FirstSeenSpeed",
            "BlockStartRel",
            "BlockExpireRel",
            "TrackAtTrigger",
            "SpeedAtTrigger",
            "RequestedBlockRel",
            "BlockCallRel",
            "InputRel",
            "TimingError",
            "ParryRegisteredRel",
            "InputLatency",
            "CustomParryFunction",
            "SnapUsed",
            "SnapTarget",
            "SnapYawDegrees",
            "SnapCorrections",
            "LearningState",
            "Outcome",
        }, "	")
    }

    for _, row in ipairs(AdaptiveTiming.Rows) do
        local animationStart = row.AnimationStart

        local blockStartRel = (
            animationStart
            and row.BlockStart
            and (row.BlockStart - animationStart)
        ) or nil

        local blockExpireRel = (
            animationStart
            and row.BlockExpire
            and (row.BlockExpire - animationStart)
        ) or nil

        table.insert(lines, table.concat({
            tostring(row.Index or ""),
            tostring(row.Style or ""),
            tostring(row.Attack or ""),
            tostring(row.AnimationId or ""),
            tostring(row.Target or ""),
            AdaptiveTiming.Fmt(row.BaseReaction),
            AdaptiveTiming.Fmt(row.StoredLearnedAdjustment),
            AdaptiveTiming.Fmt(row.AppliedLearnedAdjustment),
            AdaptiveTiming.Fmt(row.EffectiveReaction),
            AdaptiveTiming.Fmt(row.FirstSeenTrack),
            AdaptiveTiming.Fmt(row.FirstSeenSpeed),
            AdaptiveTiming.Fmt(blockStartRel),
            AdaptiveTiming.Fmt(blockExpireRel),
            AdaptiveTiming.Fmt(row.TrackAtTrigger),
            AdaptiveTiming.Fmt(row.SpeedAtTrigger),
            AdaptiveTiming.Fmt(row.RequestedBlockRel),
            AdaptiveTiming.Fmt(row.BlockCallRel),
            AdaptiveTiming.Fmt(row.InputRel),
            AdaptiveTiming.Fmt(row.TimingError),
            AdaptiveTiming.Fmt(row.ParryRegisteredRel),
            AdaptiveTiming.Fmt(row.InputLatency),
            tostring(row.CustomParryFunction == true),
            tostring(row.SnapUsed == true),
            tostring(row.SnapTarget or "-"),
            AdaptiveTiming.Fmt(row.SnapYawDegrees),
            tostring(row.SnapCorrections or 0),
            tostring(row.LearningState or "-"),
            tostring(row.Outcome or "INCOMPLETE"),
        }, "	"))
    end

    return table.concat(lines, string.char(10))
end

function AdaptiveTiming.BuildLearnedClipboard()
    local lines = {
        table.concat({
            "Style",
            "Attack",
            "LearnedAdjustment",
        }, "	")
    }

    local styles = {}
    for style in pairs(AdaptiveTiming.Learned) do
        table.insert(styles, style)
    end
    table.sort(styles)

    for _, style in ipairs(styles) do
        local attacks = {}
        for attack in pairs(AdaptiveTiming.Learned[style]) do
            table.insert(attacks, attack)
        end
        table.sort(attacks)

        for _, attack in ipairs(attacks) do
            table.insert(lines, table.concat({
                tostring(style),
                tostring(attack),
                AdaptiveTiming.Fmt(
                    AdaptiveTiming.Learned[style][attack]
                ),
            }, "	"))
        end
    end

    return table.concat(lines, string.char(10))
end

_G.__GakuranTimingDiagnosticsCopy = function()
    local output = AdaptiveTiming.BuildClipboard()

    if setclipboard then
        setclipboard(output)
        print(string.format(
            "[TIMING-DIAG] copied %d samples",
            #AdaptiveTiming.Rows
        ))
    else
        print(output)
    end
end

_G.__GakuranTimingDiagnosticsClear = function()
    table.clear(AdaptiveTiming.Rows)
    table.clear(AdaptiveTiming.ByRegData)
    table.clear(AdaptiveTiming.RowByAnimKey)
    table.clear(AdaptiveTiming.SnapByAnimKey)

    AdaptiveTiming.InputRegData = nil
    AdaptiveTiming.PendingCustomRegData = nil
    AdaptiveTiming.PendingCustomUntil = 0

    print("[TIMING-DIAG] cleared samples")
end

_G.__GakuranLearningReset = function()
    table.clear(AdaptiveTiming.Learned)
    table.clear(AdaptiveTiming.History)
    table.clear(AdaptiveTiming.Meta)
    _G.__GakuranLearnedTimingValues = AdaptiveTiming.Learned
    print("[LEARNING] reset all learned timing adjustments to 0")
end

_G.__GakuranLearningCopy = function()
    local output = AdaptiveTiming.BuildLearnedClipboard()

    if setclipboard then
        setclipboard(output)
        print("[LEARNING] copied learned timing adjustments")
    else
        print(output)
    end
end

_G.__GakuranTimingDiagnosticsGet = function()
    return AdaptiveTiming.Rows
end

]====]local _Ga=[====[

_G.__GakuranMinimalAutoRLoadAddon = function()

local PreviousAutoR = rawget(_G, "__GakuranAutoR")
if type(PreviousAutoR) == "table" and type(PreviousAutoR.Stop) == "function" then
    pcall(function()
        PreviousAutoR:Stop()
    end)
end

local AUTO_R_KEY = 0x52
local WING_CHUN_M2_NUMERIC_ID = "82196924299426"

-- Entire-script ignore for ENEMY Wing Chun M2.
--
-- The base Gakuran auto-parry and this addon both resolve opponent attacks
-- through GameConfig. Remove the Wing Chun M2 entry from that shared lookup so
-- the combined script does not parry, dodge, or Auto-R in response to that move.
--
-- IMPORTANT: this does NOT affect local R acknowledgement below. Our own Wing
-- Chun M2 animation is still recognized directly by animation id through
-- LocalTracker.AnimationAdded.
local IgnoredEnemyWingChunM2Configs = {}

local function RemoveEnemyWingChunM2FromGameConfig()
    if type(GameConfig) ~= "table" then
        return
    end

    for animationId, attackConfig in pairs(GameConfig) do
        local numericId = string.match(tostring(animationId or ""), "(%d+)$")
        if numericId == WING_CHUN_M2_NUMERIC_ID then
            IgnoredEnemyWingChunM2Configs[animationId] = attackConfig
            GameConfig[animationId] = nil
        end
    end
end

-- v7.2.4 merge: keep Wing Chun M2 in GameConfig so Fake Wiff still works.
-- Auto-R independently ignores enemy Wing Chun M2 in EvaluateTarget.
local AutoR = {
    Version = "v7.2.4-merge-health-safe",
    Enabled = true,

    -- Intentionally small config surface.
    Config = {
        WingChunOnly = true,

        -- Detection
        CycleRange = AutoParryRangeCycle or 20,
        HitRange = AutoParryRange or 10,
        RequireAttackerFacing = true,
        AttackerFacingDot = -0.05,

        -- Timing
        -- Try R early. If this early window is missed, do nothing and allow the
        -- untouched base auto-parry to handle the attack normally.
        RLeadSeconds = 0.260,
        RLateCutoff = 0.080,
        DetectionLatency = ConstLatency or 0.018,

        -- Input
        -- One synthetic tap was not consistently accepted in live fights.
        -- Each Auto-R decision now sends a short burst of discrete R taps and
        -- stops immediately once the game acknowledges Wing Chun R.
        RBurstTaps = 3,
        RBurstTapHold = 0.010,
        RBurstGap = 0.010,

        -- Only used when a later Auto-R attempt is repeatedly blocked by the
        -- base parry's Blocking state. Normal/first-use behavior remains the
        -- exact v5.3 6-tap path.
        BlockingRecoveryDelay = 0.080,
        BlockingRecoveryTaps = 4,
        BlockingRecoveryPostImpact = 0.100,

        -- v5.7 defense-input priority. The base script's synthetic F/Dodge
        -- keypresses are intercepted BEFORE its callbacks are connected.
        PreferROverDefense = false,
        PriorityRTaps = 3,
        PriorityFallbackDelay = 0.035,

        -- If proactive Auto-R already started before the base defense moment,
        -- hold that F/Dodge briefly too. Successful R deletes the queued defense;
        -- failed/unacknowledged R releases it as a fail-safe.
        -- Preserve the v5.9 fail-open rule: an already-active proactive R never
        -- delays a real F/Dodge request from the original auto-parry.
        HoldDefenseForActiveR = false,
        ActiveRDefenseHoldDelay = 0.040,

        MinimumAttemptInterval = 0.180,
        AcknowledgementTimeout = 0.240,
        MaxAttemptsPerAttack = 2,
        RetryInterval = 0.040,

        -- Cooldown: trust the live M2Cooldown flag first. If it stays true past
        -- the known Wing Chun cooldown, treat only our local READ of it as stale.
        -- This never writes or clears the game's attribute.
        CooldownSeconds = 7.50,
        CooldownGraceSeconds = 0.35,

        -- Work budget
        -- 0.18s could consume almost the entire early-R window when an opponent
        -- entered range just after a refresh. Keep this light but more responsive.
        TargetRefreshInterval = 0.120,
        ScanInterval = 0.025,
        MaxTargets = 6,
        MaxTrackPosition = 1.50,
    },
}

_G.__GakuranAutoR = AutoR

local Runtime = {
    targets = {},
    tracks = {},
    nextTargetRefreshAt = 0,
    nextScanAt = 0,
    nextCleanupAt = 0,

    connection = nil,
    localAnimationConnection = nil,

    localCharacterAddress = nil,
    rInFlight = false,
    rToken = 0,
    activeAttempt = nil,

    keyHeld = false,
    lastAttemptAt = -math.huge,
    lastSuccessAt = -math.huge,

    cooldownSeen = false,
    cooldownStartedAt = nil,
    staleCooldownReads = 0,
    lastBlockedReason = nil,

    detected = 0,
    dispatched = 0,
    physicalRTaps = 0,
    acknowledged = 0,
    timedOut = 0,

    priorityInputSeen = 0,
    priorityFSeen = 0,
    priorityDodgeSeen = 0,
    priorityAttempts = 0,
    priorityAcknowledged = 0,
    priorityFallbacks = 0,
    priorityDodgeKey = nil,
    priorityLiveCooldownPassThrough = 0,

    defenseQueuedBehindR = 0,
    defenseSuppressedByR = 0,
    defenseReplayedBehindR = 0,

    watchdogActive = true,
    watchdogResets = 0,
    watchdogInvalidEpisode = false,
    nextWatchdogAt = 0,

    status = "ready",
}

local function NormalizeStyle(value)
    if type(value) ~= "string" then
        return ""
    end
    return string.lower(string.gsub(value, "[%s_%-]", ""))
end

local function GetCharacterStyle(character)
    local playerData = character and character:FindFirstChild("PlayerData")
    return playerData and playerData:GetAttribute("CombatStyle") or nil
end

local function NumericAnimationId(value)
    return string.match(tostring(value or ""), "(%d+)$")
end

local function IsWingChunRAnimation(value)
    return NumericAnimationId(value) == WING_CHUN_M2_NUMERIC_ID
end

local function AttrTrue(character, name)
    return character ~= nil and character:GetAttribute(name) == true
end

local function FlatUnit(vector)
    local flat = Vector3.new(vector.X, 0, vector.Z)
    local magnitude = flat.Magnitude
    if magnitude <= 0.0001 then
        return nil
    end
    return flat / magnitude
end

-- The remote base source and this addon are concatenated into one Luau chunk.
-- If the base defines a top-level local DodgeKey, this closure resolves that
-- exact lexical value; otherwise it safely falls back to nil.
pcall(function()
    local candidate = DodgeKey
    if candidate ~= nil then
        Runtime.priorityDodgeKey = candidate
    end
end)

local function ReleaseR()
    if not Runtime.keyHeld then
        return
    end
    Runtime.keyHeld = false
    pcall(keyrelease, AUTO_R_KEY)
end

local function ReplayDefenseInput(defense)
    if not defense or not defense.rawPress then
        return
    end

    if defense.kind == "F" then
        pcall(defense.rawPress, defense.key)
        task.delay(0.060, function()
            pcall(defense.rawRelease, defense.key)
        end)
    else
        task.spawn(function()
            for _ = 1, 6 do
                pcall(defense.rawPress, defense.key)
                pcall(defense.rawRelease, defense.key)
            end
        end)
    end
end

local function QueueDefenseBehindActiveR(attempt, key, isF, rawPress, rawRelease)
    if not attempt or attempt.priorityFromDefense then
        return false
    end

    -- Base Dodge often repeats the same key many times. Capture one defense
    -- request only and swallow the duplicates while R gets its short priority.
    if attempt.pendingDefense then
        return true
    end

    local defense = {
        key = key,
        kind = isF and "F" or "dodge",
        rawPress = rawPress,
        rawRelease = rawRelease,
        queuedAt = os.clock(),
    }

    attempt.pendingDefense = defense
    Runtime.defenseQueuedBehindR = Runtime.defenseQueuedBehindR + 1
    Runtime.status = "holding defense for active R"

    local token = attempt.token
    task.delay(AutoR.Config.ActiveRDefenseHoldDelay, function()
        local current = Runtime.activeAttempt
        if not current
            or current.token ~= token
            or current.priorityFromDefense
            or current.pendingDefense ~= defense
        then
            return
        end

        -- R still has not acknowledged. Preserve the original defense instead of
        -- waiting for the much longer general R acknowledgement timeout.
        current.pendingDefense = nil
        Runtime.defenseReplayedBehindR = Runtime.defenseReplayedBehindR + 1
        Runtime.status = "active R slow -> defense fallback"
        ReplayDefenseInput(defense)
    end)

    return true
end

local function ClearAttempt(reason)
    local attempt = Runtime.activeAttempt
    if attempt and attempt.track and attempt.track.dispatchToken == attempt.token then
        attempt.track.dispatchToken = nil
    end

    Runtime.activeAttempt = nil
    Runtime.rInFlight = false
    Runtime.status = reason or "ready"
    ReleaseR()
end

local function AcknowledgeR(source)
    local attempt = Runtime.activeAttempt
    if not attempt or not Runtime.rInFlight then
        return
    end

    if attempt.track and attempt.track.dispatchToken == attempt.token then
        attempt.track.dispatchToken = nil
        attempt.track.attempted = true
        attempt.track.resolution = "R accepted: " .. tostring(source)
    end

    Runtime.acknowledged = Runtime.acknowledged + 1
    if attempt.priorityFromDefense then
        Runtime.priorityAcknowledged = Runtime.priorityAcknowledged + 1
    elseif attempt.pendingDefense then
        -- This is the behavior the v5.7 counters exposed as missing:
        -- proactive R succeeded, so the parallel F/Dodge must NOT also happen.
        Runtime.defenseSuppressedByR = Runtime.defenseSuppressedByR + 1
        attempt.pendingDefense = nil
    end

    local acknowledgedAt = os.clock()
    Runtime.lastSuccessAt = acknowledgedAt

    -- Restart the LOCAL cooldown clock after every confirmed R, even if the
    -- replicated M2Cooldown flag was already stuck true before this activation.
    -- This prevents stale-flag recovery from allowing repeated R spam.
    Runtime.cooldownStartedAt = acknowledgedAt
    Runtime.cooldownSeen = LocalPlayer.Character
        and LocalPlayer.Character:GetAttribute("M2Cooldown") == true
        or Runtime.cooldownSeen

    Runtime.status = "R accepted"
    ClearAttempt("ready")
end

local function GetCooldownAge(now)
    if not Runtime.cooldownStartedAt then
        return 0
    end
    return math.max(0, now - Runtime.cooldownStartedAt)
end

local function IsCooldownBlocking(character, now)
    local age = GetCooldownAge(now)
    local staleAfter = AutoR.Config.CooldownSeconds + AutoR.Config.CooldownGraceSeconds

    -- The game does not always replicate M2Cooldown. Keep the confirmed local
    -- cooldown authoritative for its known duration instead of deleting it on
    -- the next heartbeat and repeatedly stealing F/Dodge moments with R.
    if Runtime.cooldownStartedAt ~= nil and age < AutoR.Config.CooldownSeconds then
        return true, string.format(
            "local R cooldown %.2f/%.2fs",
            age,
            AutoR.Config.CooldownSeconds
        )
    end

    if not character or character:GetAttribute("M2Cooldown") ~= true then
        if Runtime.cooldownStartedAt ~= nil and age >= AutoR.Config.CooldownSeconds then
            Runtime.cooldownStartedAt = nil
        end
        return false, "cooldown clear"
    end

    -- If we just attached while already on cooldown, ResetTracking starts the
    -- timer at load/character change. That is intentionally conservative.
    if Runtime.cooldownStartedAt == nil or age < staleAfter then
        return true, string.format("M2 cooldown %.2f/%.2fs", age, staleAfter)
    end

    -- Important: do NOT SetAttribute(false). We merely stop trusting a replicated
    -- flag that has remained true longer than the expected cooldown.
    return false, "stale M2 cooldown ignored"
end

local function IsHardBlocked(character, humanoid, now)
    if not character or not humanoid or humanoid.Health <= 0 then
        return true, "no live character"
    end

    -- Only hard, reliable gates. Do not use CombatAttacking, CantAnything,
    -- Stunned, ParryAttackLockout, or BlockAttackLockout here because live
    -- testing showed those can outlive the actual input restriction.
    local cooldownBlocked, cooldownReason = IsCooldownBlocking(character, now)
    if cooldownBlocked then
        return true, cooldownReason
    end
    if AttrTrue(character, "GuardBroken") then
        return true, "GuardBroken"
    end
    if AttrTrue(character, "Ragdoll") then
        return true, "Ragdoll"
    end
    if AttrTrue(character, "Blocking") then
        return true, "Blocking"
    end
    if character:GetAttribute("Grappling") == true then
        return true, "Grappling"
    end
    if character:GetAttribute("Equip") == false then
        return true, "unequipped"
    end
    if character:GetAttribute("Greenzone") == true
        or character:GetAttribute("RpCombatLocked") == true
    then
        return true, "combat disabled"
    end

    return false, "ready"
end

local function IsRAvailable(character, humanoid, now, ignoreBlocking)
    local function Reject(reason)
        Runtime.lastBlockedReason = reason
        return false, reason
    end

    if Runtime.rInFlight then
        return Reject("R in flight")
    end

    if now - Runtime.lastAttemptAt < AutoR.Config.MinimumAttemptInterval then
        return Reject("attempt debounce")
    end

    local blocked, reason = IsHardBlocked(character, humanoid, now)
    if blocked then
        if not (ignoreBlocking and reason == "Blocking") then
            return Reject(reason)
        end
    end

    local focusOk, focused = pcall(isrbxactive)
    if focusOk and not focused then
        return Reject("Roblox not focused")
    end

    local heldOk, held = pcall(iskeypressed, AUTO_R_KEY)
    if heldOk and held then
        return Reject("R already held")
    end

    local cooldownReason = character:GetAttribute("M2Cooldown") == true
        and "stale M2 cooldown ignored"
        or "ready"

    Runtime.lastBlockedReason = nil
    if cooldownReason == "stale M2 cooldown ignored" then
        Runtime.staleCooldownReads = Runtime.staleCooldownReads + 1
    end
    return true, cooldownReason
end

local function CollectTargets(localRoot)
    if not localRoot then
        Runtime.targets = {}
        return
    end

    local candidates = {}
    -- The UI's R range is authoritative. The base CycleRange can still expand
    -- collection, but it can no longer silently make a larger R range ineffective.
    local collectionRange = math.max(
        tonumber(AutoR.Config.CycleRange) or 0,
        tonumber(AutoR.Config.HitRange) or 0
    )

    for _, player in ipairs(Players:GetPlayers()) do
        if player.UserId ~= LocalPlayer.UserId then
            local character = player.Character
            local root = character and character:FindFirstChild("HumanoidRootPart")
            local humanoid = character and character:FindFirstChildOfClass("Humanoid")

            if root and humanoid and humanoid.Health > 0 then
                local distance = (root.Position - localRoot.Position).Magnitude
                if distance <= collectionRange then
                    candidates[#candidates + 1] = {
                        userId = player.UserId,
                        name = player.Name,
                        character = character,
                        characterAddress = character.Address,
                        root = root,
                        distance = distance,
                    }
                end
            end
        end
    end

    table.sort(candidates, function(a, b)
        return a.distance < b.distance
    end)

    local limited = {}
    local count = math.min(#candidates, AutoR.Config.MaxTargets)
    for index = 1, count do
        limited[index] = candidates[index]
    end

    Runtime.targets = limited
end

local function GetTrackKey(target, animation)
    return tostring(target.userId)
        .. ":" .. tostring(target.characterAddress)
        .. ":" .. tostring(animation.Address or animation.AnimationId)
        .. ":" .. tostring(animation.AnimationId)
end

local function BeginOrUpdateTrack(target, animation, now)
    local key = GetTrackKey(target, animation)
    local position = tonumber(animation.TimePosition) or 0
    local speed = tonumber(animation.Speed) or 1

    if speed <= 0.01
        or position < 0
        or position > AutoR.Config.MaxTrackPosition
    then
        return nil
    end

    local state = Runtime.tracks[key]

    if not state then
        local observedElapsed = math.max(
            AutoR.Config.DetectionLatency,
            position / speed
        )

        state = {
            startedAt = now - observedElapsed,
            lastPosition = position,
            lastSeenAt = now,
            attempted = false,
            dispatchToken = nil,
            attempts = 0,
            nextRetryAt = 0,
            blockingSince = nil,
            resolution = nil,
        }

        Runtime.tracks[key] = state
        Runtime.detected = Runtime.detected + 1

    elseif position + 0.01 < state.lastPosition
        or now - state.lastSeenAt > 0.12
    then
        -- AnimationTrack object reused for a later swing.
        state.startedAt = now - (position / speed)
        state.attempted = false
        state.dispatchToken = nil
        state.attempts = 0
        state.nextRetryAt = 0
        state.blockingSince = nil
        state.resolution = nil
    end

    state.lastPosition = position
    state.lastSeenAt = now

    return state, key
end

local function IsAttackFacingUs(localRoot, attackerRoot)
    if not AutoR.Config.RequireAttackerFacing then
        return true
    end

    local towardUs = FlatUnit(localRoot.Position - attackerRoot.Position)
    local attackerForward = FlatUnit(attackerRoot.CFrame.LookVector)

    if not towardUs or not attackerForward then
        return true
    end

    return attackerForward:Dot(towardUs) >= AutoR.Config.AttackerFacingDot
end

local function EvaluateTarget(target, localRoot, now)
    local character = target.character
    local attackerRoot = target.root
    local attackerHumanoid =
        character and character:FindFirstChildOfClass("Humanoid")

    if not character
        or not attackerRoot
        or not attackerHumanoid
        or attackerHumanoid.Health <= 0
    then
        return nil
    end

    local distance = (attackerRoot.Position - localRoot.Position).Magnitude
    if distance > AutoR.Config.HitRange then
        return nil
    end

    if not IsAttackFacingUs(localRoot, attackerRoot) then
        return nil
    end

    local activeAnimations = AnimationTracker:Update(character)
    if not activeAnimations or #activeAnimations == 0 then
        return nil
    end

    local best = nil

    for _, animation in ipairs(activeAnimations) do
        local animationId = animation.AnimationId and tostring(animation.AnimationId) or nil
        local attackConfig = animationId and GameConfig[animationId] or nil

        -- Secondary safety filter. The shared GameConfig entry is already removed
        -- above so base parry/dodge also ignore enemy Wing Chun M2; keep this check
        -- in case another module restores/rebuilds GameConfig later at runtime.
        if attackConfig and not IsWingChunRAnimation(animationId) then
            local state, attackKey = BeginOrUpdateTrack(target, animation, now)

            if state
                and not state.attempted
                and not state.dispatchToken
                and state.attempts < AutoR.Config.MaxAttemptsPerAttack
                and now >= state.nextRetryAt
            then
                local impactAt = CalculateParryTiming(
                    attackConfig,
                    state.startedAt,
                    character
                )

                if impactAt then
                    local triggerAt = impactAt - AutoR.Config.RLeadSeconds
                    local cutoffAt = impactAt - AutoR.Config.RLateCutoff
                    local activeCutoffAt = cutoffAt

                    -- Do not alter the normal/first-use timing. Only if this exact
                    -- attack already hit the Blocking gate may it remain eligible
                    -- briefly after the normal cutoff while the base block settles.
                    if state.blockingSince then
                        activeCutoffAt = math.max(
                            activeCutoffAt,
                            impactAt + AutoR.Config.BlockingRecoveryPostImpact
                        )
                    end

                    if now >= triggerAt and now <= activeCutoffAt then
                        local candidate = {
                            state = state,
                            attackKey = attackKey,
                            impactAt = impactAt,
                            distance = distance,
                            attacker = target.name,
                            move = attackConfig.DisplayName or animationId,
                            targetCharacter = character,
                            targetHumanoid = attackerHumanoid,
                        }

                        if not best or candidate.impactAt < best.impactAt then
                            best = candidate
                        end
                    elseif now > cutoffAt then
                        -- This attack is now too late for R. Do not mark it as an
                        -- R failure; simply leave it to the original auto-parry.
                        state.attempted = true
                        state.resolution = "too late for R; base parry owns it"
                    end
                end
            end
        end
    end

    return best
end

local function DispatchR(character, humanoid, candidate, now)
    local targetHumanoid = candidate and candidate.targetHumanoid
    local targetCharacter = candidate and candidate.targetCharacter

    if not targetCharacter
        or not targetCharacter.Parent
        or not targetHumanoid
        or targetHumanoid.Health <= 0
    then
        if candidate and candidate.state then
            candidate.state.attempted = true
            candidate.state.resolution = "target died before R"
        end

        Runtime.status = "target died before R"
        return false
    end

    local state = candidate.state
    local recoveryMode = false

    local available, reason = IsRAvailable(character, humanoid, now, false)

    if not available and reason == "Blocking" then
        state.blockingSince = state.blockingSince or now
        local blockedFor = now - state.blockingSince

        if blockedFor >= AutoR.Config.BlockingRecoveryDelay then
            -- Manual testing showed rapid R spam can be accepted while/just as
            -- base Blocking clears. Bypass ONLY this one gate after a short wait.
            -- Cooldown, ragdoll, equip, grapple, focus, etc. still block normally.
            available, reason = IsRAvailable(character, humanoid, now, true)
            recoveryMode = available == true
        end
    elseif available then
        -- Normal path is exactly the v5.3 first-use path.
        state.blockingSince = nil
    end

    if not available then
        state.nextRetryAt = now + AutoR.Config.RetryInterval
        state.resolution = "R unavailable: " .. tostring(reason)
        Runtime.status = tostring(reason)
        return false
    end

    Runtime.rToken = Runtime.rToken + 1
    local token = Runtime.rToken

    candidate.state.attempts = candidate.state.attempts + 1
    candidate.state.dispatchToken = token
    candidate.state.nextRetryAt = now + AutoR.Config.RetryInterval
    candidate.state.resolution = "R sent; awaiting acknowledgement"

    Runtime.rInFlight = true
    Runtime.lastAttemptAt = now
    Runtime.activeAttempt = {
        token = token,
        sentAt = now,
        track = candidate.state,
        candidate = candidate,
        recoveryMode = recoveryMode,
        cooldownWasActiveAtStart = character:GetAttribute("M2Cooldown") == true,
    }

    Runtime.dispatched = Runtime.dispatched + 1
    Runtime.status = recoveryMode and "R blocking-recovery burst" or "R burst sent"

    -- Fire several discrete taps instead of one long hold. The game can reject
    -- an individual synthetic input depending on the exact combat frame, while
    -- a short burst behaves much closer to the user's successful manual spam.
    -- This runs in its own task so Auto-R detection and the original F parry loop
    -- are never blocked.
    local burstTapCount = recoveryMode
        and AutoR.Config.BlockingRecoveryTaps
        or AutoR.Config.RBurstTaps

    task.spawn(function()
        for tapIndex = 1, burstTapCount do
            local attempt = Runtime.activeAttempt
            if not Runtime.rInFlight
                or not attempt
                or attempt.token ~= token
            then
                break
            end

            local liveTargetHumanoid =
                attempt.candidate and attempt.candidate.targetHumanoid

            local liveTargetCharacter =
                attempt.candidate and attempt.candidate.targetCharacter

            if not liveTargetCharacter
                or not liveTargetCharacter.Parent
                or not liveTargetHumanoid
                or liveTargetHumanoid.Health <= 0
            then
                if attempt.track then
                    attempt.track.attempted = true
                    attempt.track.dispatchToken = nil
                    attempt.track.resolution = "target died during R"
                end

                Runtime.activeAttempt = nil
                Runtime.rInFlight = false
                Runtime.status = "target died during R"
                ReleaseR()
                break
            end

            local pressed, pressError = pcall(keypress, AUTO_R_KEY)
            if not pressed then
                Runtime.status = "R tap failed: " .. tostring(pressError)
                break
            end

            Runtime.keyHeld = true
            Runtime.physicalRTaps = Runtime.physicalRTaps + 1

            task.wait(AutoR.Config.RBurstTapHold)
            ReleaseR()

            -- Acknowledgement can arrive while the key is being held/released.
            attempt = Runtime.activeAttempt
            if not Runtime.rInFlight
                or not attempt
                or attempt.token ~= token
            then
                break
            end

            if tapIndex < burstTapCount then
                task.wait(AutoR.Config.RBurstGap)
            end
        end
    end)

    task.delay(AutoR.Config.AcknowledgementTimeout, function()
        local attempt = Runtime.activeAttempt
        if not attempt or attempt.token ~= token then
            return
        end

        Runtime.timedOut = Runtime.timedOut + 1

        if attempt.pendingDefense then
            local defense = attempt.pendingDefense
            attempt.pendingDefense = nil
            Runtime.defenseReplayedBehindR = Runtime.defenseReplayedBehindR + 1
            ReplayDefenseInput(defense)
        end

        if attempt.track and attempt.track.dispatchToken == token then
            attempt.track.dispatchToken = nil
            attempt.track.resolution = "R not acknowledged"
            -- Do not consume the attack unless the bounded attempt count is done.
            if attempt.track.attempts >= AutoR.Config.MaxAttemptsPerAttack then
                attempt.track.attempted = true
            else
                attempt.track.nextRetryAt = os.clock() + AutoR.Config.RetryInterval
            end
        end

        Runtime.activeAttempt = nil
        Runtime.rInFlight = false
        Runtime.status = "R not acknowledged"
        ReleaseR()
    end)

    return true
end

-- v7.2.4 merge: no defense-priority hook.
-- Original 7.2.4 keeps full ownership of F/Q; Auto-R only presses R.

local function CleanupTracks(now)
    if now < Runtime.nextCleanupAt then
        return
    end

    Runtime.nextCleanupAt = now + 0.50

    for key, state in pairs(Runtime.tracks) do
        if now - state.lastSeenAt > 0.70 then
            Runtime.tracks[key] = nil
        end
    end
end

function AutoR:SetEnabled(enabled, fromUi)
    local value = enabled == true

    if not fromUi
        and self.Toggle
        and self.Toggle.Get
        and self.Toggle:Get() ~= value
    then
        self.Toggle:Set(value)
        return
    end

    self.Enabled = value

    if not value then
        Runtime.rToken = Runtime.rToken + 1
        Runtime.rInFlight = false
        Runtime.activeAttempt = nil
        Runtime.tracks = {}
        Runtime.targets = {}
        ReleaseR()
        Runtime.status = "disabled"
    else
        Runtime.status = "ready"
    end
end

function AutoR:ResetTracking()
    Runtime.rToken = Runtime.rToken + 1
    Runtime.rInFlight = false
    Runtime.activeAttempt = nil
    Runtime.tracks = {}
    Runtime.targets = {}
    Runtime.nextTargetRefreshAt = 0
    Runtime.nextScanAt = 0
    Runtime.cooldownSeen = LocalPlayer.Character
        and LocalPlayer.Character:GetAttribute("M2Cooldown") == true
        or false
    Runtime.cooldownStartedAt = Runtime.cooldownSeen and os.clock() or nil
    Runtime.lastBlockedReason = nil
    ReleaseR()
    Runtime.status = self.Enabled and "ready" or "disabled"
end

function AutoR:GetRuntimeState()
    return {
        version = self.Version,
        enabled = self.Enabled,
        status = Runtime.status,
        targets = #Runtime.targets,
        detected = Runtime.detected,
        dispatched = Runtime.dispatched,
        physicalRTaps = Runtime.physicalRTaps,
        acknowledged = Runtime.acknowledged,
        timedOut = Runtime.timedOut,
        priorityInputSeen = Runtime.priorityInputSeen,
        priorityFSeen = Runtime.priorityFSeen,
        priorityDodgeSeen = Runtime.priorityDodgeSeen,
        priorityAttempts = Runtime.priorityAttempts,
        priorityAcknowledged = Runtime.priorityAcknowledged,
        priorityFallbacks = Runtime.priorityFallbacks,
        priorityDodgeKey = Runtime.priorityDodgeKey,
        priorityLiveCooldownPassThrough = Runtime.priorityLiveCooldownPassThrough,
        defenseQueuedBehindR = Runtime.defenseQueuedBehindR,
        defenseSuppressedByR = Runtime.defenseSuppressedByR,
        defenseReplayedBehindR = Runtime.defenseReplayedBehindR,
        watchdogActive = Runtime.watchdogActive,
        watchdogResets = Runtime.watchdogResets,
        rInFlight = Runtime.rInFlight,
        cooldownAge = GetCooldownAge(os.clock()),
        cooldownFallbackAfter = AutoR.Config.CooldownSeconds + AutoR.Config.CooldownGraceSeconds,
        staleCooldownReads = Runtime.staleCooldownReads,
        lastBlockedReason = Runtime.lastBlockedReason,
        ignoredEnemyWingChunM2Entries = (function()
            local count = 0
            for _ in pairs(IgnoredEnemyWingChunM2Configs) do
                count = count + 1
            end
            return count
        end)(),
        collectionRange = math.max(
            tonumber(AutoR.Config.CycleRange) or 0,
            tonumber(AutoR.Config.HitRange) or 0
        ),
        m2Cooldown = LocalPlayer.Character
            and LocalPlayer.Character:GetAttribute("M2Cooldown")
            or nil,
    }
end

function AutoR:Stop()
    self.Enabled = false
    Runtime.watchdogActive = false
    Runtime.rToken = Runtime.rToken + 1
    Runtime.rInFlight = false
    Runtime.activeAttempt = nil
    ReleaseR()

    if Runtime.connection then
        Runtime.connection:Disconnect()
        Runtime.connection = nil
    end

    if Runtime.localAnimationConnection then
        Runtime.localAnimationConnection:Disconnect()
        Runtime.localAnimationConnection = nil
    end

    Runtime.targets = {}
    Runtime.tracks = {}
    Runtime.status = "unloaded"

    if rawget(_G, "__GakuranDefensePriorityInput") ~= nil then
        _G.__GakuranDefensePriorityInput = nil
    end

    if rawget(_G, "__GakuranAutoR") == self then
        _G.__GakuranAutoR = nil
    end
end

-- Minimal UI: only the settings that materially affect R.
local AutoR_Tab = UI_Window:Tab("Auto R", "shield")
local AutoR_Main = AutoR_Tab:Section(
    "Minimal Auto-R",
    "Left",
    "R only; original auto-parry/F is untouched"
)
local AutoR_Status = AutoR_Tab:Section("Status", "Right")

AutoR.Toggle = AutoR_Main:Toggle("Auto R", true, function(on)
    AutoR:SetEnabled(on, true)
end)

AutoR_Main:Label("R only. Auto Parry keeps full control of F/Q.")

AutoR_Main:Slider(
    "R range",
    AutoR.Config.HitRange,
    0.5,
    4,
    15,
    " studs",
    function(value)
        AutoR.Config.HitRange = value
    end
)

AutoR_Main:Slider(
    "R early lead",
    AutoR.Config.RLeadSeconds,
    0.01,
    0.15,
    0.40,
    "s",
    function(value)
        AutoR.Config.RLeadSeconds = value
    end
)

AutoR_Main:Slider(
    "R cooldown fallback",
    AutoR.Config.CooldownSeconds,
    0.05,
    6.0,
    9.0,
    "s",
    function(value)
        AutoR.Config.CooldownSeconds = value
    end
)

AutoR_Status:Button("Print Auto-R status", function()
    local state = AutoR:GetRuntimeState()
    print(
        "[Gakuran Minimal Auto-R]",
        "status=" .. tostring(state.status),
        "targets=" .. tostring(state.targets),
        "detected=" .. tostring(state.detected),
        "R bursts/taps/ack/timeout="
            .. tostring(state.dispatched)
            .. "/"
            .. tostring(state.physicalRTaps)
            .. "/"
            .. tostring(state.acknowledged)
            .. "/"
            .. tostring(state.timedOut),
        "M2Cooldown=" .. tostring(state.m2Cooldown),
        "rInFlight=" .. tostring(state.rInFlight),
        "watchdog="
            .. (state.watchdogActive and "active" or "stopped")
            .. " resets="
            .. tostring(state.watchdogResets),
        "cooldownAge=" .. string.format("%.2f/%.2f", state.cooldownAge, state.cooldownFallbackAfter),
        "RRange/collect=" .. string.format("%.1f/%.1f", AutoR.Config.HitRange, state.collectionRange),
        "lastBlocked=" .. tostring(state.lastBlockedReason),
        "ignoredEnemyWingChunM2="
            .. tostring(state.ignoredEnemyWingChunM2Entries),
        "priority seen F/Dodge="
            .. tostring(state.priorityInputSeen)
            .. " "
            .. tostring(state.priorityFSeen)
            .. "/"
            .. tostring(state.priorityDodgeSeen),
        "priority R ack/fallback="
            .. tostring(state.priorityAttempts)
            .. "/"
            .. tostring(state.priorityAcknowledged)
            .. "/"
            .. tostring(state.priorityFallbacks),
        "liveCooldown passThrough="
            .. tostring(state.priorityLiveCooldownPassThrough),
        "activeR defense hold="
            .. tostring(state.defenseQueuedBehindR)
            .. "/"
            .. tostring(state.defenseSuppressedByR)
            .. "/"
            .. tostring(state.defenseReplayedBehindR)
            .. " queued/suppressed/replayed",
        "dodgeKey=" .. tostring(state.priorityDodgeKey)
    )
end)

-- Event acknowledgement only. No per-frame playing-track polling.
if LocalTracker and LocalTracker.AnimationAdded then
    Runtime.localAnimationConnection = LocalTracker.AnimationAdded:Connect(function(animation)
        if not animation or not IsWingChunRAnimation(animation.AnimationId) then
            return
        end

        if Runtime.rInFlight then
            AcknowledgeR("Wing Chun animation")
        end
    end)
end

Runtime.connection = RunService.Heartbeat:Connect(function()
    local now = os.clock()
    local character = LocalPlayer.Character
    local root = character and character:FindFirstChild("HumanoidRootPart")
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")

    -- Integrated stability watchdog. Respawn, death, or unequipping can destroy
    -- the character while a delayed acknowledgement/fallback still owns R. Clear
    -- that stale attempt once per invalid-character episode so no key or queued
    -- defense remains wedged after the character becomes usable again.
    if now >= Runtime.nextWatchdogAt then
        Runtime.nextWatchdogAt = now + 0.25
        local invalid = not character
            or not root
            or not humanoid
            or humanoid.Health <= 0
            or character:GetAttribute("Equip") == false

        if invalid and Runtime.rInFlight and not Runtime.watchdogInvalidEpisode then
            Runtime.watchdogInvalidEpisode = true
            Runtime.watchdogResets = Runtime.watchdogResets + 1
            AutoR:ResetTracking()
            pcall(keyrelease, AUTO_R_KEY)
            Runtime.status = "watchdog cleared stale R state"
        elseif Runtime.rInFlight
            and now - Runtime.lastAttemptAt
                > AutoR.Config.AcknowledgementTimeout + 0.12
        then
            Runtime.watchdogResets = Runtime.watchdogResets + 1
            AutoR:ResetTracking()
            pcall(keyrelease, AUTO_R_KEY)
            Runtime.status = "watchdog cleared expired R attempt"
        elseif not invalid then
            Runtime.watchdogInvalidEpisode = false
        end
    end

    local characterAddress = character and character.Address or nil
    if characterAddress ~= Runtime.localCharacterAddress then
        Runtime.localCharacterAddress = characterAddress
        AutoR:ResetTracking()
    end

    -- Cooldown edge is the second acknowledgement path and also starts the
    -- read-only stale-cooldown timer.
    local onCooldown = character and character:GetAttribute("M2Cooldown") == true or false
    local wasOnCooldown = Runtime.cooldownSeen

    if onCooldown and (not wasOnCooldown or Runtime.cooldownStartedAt == nil) then
        Runtime.cooldownStartedAt = now
    end

    if Runtime.rInFlight
        and Runtime.activeAttempt
        and onCooldown
        and not wasOnCooldown
        and not Runtime.activeAttempt.cooldownWasActiveAtStart
    then
        AcknowledgeR("M2 cooldown")
    end
    Runtime.cooldownSeen = onCooldown

    if not AutoR.Enabled then
        return
    end

    if not character or not root or not humanoid or humanoid.Health <= 0 then
        Runtime.status = "waiting for character"
        return
    end

    if character:GetAttribute("Equip") == false then
        Runtime.status = "waiting for equip"
        return
    end

    if AutoR.Config.WingChunOnly
        and NormalizeStyle(GetCharacterStyle(character)) ~= "wingchun"
    then
        Runtime.status = "waiting for Wing Chun"
        return
    end

    if now >= Runtime.nextTargetRefreshAt then
        Runtime.nextTargetRefreshAt = now + AutoR.Config.TargetRefreshInterval
        CollectTargets(root)
    end

    if now < Runtime.nextScanAt then
        return
    end
    Runtime.nextScanAt = now + AutoR.Config.ScanInterval

    local deadCachedTarget = false

    for index = 1, #Runtime.targets do
        local cached = Runtime.targets[index]
        local cachedCharacter = cached and cached.character
        local cachedHumanoid =
            cachedCharacter
            and cachedCharacter:FindFirstChildOfClass("Humanoid")

        if not cachedCharacter
            or not cachedCharacter.Parent
            or not cachedHumanoid
            or cachedHumanoid.Health <= 0
        then
            deadCachedTarget = true
            break
        end
    end

    if deadCachedTarget then
        CollectTargets(root)
        Runtime.nextTargetRefreshAt =
            now + AutoR.Config.TargetRefreshInterval
    end

    local best = nil

    for index = 1, #Runtime.targets do
        local candidate = EvaluateTarget(Runtime.targets[index], root, now)
        if candidate and (not best or candidate.impactAt < best.impactAt) then
            best = candidate
        end
    end

    if best then
        DispatchR(character, humanoid, best, now)
    end

    CleanupTracks(now)

    if not Runtime.rInFlight then
        local cooldownBlocked, cooldownReason = IsCooldownBlocking(character, now)
        if cooldownBlocked then
            Runtime.status = cooldownReason
        elseif character:GetAttribute("M2Cooldown") == true then
            Runtime.status = "ready (stale cooldown ignored)"
        else
            Runtime.status = "ready"
        end
    end
end)

print(
    "[Gakuran AP Share] loaded v7.2.4 Auto-R addon "
        .. AutoR.Version
        .. " (R-only; health-safe targeting)"
)

end

local __autoROk, __autoRError =
    pcall(_G.__GakuranMinimalAutoRLoadAddon)

_G.__GakuranMinimalAutoRLoadAddon = nil

if not __autoROk then
    local __partialAutoR = rawget(_G, "__GakuranAutoR")

    if type(__partialAutoR) == "table"
        and type(__partialAutoR.Stop) == "function" then

        pcall(function()
            __partialAutoR:Stop()
        end)
    end

    warn(
        "[Gakuran AP Share] Auto-R addon failed; base v7.2.4 remains active: "
            .. tostring(__autoRError)
    )
end

]====]local function _Ha(_Ia,_Ja,_Ka)local _La,_Ma=string.find(_Ia,_Ja,1,true)if not _La then return nil end return string.sub(_Ia,1,_La-1).._Ka..string.sub(_Ia,_Ma+1)end local _Na=game:HttpGet(_va)local _Oa=string.char(108,111,99,97,108,32,75,110,111,119,110,79,102,102,115,101,116,115,32,61,32,123)_Na=_Ha(_Na,_Oa,_xa.._Oa)if not _Na then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,97,110,105,109,97,116,105,111,110,32,116,114,97,99,107,101,114,32,102,111,114,109,97,116,32,99,104,97,110,103,101,100))return end local _Pa=[[            local liveTime = GetTimePosition(address) or info.TimePosition
            info.TimePosition = liveTime]]_Na=_Ha(_Na,_Pa,[[            local liveTime = GetTimePosition(address) or info.TimePosition
            info.TimePosition = liveTime
            local liveSpeed = memory_read("float", address + KnownOffsets.Speed)
            if liveSpeed then
                info.Speed = liveSpeed
            end]])if not _Na then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,97,110,105,109,97,116,105,111,110,32,116,114,97,99,107,101,114,32,115,112,101,101,100,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100))return end local _Qa=game:HttpGet(_ua)local _Ra=[[local URL = "https://raw.githubusercontent.com/artxficial/matchastuff/main/animationtracker.lua"
local ImportAnimationTracker = loadstring(game:HttpGet(URL))()]]local _Sa=string.char(108,111,99,97,108,32,73,109,112,111,114,116,65,110,105,109,97,116,105,111,110,84,114,97,99,107,101,114,32,61,32,108,111,97,100,115,116,114,105,110,103,40)..string.format(string.char(37,113),_Na)..string.char(41,40,41)_Qa=_Ha(_Qa,_Ra,_Sa)if not _Qa then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,97,117,116,111,45,112,97,114,114,121,32,116,114,97,99,107,101,114,32,105,109,112,111,114,116,32,102,111,114,109,97,116,32,99,104,97,110,103,101,100))return end local _Ta=string.char(71,97,109,101,67,111,110,102,105,103,32,61,32,70,108,97,116,116,101,110,101,100,67,111,110,102,105,103)_Qa=_Ha(_Qa,_Ta,_Ta.._ya.._za)if not _Qa then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,102,108,97,116,116,101,110,101,100,32,71,97,109,101,67,111,110,102,105,103,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100))return end do local _Ua=0 _Qa,_Ua=string.gsub(_Qa,string.char(105,102,37,115,43,67,104,97,114,97,99,116,101,114,37,46,67,108,97,115,115,78,97,109,101,37,115,42,61,61,37,115,42,34,77,111,100,101,108,34,37,115,43,97,110,100,37,115,43,67,104,97,114,97,99,116,101,114,58,70,105,110,100,70,105,114,115,116,67,104,105,108,100,87,104,105,99,104,73,115,65,37,40,34,72,117,109,97,110,111,105,100,34,37,41,37,115,43,116,104,101,110),[[local targetHumanoid =
            Character:FindFirstChildWhichIsA("Humanoid")

        if Character.ClassName == "Model"
            and targetHumanoid
            and targetHumanoid.Health > 0 then]],1)if _Ua==0 then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,116,97,114,103,101,116,45,112,111,111,108,32,104,101,97,108,116,104,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100))return end print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,116,97,114,103,101,116,45,112,111,111,108,32,104,101,97,108,116,104,32,99,104,101,99,107,32,112,97,116,99,104,101,100))end do local _Va=[[local function EvaluateCharacter(character, localCharacter, localRoot, currentActiveIds)
    -- CHARACTER VALIDATION]]local _Wa=[[local function EvaluateCharacter(character, localCharacter, localRoot, currentActiveIds)
    -- CHARACTER VALIDATION
    local targetHumanoid =
        character
        and character:FindFirstChildWhichIsA("Humanoid")

    if not targetHumanoid
        or targetHumanoid.Health <= 0 then
        return
    end]]_Qa=_Ha(_Qa,_Va,_Wa)if not _Qa then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,65,80,32,104,101,97,108,116,104,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100))return end print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,65,80,32,104,101,97,108,116,104,32,99,104,101,99,107,32,112,97,116,99,104,101,100))end local _Xa=0 _Qa,_Xa=string.gsub(_Qa,string.char(105,102,37,115,43,118,37,115,42,126,61,37,115,42,68,101,102,97,117,108,116,82,101,97,99,116,105,111,110,84,105,109,101,37,115,43,116,104,101,110,37,115,43,73,110,102,111,37,46,82,101,97,99,116,105,111,110,84,105,109,101,37,115,42,61,37,115,42,118,37,115,43,101,110,100),string.char(73,110,102,111,46,82,101,97,99,116,105,111,110,84,105,109,101,32,61,32,118),1)if _Xa==0 then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,119,97,114,110,105,110,103,58,32,114,101,97,99,116,105,111,110,32,115,108,105,100,101,114,32,99,97,108,108,98,97,99,107,32,112,97,116,99,104,32,115,107,105,112,112,101,100,59,32,99,111,110,116,105,110,117,105,110,103))else print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,114,101,97,99,116,105,111,110,32,115,108,105,100,101,114,32,99,97,108,108,98,97,99,107,32,112,97,116,99,104,101,100))end local _Ya=[[    if not AnimationRegistry[animKey] then
        local adjustedNow = now - ConstLatency -- - currentTrackTime
        local BlockStart, BlockExpire = CalculateParryTiming(attackConfig, adjustedNow, TargetCharacter)]]_Qa=_Ha(_Qa,_Ya,[[    if not AnimationRegistry[animKey] then
        local playbackSpeed = math.abs(tonumber(anim.Speed) or 1)
        if playbackSpeed < 0.05 then playbackSpeed = 1 end
        local elapsedReal = math.max(tonumber(currentTrackTime) or 0, 0) / playbackSpeed
        local adjustedNow = now - elapsedReal - ConstLatency
        local BlockStart, BlockExpire = CalculateParryTiming(attackConfig, adjustedNow, TargetCharacter)]])if not _Qa then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,97,110,105,109,97,116,105,111,110,32,114,101,103,105,115,116,114,121,32,115,116,97,114,116,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100))return end local _Za=0 _Qa,_Za=string.gsub(_Qa,string.char(108,111,99,97,108,37,115,43,66,108,111,99,107,83,116,97,114,116,44,37,115,42,66,108,111,99,107,69,120,112,105,114,101,37,115,42,61,37,115,42,67,97,108,99,117,108,97,116,101,80,97,114,114,121,84,105,109,105,110,103,37,40,37,115,42,97,116,116,97,99,107,67,111,110,102,105,103,44,37,115,42,110,111,119,37,115,42,37,45,37,115,42,99,117,114,114,101,110,116,84,114,97,99,107,84,105,109,101,44,37,115,42,84,97,114,103,101,116,67,104,97,114,97,99,116,101,114,37,115,42,37,41),[[local playbackSpeed = math.abs(tonumber(anim.Speed) or 1)
        if playbackSpeed < 0.05 then playbackSpeed = 1 end
        local elapsedReal = math.max(tonumber(currentTrackTime) or 0, 0) / playbackSpeed
        local adjustedNow = now - elapsedReal - ConstLatency
        local BlockStart, BlockExpire = CalculateParryTiming(attackConfig, adjustedNow, TargetCharacter)]],1)local _ab=0 if _Za>0 then _Qa,_ab=string.gsub(_Qa,string.char(114,101,103,68,97,116,97,37,46,83,116,97,114,116,84,105,109,101,37,115,42,61,37,115,42,110,111,119,37,115,42,37,45,37,115,42,67,111,110,115,116,76,97,116,101,110,99,121,91,94,13,10,93,42),string.char(114,101,103,68,97,116,97,46,83,116,97,114,116,84,105,109,101,32,61,32,97,100,106,117,115,116,101,100,78,111,119),1)end if _Za==0 then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,119,97,114,110,105,110,103,58,32,97,110,105,109,97,116,105,111,110,32,114,101,103,105,115,116,114,121,32,108,111,111,112,32,116,105,109,105,110,103,32,112,97,116,99,104,32,115,107,105,112,112,101,100,59,32,99,111,110,116,105,110,117,105,110,103))elseif _ab==0 then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,119,97,114,110,105,110,103,58,32,97,110,105,109,97,116,105,111,110,32,114,101,103,105,115,116,114,121,32,108,111,111,112,32,83,116,97,114,116,84,105,109,101,32,112,97,116,99,104,32,115,107,105,112,112,101,100,59,32,99,111,110,116,105,110,117,105,110,103))else print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,97,110,105,109,97,116,105,111,110,32,114,101,103,105,115,116,114,121,32,108,111,111,112,32,116,105,109,105,110,103,32,112,97,116,99,104,101,100))end _Qa=_Ha(_Qa,string.char(108,111,99,97,108,32,72,101,105,103,104,116,84,111,103,103,108,101),string.char(108,111,99,97,108,32,72,101,105,103,104,116,84,111,103,103,108,101,10,108,111,99,97,108,32,71,97,107,117,114,97,110,69,120,116,114,97,85,73,32,61,32,123,125))if not _Qa then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,83,110,97,112,32,76,111,99,107,32,115,116,97,116,101,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100))return end local _bb=[[local Config_Tab = UI_Window:Tab("Style Configurations", "swords")]]_Qa=_Ha(_Qa,_bb,_bb..[[
local Blatant_Tab = UI_Window:Tab("Combat", "swords")]])if not _Qa then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,67,111,109,98,97,116,32,116,97,98,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100))return end local _cb=[[local Folders_Section   = AP_Tab:Section("Folders", "Right")]]_Qa=_Ha(_Qa,_cb,_cb..[[
local Combat_Section = Blatant_Tab:Section("Combat", "Left")
local Movement_Section = Blatant_Tab:Section("Movement", "Left")
local Performance_Section = Blatant_Tab:Section("Performance", "Right")
local TimingDiag_Section = Blatant_Tab:Section("Timing", "Right")]])if not _Qa then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,67,111,109,98,97,116,32,115,101,99,116,105,111,110,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100))return end local _db=[[    HeightToggle = AP_Section:Toggle("Height Multiplier (May crash some users)", true)]]_Qa=_Ha(_Qa,_db,_db..[[
    -- Combat
    GakuranExtraUI.SnapToggle =
        Combat_Section:Toggle("Snap Lock", false)
    GakuranExtraUI.SnapToggle:AddKeybind("h", "Toggle")
    Combat_Section:Label("Keeps you facing them until F goes off. Bind: H")

    GakuranExtraUI.CriticalDefenseMode = "Default"
    local criticalDefenseDropdown = Combat_Section:Dropdown(
        "Crit Defense",
        nil,
        {
            "Normal",
            "50/50 F/Q",
            "Q CD = F",
        },
        false,
        function(list)
            local shown = list and list[1] or "Normal"

            if shown == "50/50 F/Q" then
                GakuranExtraUI.CriticalDefenseMode =
                    "50/50 Parry/Dodge"
            elseif shown == "Q CD = F" then
                GakuranExtraUI.CriticalDefenseMode =
                    "Dash CD -> Parry"
            else
                GakuranExtraUI.CriticalDefenseMode =
                    "Default"
            end
        end
    )
    criticalDefenseDropdown:Set({"Normal"})

    GakuranExtraUI.CriticalDashCooldownEstimate = 2.00
    local criticalDashCooldownSlider = Combat_Section:Slider(
        "Q Cooldown",
        0,
        0.05,
        0.25,
        3.00,
        "s",
        function(v)
            GakuranExtraUI.CriticalDashCooldownEstimate = v
        end
    )
    criticalDashCooldownSlider:Set(2.00)

    GakuranExtraUI.WingChunCounterEscape =
        Combat_Section:Toggle(
            "Wing Chun Counter Fake Wiff",
            false
        )

    GakuranExtraUI.WingChunEscapeHold = 0.18
    local wingChunEscapeSlider = Combat_Section:Slider(
        "Fake Wiff Time",
        0,
        0.01,
        0.08,
        0.35,
        "s",
        function(v)
            GakuranExtraUI.WingChunEscapeHold = v
        end
    )
    wingChunEscapeSlider:Set(0.18)
    Combat_Section:Label("Turns your M1 away from Wing Chun M2 so the counter misses.")

    GakuranExtraUI.CriticalAimLock =
        Combat_Section:Toggle("Crit Aim", false)

    GakuranExtraUI.CriticalAimRange = 12
    local criticalAimRangeSlider = Combat_Section:Slider(
        "Crit Aim Range",
        12,
        1,
        4,
        30,
        "studs",
        function(v)
            GakuranExtraUI.CriticalAimRange = v
        end
    )
    criticalAimRangeSlider:Set(12)
    Combat_Section:Label("Faces your target while your R/crit is playing.")

    -- Movement
    Movement_Section:Label("Z = Shadow Step | B = Shadow Crit")

    GakuranExtraUI.ShadowStepFDelay = 0.000
    GakuranExtraUI.ShadowStepHold = 0.035
    GakuranExtraUI.ShadowCriticalDelay = 0.255
    GakuranExtraUI.ShadowCriticalHold = 0.080

    GakuranExtraUI.ShadowFDelaySlider = Movement_Section:Slider(
        "Q > F Delay", 0, 0.005, 0, 0.080, "s",
        function(v)
            GakuranExtraUI.ShadowStepFDelay = v
        end
    )
    GakuranExtraUI.ShadowFDelaySlider:Set(0.000)

    GakuranExtraUI.ShadowHoldSlider = Movement_Section:Slider(
        "Q+F Hold", 0, 0.005, 0.010, 0.120, "s",
        function(v)
            GakuranExtraUI.ShadowStepHold = v
        end
    )
    GakuranExtraUI.ShadowHoldSlider:Set(0.035)

    GakuranExtraUI.ShadowCriticalDelaySlider = Movement_Section:Slider(
        "R Delay", 0, 0.005, 0.030, 0.300, "s",
        function(v)
            GakuranExtraUI.ShadowCriticalDelay = v
        end
    )
    GakuranExtraUI.ShadowCriticalDelaySlider:Set(0.255)

    GakuranExtraUI.ShadowCriticalHoldSlider = Movement_Section:Slider(
        "R Hold", 0, 0.005, 0.030, 0.200, "s",
        function(v)
            GakuranExtraUI.ShadowCriticalHold = v
        end
    )
    GakuranExtraUI.ShadowCriticalHoldSlider:Set(0.080)

    GakuranExtraUI.ShadowStepAction =
        Movement_Section:Toggle("Shadow Step", false)

    GakuranExtraUI.ShadowStepAction:AddKeybind(
        "z",
        "Hold",
        function(active)
            if not active then return end

            if not GakuranExtraUI.ShadowStepAction
                or not GakuranExtraUI.ShadowStepAction.Get
                or not GakuranExtraUI.ShadowStepAction:Get() then
                return
            end

            local fn = rawget(_G, "__GakuranShadowStep")
            if fn then
                fn()
            else
                print("[Shadow Step] runtime is not ready")
            end
        end
    )

    GakuranExtraUI.ShadowCriticalAction =
        Movement_Section:Toggle("Shadow Crit", false)

    GakuranExtraUI.ShadowCriticalAction:AddKeybind(
        "b",
        "Hold",
        function(active)
            if not active then return end

            if not GakuranExtraUI.ShadowCriticalAction
                or not GakuranExtraUI.ShadowCriticalAction.Get
                or not GakuranExtraUI.ShadowCriticalAction:Get() then
                return
            end

            local fn = rawget(_G, "__GakuranShadowStepCritical")
            if fn then
                fn()
            else
                print("[Shadow Step] critical runtime is not ready")
            end
        end
    )

    -- Performance
    GakuranExtraUI.LowLagMode =
        Performance_Section:Toggle("Low Lag Mode", true)
    Performance_Section:Label("Cuts extra ESP and scan work.")

    -- Timing
    TimingDiag_Section:Label("Records F timing by style. Wing Chun M2 is skipped.")

    local timingStyleOptions = {"All Styles"}
    local timingStyleSeen = {}

    for _, timingInfo in pairs(GameConfig) do
        if type(timingInfo) == "table" and timingInfo.Style then
            local timingStyleName = tostring(timingInfo.Style)
            if not timingStyleSeen[timingStyleName] then
                timingStyleSeen[timingStyleName] = true
                table.insert(timingStyleOptions, timingStyleName)
            end
        end
    end

    table.sort(timingStyleOptions, function(a, b)
        if a == b then return false end
        if a == "All Styles" then return true end
        if b == "All Styles" then return false end
        return a < b
    end)

    GakuranExtraUI.DiagStyleFilter = "All Styles"
    local timingStyleDropdown = TimingDiag_Section:Dropdown(
        "Style",
        nil,
        timingStyleOptions,
        false,
        function(list)
            GakuranExtraUI.DiagStyleFilter =
                list and list[1] or "All Styles"
        end
    )
    timingStyleDropdown:Set({"All Styles"})

    GakuranExtraUI.DiagToggle =
        TimingDiag_Section:Toggle("Record Timing", false)

    TimingDiag_Section:Button("Copy Results", function()
        local fn = rawget(_G, "__GakuranTimingDiagnosticsCopy")
        if fn then
            fn()
        else
            print("[TIMING-DIAG] diagnostics runtime is not ready")
        end
    end)

    TimingDiag_Section:Button("Clear Results", function()
        local fn = rawget(_G, "__GakuranTimingDiagnosticsClear")
        if fn then
            fn()
        end
    end)

    TimingDiag_Section:Divider("Timing Learner")
    TimingDiag_Section:Label("Learns small F timing fixes after enough parries.")

    GakuranExtraUI.LearningToggle =
        TimingDiag_Section:Toggle("Timing Learner", false)

    TimingDiag_Section:Button("Copy Learned Timings", function()
        local fn = rawget(_G, "__GakuranLearningCopy")
        if fn then
            fn()
        end
    end)

    TimingDiag_Section:Button("Reset Learned Timings", function()
        local fn = rawget(_G, "__GakuranLearningReset")
        if fn then
            fn()
        end
    end)]])if not _Qa then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,67,111,109,98,97,116,32,85,73,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100))return end local _eb=string.char(108,111,99,97,108,32,102,117,110,99,116,105,111,110,32,69,118,97,108,117,97,116,101,67,104,97,114,97,99,116,101,114,40,99,104,97,114,97,99,116,101,114,44,32,108,111,99,97,108,67,104,97,114,97,99,116,101,114,44,32,108,111,99,97,108,82,111,111,116,44,32,99,117,114,114,101,110,116,65,99,116,105,118,101,73,100,115,41)_Qa=_Ha(_Qa,_eb,_Ba.._eb)if not _Qa then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,102,114,97,109,101,32,99,97,99,104,101,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100))return end local _fb=[[    -- ANIMATION LOOP
    local activeAnimations = AnimationTracker:Update(character)
    if not activeAnimations or #activeAnimations == 0 then return end]]_Qa=_Ha(_Qa,_fb,[[    -- ANIMATION LOOP
    local activeAnimations = GetFrameAnimations(character)
    if not activeAnimations or #activeAnimations == 0 then return end]])if not _Qa then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,69,118,97,108,117,97,116,101,67,104,97,114,97,99,116,101,114,32,116,114,97,99,107,101,114,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100))return end local _gb=[[        -- Fetch active animations using your AnimationTracker system
        local activeAnimations = AnimationTracker:Update(character) or {}]]_Qa=_Ha(_Qa,_gb,[[        -- Reuse this frame's target animation snapshot when available.
        local activeAnimations = GetFrameAnimations(character) or {}]])if not _Qa then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,69,83,80,32,116,114,97,99,107,101,114,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100))return end local _hb=string.char(108,111,99,97,108,32,102,117,110,99,116,105,111,110,32,82,101,115,101,116,80,97,114,114,121,83,116,97,116,101,40,41)_Qa=_Ha(_Qa,_hb,_Fa.._hb)if not _Qa then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,116,105,109,105,110,103,32,100,105,97,103,110,111,115,116,105,99,115,32,114,117,110,116,105,109,101,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100))return end local _ib=[[    local regData = UpdateAnimationRegistry(animKey, anim, now, anim.TimePosition or 0, attackConfig, character)
    if regData.Processed then return end]]_Qa=_Ha(_Qa,_ib,[[    local regData = UpdateAnimationRegistry(animKey, anim, now, anim.TimePosition or 0, attackConfig, character)
    AdaptiveTiming.Observe(regData, attackConfig, anim, character, now, animKey)
    if regData.Processed then return end]])if not _Qa then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,116,105,109,105,110,103,32,100,105,97,103,110,111,115,116,105,99,115,32,69,118,97,108,117,97,116,101,65,110,105,109,97,116,105,111,110,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100))return end local _jb=[[           attackConfig.ParryFunction({]]_Qa=_Ha(_Qa,_jb,[[           AdaptiveTiming.MarkCustom(regData, attackConfig, anim, character, now, animKey)
           attackConfig.ParryFunction({]])if not _Qa then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,116,105,109,105,110,103,32,100,105,97,103,110,111,115,116,105,99,115,32,99,117,115,116,111,109,45,112,97,114,114,121,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100))return end local _kb=[[    local HoldFor = HoldFor or BlockHoldTime]]_Qa=_Ha(_Qa,_kb,[[    AdaptiveTiming.OnBlockStart(StartTime, HoldFor)
    local HoldFor = HoldFor or BlockHoldTime]])if not _Qa then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,116,105,109,105,110,103,32,100,105,97,103,110,111,115,116,105,99,115,32,66,108,111,99,107,83,116,97,114,116,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100))return end local _lb=[[        InputRegisteredTime = os.clock()
        TransitionToState(ParryState.INPUT_PENDING)]]_Qa=_Ha(_Qa,_lb,[[        InputRegisteredTime = os.clock()
        AdaptiveTiming.OnInputRegistered(InputRegisteredTime)
        TransitionToState(ParryState.INPUT_PENDING)]])if not _Qa then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,116,105,109,105,110,103,32,100,105,97,103,110,111,115,116,105,99,115,32,105,110,112,117,116,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100))return end local _mb=[[        ParryRegisteredTime = os.clock()
        InputLatency = os.clock() - InputRegisteredTime]]_Qa=_Ha(_Qa,_mb,[[        ParryRegisteredTime = os.clock()
        InputLatency = os.clock() - InputRegisteredTime
        AdaptiveTiming.OnParryRegistered(ParryRegisteredTime, InputLatency)]])if not _Qa then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,116,105,109,105,110,103,32,100,105,97,103,110,111,115,116,105,99,115,32,114,101,103,105,115,116,101,114,101,100,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100))return end local _nb=[[        LastPendingRegData.Success = true]]_Qa=_Ha(_Qa,_nb,[[        LastPendingRegData.Success = true
        AdaptiveTiming.Finish("PARRY_SUCCESS", LastPendingRegData)]])if not _Qa then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,116,105,109,105,110,103,32,100,105,97,103,110,111,115,116,105,99,115,32,115,117,99,99,101,115,115,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100))return end local _ob=[[local function OnParryingAnimationFailed()
    if CurrentParryState == ParryState.INPUT_PENDING then]]_Qa=_Ha(_Qa,_ob,[[local function OnParryingAnimationFailed()
    if CurrentParryState == ParryState.INPUT_PENDING then
        AdaptiveTiming.Finish("PARRY_ANIM_FAILED", AdaptiveTiming.InputRegData)]])if not _Qa then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,116,105,109,105,110,103,32,100,105,97,103,110,111,115,116,105,99,115,32,102,97,105,108,117,114,101,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100))return end local _pb=[[local function OnWindowExceeded()
    if CurrentParryState == ParryState.PARRYING then]]_Qa=_Ha(_Qa,_pb,[[local function OnWindowExceeded()
    if CurrentParryState == ParryState.PARRYING then
        AdaptiveTiming.Finish("WINDOW_EXCEEDED", AdaptiveTiming.InputRegData)]])if not _Qa then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,116,105,109,105,110,103,32,100,105,97,103,110,111,115,116,105,99,115,32,119,105,110,100,111,119,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100))return end do local _qb=[[        return stateFolder:GetAttribute("CurrentHeight")]]local _rb=_Ha(_Qa,_qb,[[        local heightValue =
            stateFolder
            and stateFolder:GetAttribute("CurrentHeight")

        if type(heightValue) == "number"
            and heightValue > 0 then
            return math.clamp(heightValue, 0.65, 1.45)
        end

        return 1]])if _rb then _Qa=_rb print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,97,102,101,32,104,101,105,103,104,116,32,112,97,116,99,104,101,100))else print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,119,97,114,110,105,110,103,58,32,115,97,102,101,32,104,101,105,103,104,116,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100,59,32,99,111,110,116,105,110,117,105,110,103,32,119,105,116,104,111,117,116,32,104,101,105,103,104,116,32,115,97,102,101,116,121,32,112,97,116,99,104))end end do local _sb=[[function Dodge()
    --keyrelease(DodgeKey)]]_Qa=_Ha(_Qa,_sb,[[function Dodge()
    if GakuranExtraUI
        and GakuranExtraUI.CombatAssist
        and GakuranExtraUI.CombatAssist.MarkDodge then
        GakuranExtraUI.CombatAssist.MarkDodge("AutoDodge")
    end
    --keyrelease(DodgeKey)]])if not _Qa then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,100,111,100,103,101,32,116,114,97,99,107,105,110,103,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100))return end end do local _tb=[[    if attackConfig.Jump then]]local _ub=_Ha(_Qa,_tb,[[    if isHeavy
        and GakuranExtraUI
        and GakuranExtraUI.CombatAssist
        and GakuranExtraUI.CombatAssist.HandleHeavy
        and GakuranExtraUI.CombatAssist.HandleHeavy(
            regData,
            attackConfig
        ) then
        -- handled by optional Critical Defense mode
    elseif attackConfig.Jump then]])if _ub then _Qa=_ub print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,99,114,105,116,105,99,97,108,32,100,101,102,101,110,115,101,32,112,97,116,99,104,101,100))else print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,119,97,114,110,105,110,103,58,32,99,114,105,116,105,99,97,108,32,100,101,102,101,110,115,101,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100,59,32,99,111,110,116,105,110,117,105,110,103,32,119,105,116,104,32,100,101,102,97,117,108,116,32,99,114,105,116,105,99,97,108,32,104,97,110,100,108,105,110,103))end end do local _vb=[[    local regData = UpdateAnimationRegistry(animKey, anim, now, anim.TimePosition or 0, attackConfig, character)
    AdaptiveTiming.Observe(regData, attackConfig, anim, character, now, animKey)
    if regData.Processed then return end]]_Qa=_Ha(_Qa,_vb,[[    local regData = UpdateAnimationRegistry(animKey, anim, now, anim.TimePosition or 0, attackConfig, character)
    AdaptiveTiming.Observe(regData, attackConfig, anim, character, now, animKey)

    if GakuranExtraUI
        and GakuranExtraUI.CombatAssist
        and GakuranExtraUI.CombatAssist.IsWingChunCounter
        and GakuranExtraUI.CombatAssist.IsWingChunCounter(
            attackConfig
        ) then

        if GakuranExtraUI.CombatAssist.HandleWingChunCounter then
            GakuranExtraUI.CombatAssist.HandleWingChunCounter(
                character,
                localCharacter,
                localRoot,
                attackConfig,
                anim
            )
        end

        return
    end

    if regData.Processed then return end]])if not _Qa then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,87,105,110,103,32,67,104,117,110,32,99,111,117,110,116,101,114,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100))return end end do local _wb=[[UIS.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessedEvent then warn("NO") return end]]_Qa=_Ha(_Qa,_wb,[[UIS.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessedEvent then warn("NO") return end

    if input.KeyCode == string.byte("q")
        and GakuranExtraUI
        and GakuranExtraUI.CombatAssist
        and GakuranExtraUI.CombatAssist.MarkDodge then

        GakuranExtraUI.CombatAssist.MarkDodge("ManualQ")
    end]])if not _Qa then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,109,97,110,117,97,108,32,100,97,115,104,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100))return end end do local _xb=[[        ProcessEspAndLogging()]]_Qa=_Ha(_Qa,_xb,[[        if not (
            GakuranExtraUI
            and GakuranExtraUI.LowLagMode
            and GakuranExtraUI.LowLagMode.Get
            and GakuranExtraUI.LowLagMode.Get()
        ) then
            ProcessEspAndLogging()
        end]])if not _Qa then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,76,111,119,32,76,97,103,32,69,83,80,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100))return end end do local _yb=[[    local optimalReactionTime = (attackConfig.ReactionTime or DefaultReactionTime)]]_Qa=_Ha(_Qa,_yb,[[    local optimalReactionTime = (
        attackConfig.ReactionTime
        or attackConfig.DefaultReactionTime
        or DefaultReactionTime
    )

    -- Learned values are additive and never overwrite the base style config.
    if AdaptiveTiming and AdaptiveTiming.GetAdjustment then
        optimalReactionTime += AdaptiveTiming.GetAdjustment(attackConfig)
    end]])if not _Qa then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,76,101,97,114,110,105,110,103,32,77,111,100,101,32,116,105,109,105,110,103,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100))return end end local _zb=string.char(108,111,99,97,108,32,102,117,110,99,116,105,111,110,32,69,118,97,108,117,97,116,101,80,97,114,114,121,84,114,105,103,103,101,114,115,40,41)_Qa=_Ha(_Qa,_zb,string.char(108,111,99,97,108,32,66,108,97,116,97,110,116,70,97,99,101,84,104,114,101,97,116,67,104,97,114,97,99,116,101,114,32,61,32,110,105,108,10).._zb)if not _Qa then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,83,110,97,112,32,76,111,99,107,32,116,104,114,101,97,116,32,98,114,105,100,103,101,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100))return end local _Ab=[[    -- CHARACTER ITERATION
    for _, character in ipairs(TargetCharacters) do
        EvaluateCharacter(character, localCharacter, localRoot, currentActiveIds)
    end]]_Qa=_Ha(_Qa,_Ab,[[    -- CHARACTER ITERATION
    if BlatantFaceThreatCharacter
        and BlatantFaceThreatCharacter ~= localCharacter
        and BlatantFaceThreatCharacter.ClassName == "Model" then
        EvaluateCharacter(
            BlatantFaceThreatCharacter,
            localCharacter,
            localRoot,
            currentActiveIds
        )
    else
        for _, character in ipairs(TargetCharacters) do
            EvaluateCharacter(character, localCharacter, localRoot, currentActiveIds)
        end
    end]])if not _Qa then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,83,110,97,112,32,76,111,99,107,32,65,80,32,116,104,114,101,97,116,32,105,116,101,114,97,116,105,111,110,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100))return end local _Bb=string.char(108,111,99,97,108,32,102,117,110,99,116,105,111,110,32,77,97,105,110,76,111,111,112,40,41)_Qa=_Ha(_Qa,_Bb,_Aa.._Da.._Ca.._Ea..[[local function MainLoop()
    GakuranPruneDeadTargets()]])if not _Qa then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,83,110,97,112,32,76,111,99,107,32,114,117,110,116,105,109,101,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100))return end local _Cb=[[    LocalTracker:Update(localChar)
    EvaluateParryTriggers()]]_Qa=_Ha(_Qa,_Cb,[[    table.clear(FrameAnimationCache)
    local localAnimations = LocalTracker:Update(localChar)

    if GakuranExtraUI
        and GakuranExtraUI.CombatAssist
        and GakuranExtraUI.CombatAssist.Task then
        GakuranExtraUI.CombatAssist.Task(
            localChar,
            localAnimations
        )
    end

    -- Defensive Snap/Parry runs after offensive aim helpers, so parry wins any
    -- same-frame facing conflict.
    BlatantFaceTask()
    EvaluateParryTriggers()]])if not _Qa then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,115,116,97,114,116,117,112,32,102,97,105,108,101,100,58,32,109,97,105,110,45,108,111,111,112,32,83,110,97,112,32,76,111,99,107,32,109,97,114,107,101,114,32,99,104,97,110,103,101,100))return end local _Db=_Qa..string.char(10,10).._Ga local _Eb,_Fb=loadstring(_Db)if not _Eb then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,99,111,109,112,105,108,101,32,102,97,105,108,101,100,58,32)..tostring(_Fb))return end if rawget(_G,string.char(95,95,71,97,107,117,114,97,110,67,111,109,98,105,110,101,100,67,111,109,112,105,108,101,79,110,108,121))==true then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,99,111,109,112,105,108,101,32,99,104,101,99,107,32,112,97,115,115,101,100))return end local _Gb=rawget(_G,_wa)if type(_Gb)==string.char(116,97,98,108,101)and _Gb.jobId==game.JobId then print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,97,108,114,101,97,100,121,32,108,111,97,100,101,100,32,105,110,32,116,104,105,115,32,77,97,116,99,104,97,32,115,101,115,115,105,111,110,59,32)..string.char(114,101,115,116,97,114,116,32,77,97,116,99,104,97,32,98,101,102,111,114,101,32,108,111,97,100,105,110,103,32,97,110,111,116,104,101,114,32,71,97,107,117,114,97,110,32,98,117,105,108,100))return end _G[_wa]={jobId=game.JobId,version=string.char(118,55,46,50,46,52,45,104,101,97,108,116,104,45,97,108,105,45,97,117,116,111,45,114,45,117,115,101,114,105,100,45,107,101,121,45,115,121,115,116,101,109),}local _Hb,_Ib=pcall(_Eb)if not _Hb then _G[_wa]=nil print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,114,117,110,116,105,109,101,32,102,97,105,108,101,100,58,32)..tostring(_Ib))return end print(string.char(91,71,97,107,117,114,97,110,32,65,80,32,83,104,97,114,101,93,32,108,111,97,100,101,100,32,118,55,46,50,46,52,32,43,32,104,101,97,108,116,104,47,65,108,105,47,65,117,116,111,45,82,32,43,32,85,115,101,114,73,100,32,107,101,121,32,115,121,115,116,101,109))