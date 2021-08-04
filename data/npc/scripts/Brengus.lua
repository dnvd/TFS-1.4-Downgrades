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

shopModule:addSellableItem({'two handed sword'}, 2377, 450)
shopModule:addSellableItem({'battle axe'}, 2378, 80)
shopModule:addSellableItem({'dagger'}, 2379, 2)
shopModule:addSellableItem({'hand axe'}, 2380, 4)
shopModule:addSellableItem({'halberd'}, 2381, 400)
shopModule:addSellableItem({'rapier'}, 2384, 5)
shopModule:addSellableItem({'sabre'}, 2385, 12)
shopModule:addSellableItem({'axe'}, 2386, 7)
shopModule:addSellableItem({'hunting spear'}, 3965, 25)
shopModule:addSellableItem({'spear'}, 2389, 3)
shopModule:addSellableItem({'morning star'}, 2394, 90)
shopModule:addSellableItem({'mace'}, 2398, 30)
shopModule:addSellableItem({'short sword'}, 2406, 10)
shopModule:addSellableItem({'battle hammer'}, 2417, 120)
shopModule:addSellableItem({'sword'}, 2376, 25)
shopModule:addSellableItem({'templar scytheblade'}, 3963, 200)
shopModule:addSellableItem({'ripper lance'}, 3964, 500)
shopModule:addSellableItem({'banana staff'}, 3966, 1000)
shopModule:addSellableItem({'leather armor'}, 2467, 12)
shopModule:addSellableItem({'chain armor'}, 2464, 70)
shopModule:addSellableItem({'brass armor'}, 2465, 150)
shopModule:addSellableItem({'plate armor'}, 2463, 400)
shopModule:addSellableItem({'chain legs'}, 2648, 25)
shopModule:addSellableItem({'leather helmet'}, 2461, 4)
shopModule:addSellableItem({'chain helmet'}, 2458, 17)
shopModule:addSellableItem({'steel helmet'}, 2457, 190)
shopModule:addSellableItem({'wooden shield'}, 2512, 5)
shopModule:addSellableItem({'battle shield'}, 2513, 95)
shopModule:addSellableItem({'steel shield'}, 2509, 80)
shopModule:addSellableItem({'tusk shield'}, 3973, 850)
shopModule:addSellableItem({'sentinel shield'}, 3974, 120)
shopModule:addSellableItem({'salamander shield'}, 3975, 280)
shopModule:addSellableItem({'tribal'}, 3967, 250)
shopModule:addSellableItem({'leopard armor'}, 3968, 300)
shopModule:addSellableItem({'horseman helmet'}, 3969, 280)
shopModule:addSellableItem({'feather headdress'}, 3970, 850)
shopModule:addSellableItem({'crocodile boots'}, 3982, 100)
shopModule:addSellableItem({'bast shirt'}, 3983, 750)
shopModule:addSellableItem({'charmer tiara'}, 3971, 900)
shopModule:addSellableItem({'beholder helmet'}, 3972, 2200)

