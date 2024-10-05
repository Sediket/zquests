--[[
Instructions:
go to the quest room: 3 n;2 w;s;se; and type score
stop with /stop_reinc

will stop once you hit level 45
]]

reinc = {}

reinc.quests = {
	["Dive into the Marvin Gardens pond"] = {"5 w;3 s;dive in pond","surface;3 n;5 e"},
	["Do a little dance..."] = {"3 n;2 w;2 n;w;dance on floor","e;s;out;2 e;3 s"},
	["Cultural centers of Zombie City"] = {"3 n;4 w;enter;out;e;3 s;w;2 s;e;n;s;2 e;s;n;e;2 s;e;n;s;w;4 n"},
	["Important places in city"] = {"n;w;2 e;w;n;w;e;n;e;s;n;w;3 s;w;s;n;2 w;s;u;d;2 n;e;w;s;3 e"},
	["Reading is educational"] ={"4 s;e;n;pull lever;s;pull torchholder;2 w;2 s;3 w;read 1;q;read 2;q","3 e;2 n;2 e;n;enter hole;s;w;4 n"},
	["Scale the city wall"] = {"4 s;2 w;climb wall","e;6 n"},
	["Worship the statue of Tonto"] = {"4 e;4 s;worship statue","4 n;4 w"},
	["Area search"] = {"16 n;2 s;2 e;village;leave;4 s;3 e;path;out;5 w;10 s;12 w;3 n;village;fields;6 w;2 s;enter;out;2 s;2 e;ne;15 e","15 e;2 s;out;n;7 e;3 w;2 n;field;leave;12 w;7 s;2 path;5 n;7 w"},
	["The back entrance to the Catacombs"] = {"5 w;4 n;ne;d;4 s;w;n;5 d;e;n","s;w;5 u;s;e;4 n;u;sw;4 s;5 e"},
	["Get familiar with the Zombiecity's shop of Transportation"] = {"3 n;3 e;n;w;buy transport to ravenkall;6 e;2 n;2 w;s;buy transport to zombiecity"},
	["The Writings on the Wall"] = {"3 n;3 w;portal;hero_candidate;wield knife;church;4 e;3 s","4 e;2 s;carve Aloha;2 n;4 w"},
	["Visit the Temple of Burning Night"] = {"9 w;20 sw;15 w;10 s;8 w;5 n","5 s;8 e;10 n;15 e;20 ne;9 e"},
	["Survey the Mines"] = {"15 e;7 s;w;enter;s;n;out;e;enter;s;2 d;w;d;u;e;d","3 u;n;out;5 n;out;n;15 w"},
	["Visit the hall of the Defenders of Eternity"] = {"9 w;20 sw;15 w;10 s;8 w;4 n;8 sw;6 w;road;4 n;largehut;s;search picture","out;n;out;5 s;6 e;8 ne;4 s;8 e;10 n;15 e;20 ne;9 e"},
	["Man's Best Friend"] = {"nw;n;2 e;5 n;6 w;village;2 nw;w;open north door;n;pet dog;get stick;throw stick","s;e;2 se;leave;fields;6 e;5 s;2 w;s"},
	["Visit the monk guild's garden"] = {"3 n;3 w;transport monk;s;sw;se;ne;nw;3 s","out;se;20 e;17 ne;20 n;5 n;10 e;20 se;8 se;5 s;enter;buy transport to zombiecity"},
	["A kiss to remember"] = {"3 n;3 e;n;w;buy transport to ravenkall;6 e;4 n;open west door;w;buy kiss","e;close west door;2 n;6 w;20 n;n;enter;cs"},
	["Count the Obelisks"] = {"10 s;20 w;20 w;5 n;path;4 n;3 e;n;d;2 s;count","2 n;u;s;3 w;10 s;20 e;20 e;10 n"},
	["Farming"] = {"9 w;20 sw;15 w;10 s;8 w;4 n;8 sw;6 w;road;4 n;3 e;enter gate;e;s;w;n","gate;3 w;5 s;6 e;8 ne;4 s;8 e;10 n;15 e;20 ne;9 e"},
	["Visit Kiord the famous keymaker"] = {"10 s;20 w;20 w;5 n;path;11 n;e;7 n;2 w;2 se;w;s;2 w;nw;s;nw;s;nw;s;nw;n;3 e;2 n;push plate;2 n","out;2 w;2 s;w;3 n;e;2 nw;2 e;7 s;w;12 s;5 s;20 e;20 e;10 n"},
	["Find missing reagent for Xoth's soup"]={"4 s;e;n;pull lever;s;pull torchholder;2 w;n;stairs;3 ne;get egg;3 sw;stairs;3 s;2 e;push barrel;e;give egg to xoth","3 w;2 n;e;pull torchholder;e;n;travel hole;s;w;4 n"},
	["Escape from the Ancient pyramid"] = {"16 s;4 sw;11 s;11 s;se;pyramid;enter;stairs;2 ne;n;ne;stairs;2 s;se;e;n;ne;out","leave;nw;11 n;11 n;4 ne;16 n"},
	--["Visit the wise old man"] = {"3 n;3 e;n;w;buy transport to ravenkall;2 w;N;2 e;13 n;w;clearing;sw;3 w;sw;cross river;w;enter crack;out;e;cross river;ne;3 e;ne;out;e;N;enter;cs"}, --kills me
	["Find the Golden Kingdom"] = {"3 n;3 e;n;w;buy transport to ravenkall;2 w;6 n;2 e;3 n;20 w;20 w;18 n;path;ne;2 n;nw;w;enter tree;w;nw;n","s;se;e;out;e;se;2 s;sw;out;18 s;20 e;20 e;18 n;enter;cs"},
	--["Visit the intact fortress of Highwall"] = {"3 n;3 e;n;w;buy transport to ravenkall;2 w;6 n;2 e;16 n;20 w;20 w;20 w;10 w;12 s;6 e;2 ne;2 e;2 se;e;ruins;n;enter portal;nw","se;enter portal;s;out;ne;20 e;20 e;16 e;16 n;enter;cs"}, --needs to be done at night
	["Pay Your Respect"] = {"2 w;3 s;w;buy beer;e;3 n;2 e;10 n;20 nw;5 nw;2 n;10 e;3 n;4 e;path;hoist beer for kreator;drop bottle","path;4 w;3 s;10 w;2 s;20 se;5 se;10 s"},
	["Explore the Anar Forest"] = {"3 n;3 e;n;w;buy transport to ravenkall;2 w;6 n;2 e;7 n;2 w;12 sw;10 w;3 nw;5 w;13 sw;10 w;11 nw;4 n;6 nw;2 n;9 w;enter;N;e;n;trail;4 s;e;4 s;exit","9 e;2 s;6 se;4 s;11 se;10 e;13 ne;5 e;3 se;10 e;12 ne;2 e;14 n;enter;cs"},
	["Refill a tankard at the Uhruul Inn"] = {"10 s;7 se;s;enter;d;2 e;n;buy beer;drink beer;refill","s;2 w;u;out;n;7 nw;10 n"},
	["Visit the Elven Sage"] = {"3 n;3 e;n;w;buy transport to erend;20 nw;20 nw;10 nw;13 n;nw;n;ne;2 e;ne;search cliff;climb cliff;e;open door;n","s;w;climb down;sw;2 w;sw;s;se;13 s;10 se;20 se;20 se;sw;enter;buy transport to zombiecity"},
	--["Scout the abandoned cottage"] = {"3 n;3 e;n;w;buy transport to erend;10 nw;10 n;15 nw;15 w;15 nw;15 w;15 w;4 s","4 n;15 e;15 e;15 se;15 e;15 se;10 s;10 se;enter;buy transport to zombiecity"},
}

