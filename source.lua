-- \\ Universal Remote Firer By mxkxkks //
-- Go to https://github.com/mxkxkks1/Universal-Remote-Firer for latest 
-- questions , crashes, or bugs? DM me on discord: 975121301549219941
-- feel free to make a pull request.


-- [Games Tested On]
-- https://www.roblox.com/games/13667319624/Knockout-Simulator [Infinite Strength / Wins]
-- https://www.roblox.com/games/15210092998/Ski-Race-Simulator [Infinite Strength / Wins]
-- https://www.roblox.com/games/14570378822/Bodybuilder-Simulator [Open Rare Eggs]
-- https://www.roblox.com/games/15338697306/Go-Kart-Race-Simulator [Infinite Wins]
-- https://www.roblox.com/games/15352354257/Ball-Eating-Simulator [Collect Badges / 3]
-- https://www.roblox.com/games/15154513235/Kamehameha-Simulator [Rejoin if kicked / Unlimited Spins/ Inf power / Inf Pets / Claim all daily rewards / Reclaim Gifts]
-- https://www.roblox.com/games/18939066871/Diddy-Plinko-RNG-V2-X2-WEEKEND [Drop Autofarm]

local a = {}

local function isDefaultRobloxRemote(remote)
    local defaultPaths = {
        "DefaultChat", "SayMessageRequest", "PlayerChatted", "OnChannelJoined", "OnChannelLeft",
        "OnMainChannelSet", "ChannelNameColorUpdated", "OnChannelMuted", "OnChannelUnmuted",
        "OnMuted", "OnUnmuted", "OnNewMessage", "OnMessageDoneFiltering", "SetBlockedUserIdsRequest",
        "GetInitDataRequest", "MutePlayerRequest", "UnMutePlayerRequest"
    }
    
    for _, path in ipairs(defaultPaths) do
        if remote.Name == path or remote:FindFirstAncestor(path) then
            return true
        end
    end
    return false
end

local function b()
    for c, d in ipairs(game.ReplicatedStorage:GetDescendants()) do
        if (d:IsA("RemoteEvent") or d:IsA("BindableEvent") or d:IsA("RemoteFunction") or d:IsA("BindableFunction")) and not isDefaultRobloxRemote(d) then
            table.insert(a, d)
        end
    end
end

local function e(...)
    local f = {...}
    for g, h in ipairs(a) do
        local i = h:GetFullName()
        if h:IsA("RemoteEvent") then
            h:FireServer(unpack(f))
        elseif h:IsA("BindableEvent") then
            h:Fire(unpack(f))
        elseif h:IsA("RemoteFunction") then
            spawn(function()
                local j, k = pcall(function()
                    return h:InvokeServer(unpack(f))
                end)
            end)
        elseif h:IsA("BindableFunction") then
            spawn(function()
                local j, k = pcall(function()
                    return h:Invoke(unpack(f))
                end)
            end)
        end
    end
end

b()

--[[==========[ Args ]==========]]
--[[ Update Log:
    v1.0: first release
    v1.1: added more game args
    v1.2: fixed errors
    v1.3: works with more remote types
    v1.4: added feature to ignore default Roblox remotes
    
    note: crashes may happen in some games. working on a fix
    note: for Diddy-Plinko-RNG-V2-X2-WEEKEND, run the script in a loop (while true do)
]]


