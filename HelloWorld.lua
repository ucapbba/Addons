Main = { }
  print("|cFF33FF99HelloWorld|r:", "Main loaded")

function Main:Message()
    message("Displaying a config square") 
end

SlashCmdList.HELLOWORLD = function()
  Main:Message()
  Config:DisplaySquare()
  print("|cFF33FF99HelloWorld|r:", "Message Displayed")
end
SLASH_HELLOWORLD1 = "/hw"


