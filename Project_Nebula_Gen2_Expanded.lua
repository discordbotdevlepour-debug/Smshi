local Rayfield = loadstring(game:HttpGet("https://sirius.menu/gen2"))()

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")

local LocalPlayer = Players.LocalPlayer
local LogoID = 99268621753222

local LocaleNames = {
    English = "en",
    Hindi = "hi",
    Spanish = "es",
    French = "fr",
    German = "de",
    Portuguese = "pt",
    Japanese = "ja",
    Korean = "ko",
    Arabic = "ar",
    Russian = "ru",
    Turkish = "tr",
    Indonesian = "id",
    Bengali = "bn"
}

local Translations = {
    en = {},
    hi = {
        ["Settings"] = "सेटिंग्स",
        ["Language"] = "भाषा",
        ["Theme"] = "थीम",
        ["Save Configuration"] = "कॉन्फ़िगरेशन सहेजें",
        ["Reset Local Preview"] = "लोकल प्रीव्यू रीसेट करें",
        ["Local FOV"] = "लोकल FOV",
        ["WalkSpeed Preview"] = "चलने की गति का प्रीव्यू",
        ["JumpPower Preview"] = "जंप पावर का प्रीव्यू",
        ["System Status"] = "सिस्टम स्थिति",
        ["Ready"] = "तैयार"
    },
    es = {
        ["Settings"] = "Configuración",
        ["Language"] = "Idioma",
        ["Theme"] = "Tema",
        ["Save Configuration"] = "Guardar configuración",
        ["Reset Local Preview"] = "Restablecer vista previa local",
        ["Local FOV"] = "FOV local",
        ["WalkSpeed Preview"] = "Vista previa de velocidad",
        ["JumpPower Preview"] = "Vista previa de salto",
        ["System Status"] = "Estado del sistema",
        ["Ready"] = "Listo"
    },
    fr = {
        ["Settings"] = "Paramètres",
        ["Language"] = "Langue",
        ["Theme"] = "Thème",
        ["Save Configuration"] = "Enregistrer la configuration",
        ["Reset Local Preview"] = "Réinitialiser l'aperçu local",
        ["Local FOV"] = "FOV local",
        ["WalkSpeed Preview"] = "Aperçu de vitesse",
        ["JumpPower Preview"] = "Aperçu de saut",
        ["System Status"] = "État du système",
        ["Ready"] = "Prêt"
    },
    de = {
        ["Settings"] = "Einstellungen",
        ["Language"] = "Sprache",
        ["Theme"] = "Design",
        ["Save Configuration"] = "Konfiguration speichern",
        ["Reset Local Preview"] = "Lokale Vorschau zurücksetzen",
        ["Local FOV"] = "Lokales Sichtfeld",
        ["WalkSpeed Preview"] = "Geschwindigkeitsvorschau",
        ["JumpPower Preview"] = "Sprungkraftvorschau",
        ["System Status"] = "Systemstatus",
        ["Ready"] = "Bereit"
    },
    pt = {
        ["Settings"] = "Configurações",
        ["Language"] = "Idioma",
        ["Theme"] = "Tema",
        ["Save Configuration"] = "Salvar configuração",
        ["Reset Local Preview"] = "Redefinir prévia local",
        ["Local FOV"] = "FOV local",
        ["WalkSpeed Preview"] = "Prévia de velocidade",
        ["JumpPower Preview"] = "Prévia de salto",
        ["System Status"] = "Status do sistema",
        ["Ready"] = "Pronto"
    },
    ja = {
        ["Settings"] = "設定",
        ["Language"] = "言語",
        ["Theme"] = "テーマ",
        ["Save Configuration"] = "設定を保存",
        ["Reset Local Preview"] = "ローカルプレビューをリセット",
        ["Local FOV"] = "ローカル視野角",
        ["WalkSpeed Preview"] = "速度プレビュー",
        ["JumpPower Preview"] = "ジャンプ力プレビュー",
        ["System Status"] = "システム状態",
        ["Ready"] = "準備完了"
    },
    ko = {
        ["Settings"] = "설정",
        ["Language"] = "언어",
        ["Theme"] = "테마",
        ["Save Configuration"] = "설정 저장",
        ["Reset Local Preview"] = "로컬 미리보기 초기화",
        ["Local FOV"] = "로컬 시야각",
        ["WalkSpeed Preview"] = "이동 속도 미리보기",
        ["JumpPower Preview"] = "점프력 미리보기",
        ["System Status"] = "시스템 상태",
        ["Ready"] = "준비 완료"
    },
    ar = {
        ["Settings"] = "الإعدادات",
        ["Language"] = "اللغة",
        ["Theme"] = "السمة",
        ["Save Configuration"] = "حفظ الإعدادات",
        ["Reset Local Preview"] = "إعادة تعيين المعاينة المحلية",
        ["Local FOV"] = "مجال الرؤية المحلي",
        ["WalkSpeed Preview"] = "معاينة سرعة المشي",
        ["JumpPower Preview"] = "معاينة قوة القفز",
        ["System Status"] = "حالة النظام",
        ["Ready"] = "جاهز"
    },
    ru = {
        ["Settings"] = "Настройки",
        ["Language"] = "Язык",
        ["Theme"] = "Тема",
        ["Save Configuration"] = "Сохранить конфигурацию",
        ["Reset Local Preview"] = "Сбросить локальный предпросмотр",
        ["Local FOV"] = "Локальное поле зрения",
        ["WalkSpeed Preview"] = "Предпросмотр скорости",
        ["JumpPower Preview"] = "Предпросмотр прыжка",
        ["System Status"] = "Состояние системы",
        ["Ready"] = "Готово"
    },
    tr = {
        ["Settings"] = "Ayarlar",
        ["Language"] = "Dil",
        ["Theme"] = "Tema",
        ["Save Configuration"] = "Yapılandırmayı Kaydet",
        ["Reset Local Preview"] = "Yerel Önizlemeyi Sıfırla",
        ["Local FOV"] = "Yerel Görüş Alanı",
        ["WalkSpeed Preview"] = "Hız Önizlemesi",
        ["JumpPower Preview"] = "Zıplama Gücü Önizlemesi",
        ["System Status"] = "Sistem Durumu",
        ["Ready"] = "Hazır"
    },
    id = {
        ["Settings"] = "Pengaturan",
        ["Language"] = "Bahasa",
        ["Theme"] = "Tema",
        ["Save Configuration"] = "Simpan Konfigurasi",
        ["Reset Local Preview"] = "Atur Ulang Pratinjau Lokal",
        ["Local FOV"] = "FOV Lokal",
        ["WalkSpeed Preview"] = "Pratinjau Kecepatan",
        ["JumpPower Preview"] = "Pratinjau Kekuatan Lompat",
        ["System Status"] = "Status Sistem",
        ["Ready"] = "Siap"
    },
    bn = {
        ["Settings"] = "সেটিংস",
        ["Language"] = "ভাষা",
        ["Theme"] = "থিম",
        ["Save Configuration"] = "কনফিগারেশন সংরক্ষণ",
        ["Reset Local Preview"] = "লোকাল প্রিভিউ রিসেট",
        ["Local FOV"] = "লোকাল FOV",
        ["WalkSpeed Preview"] = "গতি প্রিভিউ",
        ["JumpPower Preview"] = "জাম্প পাওয়ার প্রিভিউ",
        ["System Status"] = "সিস্টেমের অবস্থা",
        ["Ready"] = "প্রস্তুত"
    }
}