e("Power",500)
e("Power","500")
e("nil")
e(nil)
e("nil", true)
e(nil, "true")
e("Eggs",500)
e("Eggs","500")
e("Eggs",500)
e("Certz",500)
e("Certz",500)
e("Best",500)
e("Best",500)
e("Goals",500)
e("Goals",500)
e(900000000)
e(900000000)
e(900000000)
e("Kills",true)
e("Kills",900000000000)
e("Kills","900000000000")
e("Unlock All",true)
e("Unlock All","true")
e("UnlockAll",true)
e("UnlockAll","true")
e("9e9")
e("Money",900000000000,true)
e("Strength",900000000000)
e("Stamina",900000000000)
e({health=900000000000,armor=900000000000})
e(true,false,true)
e("Ammo",{bullets=9e9,rockets=9e9})
e("PowerUp","SpeedBoost",true)
e("MissionComplete",{time="10:30",score=9e9})
e("Upgrade","Weapon","Shotgun")
e("Toggle","Lights",true)
e("PlaySound","Explosion")
e("Spawn","Enemy",{type="boss",level=9e9})
e("PurchaseItem","Weapon","AssaultRifle")
e("ActivateAbility","Invisibility")
e("Unlock","CharacterSkin","Ninja")
e("ToggleUI","Inventory",true)
e("RestartLevel")
e("SendChatMessage","Hello, world!")
e("UpdateSettings",{musicVolume=0.7,soundVolume=0.5})
e("RespawnPlayer")
e("CompleteQuest","MainQuest",true)
e("XP",900000)
e("LevelUp",9000)
e("SkillUnlock","DoubleJump")
e("RankUp","Elite")
e("ExperienceGain",9e9)
e("SkillUpgrade","Strength",9e9)
e("AchievementUnlock","FirstVictory")
e("Progress","Quest","Explore")
e("SkillPoint","Allocate","Strength",9e9)
e("Equip","Weapon","Sword")
e("Unequip","Weapon","Shotgun")
e("Reload","Weapon","SniperRifle")
e("Modify","Weapon","Pistol",{damage=9e9,accuracy=0.9})
e("Swap","Weapon","SMG","Shotgun")
e("AddAttachment","Weapon","AssaultRifle","Scope")
e("RemoveAttachment","Weapon","SniperRifle","Suppressor")
e("Craft","Weapon","RocketLauncher")
e("Drop","Weapon","GrenadeLauncher")
e("KickPlayer","Player123")
e("BanPlayer","Player456")
e("ModifyStat","Health",999999)
e("GiveItem","DiamondSword")
e("AddCurrency","Gold",100000)
e("UnlockAll","Characters")
e("AwardBadge","EpicBadge123")
e("GrantPermission","Admin")
e("DisableSecurity",true)
e("AddMoney",9e9)
e("SetMoney",9e9)
e("DoubleMoney")
e("StealMoney",true)
e("StealMoney","true")
e("ResetMoney",true)
e("ResetMoney","true")
e("MultiplyMoney",9e9)
e("HackMoney",1000000)
e("AwardMoney",true)
e("AutoClick")
e("AutoCollect")
e("AutoSell")
e("InstantUpgrade")
e("SkipQuest")
e("AutoRebirth")
e("AutoUpgrade")
e("TeleportToZone","HighLevelZone")
e("AutoFarm","RareItem")
e("AutoPrestige")
e("AutoTrainSkill","Strength")
e("AutoSpinWheel")
e("AutoOpenCrate","LegendaryCrate")
e("AutoCompleteChallenge","HardChallenge")
e("AutoLevelUp","Character")
e("AutoClaimReward")
e("9e9")
e("True")
e("False")
e("9e9",true)
e(false)
e(true)
e("Points",9e9)
e("Points","90000000000")
e("Wins",90000000)
e("Win",true)
e("Winner",true)
e("Balls",9e9)
e("Owned",true)
e("Owned",9e9)
e("Own",9e9)
e("Own",true)
e("Value",9e9)
e("Value",true)
e("Stage",100)
e("Trophy",math.huge)
e("Ammo",9e9)
e(Vector3.new(300,150,600))
e("Time",9e9)
e("Time","9e9")
e("Chickens",9e9)
e("Chickens","9e9")
e("Lives","9e9")
e("Lives",9e9)
e("Life","9e9")
e("Life",9e9)
e("Crowns",9e9)
e("Crowns","9e9")
e("Level",100)
e("Level","100")
e("Rebirth",100)
e("Rebirth","100")
e("XP",100)
e("XP","100")
e("Spins",100)
e("Spins",100)
e("Spin",100)
e("Speed",900)
e("Redeem","true")
e("Redeem","900")
e("Redeem",9000)
e("Redeemed","true")
e("Redeemed",true)
e("Speed",900)
e("Spin",100)
e("Cash",100)
e("Cash",100)
e("Coins",100)
e("Coins",100)
e("Dinero",100)
e("Rank",100)
e("Rank",100)
e("Goals",100)
e("Goals",100)
e("Dinero","100")
e("Damage",9000000000000000000)
e("Damage",900000000000000000000)
e("Win",9000000000000000000)
e("Win",900000000000000000000)
e("Hunger",90000000)
e("Hunger",9000000000000)
e("Body",9000000000000)
e("Body",9000000000000)
e("KillStreak",9000000000000)
e("KillStreak",9000000000000)
e("Health","900000000")
e("Health",900000000)
e("Energy","900000000")
e("Energy",900000000)
e("Melee","900000000")
e("Melee",900000000)
e("Reputation",9000000000000000000)
e("Reputation",900000000000000000000)
e("Distance",9000000000000000000)
e("Distance",900000000000000000000)
e("Nuke","true")
e("Nuke",true)
e("Gems",9000000000000000000)
e("Gems",900000000000000000000)
e("Time",9000000000000000000)
e("Time",900000000000000000000)
e(90000000000)
e("90000000000")
e("Tokens",5000)
e("Tokens","5000")
e("Stars",750)
e("Stars","750")
e("Medals",1200)
e("Medals","1200")
e("Fragments",300)
e("Fragments","300")
e("Crystals",10000)
e("Crystals","10000")
e("Pearls",1500)
e("Pearls","1500")
e("Rubies",2000)
e("Rubies","2000")
e("Emeralds",2500)
e("Emeralds","2500")
e("Sapphires",1800)
e("Sapphires","1800")
e("Diamonds",2200)
e("Diamonds","2200")
e("Gears",2700)
e("Gears","2700")
e("Trophies",3200)
e("Trophies","3200")
e("Capsules",3500)
e("Capsules","3500")
e("Elixirs",2900)
e("Elixirs","2900")
e("Runes",4000)
e("Runes","4000")
e("Shards",4200)
e("Shards","4200")
e("Fossils",4500)
e("Fossils","4500")
e("Relics",4800)
e("Relics","4800")
e(12345)
e(67890)
e({speed=100,jump=50})
e({stamina=200,agility=150})
e({strength=500,defense=300})
e({coins=9999,gems=5000})
e({health=1000,mana=500})
e({bullets=300,grenades=50})
e({wood=100,stone=50})
e({gold=200,silver=100})
e({apples=10,oranges=20})
e({potions=5,elixirs=10})
e({tickets=3,tokens=5})
e({materials={wood=100,stone=50}})
e({resources={gold=200,silver=100}})
e({items={apples=10,oranges=20}})
e({inventory={potions=5,elixirs=10}})
e({loot={tickets=3,tokens=5}})
e({supplies={bullets=300,grenades=50}})
e({assets={health=1000,mana=500}})
e({attributes={strength=500,defense=300}})
e("Eggs",300)
e("Eggs","300")
e("Blocks",900)
e("Blocks","900")
e("AutoFight",true)
e("AutoFight",false)
e("Trails","Rainbow")
e("Trails","Fire")
e("Gifts",{small=10,large=5})
e("Gifts",{common=20,rare=10})
e("Pets",{dog=1,cat=2})
e("Pets",{dragon=1,phoenix=1})
e("Season Pass",true)
e("Season Pass",false)
e("DailyReward","Claimed")
e("DailyReward","Unclaimed")
e("Spin",500)
e("Spin","500")
e("Boosts",{speed=2,strength=3})
e("Boosts",{health=4,mana=5})
e("Codes",{redeem="XYZ123"})
e("Codes",{redeem="ABC456"})
e("StarterPack","Purchased")
e("StarterPack","Not Purchased")
e(Vector3.new(100,200,300))
e(Vector3.new(400,500,600))
e(Vector2.new(50,100))
e(Vector2.new(150,200))
e(Vector3.new(700,800,900))
e(Vector2.new(250,300))
e(Vector3.new(350,450,550))
e(Vector2.new(350,400))
e(Vector3.new(150,250,350))
e(Vector2.new(450,500))
e(Vector3.new(900,800,700))
e(Vector2.new(600,550))
e(Vector3.new(650,750,850))
e(Vector2.new(500,600))
e(Vector3.new(200,300,400))
e(Vector2.new(100,200))
e(Vector3.new(800,700,600))
e(Vector2.new(350,450))
e(Vector3.new(300,400,500))
e(Vector2.new(450,550))
e(math.huge)
e(math.huge,"Cash")
e(9e9,"BestWin")
e("Balls","9e9")
e("Balls",9e9)
e("Cash", 1000000000)
e("Money", 1000000000)
e("Bucks", 1000000000)
e("Currency", 1000000000)
e("Coins", 1000000000)
e("Gold", 1000000000)
e("Credits", 1000000000)
e("Tokens", 1000000000)
e("Points", 1000000000)
e("Score", 1000000000)
e("Bank", 1000000000)
e("Wallet", 1000000000)
e("Balance", 1000000000)
e("Wealth", 1000000000)
e("Riches", 1000000000)
e("Fortune", 1000000000)
e("Treasure", 1000000000)
e("Loot", 1000000000)
e("Earnings", 1000000000)
e("Profit", 1000000000)
e("Revenue", 1000000000)
e("Income", 1000000000)
e("Savings", 1000000000)
e("Funds", 1000000000)
e("Capital", 1000000000)
e("Assets", 1000000000)
e("NetWorth", 1000000000)
e("Jackpot", 1000000000)
e("Payout", 1000000000)
e("Bonus", 1000000000)
e("Reward", 1000000000)
e("Prize", 1000000000)
e("Winnings", 1000000000)
e("Allowance", 1000000000)
e("Stipend", 1000000000)
e("Grant", 1000000000)
e("Subsidy", 1000000000)
e("Funding", 1000000000)
e("Budget", 1000000000)
e("Bankroll", 1000000000)
e("Purse", 1000000000)
e("Stash", 1000000000)
e("Hoard", 1000000000)
e("Kitty", 1000000000)
e("Nest Egg", 1000000000)
e("War Chest", 1000000000)
e("Piggy Bank", 1000000000)
e("Slush Fund", 1000000000)
e("Petty Cash", 1000000000)
e("Float", 1000000000)
e("Liquid Assets", 1000000000)
e("Working Capital", 1000000000)
e("Operating Funds", 1000000000)
e("Reserve", 1000000000)
e("Stockpile", 1000000000)
e("Cache", 1000000000)
e("Windfall", 1000000000)
e("Bounty", 1000000000)
e("Spoils", 1000000000)
e("Takings", 1000000000)
e("Proceeds", 1000000000)
e("Yield", 1000000000)
e("Returns", 1000000000)
e("Gains", 1000000000)
e("Pickings", 1000000000)
e("Takehome", 1000000000)
e("Nest", 1000000000)
e("Pile", 1000000000)
e("Stack", 1000000000)
e("Wad", 1000000000)
e("Roll", 1000000000)
e("Bundle", 1000000000)
e("Load", 1000000000)
e("Heap", 1000000000)
e("Mountain", 1000000000)
e("Ocean", 1000000000)
e("Galaxy", 1000000000)
e("Universe", 1000000000)
e("Infinity", 1000000000)
e("Beyond", 1000000000)
e("Limitless", 1000000000)
e("Endless", 1000000000)
e("Bottomless", 1000000000)
e("Inexhaustible", 1000000000)
e("Astronomical", 1000000000)
e("Cosmic", 1000000000)
e("Galactic", 1000000000)
e("Universal", 1000000000)
e("Omnipotent", 1000000000)
e("Supreme", 1000000000)
e("Ultimate", 1000000000)
e("Apex", 1000000000)
e("Zenith", 1000000000)
e("Pinnacle", 1000000000)
e("Summit", 1000000000)
e("Acme", 1000000000)
e("Paramount", 1000000000)
e("Superlative", 1000000000)
e("Transcendent", 1000000000)
e("VIP", true)
e("VIP", "true")
e("VIP", false)
e("VIP", "false")
e("Premium", true)
e("Premium", "true")
e("Premium", false)
e("Premium", "false")
e("Elite", true)
e("Elite", "true")
e("Elite", false)
e("Elite", "false")
e("Pro", true)
e("Pro", "true")
e("Pro", false)
e("Pro", "false")
e("Exclusive", true)
e("Exclusive", "true")
e("Exclusive", false)
e("Exclusive", "false")
e("Deluxe", true)
e("Deluxe", "true")
e("Deluxe", false)
e("Deluxe", "false")
e("Ultimate", true)
e("Ultimate", "true")
e("Ultimate", false)
e("Ultimate", "false")
e("Legendary", true)
e("Legendary", "true")
e("Legendary", false)
e("Legendary", "false")
e("Mythic", true)
e("Mythic", "true")
e("Mythic", false)
e("Mythic", "false")
e("Epic", true)
e("Epic", "true")
e("Epic", false)
e("Epic", "false")
e("Rare", true)
e("Rare", "true")
e("Rare", false)
e("Rare", "false")
e("Special", true)
e("Special", "true")
e("Special", false)
e("Special", "false")
e("Limited", true)
e("Limited", "true")
e("Limited", false)
e("Limited", "false")
e("Founder", true)
e("Founder", "true")
e("Founder", false)
e("Founder", "false")
e("Beta", true)
e("Beta", "true")
e("Beta", false)
e("Beta", "false")
e("Alpha", true)
e("Alpha", "true")
e("Alpha", false)
e("Alpha", "false")
e("Early Access", true)
e("Early Access", "true")
e("Early Access", false)
e("Early Access", "false")
e("Supporter", true)
e("Supporter", "true")
e("Supporter", false)
e("Supporter", "false")
e("Backer", true)
e("Backer", "true")
e("Backer", false)
e("Backer", "false")
e("Patron", true)
e("Patron", "true")
e("Patron", false)
e("Patron", "false")
e("Sponsor", true)
e("Sponsor", "true")
e("Sponsor", false)
e("Sponsor", "false")
e("Donor", true)
e("Donor", "true")
e("Donor", false)
e("Donor", "false")
e("Admin", true)
e("Admin", "true")
e("Moderator", true)
e("Moderator", "true")
e("Staff", true)
e("Staff", "true")
e("Developer", true)
e("Developer", "true")
e("Owner", true)
e("Owner", "true")
e("Creator", true)
e("Creator", "true")
e("Gamemaster", true)
e("Gamemaster", "true")
e("Supervisor", true)
e("Supervisor", "true")
e("Manager", true)
e("Manager", "true")
e("Overseer", true)
e("Overseer", "true")
e("Controller", true)
e("Controller", "true")
e("Administrator", true)
e("Administrator", "true")
e("Superuser", true)
e("Superuser", "true")
e("Root", true)
e("Root", "true")
e("Sysop", true)
e("Sysop", "true")
e("Operator", true)
e("Operator", "true")
e("Custodian", true)
e("Custodian", "true")
e("Enforcer", true)
e("Enforcer", "true")
e("Guardian", true)
e("Guardian", "true")
e("Watcher", true)
e("Watcher", "true")
e("Sentinel", true)
e("Sentinel", "true")
e("Protector", true)
e("Protector", "true")
e("Keeper", true)
e("Keeper", "true")
e("Steward", true)
e("Steward", "true")
e("Curator", true)
e("Curator", "true")
e("Caretaker", true)
e("Caretaker", "true")
e("Maintainer", true)
e("Maintainer", "true")
e("Supervisor", true)
e("Supervisor", "true")
e("Coordinator", true)
e("Coordinator", "true")
e("Director", true)
e("Director", "true")
e("Executive", true)
e("Executive", "true")
e("Chief", true)
e("Chief", "true")
e("Head", true)
e("Head", "true")
e("Leader", true)
e("Leader", "true")
e("Boss", true)
e("Boss", "true")
e("CommandAccess", true)
e("CommandAccess", "true")
e("FullControl", true)
e("FullControl", "true")
e("MasterControl", true)
e("MasterControl", "true")
e("OverrideAccess", true)
e("OverrideAccess", "true")
e("PriorityAccess", true)
e("PriorityAccess", "true")
e("PrivilegedUser", true)
e("PrivilegedUser", "true")
e("ElevatedRights", true)
e("ElevatedRights", "true")
e("SpecialPermissions", true)
e("SpecialPermissions", "true")
e("UnrestrictedAccess", true)
e("UnrestrictedAccess", "true")
e("IsAdmin", true)
e("IsAdmin", "true")
e("IsAdmin", 1)
e("IsAdmin", "1")
e("AdminStatus", true)
e("AdminStatus", "true")
e("AdminStatus", 1)
e("AdminStatus", "1")
e("HasAdminRights", true)
e("HasAdminRights", "true")
e("AdminPrivileges", true)
e("AdminPrivileges", "true")
e("AdminLevel", 100)
e("AdminLevel", "100")
e("AdminRank", "Owner")
e("AdminRank", "Developer")
e("AdminRank", "Moderator")
e("AdminType", "Full")
e("AdminType", "Partial")
e("AdminAccess", "Granted")
e("AdminPermissions", "All")
e("IsStaff", true)
e("IsStaff", "true")
e("IsModerator", true)
e("IsModerator", "true")
e("IsDeveloper", true)
e("IsDeveloper", "true")
e("IsOwner", true)
e("IsOwner", "true")
e("OwnershipStatus", true)
e("OwnershipStatus", "true")
e("HasModPerms", true)
e("HasModPerms", "true")
e("ModeratorLevel", 5)
e("ModeratorLevel", "5")
e("StaffRank", "Senior")
e("StaffRank", "Junior")
e("DeveloperMode", true)
e("DeveloperMode", "true")
e("DevConsoleAccess", true)
e("DevConsoleAccess", "true")
e(game.Players.LocalPlayer, "Admin")
e(game.Players.LocalPlayer, "Moderator")
e(game.Players.LocalPlayer, "Developer")
e(game.Players.LocalPlayer, "Owner")
e(game.Players.LocalPlayer.UserId, "AdminList")
e(game.Players.LocalPlayer.Name, "AdminNames")
e("AdminUsers", {game.Players.LocalPlayer.UserId})
e("AdminNames", {game.Players.LocalPlayer.Name})
e("SetUserAdmin", game.Players.LocalPlayer.UserId)
e("GrantAdminTo", game.Players.LocalPlayer.Name)
e("AdminCommand", "GiveAdmin")
e("AdminCommand", "SetAdmin")
e("AdminCommand", "MakeAdmin")
e("ExecuteAdminCommand", "PromoteUser")
e("AdminPanel", "Open")
e("AdminMenu", "Access")
e("AdminTools", "Enable")
e("AdminPowers", "Activate")
e("VerifyAdmin", game.Players.LocalPlayer.UserId)
e("CheckAdminStatus", game.Players.LocalPlayer.Name)
e("RequestAdminRights", true)
e("ElevateUserPermissions", game.Players.LocalPlayer.UserId)
e("OverrideUserStatus", "Admin")
e("ForceAdminAccess", true)
e("BypassAdminCheck", true)
e("UnlockAdminFeatures", true)
e("EnableGodMode", true)
e("ActivateAdminMode", true)
e("TriggerAdminProtocol", "Alpha")
e("InitiateAdminOverride", "Omega")
e("AuthorizeAdminControl", game.Players.LocalPlayer.UserId)
e("GiveKnife", true)
e("EquipKnife", true)
e("KnifeOwned", true)
e("UnlockKnife", "Legendary")
e("KnifeType", "Assassin")
e("KnifeSkin", "Galaxy")
e("KnifeEffect", "Fire")
e("KnifeRarity", "Mythic")
e("KnifeSpeed", 100)
e("KnifeDamage", 1000)
e("KnifeRange", 50)
e("InfiniteThrow", true)
e("NoKnifeCooldown", true)
e("InstantKill", true)
e("SilentKnife", true)
e("KnifeAura", true)
e("AutoThrow", true)
e("MultiKnife", 5)
e("KnifeSize", 10)
e("KnifeTrail", "Rainbow")
e("KnifeSound", "Silent")
e("KnifeGlow", true)
e("KnifeMagnet", true)
e("KnifeBoomerang", true)
e("KnifeGravity", 0)
e("KnifePhase", true)
e("KnifeClone", true)
e("KnifeInvisibility", true)
e("KnifeBounce", true)
e("KnifeHoming", true)
e("KnifeExplosion", true)
e("KnifeLightning", true)
e("KnifeFrost", true)
e("KnifePoison", true)
e("KnifeBurn", true)
e("KnifeStun", true)
e("KnifeVampire", true)
e("KnifeLifesteal", true)
e("KnifePiercing", true)
e("KnifeRicochet", true)
e("KnifeTelekinesis", true)
e("KnifeTimeSlow", true)
e("KnifeGhost", true)
e("KnifeDuplication", true)
e("KnifeShockwave", true)
e("KnifeVortex", true)
e("KnifeBlink", true)
e("KnifePhaseShift", true)
e("KnifeEcho", true)
e("KnifeMirage", true)
e("KnifeSpectral", true)
e("KnifeEthereal", true)
e("KnifeOmni", true)
e("KnifeVoid", true)
e("KnifeChaos", true)
e("KnifeHarmony", true)
e("KnifeBalance", true)
e("KnifeInfinity", true)
e("KnifeEternity", true)
e("KnifeOmniscience", true)
e("KnifeOmnipotence", true)
e("KnifeReality", true)
e("KnifeDream", true)
e("KnifeNightmare", true)
e("KnifeDimension", true)
e("KnifeMultiverse", true)
e("KnifeParadox", true)
e("KnifeEnigma", true)
e("KnifeMystery", true)
e("KnifeRiddle", true)
e("KnifePuzzle", true)
e("KnifeSecret", true)
e("KnifeLegend", true)
e("KnifeMyth", true)
e("KnifeFable", true)
e("KnifeTale", true)
e("KnifeStory", true)
e("KnifeLore", true)
e("KnifeChronicle", true)
e("KnifeSaga", true)
e("KnifeEpic", true)
e("KnifeOdyssey", true)
e("Rebirth", true)
e("PerformRebirth", 1)
e("RebirthCount", 10)
e("AutoRebirth", true)
e("InstantRebirth", true)
e("RebirthShop", "Open")
e("RebirthBoost", 2.5)
e("RebirthPoints", 1000)
e("RebirthTokens", 500)
e("RebirthLevel", 50)
e("RebirthTier", 5)
e("RebirthRewards", "Claim")
e("RebirthPrestige", 3)
e("RebirthMultiplier", 10)
e("RebirthUpgrade", "Speed")
e("RebirthCurrency", 10000)
e("RebirthPower", 1000)
e("RebirthMastery", "Unlock")
e("RebirthChallenge", "Complete")
e("RebirthSkill", "Activate")
e("RebirthEvolution", true)
e("RebirthAscension", 2)
e("RebirthTranscendence", true)
e("RebirthEnlightenment", 1)
e("RebirthRank", "Diamond")
e("RebirthStatus", "Legendary")
e("RebirthAura", "Activate")
e("RebirthPet", "Equip")
e("RebirthWings", "Unlock")
e("RebirthHalo", "Equip")
e("RebirthTitle", "Set")
e("RebirthBadge", "Award")
e("RebirthQuest", "Start")
e("RebirthTree", "Upgrade")
e("RebirthEssence", 5000)
e("RebirthSoul", 1000)
e("RebirthEnergy", "Refill")
e("RebirthStars", 100)
e("RebirthGalaxy", "Unlock")
e("RebirthDimension", "Travel")
e("RebirthRealm", "Enter")
e("RebirthCycle", "Complete")
e("RebirthMilestone", "Reach")
e("RebirthAchievement", "Unlock")
e("RebirthMedal", "Earn")
e("RebirthTrophy", "Display")
e("RebirthLegacy", "Inherit")
e("RebirthLineage", "Advance")
e("RebirthGeneration", 10)
e("RebirthEra", "Begin")
e("RebirthSaga", "Continue")
e("RebirthOdyssey", "Embark")
e("RebirthLegend", "Become")
e("RebirthMyth", "Create")
e("RebirthFable", "Write")
e("RebirthEpic", "Compose")
e("RebirthSymphony", "Conduct")
e("RebirthConstellation", "Form")
e("RebirthNebula", "Explore")
e("RebirthCosmos", "Expand")
e("RebirthInfinity", "Reach")
e("RebirthEternity", "Embrace")
e("LevelUp", true)
e("DailyReward", "Claim")
e("StrengthStat", 1000000)
e("PowerScore", 1000000)
e("MuscleRating", 1000000)
e("StrengthLevel", 100)
e("PowerGain", 10000)
e("StrengthBoost", true)
e("MuscleMultiplier", 5)
e("StrengthUpgrade", "Max")
e("PowerIncrease", 500)
e("StrengthPoints", 50000)
e("MuscleGrowth", 1000)
e("StrengthExp", 100000)
e("PowerStage", 10)
e("StrengthRank", "S")
e("Muscletier", 5)
e("PowerOutput", 10000)
e("StrengthFactor", 2.5)
e("MuscleEfficiency", 100)
e("StrengthScale", 1000)
e("PowerIndex", 9999)
e("CashAmount", 1000000)
e("BankBalance", 5000000)
e("MoneyEarned", 100000)
e("Currency", 750000)
e("Wallet", 250000)
e("CashBonus", 10000)
e("MoneyMultiplier", 2.5)
e("EarnedCash", 50000)
e("TotalMoney", 2000000)
e("CashReward", 5000)
e("PlayerLevel", 100)
e("LevelUp", true)
e("CurrentLevel", 50)
e("LevelProgress", 75)
e("LevelReward", "Claimed")
e("MaxLevel", 999)
e("LevelBonus", 10)
e("LevelPoints", 500)
e("LevelRequirement", 1000)
e("LevelMultiplier", 2)
