local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat:setParameter(COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)
combat:setArea(createCombatArea(AREA_CIRCLE3X3))

function onCastSpell(creature, variant, magicLevel)
	local base = 200
	local variation = 40

	local min = math.max((base - variation), ((3 * magicLevel + 2 * level) * (base - variation) / 100))
	local max = math.max((base + variation), ((3 * magicLevel + 2 * level) * (base + variation) / 100))

	return min, max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(creature, variant)
	return combat:execute(creature, variant)
end