local Window = Rayfield:CreateWindow({
    name = "PROJECT NEBULA",
    subtitle = "A Universal Script Hub",
    icon = LogoID,
    sidebarLayout = true,
    showName = "NEBULA",
    showIconOnly = false,
    theme = "ember",
    translations = Translations,
    configuration = {
        autoSave = true,
        autoLoad = true,
        fileName = "NebulaConfig",
        customFolder = "ProjectNebula"
    }
})

local TabNames = {
    "「 Information 」",
    "「 Carnival 」",
    "「 You 」",
    "「 Fun 」",
    "「 House 」",
    "「 Car/Boat/Bike 」",
    "「 Teleport 」",
    "「 Toggle Core 」",
    "「 People 」",
    "「 ESP 」",
    "「 Skin 」",
    "「 Troll 」"
}

local Tabs = {}

for _, tabName in ipairs(TabNames) do
    Tabs[tabName] = Window:CreateTab({
        name = tabName
    })
end

local Info = Tabs["「 Information 」"]
local Carnival = Tabs["「 Carnival 」"]
local You = Tabs["「 You 」"]
local Fun = Tabs["「 Fun 」"]
local House = Tabs["「 House 」"]
local Vehicles = Tabs["「 Car/Boat/Bike 」"]
local Teleport = Tabs["「 Teleport 」"]
local Core = Tabs["「 Toggle Core 」"]
local People = Tabs["「 People 」"]
local ESP = Tabs["「 ESP 」"]
local Skin = Tabs["「 Skin 」"]
local Troll = Tabs["「 Troll 」"]

