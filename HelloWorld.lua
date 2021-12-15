Addon = { }

function Addon:Message()
    message("Hello World!") 

end

function Addon:DoStuff()

end

SlashCmdList.HELLOWORLD = function()
  Addon:Message()
  print("|cFF33FF99HelloWorld|r:", _G.UNLOCK)
end
SLASH_HELLOWORLD1 = "/hw"

--Addon:DoStuff() 