require "wait"

--if see what stop
function func_what(name,line,wildcards) var_action_stop = 1;Note("what, stoppting");end
AddTrigger("what","What \?", "", trigger_flag.Enabled+trigger_flag.Replace, -1, 0, "", "func_what");


AddAlias("reinc_alias", [[^\/do_reinc\s*(\d+)*$]], "score", alias_flag.Enabled+alias_flag.Replace+alias_flag.RegularExpression, "")

function func_check_level(name,line,wildcards)
	reinc.current_level = tonumber(wildcards[1])
	if reinc.current_level > 45 then
		--over 45 end
		print("Over 45")
		return
	else
		--under 45 do quests
		Send("quests 1")
		--check current quests
    end
end
AddTrigger("",[[  Mortal level: (.+?)\s*.*]],"",trigger_flag.RegularExpression+trigger_flag.Replace+trigger_flag.Enabled,2,0,"","func_check_level");

function func_quest_name(name,line,wildcards)
	quest_name = wildcards[1]
	print("quest name:"..quest_name)

	--match quest name from list of quests
	if reinc.quests[quest_name] then
		quest = reinc.quests[quest_name]
		--do quest
		Execute("nw;n;2 e;3 s;")
		Execute(quest[1])

		--go back
		if quest[2] ~= nil then
		  Execute(quest[2])
		else
			print("no return value")
		end

		Execute("3 n;2 w;s;")
	else
		Note("did not find:" .. quest_name)
		Send('request')
	end --end match quest name
