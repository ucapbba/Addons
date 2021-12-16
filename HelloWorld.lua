Main = { }
  print("|cFF33FF99HelloWorld|r:", "Main loaded")

function Main:Message()
    message("Displaying a blue square square") 
end

Config:UpdateConfig()
	
SlashCmdList.HELLOWORLD = function() 
  Main:Message()
  GUI:DisplaySquare()
  print("|cFF33FF99HelloWorld|r:", "Message Displayed")
end
SLASH_HELLOWORLD1  = "/hw"