local StatusTag = Window:CreateTag({
    text = "BETA",
    color = Color3.fromRGB(205, 65, 75),
    order = 1
})

Info:CreateText({
    name = "PROJECT NEBULA",
    text = "Universal Script Hub • Gen 2 Interface"
})

Info:CreateDivider({
    text = "BUILD INFORMATION"
})

Info:CreateStat({
    name = "Interface",
    value = 1,
    prefix = "ONLINE"
})

Info:CreateText({
    name = "Compatibility",
    text = "This build contains local preview tools and interface modules. Game-specific server actions are intentionally not included."
})

local Console = Info:CreateConsole({
    name = "Nebula Console",
    height = 150,
    follow = true,
    maxLines = 150
})

Console:Append("[BOOT] Project Nebula starting")
Console:Append("[OK] Twelve original tabs created")
Console:Append("[OK] Localization packs loaded")
Console:Append("[OK] Configuration system ready")

Info:CreateButton({
    name = "Show What's New",
    callback = function()
        Window:Popup({
            title = "PROJECT NEBULA",
            subtitle = "Build 1 • Gen 2",
            boxes = {
                {
                    title = "Interface rebuild",
                    description = "The original twelve tab names are preserved."
                },
                {
                    title = "Localization",
                    description = "Roblox locale detection plus thirteen language packs."
                },
                {
                    title = "Local previews",
                    description = "Client-side camera and character preview controls."
                }
            },
            options = {
                {text = "Continue", style = "primary"}
            }
        })
    end
})

Info:CreateButton({
    name = "Copy Build Information",
    callback = function()
        if typeof(setclipboard) == "function" then
            setclipboard("PROJECT NEBULA | Build 1 | Gen 2")
            Window:Notify({
                title = "Copied",
                content = "Build information copied.",
                duration = 3
            })
        else
            Window:Notify({
                title = "Clipboard unavailable",
                content = "Clipboard support is not available in this environment.",
                duration = 3
            })
        end
    end
})

local function getCharacter()
    return LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
end

local function getHumanoid()
    return getCharacter():FindFirstChildOfClass("Humanoid")
end

local defaultFov = workspace.CurrentCamera and workspace.CurrentCamera.FieldOfView or 70
local defaultWalkSpeed = 16
local defaultJumpPower = 50

You:CreateDivider({
    text = "LOCAL CHARACTER PREVIEW"
})

You:CreateSlider({
    name = "Local FOV",
    flag = "NebulaLocalFOV",
    range = {50, 120},
    increment = 1,
    value = defaultFov,
    suffix = "°",
    callback = function(value)
        local camera = workspace.CurrentCamera
        if camera then
            camera.FieldOfView = value
        end
    end
})

You:CreateSlider({
    name = "WalkSpeed Preview",
    flag = "NebulaWalkSpeed",
    range = {8, 32},
    increment = 1,
    value = defaultWalkSpeed,
    callback = function(value)
        local humanoid = getHumanoid()
        if humanoid then
            humanoid.WalkSpeed = value
        end
    end
})

You:CreateSlider({
    name = "JumpPower Preview",
    flag = "NebulaJumpPower",
    range = {25, 100},
    increment = 1,
    value = defaultJumpPower,
    callback = function(value)
        local humanoid = getHumanoid()
        if humanoid then
            humanoid.UseJumpPower = true
            humanoid.JumpPower = value
        end
    end
})

You:CreateButton({
    name = "Reset Local Preview",
    callback = function()
        local camera = workspace.CurrentCamera
        if camera then
            camera.FieldOfView = defaultFov
        end
        local humanoid = getHumanoid()
        if humanoid then
            humanoid.WalkSpeed = defaultWalkSpeed
            humanoid.UseJumpPower = true
            humanoid.JumpPower = defaultJumpPower
        end
        Window:Notify({
            title = "Preview reset",
            content = "Local camera and movement values restored.",
            duration = 3
        })
    end
})

Carnival:CreateText({
    name = "Carnival Module",
    text = "Carnival-specific actions are not connected to third-party game remotes in this safe rebuild."
})

Carnival:CreateButton({
    name = "Scan Local Carnival Folder",
    callback = function()
        local root = workspace:FindFirstChild("SummerCarnival")
        local count = 0
        if root then
            for _, item in ipairs(root:GetDescendants()) do
                if item:IsA("BasePart") then
                    count += 1
                end
            end
        end
        Console:Append("[SCAN] Carnival BaseParts found: " .. tostring(count))
        Window:Notify({
            title = "Local scan complete",
            content = tostring(count) .. " parts found.",
            duration = 3
        })
    end
})

