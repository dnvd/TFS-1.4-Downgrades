-- NPC Converter System - developed by Utroz <utroz@oakcoders.com>
local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)	npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid)	npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg)	npcHandler:onCreatureSay(cid, type, msg) end
function onThink()	npcHandler:onThink() end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I am the abbot of the white raven monastery on the isle of the kings.'})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'My name is Costello.'})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'That is the name of our world and its major continent.'})
keywordHandler:addKeyword({'god'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'They created Tibia and all life on it.'})
keywordHandler:addKeyword({'life'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'On Tibia there are many forms of life. Plants, the citizens, and monsters.'})
keywordHandler:addKeyword({'plant'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Just walk around, you will see grass, trees, and bushes.'})
keywordHandler:addKeyword({'white raven'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'The legends tell us of a white raven which lead the ship of the first monk of our order here. He discovered this isle and the caves beneath it.'})
keywordHandler:addKeyword({'caves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Anselm, the first of our order, discovered them while looking for a suitable burial place for his king.'})
keywordHandler:addKeyword({'anselm'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'He was a humble and pious man, and he was chosen by the royal family of thais to find a resting place for their dead.'})
keywordHandler:addKeyword({'isle'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'We founded our monastery to guard the royal tombs and to gather wisdom and knowledge.'})
keywordHandler:addKeyword({'wisdom'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'You are allowed to enter the library upstairs. Stay there and don\'t go upstairs, because that area is reserved for members of our order.'})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'One day every Tibianus ends up here.'})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'The bygone leaders of the Thaian empire rest beneath this monastery in tombs and crypts.'})
-- keywordHandler:addKeyword({'tomb QuestValue(63)<1'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'The tombs and crypts of the Thaian lineage are well protected deep beneath our abbey, although ... but surely this will not interest you.'})
-- keywordHandler:addKeyword({'although QuestValue(63)<1'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'In my dreams the dead are talking to me about torment and disturbance. But I might be imagining things.'})
-- keywordHandler:addKeyword({'imagining QuestValue(63)<1'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Brother Fugio, the only one of our order who is allowed to enter the crypts, assures me everything is all right.'})
-- keywordHandler:addKeyword({'fugio QuestValue(63)<1'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'To be honest, I fear the omen in my dreams may be true. Perhaps Fugio is unable to see the danger down there. Perhaps ... you are willing to investigate this matter?'})
-- keywordHandler:addKeyword({'diary QuestValue(219)=0'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you want me to inspect a diary?'})
-- keywordHandler:addKeyword({'diary QuestValue(219)>0'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Thank you again for handing me that diary.'})
-- keywordHandler:addKeyword({'passage QuestValue(63)=1'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Oh of course, I will order Jack and the fisher Windtrouser to give you transportation if needed.'})
keywordHandler:addKeyword({'passage'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'You should not be here at all and I won\'t allow anyone to transport you from or to this isle.'})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Don\'t mention this servant of evil here.'})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Sadly we have only little knowledge on this topic.'})
keywordHandler:addKeyword({'news'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Sorry, we rarely hear anything new here.'})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'There are really too many of them in Tibia. But who are we to question the wisdom of the gods?'})
-- keywordHandler:addKeyword({'heal$ QuestValue(220)>0'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I won\'t waste my healing powers on you, spawn of evil!'})
-- keywordHandler:addKeyword({'heal$ Burning>0'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'You are burning. I will help you.'})
-- keywordHandler:addKeyword({'heal$ Poison>0'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'You are poisoned. I will help you.'})
-- keywordHandler:addKeyword({'heal$ HP<40'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'You are looking really bad. Let me heal your wounds.'})
-- keywordHandler:addKeyword({'heal$'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'You aren\'t looking that bad. Sorry, I can\'t help you.'})


function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end
    if (msgcontains(msg, 'absolution') or msgcontains(msg, 'crime')) and getPlayerStorageValue(cid, 501) == 1 and getPlayerLevel(cid) < 20 then
            price = 500
            npcHandler:say('The only way to redeem such an offence is the sacrifice of 500 gold pieces! Are you willing to pay that sum?', cid)
            talk_state = 1
        elseif (msgcontains(msg, 'absolution') or msgcontains(msg, 'crime')) and getPlayerStorageValue(cid, 501) == 1 and getPlayerLevel(cid) < 40 and getPlayerLevel(cid) >= 20 then
            npcHandler:say('The only way to redeem such an offence is the sacrifice of 1000 gold pieces! Are you willing to pay that sum?', cid)
            talk_state = 1
            price = 1000
        elseif (msgcontains(msg, 'absolution') or msgcontains(msg, 'crime')) and getPlayerStorageValue(cid, 501) == 1 and getPlayerLevel(cid) <= 60 and getPlayerLevel(cid) >= 40 then
            npcHandler:say('The only way to redeem such an offence is the sacrifice of 5000 gold pieces! Are you willing to pay that sum?', cid)
            talk_state = 1
            price = 5000
        elseif (msgcontains(msg, 'absolution') or msgcontains(msg, 'crime')) and getPlayerStorageValue(cid, 501) == 1 and getPlayerLevel(cid) > 60 then
            npcHandler:say('The only way to redeem such an offence is the sacrifice of 10000 gold pieces! Are you willing to pay that sum?', cid)
            talk_state = 1
            price = 10000
        elseif talk_state == 1 and msgcontains(msg, 'yes') and doPlayerRemoveMoney(cid, price) == true then
            npcHandler:say('So receive your absolution! And never do such a thing again!', cid)
                setPlayerStorageValue(cid,501,0)
        elseif talk_state == 1 and msgcontains(msg, 'yes') and doPlayerRemoveMoney(cid, price) == false then
            npcHandler:say('Oh. You do not have enough money.', cid)
        elseif talk_state == 1 and msgcontains(msg, 'no') then
            npcHandler:say('Then stay here.', cid)
        return true
        end

    if msgcontains(msg, 'fugio') and getPlayerStorageValue(cid, 503) < 1 then
            npcHandler:say('To be honest, I fear the omen in my dreams may be true. Perhaps Fugio is unable to see the danger down there. Perhaps ... you are willing to investigate this matter?', cid)
            talk_state = 10
        elseif talk_state == 10 and msgcontains(msg, 'yes') then
            npcHandler:say('Thank you very much! From now on you may open the warded doors to the catacombs.', cid)
            setPlayerStorageValue(cid,503,1)
            setPlayerStorageValue(cid,504,1)
        elseif msgcontains(msg, 'diary') and getPlayerStorageValue(cid, 504) == 1 then
            npcHandler:say('Do you want me to inspect a diary?', cid)
            talk_state = 11
        elseif msgcontains(msg, 'diary') and getPlayerStorageValue(cid, 504) == 2 then
            npcHandler:say('Thank you again for handing me that diary.', cid)
        elseif talk_state == 11 and msgcontains(msg, 'yes') and getPlayerItemCount(cid, 1972) < 1 then
        npcHandler:say("What a pity.")
        elseif talk_state == 11 and msgcontains(msg, 'yes') and getPlayerItemCount(cid, 1972) == 1 and getPlayerStorageValue(cid, 504) == 1 then
            npcHandler:say("By the gods! This is brother Fugio's handwriting and what I read is horrible indeed! You have done our order a great favour by giving this diary to me! Take this blessed Ankh. May it protect you in even your darkest hours.", cid)
            doPlayerAddItem(cid,2193,1)
            doPlayerRemoveItem(cid,1972,1)
            setPlayerStorageValue(cid,504,2)
        return true
        end

    if msgcontains(msg, 'heal') then
        if hasCondition(cid, CONDITION_FIRE) == true then
            npcHandler:say('You are burning. I will help you.', cid)
            doRemoveCondition(cid, CONDITION_FIRE)
            doSendMagicEffect(getCreaturePosition(cid), 14)
        elseif hasCondition(cid, CONDITION_POISON) == true then
            npcHandler:say('You are poisoned. I will help you.', cid)
            doRemoveCondition(cid, CONDITION_POISON)
            doSendMagicEffect(getCreaturePosition(cid), 13)
        elseif getCreatureHealth(cid) < 65 then
            npcHandler:say('You are looking really bad. Let me heal your wounds.', cid)
            doCreatureAddHealth(cid, 65 - getCreatureHealth(cid))
            doSendMagicEffect(getCreaturePosition(cid), 12)
        else
            npcHandler:say('You aren\'t looking really bad, ' .. getCreatureName(cid) .. '. I can only help in cases of real emergencies. Raise your health simply by eating food.', cid)
        end
        return true
    end
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
