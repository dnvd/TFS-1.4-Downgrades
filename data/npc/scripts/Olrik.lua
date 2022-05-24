dofile('data/npc/lib/greeting.lua')


local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

keywordHandler:addKeyword({'kevin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That name sounds familiar... who might that be..."})
keywordHandler:addKeyword({'postner'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That name sounds familiar... who might that be..."})
keywordHandler:addKeyword({'postmasters guild'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hm, I think I heard about that guild... oh wait, I am a member!"})
keywordHandler:addKeyword({'join'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Uh... oh... Uhm... Join what?"})
keywordHandler:addKeyword({'headquarter'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Its just... I mean... there was that road, oh yes, its that house at that road."})
keywordHandler:addKeyword({'mission'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, I'm just an illusion NPC, wait to next update to make my missions.."})
keywordHandler:addKeyword({'quest'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, I'm just an illusion NPC, wait to next update to make my missions.."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am working here at the post office. If you have questions about the Royal Tibia Mail System or the depots ask me."})
keywordHandler:addKeyword({'office'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am always in my office. You are welcome at any time."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Olrik."})
keywordHandler:addKeyword({'depot'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The depots are very easy to use. Just step in front of them and you will find your items in them. They are free for all tibian citizens. Hail our king!"})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oops, the king? I... can't remember his name..."})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ah, King Tibianus, our wise ruler. He is sick for some time, isn't he?"})
keywordHandler:addKeyword({'quentin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ooooh, nice man, visits me often... I think."})
keywordHandler:addKeyword({'lynda'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "She is SO pretty!"})
keywordHandler:addKeyword({'harkath'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, young Harkath will be a fine warrior some day."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "TO THE ARMS! MAN THE WALLS! FERUMBRAS IS NEAR!"})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "TO THE ARMS! MAN THE WALLS! FERUMBRAS IS NEAR!"})
keywordHandler:addKeyword({'general'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "TO THE ARMS! MAN THE WALLS! FERUMBRAS IS NEAR!"})
keywordHandler:addKeyword({'sam'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ham? No thanks, I ate fish already."})
keywordHandler:addKeyword({'frodo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Frodo... Frodo... ? Uhm... isn't that the man that brings me food at lunchtime?"})
keywordHandler:addKeyword({'gorn'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He sells equipment."})
keywordHandler:addKeyword({'elane'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, she lives next door. I think she's a dentist, I sometimes hear some cries."})
keywordHandler:addKeyword({'muriel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This Muriel has a lot of correspondence."})
keywordHandler:addKeyword({'gregor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Never heared of him."})
keywordHandler:addKeyword({'marvik'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is always talking of healing me but I am fine... I fear he is a little nuts, poor man."})
keywordHandler:addKeyword({'bozo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He hangs around here quite often. He claimes, I inspire him."})
keywordHandler:addKeyword({'baxter'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This naughty child, always stealing apples!"})
keywordHandler:addKeyword({'sherry'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't drink alcohol while on duty."})
keywordHandler:addKeyword({'lugri'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "NO! NO! NO! GO AWAY!."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can't remember that someone named like that lives here."})
keywordHandler:addKeyword({'news'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, I don't read the letters we transmit."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This is the town you are currently in."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You can sent letters and parcels to Carlin."})
keywordHandler:addKeyword({'xodet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The young sorcerer is a good businessman."})
keywordHandler:addKeyword({'quero'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I love his music! He is my best friend and I visit him as often as I can."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's |TIME|."})

function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end

if msgcontains(msg, 'parcel') or msgcontains(msg, 'Parcel') then
	itemname = "parcel"
	itemprice = 10
	npcHandler:say("Would you like to buy a parcel for 10 gold?", cid)
	talk_state = 8595

elseif msgcontains(msg, 'letter') or msgcontains(msg, 'Letter') then
	itemname = "letter"
	itemprice = 5
	npcHandler:say("Would you like to buy a letter for 5 gold?", cid)
	talk_state = 8596


elseif talk_state == 8595 and msgcontains(msg, 'yes') or talk_state == 8595 and msgcontains(msg, 'Yes') then
	if doPlayerRemoveMoney(cid, 10) == true then
		npcHandler:say("Here you are. Don't forget to write the name and the address of the receiver on the label. The label has to be in the parcel before you put the parcel in a mailbox.", cid)
		doPlayerAddItem(cid, 2595)
		doPlayerAddItem(cid, 2599)
	else
	npcHandler:say("Oh, you do not have enough gold to buy a ".. itemname ..".", cid)
	end
elseif talk_state == 8596 and msgcontains(msg, 'yes') or talk_state == 8596 and msgcontains(msg, 'Yes') then
	if doPlayerRemoveMoney(cid, 5) == true then
		npcHandler:say("Here it is. Don't forget to write the name of the receiver in the first line and the address in the second one before you put the letter in a mailbox.", cid)
		doPlayerAddItem(cid, 2597)
	else
	npcHandler:say("Oh, you do not have enough gold to buy a ".. itemname ..".", cid)
	end

elseif talk_state == 8595 and msgcontains(msg, '') then
npcHandler:say("Ok.", cid)
elseif talk_state == 8596 and msgcontains(msg, '') then
npcHandler:say("Ok.", cid)

elseif  msgcontains(msg, 'mail') then
    npcHandler:say('Our mail system is unique! And everyone can use it. Do you want to know more about it?', cid)
    talk_state = 505

        elseif talk_state == 505 and msgcontains(msg, 'yes') then
		npcHandler:say('The Tibia Mail System enables you to send and receive letters and parcels. You can buy them here if you want.', cid)
		talk_state = 0
        elseif talk_state == 505 and msgcontains(msg, 'no') then
		npcHandler:say('Is there anything else I can do for you?', cid)
		talk_state = 0

	-- The Postman Missions Quest
	elseif msgcontains(msg, 'measurements') and getPlayerStorageValue(cid,234) > 0 and getPlayerStorageValue(cid,240) < 1 then
	npcHandler:say('My measurements? Listen, lets make that a bit more exciting ... No, no, not what you think! I mean let\'s gamble. I will roll a dice. If I roll a 6 you win and I\'ll tell you what you need to know, else I win and get 5 gold. Deal?', cid)
	amount = math.random(1,6)
	topic = 5

	elseif topic == 5 and msgcontains(msg, 'no') then
	npcHandler:say('This way you\'ll never get my measurements.', cid)
	topic = 0

	elseif topic == 5 and getPlayerMoney(cid) >= 5 and amount == 6 then
	npcHandler:say('Ok, here we go ... 6! You have won! How lucky you are! So listen ...<tells you what you need to know>', cid)
	setPlayerStorageValue(cid,240,1)
	setPlayerStorageValue(cid,234,getPlayerStoraValue(cid,234)+1)
	topic = 0

	elseif topic == 5 and getPlayerMoney(cid) >= 5 then
	npcHandler:say('Ok, and its ... 5! You have lost. He he. Another game?', cid)
	doPlayerRemoveMoney(cid, 5)
	topic = 6

	elseif topic == 5 and getPlayerMoney(cid) < 5 then
	npcHandler:say('I am sorry, but you don\'t have so much money.', cid)
	topic = 0

	elseif topic == 6 and msgcontains(msg, 'yes') then
	npcHandler:say('Ok, no weights in the dice, no dirty tricks, are you ready?', cid)
	amount2 = math.random(1,6)
	topic = 7

	elseif topic == 6 and msgcontains(msg, 'no') then
	npcHandler:say('This way you\'ll never get my measurements.', cid)
	topic = 0

	elseif topic == 7 and getPlayerMoney(cid) >= 5 and amount2 == 6 then
	npcHandler:say('Ok, here we go ... 6! You have won! How lucky you are! So listen ...<tells you what you need to know>', cid)
	setPlayerStorageValue(cid,240,1)
	setPlayerStorageValue(cid,234,getPlayerStorageValue(cid,234)+1)
	topic = 0

	elseif topic == 7 and msgcontains(msg, 'no') then
	npcHandler:say('This way you\'ll never get my measurements.', cid)
	topic = 0

	elseif topic == 7 and getPlayerMoney(cid) >= 5 then
	npcHandler:say('Ok, and its ... 5! You have lost. He he. Another game?', cid)
	doPlayerRemoveMoney(cid, 5)
	topic = 6

	elseif topic == 7 and getPlayerMoney(cid) < 5 then
	npcHandler:say('I am sorry, but you don\'t have so much money.', cid)
	topic = 0

end
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