Fun:CreateText({
    name = "Local Utilities",
    text = "Safe client-side utilities only. No item-grant remotes, forced interactions, or actions against other players."
})

Fun:CreateButton({
    name = "List Equipped Tools",
    callback = function()
        local character = LocalPlayer.Character
        local count = 0
        if character then
            for _, item in ipairs(character:GetChildren()) do
                if item:IsA("Tool") then
                    count += 1
                    Console:Append("[TOOL] " .. item.Name)
                end
            end
        end
        Window:Notify({
            title = "Equipped tools",
            content = tostring(count) .. " tool(s) in character.",
            duration = 3
        })
    end
})

House:CreateText({
    name = "House Utilities",
    text = "House information and local inspection placeholders. No permission changes, bans, unbans, or house remote calls."
})

House:CreateButton({
    name = "Inspect Local House Folder",
    callback = function()
        local lots = workspace:FindFirstChild("001_Lots")
        local count = lots and #lots:GetChildren() or 0
        Console:Append("[HOUSE] Lot entries detected: " .. tostring(count))
        Window:Notify({
            title = "House scan",
            content = tostring(count) .. " lot entries found.",
            duration = 3
        })
    end
})

Vehicles:CreateText({
    name = "Vehicle Utilities",
    text = "Vehicle controls are reserved for vehicles in experiences you own. This rebuild does not manipulate shared public-game vehicles."
})

Vehicles:CreateButton({
    name = "Inspect My Vehicle",
    callback = function()
        local folder = workspace:FindFirstChild("Vehicles")
        local vehicle = folder and folder:FindFirstChild(LocalPlayer.Name .. "Car")
        local result = vehicle and vehicle.Name or "No matching vehicle found"
        Console:Append("[VEHICLE] " .. result)
        Window:Notify({
            title = "Vehicle inspection",
            content = result,
            duration = 3
        })
    end
})

Teleport:CreateText({
    name = "Teleport Module",
    text = "No fixed coordinates or forced player teleportation are included. Add destinations for your own experience here."
})

Teleport:CreateButton({
    name = "Show Current Position",
    callback = function()
        local root = getCharacter():FindFirstChild("HumanoidRootPart")
        if root then
            local p = root.Position
            local value = string.format("%.1f, %.1f, %.1f", p.X, p.Y, p.Z)
            Console:Append("[POSITION] " .. value)
            Window:Notify({
                title = "Current position",
                content = value,
                duration = 4
            })
        end
    end
})

Core:CreateText({
    name = "Core Settings",
    text = "Interface and local preview settings."
})

Core:CreateToggle({
    name = "Local Fullbright Preview",
    flag = "NebulaFullbright",
    value = false,
    callback = function(enabled)
        if enabled then
            Lighting.Brightness = 2
            Lighting.ClockTime = 14
            Lighting.GlobalShadows = false
        else
            Lighting.Brightness = 1
            Lighting.ClockTime = 14
            Lighting.GlobalShadows = true
        end
    end
})

People:CreateText({
    name = "People",
    text = "Player information is limited to a local player count and your own character. No targeting, tracking, or forced movement."
})

local PlayerCount = People:CreateStat({
    name = "Players in server",
    value = #Players:GetPlayers()
})

