local holes = {468, 481, 483}
local TILE_SAND = 231
local ITEM_SCARAB_COIN = 2159
local TUMB_ENTRANCE = 25001
local SCARAB_TILE = 25002
local SAND_HOLE = 489
local duration = 5*60000 -- 5 minutes

local function __doTransformHole__(parameters)
	local thing = getTileItemById(parameters.pos, SAND_HOLE)
	local newItem = doTransformItem(thing.uid, parameters.oldType)
	if parameters.oldaid ~= 0 and newItem then
		doSetItemActionId(thing.uid, parameters.oldaid)
	end
end

local function __resetTile__(parameters)
	local thing = getTileItemById(parameters.pos, TILE_SAND)
	doSetItemActionId(thing.uid, SCARAB_TILE)
end

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local tile = Tile(toPosition)
	if not tile then
		return false
	end

	local ground = tile:getGround()
	if not ground then
		return false
	end

	local groundId = ground:getId()
	if table.contains(holes, groundId) then
		ground:transform(groundId + 1)
		ground:decay()

		toPosition.z = toPosition.z + 1
		tile:relocateTo(toPosition)
	elseif groundId == TILE_SAND then
		if (target.actionid == TUMB_ENTRANCE) then
			if (math.random(1, 5) == 1) then
				doTransformItem(target.uid, SAND_HOLE)
				addEvent(__doTransformHole__, duration, {oldType = target.itemid, pos = toPosition, oldaid = target.actionid})
				if target.actionid ~= 0 then
					doSetItemActionId(target.uid, target.actionid)
				end
			end
		elseif (target.actionid == SCARAB_TILE) then
			addEvent(__resetTile__, 30*60000, {pos = toPosition})
			doSetItemActionId(target.uid, 101)
			if (math.random(1, 20) == 1) then
				doCreateItem(ITEM_SCARAB_COIN, toPosition)
			else
				doSummonCreature("Scarab", toPosition)
			end
		end

		toPosition:sendMagicEffect(CONST_ME_POFF)
	else
		return false
	end

	return true
end
