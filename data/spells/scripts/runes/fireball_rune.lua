local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_FIRE)

local area = createCombatArea(AREA_CIRCLE2X2)
combat:setArea(area)

function onGetFormulaValues(player, level, magicLevel)
	local base = 20
	local variation = 5

	local min = math.max((base - variation), ((3 * magicLevel + 2 * level) * (base - variation) / 100))
	local max = math.max((base + variation), ((3 * magicLevel + 2 * level) * (base + variation) / 100))

	return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(creature, variant, isHotkey)
	return combat:execute(creature, variant)
end
