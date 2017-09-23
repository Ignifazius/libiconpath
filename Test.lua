
if not LibStub then return end

local lib = LibStub("LibIconPath")

function lib:test()

    assert(self:getName(132089) == "ability_ambush", "getName failed")
    assert(self:getName("132089") == "ability_ambush", "getName failed")
    assert(self:getName("ability_ambush") == "ability_ambush", "getName failed")
    assert(self:getName(nil) == "inv_misc_questionmark", "getName failed")

    assert(self:getPath(132089) == "Interface\\Icons\\ability_ambush", "getPath failed")
    assert(self:getPath("132089") == "Interface\\Icons\\ability_ambush", "getPath failed")
    assert(self:getPath("ability_ambush") == "Interface\\Icons\\ability_ambush", "getPath failed")
    assert(self:getPath(nil) == "Interface\\Icons\\inv_misc_questionmark", "getPath failed")

    assert(self:getIconBySpellID(8676) == "Interface\\Icons\\ability_rogue_ambush", "getIconBySpellID failed")

    assert(self:getIDByName("ability_ambush") == 132089, "getIDByName failed")

    print("Tests passed!")
end