shopModule:addBuyableItem({'dagger'}, 2379, 5)
shopModule:addBuyableItem({'hand axe'}, 2380, 8)
shopModule:addBuyableItem({'spear'}, 2389, 10)
shopModule:addBuyableItem({'rapier'}, 2384, 15)
shopModule:addBuyableItem({'axe'}, 2386, 20)
shopModule:addBuyableItem({'sabre'}, 2385, 35)
shopModule:addBuyableItem({'sword'}, 2376, 85)
shopModule:addBuyableItem({'mace'}, 2398, 90)
shopModule:addBuyableItem({'battle hammer'}, 2417, 350)
shopModule:addBuyableItem({'throwing star'}, 2399, 50, 0, 'throwing stars')
shopModule:addBuyableItem({'chain armor'}, 2464, 200)
shopModule:addBuyableItem({'brass armor'}, 2465, 450)
shopModule:addBuyableItem({'leather armor'}, 2467, 35)
shopModule:addBuyableItem({'chain helmet'}, 2458, 52)
shopModule:addBuyableItem({'leather helmet'}, 2461, 12)
shopModule:addBuyableItem({'steel shield'}, 2509, 240)
shopModule:addBuyableItem({'wooden shield'}, 2512, 15)
shopModule:addBuyableItem({'chain legs'}, 2648, 80)
 
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a tradesman. I sell and buy weapons and armor."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Brengus."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, my watch didn't take the moist air here too well."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This is the king's land. It was a wise decision to have us people from Venore rule this settlement."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I miss my home like most of us here, but I have duties and responsibilities. After all, there is some meagre profit to earn here."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A nice big city of course, but it lacks style and grandeur. Such qualities you will only find when you visit my hometown Venore."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I hope the king will take these rebelling women soon under Thaian guidance once again. I hate to see the profits wasted that could be earned there."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A rich and lovely island. Sadly those knights kept our tradesmen out of business for some unknown reason. I am convinced after seeing our success with this colony here, the king will allow Venore to become more present over there too."})
keywordHandler:addKeyword({'jungle'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Of course there are problems. But problems are there to keep those out of business who are not prepared and diligent enough."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's a world full of possibilities."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dwarves of Kazordoon are stubborn people and it's hard to have dealings with them. But as often, the hardship is very rewarding for those who are able to handle them."})
keywordHandler:addKeyword({'dwarves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dwarves of Kazordoon are stubborn people and it's hard to have dealings with them. But as often, the hardship is very rewarding for those who are able to handle them."})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dwarves of Kazordoon are stubborn people and it's hard to have dealings with them. But as often, the hardship is very rewarding for those who are able to handle them."})
keywordHandler:addKeyword({"ab'dendriel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's complicated to negotiate with those elves but it is possible."})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's complicated to negotiate with those elves but it is possible."})
keywordHandler:addKeyword({'elf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's complicated to negotiate with those elves but it is possible."})
keywordHandler:addKeyword({'darama'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We have hardly scratched the surface of all the possibilities to gain profit that are hidden on this continent."})
keywordHandler:addKeyword({'darashia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The sandwasp's honey is quite useful. But that's the only noteworthy thing about this unimportant desert hicktown."})
keywordHandler:addKeyword({'ankrahmun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's somewhat hard to evaluate if this city poses another threat or a new market. Only time can tell."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is bad for business. The big trading houses of Venore have yet to decide what price they will put on his head."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If you ever stumble upon that interesting piece of jewellery, contact me. I know somebody who would pay a decent amount of crystal to add it to his collection of curiosities."})
keywordHandler:addKeyword({'ape'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They are neither skilled in a craft nor do they know about the concept of trade. They constantly raid our colony to steal items."})
keywordHandler:addKeyword({'lizzard'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The lizzard folk is hostile to us but luckily they live far enough from here to be an immediate danger."})
keywordHandler:addKeyword({'dworc'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They should be driven into the sea."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My offers are weapons, armors, helmets, legs, and shields."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My offers are weapons, armors, helmets, legs, and shields."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My offers are weapons, armors, helmets, legs, and shields."})
keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have hand axes, axes, spears, maces, battle hammers, swords, rapiers, daggers, and sabres. What's your choice?"})
keywordHandler:addKeyword({'helmet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling leather helmets and chain helmets. What do you want?"})
keywordHandler:addKeyword({'armor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling leather, chain and brass armors. What do you need?"})
keywordHandler:addKeyword({'shield'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling wooden shields and steel shields. What do you want?"})
keywordHandler:addKeyword({'trousers'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling chain legs. Do you want to buy some?"})
keywordHandler:addKeyword({'legs'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling chain legs. Do you want to buy some?"})
keywordHandler:addKeyword({'tusk'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, I'm not interested in tusks, but you might want to offer them to Zaidal - as far as I know he uses them for making tables and chairs."})

npcHandler:addModule(FocusModule:new())