dofile('data/npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addBuyableItem({'lyre'}, 2071, 120)
shopModule:addBuyableItem({'lute'}, 2072, 195)
shopModule:addBuyableItem({'drum'}, 2073, 140)
shopModule:addBuyableItem({'simple fanfare'}, 2075, 150)
 
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Elvith Rollingstone."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell musical instruments of many kinds."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Time has its own song. Close your eyes and listen to the symphony of the seasons."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Carlin is a city that thrives for a harmony it can never achive."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I heared about Thais and id did not sound like a place I'd want to visit."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "By all what I heared this city is not only built into a swamp but its a swamp of intrigue and corruption itself."})
keywordHandler:addKeyword({'roderick'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This man trys too hard not to offend someone."})
keywordHandler:addKeyword({'olrik'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He appreciates my music and allthough he is loud and clumsy as all humans it seems not everything is lost."})
keywordHandler:addKeyword({'music'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Music is an attempt to condensate emotions in harmonies and save them for the times to come."})
keywordHandler:addKeyword({'harmonies'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Everything is a song. Life, death, history ... everything. To listen to the song of something is the first step to understand it."})
keywordHandler:addKeyword({'melodies'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Everything is a song. Life, death, history ... everything. To listen to the song of something is the first step to understand it."})
keywordHandler:addKeyword({'harmony'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Everything is a song. Life, death, history ... everything. To listen to the song of something is the first step to understand it."})
keywordHandler:addKeyword({'melody'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Everything is a song. Life, death, history ... everything. To listen to the song of something is the first step to understand it."})
keywordHandler:addKeyword({'song'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Everything is a song. Life, death, history ... everything. To listen to the song of something is the first step to understand it."})
keywordHandler:addKeyword({'sing'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, but there is a melody in my heart that wants to be born. I would loose it before by singing right now."})
keywordHandler:addKeyword({'elf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We are the most graceful of all races. We feel the music of the universe in our hearts and souls."})
keywordHandler:addKeyword({'elve'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We are the most graceful of all races. We feel the music of the universe in our hearts and souls."})
keywordHandler:addKeyword({'dwar'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They could at least use their picks and hammers with more rythm."})
keywordHandler:addKeyword({'human'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They are too loud and don't even understand the concept of a melody."})
keywordHandler:addKeyword({'troll'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I went down to the mines and tried to lighten up their spirit, the foolish creatures did not listen to my songs, though."})
keywordHandler:addKeyword({'cenath'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Cenath think they know the 'art' but the only true art is the music."})
keywordHandler:addKeyword({'kuridai'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They could dig some halls for a big musical event, but they won't listen to me about that matter."})
keywordHandler:addKeyword({'deraisim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The other deraisim are too much concerned with mastering the nature so they don't listen to its music anymore."})
keywordHandler:addKeyword({'abdaisim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The wanderers have no patience. You need patience and passion to create and to enjoy music."})
keywordHandler:addKeyword({'teshial'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I bet they were great musicians."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Only humans made songs about him and his evil deeds."})
keywordHandler:addKeyword({'crunor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That is some god the humans worship. Our pople are not interested in this gods anymore."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There are too many songs about that weapon to retell them all. Most of them are human and therefore quite crude anyways."})
keywordHandler:addKeyword({'spell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, I don't feel like teaching magic today."})
keywordHandler:addKeyword({'magic'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, I don't feel like teaching magic today."})
keywordHandler:addKeyword({'poetry'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, I have no issue of this book left."})
keywordHandler:addKeyword({'song'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, I have no issue of this book left."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell lyres, lutes, drums, and simple fanfares."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell lyres, lutes, drums, and simple fanfares."})
keywordHandler:addKeyword({'buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell lyres, lutes, drums, and simple fanfares."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell lyres, lutes, drums, and simple fanfares."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell lyres, lutes, drums, and simple fanfares."})
keywordHandler:addKeyword({'instrum'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell lyres, lutes, drums, and simple fanfares."})

npcHandler:addModule(FocusModule:new())