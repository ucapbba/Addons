Addon = { }

function Addon:Message()
    message("Hello World!") 

	--only available in instance
	--SendChatMessage("Ugh, I hate Thunder Bluff! You can't find a good burger anywhere.", "SAY",GetDefaultLanguage()) 
	
end

function Addon:DoStuff()

--all variables appear useless other than name
--name, instanceType, difficultyID, difficultyName, maxPlayers,
-- dynamicDifficulty, isDynamic, instanceID, instanceGroupSize, LfgDungeonID = GetInstanceInfo()
-- print(name)
 --CameraZoomIn(10)

end


Addon:Message()
Addon:DoStuff() 


