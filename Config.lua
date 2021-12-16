Config = {}
  print("|cFF33FF99HelloWorld|r:", "Config loaded")

function Config:DisplayConfig()
end

function Config:UpdateConfig()
 name = 'helloworld'
 InterfaceOptionsFrame_OpenToCategory(name)
 local bcm = CreateFrame("Frame", "BCM", InterfaceOptionsFramePanelContainer)
	bcm.name = name
	InterfaceOptions_AddCategory(bcm)
	local bcmTitle = bcm:CreateFontString(nil, "ARTWORK", "GameFontNormalHuge")
	bcmTitle:SetPoint("CENTER", bcm, "TOP", 0, -30)
	bcmTitle:SetText(name.." v2-bcc") --wowace magic, replaced with tag version
	local bcmDesc = bcm:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
	bcmDesc:SetPoint("CENTER")
	bcmDesc:SetText(BCM.CORE)
	bcmDesc:SetWidth(450)
	bcmDesc:SetJustifyH("CENTER")

	local panelDesc = bcm:CreateFontString("BCMPanelDesc", "ARTWORK", "GameFontNormalLarge")
	panelDesc:SetWidth(500)
	panelDesc:SetWordWrap(true)
	local enableBtn = CreateFrame("CheckButton", "BCMEnableButton", bcm, "OptionsBaseCheckButtonTemplate")
	enableBtn:SetScript("OnClick", function(frame)
		BCM_Warning:Show()
		if frame:GetChecked() then
			PlaySound(856) -- SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON
			bcmDB[frame:GetParent():GetName()] = nil
		else
			PlaySound(857) -- SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_OFF
			bcmDB[frame:GetParent():GetName()] = true
		end
	end)
local enableBtnText = enableBtn:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
	enableBtnText:SetPoint("LEFT", enableBtn, "RIGHT")
	enableBtnText:SetText(ENABLE)
	local warn = bcm:CreateFontString("BCM_Warning", "ARTWORK", "GameFontNormal")
	warn:SetJustifyH("CENTER")
	warn:SetText(BCM.WARNING)
	warn:Hide()
	local optionsWarn = bcm:CreateFontString("BCM_OptionsWarn", "ARTWORK", "GameFontNormal")
	optionsWarn:SetJustifyH("CENTER")
	optionsWarn:SetText(BCM.OPTIONS)
	optionsWarn:Hide()
	BCM.info = {}	
end