Players.PlayerAdded:Connect(function()
    PlayerCount:Set(#Players:GetPlayers())
end)

Players.PlayerRemoving:Connect(function()
    PlayerCount:Set(#Players:GetPlayers())
end)

People:CreateButton({
    name = "Refresh Player Count",
    callback = function()
        PlayerCount:Set(#Players:GetPlayers())
    end
})

ESP:CreateText({
    name = "Visuals",
    text = "No through-wall player tracking or public-server ESP is included. Use Studio visual debugging for your own maps."
})

ESP:CreateButton({
    name = "Count Workspace Models",
    callback = function()
        local count = 0
        for _, item in ipairs(workspace:GetDescendants()) do
            if item:IsA("Model") then
                count += 1
            end
        end
        Console:Append("[VISUALS] Workspace models: " .. tostring(count))
        Window:Notify({
            title = "Workspace scan",
            content = tostring(count) .. " models found.",
            duration = 3
        })
    end
})

Skin:CreateText({
    name = "Appearance Preview",
    text = "Local-only preview controls. These do not call avatar or appearance remotes."
})

Skin:CreateColorPicker({
    name = "Nebula Accent Preview",
    color = Color3.fromRGB(205, 65, 75),
    callback = function(color)
        Console:Append(string.format(
            "[COLOR] RGB %d, %d, %d",
            math.floor(color.R * 255),
            math.floor(color.G * 255),
            math.floor(color.B * 255)
        ))
    end
})

Troll:CreateText({
    name = "Disabled Module",
    text = "Player-targeting, harassment, forced movement, and disruptive troll actions are not part of this rebuild."
})

Troll:CreateButton({
    name = "Open Safe Feature Notes",
    callback = function()
        Window:Popup({
            title = "Nebula safety notes",
            subtitle = "Local development only",
            content = "This tab is reserved for harmless effects in your own Roblox experience. Public-player disruption features are excluded.",
            options = {
                {text = "Understood", style = "primary"}
            }
        })
    end
})


local function notify(title, content)
    Window:Notify({title = title, content = content, duration = 3})
end

local function getRoot()
    local character = LocalPlayer.Character
    return character and character:FindFirstChild("HumanoidRootPart")
end

local function findOwnedVehicle()
    local folder = workspace:FindFirstChild("Vehicles")
    if not folder then return nil end
    return folder:FindFirstChild(LocalPlayer.Name .. "Car")
        or folder:FindFirstChild(LocalPlayer.Name .. "Vehicle")
end

local function getNamedParts(root, limit)
    local names = {}
    if not root then return names end
    for _, item in ipairs(root:GetDescendants()) do
        if item:IsA("BasePart") then
            table.insert(names, item.Name)
            if #names >= (limit or 100) then break end
        end
    end
    table.sort(names)
    return names
end

local function clearNebulaHighlights()
    for _, item in ipairs(workspace:GetDescendants()) do
        if item:IsA("Highlight") and item.Name == "NebulaNPCHighlight" then
            item:Destroy()
        end
    end
end

local function applyNPCHighlights(enabled)
    clearNebulaHighlights()
    if not enabled then return end
    for _, item in ipairs(workspace:GetChildren()) do
        if item:IsA("Model") and not Players:GetPlayerFromCharacter(item)
            and item:FindFirstChildOfClass("Humanoid") then
            local h = Instance.new("Highlight")
            h.Name = "NebulaNPCHighlight"
            h.FillColor = Color3.fromRGB(205, 65, 75)
            h.OutlineColor = Color3.fromRGB(255, 255, 255)
            h.DepthMode = Enum.HighlightDepthMode.Occluded
            h.Parent = item
        end
    end
end

local rainbowBodyEnabled = false
local cameraSpinEnabled = false

local function setLocalBodyColor(color)
    local character = LocalPlayer.Character
    if not character then return end
    local bodyColors = character:FindFirstChildOfClass("BodyColors")
    if bodyColors then
        bodyColors.HeadColor3 = color
        bodyColors.LeftArmColor3 = color
        bodyColors.RightArmColor3 = color
        bodyColors.LeftLegColor3 = color
        bodyColors.RightLegColor3 = color
        bodyColors.TorsoColor3 = color
    end
end

local function clearLocalTrail()
    local root = getRoot()
    if not root then return end
    local trail = root:FindFirstChild("NebulaLocalTrail")
    if trail then trail:Destroy() end
    local a0 = root:FindFirstChild("NebulaTrailA0")
    local a1 = root:FindFirstChild("NebulaTrailA1")
    if a0 then a0:Destroy() end
    if a1 then a1:Destroy() end
end

local function setLocalTrail(enabled)
    clearLocalTrail()
    if not enabled then return end
    local root = getRoot()
    if not root then return end
    local a0 = Instance.new("Attachment")
    a0.Name = "NebulaTrailA0"
    a0.Position = Vector3.new(0, 0.8, 0)
    a0.Parent = root
    local a1 = Instance.new("Attachment")
    a1.Name = "NebulaTrailA1"
    a1.Position = Vector3.new(0, -0.8, 0)
    a1.Parent = root
    local trail = Instance.new("Trail")
    trail.Name = "NebulaLocalTrail"
    trail.Attachment0 = a0
    trail.Attachment1 = a1
    trail.Lifetime = 0.45
    trail.MinLength = 0.05
    trail.Color = ColorSequence.new(Color3.fromRGB(205, 65, 75), Color3.fromRGB(255, 255, 255))
    trail.Parent = root
end

local function getPlayerNames()
    local names = {}
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            table.insert(names, player.Name)
        end
    end
    table.sort(names)
    return names
end

local spectating = false
local spectateTarget = nil
local originalCameraSubject = nil

local function stopSpectating()
    spectating = false
    spectateTarget = nil
    local camera = workspace.CurrentCamera
    local humanoid = getHumanoid()
    if camera and humanoid then
        camera.CameraSubject = humanoid
    end
end

local function startSpectating(playerName)
    local player = Players:FindFirstChild(playerName)
    local humanoid = player and player.Character and player.Character:FindFirstChildOfClass("Humanoid")
    if not humanoid then
        notify("Spectate", "That player's character is not available.")
        return
    end
    spectating = true
    spectateTarget = player
    local camera = workspace.CurrentCamera
    if camera then camera.CameraSubject = humanoid end
end

Players.PlayerRemoving:Connect(function(player)
    if player == spectateTarget then
        stopSpectating()
    end
end)

Carnival:CreateDivider({text = "CARNIVAL INSPECTION"})
Carnival:CreateButton({
    name = "Scan Carnival Attractions",
    callback = function()
        local matches = 0
        for _, item in ipairs(workspace:GetDescendants()) do
            local n = string.lower(item.Name)
            if string.find(n, "balloon") or string.find(n, "carnival")
                or string.find(n, "ride") or string.find(n, "ticket") then
                matches += 1
            end
        end
        Console:Append("[CARNIVAL] Attraction-related instances: " .. matches)
        notify("Carnival scan", tostring(matches) .. " matching objects found.")
    end
})

You:CreateDivider({text = "ROLEPLAY & CHARACTER"})
You:CreateColorPicker({
    name = "Local Body Color",
    color = Color3.fromRGB(255, 220, 190),
    callback = function(color)
        setLocalBodyColor(color)
    end
})
You:CreateToggle({
    name = "Local Rainbow Body",
    flag = "NebulaRainbowBody",
    value = false,
    callback = function(enabled)
        rainbowBodyEnabled = enabled
        if not enabled then return end
        task.spawn(function()
            local hue = 0
            while rainbowBodyEnabled and task.wait(0.12) do
                hue = (hue + 0.012) % 1
                setLocalBodyColor(Color3.fromHSV(hue, 0.85, 1))
            end
        end)
    end
})
You:CreateInput({
    name = "Local RP Name Preview",
    placeholder = "Enter a display name",
    callback = function(value)
        local character = LocalPlayer.Character
        if not character then return end
        local head = character:FindFirstChild("Head")
        if not head then return end
        local old = head:FindFirstChild("NebulaRPPreview")
        if old then old:Destroy() end
        if value == "" then return end
        local gui = Instance.new("BillboardGui")
        gui.Name = "NebulaRPPreview"
        gui.Size = UDim2.fromOffset(220, 42)
        gui.StudsOffset = Vector3.new(0, 2.6, 0)
        gui.AlwaysOnTop = false
        gui.Parent = head
        local label = Instance.new("TextLabel")
        label.BackgroundTransparency = 1
        label.Size = UDim2.fromScale(1, 1)
        label.Font = Enum.Font.GothamBold
        label.Text = string.sub(value, 1, 32)
        label.TextColor3 = Color3.fromRGB(255, 255, 255)
        label.TextStrokeTransparency = 0.25
        label.TextScaled = true
        label.Parent = gui
    end
})

Fun:CreateDivider({text = "LOCAL PROPS & TRAILS"})
Fun:CreateToggle({
    name = "Local Character Trail",
    flag = "NebulaTrail",
    value = false,
    callback = function(enabled)
        setLocalTrail(enabled)
    end
})
Fun:CreateButton({
    name = "Refresh Tool List",
    callback = function()
        local count = 0
        local backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
        local containers = {LocalPlayer.Character, backpack}
        for index = 1, 2 do
            local container = containers[index]
            if container then
                for _, item in ipairs(container:GetChildren()) do
                    if item:IsA("Tool") then
                        count += 1
                        Console:Append("[TOOL] " .. item.Name)
                    end
                end
            end
        end
        notify("Tool inventory", tostring(count) .. " tools found.")
    end
})

House:CreateDivider({text = "HOUSE / LOT TOOLS"})
House:CreateButton({
    name = "List House Lot Names",
    callback = function()
        local lots = workspace:FindFirstChild("001_Lots")
        if not lots then
            notify("House scan", "The 001_Lots folder was not found.")
            return
        end
        for _, lot in ipairs(lots:GetChildren()) do
            Console:Append("[LOT] " .. lot.Name)
        end
        notify("House scan", tostring(#lots:GetChildren()) .. " lot entries listed.")
    end
})

Vehicles:CreateDivider({text = "LOCAL VEHICLE PREVIEW"})
Vehicles:CreateToggle({
    name = "Local Vehicle Headlights",
    flag = "NebulaVehicleLights",
    value = false,
    callback = function(enabled)
        local vehicle = findOwnedVehicle()
        if not vehicle then
            notify("Vehicle", "No locally named vehicle was found.")
            return
        end
        local changed = 0
        for _, item in ipairs(vehicle:GetDescendants()) do
            if item:IsA("PointLight") or item:IsA("SpotLight") or item:IsA("SurfaceLight") then
                item.Enabled = enabled
                changed += 1
            end
        end
        notify("Vehicle lights", tostring(changed) .. " light(s) updated locally.")
    end
})
Vehicles:CreateSlider({
    name = "Local Vehicle Seat Speed Preview",
    range = {0, 200},
    increment = 5,
    value = 50,
    callback = function(value)
        local vehicle = findOwnedVehicle()
        local seat = vehicle and vehicle:FindFirstChildWhichIsA("VehicleSeat", true)
        if seat then seat.MaxSpeed = value end
    end
})
Vehicles:CreateButton({
    name = "Inspect Vehicle Lights & Seats",
    callback = function()
        local vehicle = findOwnedVehicle()
        if not vehicle then
            notify("Vehicle", "No locally named vehicle was found.")
            return
        end
        local lights, seats = 0, 0
        for _, item in ipairs(vehicle:GetDescendants()) do
            if item:IsA("PointLight") or item:IsA("SpotLight") or item:IsA("SurfaceLight") then lights += 1 end
            if item:IsA("VehicleSeat") then seats += 1 end
        end
        notify("Vehicle inspection", lights .. " lights • " .. seats .. " seats")
    end
})

Teleport:CreateDivider({text = "MAP DESTINATIONS"})
Teleport:CreateInput({
    name = "Teleport to Named Map Part",
    placeholder = "Exact BasePart name",
    callback = function(value)
        local target = workspace:FindFirstChild(value, true)
        local root = getRoot()
        if not target or not target:IsA("BasePart") or not root then
            notify("Teleport", "No matching BasePart was found.")
            return
        end
        root.CFrame = target.CFrame + Vector3.new(0, 4, 0)
        notify("Teleport", "Moved your character to " .. target.Name .. ".")
    end
})
Teleport:CreateButton({
    name = "Copy Current Position",
    callback = function()
        local root = getRoot()
        if not root then return end
        local p = root.Position
        local value = string.format("%.2f, %.2f, %.2f", p.X, p.Y, p.Z)
        if typeof(setclipboard) == "function" then
            setclipboard(value)
            notify("Position copied", value)
        else
            Console:Append("[POSITION] " .. value)
            notify("Position", value)
        end
    end
})

Core:CreateDivider({text = "CLIENT CORE"})
Core:CreateToggle({
    name = "Anti-Sit Preview",
    flag = "NebulaAntiSit",
    value = false,
    callback = function(enabled)
        local humanoid = getHumanoid()
        if humanoid then
            humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, not enabled)
            if enabled and humanoid.Sit then humanoid.Sit = false end
        end
    end
})
Core:CreateToggle({
    name = "Hide Local Fog",
    flag = "NebulaNoFog",
    value = false,
    callback = function(enabled)
        if enabled then
            Lighting.FogStart = 100000
            Lighting.FogEnd = 1000000
        else
            Lighting.FogStart = 0
            Lighting.FogEnd = 100000
        end
    end
})
Core:CreateButton({
    name = "Restore Core Defaults",
    callback = function()
        Lighting.FogStart = 0
        Lighting.FogEnd = 100000
        Lighting.GlobalShadows = true
        local humanoid = getHumanoid()
        if humanoid then humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true) end
        notify("Core", "Local lighting and humanoid defaults restored.")
    end
})

People:CreateDivider({text = "PLAYER LIST / SPECTATE"})
People:CreateDropdown({
    name = "Select Player to Spectate",
    options = getPlayerNames(),
    value = {},
    callback = function(selected)
        local name = selected[1]
        if name then startSpectating(name) end
    end
})
People:CreateButton({
    name = "Refresh Player List",
    callback = function()
        local names = getPlayerNames()
        notify("Player list", tostring(#names) .. " other player(s) in this server.")
    end
})
People:CreateButton({
    name = "Stop Spectating",
    callback = function()
        stopSpectating()
        notify("Spectate", "Camera returned to your character.")
    end
})

ESP:CreateDivider({text = "NPC / MAP DEBUG VISUALS"})
ESP:CreateToggle({
    name = "Highlight NPC Models Only",
    flag = "NebulaNPCESP",
    value = false,
    callback = function(enabled)
        applyNPCHighlights(enabled)
    end
})
ESP:CreateButton({
    name = "Clear Nebula Highlights",
    callback = function()
        clearNebulaHighlights()
        notify("Visuals", "Nebula NPC highlights cleared.")
    end
})

Skin:CreateDivider({text = "LOCAL APPEARANCE EFFECTS"})
Skin:CreateToggle({
    name = "Local Smoke Preview",
    flag = "NebulaSmoke",
    value = false,
    callback = function(enabled)
        local root = getRoot()
        if not root then return end
        local old = root:FindFirstChild("NebulaSmokePreview")
        if old then old:Destroy() end
        if enabled then
            local emitter = Instance.new("ParticleEmitter")
            emitter.Name = "NebulaSmokePreview"
            emitter.Texture = "rbxasset://textures/particles/smoke_main.dds"
            emitter.Rate = 10
            emitter.Lifetime = NumberRange.new(1, 2)
            emitter.Speed = NumberRange.new(0.5, 1.5)
            emitter.SpreadAngle = Vector2.new(25, 25)
            emitter.Parent = root
        end
    end
})
Skin:CreateToggle({
    name = "Local Spark Effect",
    flag = "NebulaSpark",
    value = false,
    callback = function(enabled)
        local root = getRoot()
        if not root then return end
        local old = root:FindFirstChild("NebulaSparkPreview")
        if old then old:Destroy() end
        if enabled then
            local emitter = Instance.new("ParticleEmitter")
            emitter.Name = "NebulaSparkPreview"
            emitter.Texture = "rbxasset://textures/particles/sparkles_main.dds"
            emitter.Rate = 8
            emitter.Lifetime = NumberRange.new(0.4, 0.8)
            emitter.Speed = NumberRange.new(1, 3)
            emitter.Parent = root
        end
    end
})

Troll:CreateDivider({text = "SELF-ONLY FUN"})
Troll:CreateToggle({
    name = "Self Camera Spin",
    flag = "NebulaCameraSpin",
    value = false,
    callback = function(enabled)
        cameraSpinEnabled = enabled
        if not enabled then return end
        task.spawn(function()
            while cameraSpinEnabled and task.wait(0.03) do
                local camera = workspace.CurrentCamera
                if camera then
                    camera.CFrame = camera.CFrame * CFrame.Angles(0, math.rad(2), 0)
                end
            end
        end)
    end
})
Troll:CreateButton({
    name = "Reset Self Camera",
    callback = function()
        local camera = workspace.CurrentCamera
        local humanoid = getHumanoid()
        if camera and humanoid then camera.CameraSubject = humanoid end
        notify("Camera", "Camera reset.")
    end
})


local Settings = Core

Settings:CreateDivider({
    text = "PREFERENCES"
})

Settings:CreateDropdown({
    name = "Theme",
    flag = "NebulaTheme",
    options = {"Default", "Cobalt", "Ember", "Amethyst", "Frost", "Rose"},
    value = {"Ember"},
    callback = function(selected)
        local themes = {
            Default = "default",
            Cobalt = "cobalt",
            Ember = "ember",
            Amethyst = "amethyst",
            Frost = "frost",
            Rose = "rose"
        }
        local theme = themes[selected[1]]
        if theme then
            Window:ChangeTheme(theme)
        end
    end
})

Settings:CreateDropdown({
    name = "Language",
    flag = "NebulaLanguage",
    options = {
        "English", "Hindi", "Spanish", "French", "German",
        "Portuguese", "Japanese", "Korean", "Arabic", "Russian",
        "Turkish", "Indonesian", "Bengali"
    },
    value = {"English"},
    callback = function(selected)
        local locale = LocaleNames[selected[1]]
        if locale then
            Window:SetLocale(locale)
        end
    end
})

Settings:CreateButton({
    name = "Save Configuration",
    callback = function()
        Window:Save()
        Window:Toast({
            title = "Configuration saved",
            subtitle = "Nebula settings updated",
            duration = 4,
            position = "Top"
        })
    end
})

Settings:CreateButton({
    name = "Load Configuration",
    callback = function()
        Window:Load()
        Window:Notify({
            title = "Configuration loaded",
            content = "Saved settings were requested.",
            duration = 3
        })
    end
})

Window:Toast({
    title = "PROJECT NEBULA",
    subtitle = "Build 1 initialized",
    duration = 5,
    position = "Top"
})

Console:Append("[READY] Nebula interface initialized")