end
AddTrigger("",[[^Name\s+:\s([a-zA-Z .',]+)$]],"",trigger_flag.RegularExpression+trigger_flag.Replace+trigger_flag.Enabled,2,0,"","func_quest_name");


function func_too_many_quests(name,line,wildcards)
	--level up four times
	Execute ("nw;advance;advance;advance;advance;se;score")
end
AddTrigger("",[[Sorry, no new quests available.]],"",trigger_flag.RegularExpression+trigger_flag.Replace+trigger_flag.Enabled,2,0,"","func_too_many_quests");
AddTrigger("",[[No such quest.]],"request",trigger_flag.RegularExpression+trigger_flag.Replace+trigger_flag.Enabled,2,0,"","");
AddTrigger("",[[If you are absolutely sure of this, enter the command 'request 2'.]],"request 2",trigger_flag.RegularExpression+trigger_flag.Replace+trigger_flag.Enabled,2,0,"","");
AddTrigger("",[[If you are absolutely sure of this, enter the command 'request 3'.]],"request 3",trigger_flag.RegularExpression+trigger_flag.Replace+trigger_flag.Enabled,2,0,"","");

function func_finished_quest(name,line,wildcards)
	Execute("advance;se;score")
end
AddTrigger("",[[Congratulations!]],"",trigger_flag.RegularExpression+trigger_flag.Replace+trigger_flag.Enabled,2,0,"","func_finished_quest");


function func_stop_reinc(name,line,wildcards)
	triggers_list = GetTriggerList()
	for k,b in pairs(triggers_list) do
        SetTriggerOption(b, "enabled", "n");
	end
end
AddAlias("","/stop_reinc", "", alias_flag.Enabled+alias_flag.Replace, "func_stop_reinc");

function func_debug(name,line,wildcards)
	assert (loadstring (FixupEscapeSequences(wildcards[1]))) ()
end
AddAlias("debug","~*", "", alias_flag.Enabled+alias_flag.Replace, "func_debug");



function func_show_trigs (name, line, wildcards)
	triggers_list = GetTriggerList()
	for k,b in pairs(triggers_list) do
		Note("---")
		Note(b.. ": " .. GetTriggerInfo(b,1)) -- name and matching text
		Note(GetTriggerInfo(b,2)) --what to send
		Note(GetTriggerInfo(b,4)) --script
		Note(GetTriggerInfo(b,8)) --enabled
		Note("---")
	end
end
AddAlias("", [[/trigs]], "", alias_flag.Enabled+alias_flag.Replace+alias_flag.RegularExpression, "func_show_trigs")






-- 	--[[
-- 		quests 1:

-- 		Quest number 1.
-- 		Name             : Ailurophile

-- 		-or-

-- 		No such quest.

-- 		===================================================================
-- 		request:
-- 		#you don't have a quest for this level:
		
-- 		You have been given the following quest:
-- 		Quest number 1.
-- 		Name             : Slay Shrije		

-- 		-or-
-- 		#if you can't request more quests, you already did the quest for this level or you can't request after 3

-- 		Sorry, no new quests available.

-- 		-or-
-- 		#you already have a quest and need to request another:

-- 		Are you sure you want your third quest?
-- 		Having three quests simultaneously would reduce the quest point amount you get to 33% of the normal value.
-- 		If you are absolutely sure of this, enter the command 'request 3'.
-- 		===================================================================
-- 		request #
-- 		You have been given the following quest:
-- 		Quest number 1.
-- 		Name             : Slay Shrije	
-- 		===================================================================

-- 		check current quest with quest 1, this gives the quest or no such quest.
-- 		if it gives the quest, do the quest
-- 		if it gives no such quest, need to find out if I've already done the quest or if I need to get a new one
-- 		to find out go to laches and 'request' it will either say Sorry, 'no new quests available' or give a new quest.
-- 		if it gives a quest, do the quest
-- 		if it says no new quests available, need to level up

-- 		do quest:
-- 			if the quest is not doable, need to request a new one
-- 			at laches request again, it will give the command to request another
-- 			if its the third quest it will say no new quests available and need to level up 4 times

-- 	]]
