GUI = {}
  print("|cFF33FF99HelloWorld|r:", "GUI loaded")

function GUI:DisplaySquare()

local f = CreateFrame("Frame", "BasicBuffsFrame", UIParent)

local bg = f:CreateTexture()
bg:SetAllPoints(f)
bg:SetColorTexture(0, 0, 1, 1)
bg:Show()

local SetPoint = f.SetPoint
local ClearAllPoints = f.ClearAllPoints

local header = f:CreateFontString(nil, "OVERLAY", "TextStatusBarText")
header:Show()

f:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
f:SetWidth(600)
f:SetHeight(40)
f:Show()

f:RegisterEvent("PLAYER_LOGIN")
f:SetScript("OnEvent", function(display)
	if not BasicBuffsOptions then
		BasicBuffsOptions = {"CENTER", "CENTER", 0, 0, false}
	end

	display:ClearAllPoints()
	display:SetPoint(BasicBuffsOptions[1], UIParent, BasicBuffsOptions[2], BasicBuffsOptions[3], BasicBuffsOptions[4])

	if BasicBuffsOptions[5] then
		bg:Hide()
		header:Hide()
		display:EnableMouse(false)
		display:SetMovable(false)
	end

	display:UnregisterEvent("PLAYER_LOGIN")
	display:SetScript("OnEvent", nil)
end)


end  --end of display square

