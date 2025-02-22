-----------------------------------------
-- Spell: Indi-Paralysis
-- Paralyzes enemies near the caster.
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/job_utils/geomancer")
-----------------------------------
local spellObject = {}

spellObject.onMagicCastingCheck = function(caster, target, spell)
    return xi.job_utils.geomancer.indiOnMagicCastingCheck(caster, target, spell)
end

spellObject.onSpellCast = function(caster, target, spell)
    return xi.job_utils.geomancer.doIndiSpell(caster, target, spell)
end

return spellObject
