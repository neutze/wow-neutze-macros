-- Neutze's Macros: pick your spec, then click a spell to create (or update) its macro on this character.
-- One ability per macro: switch stance/form first where needed, then use it. Presets live in NeutzeMacros_Data.lua.
NeutzeMacros = NeutzeMacros or {}
local NM = NeutzeMacros
local PREFIX = "|cff66ccffNeutze's Macros|r: "
local ICON = 134400            -- the "?" icon: with #showtooltip the button shows the spell itself

local function DB()
  NeutzeMacrosCharDB = NeutzeMacrosCharDB or {}
  return NeutzeMacrosCharDB
end

local function Class() local _, c = UnitClass("player"); return c end
function NM.Specs() return NM.SPECS[Class()] or {} end
function NM.Spec()
  local d, specs = DB(), NM.Specs()
  if d.spec then for _, s in ipairs(specs) do if s == d.spec then return s end end end
  return specs[1]
end

-- macros for the chosen spec: those without a spec list, plus those tagged for it
function NM.List()
  local spec, out = NM.Spec(), {}
  for _, m in ipairs(NM.DATA[Class()] or {}) do
    local ok = not m.specs
    if m.specs then for _, s in ipairs(m.specs) do if s == spec then ok = true end end end
    if ok then out[#out + 1] = m end
  end
  return out
end

-- the spell a macro is about: "#showtooltip X", else the last /cast line
local function SpellOf(m)
  local tip = m.body:match("^#showtooltip ([^\n]+)")
  if tip and tip:match("%S") then return (tip:gsub("%s+$", "")) end
  local last
  for line in m.body:gmatch("[^\n]+") do
    local seq = line:match("^/castsequence%s+(.+)")
    if seq then                                   -- a sequence: show its first spell
      seq = seq:gsub("%b[]", ""):gsub("^%s*reset=%S+%s*", "")
      last = seq:match("^([^,;]+)")
    else
      local s = line:match("^/cast%s+(.+)")
      if s then last = (s:gsub("%b[]", "")):match("([^;]+)$") end
    end
  end
  if not last then return nil end
  return (last:gsub("^%s+", ""):gsub("%s+$", ""))
end
NM.SpellOf = SpellOf

local function Icon(m)
  local spell = SpellOf(m)
  local tex = spell and GetSpellTexture and GetSpellTexture(spell)
  return tex or ICON
end

-- Create or update the character macro. Returns true when the macro exists afterwards.
function NM.Make(m, pickup)
  if InCombatLockdown() then print(PREFIX .. "not in combat."); return false end
  local idx = GetMacroIndexByName(m.name)
  if idx and idx > 0 then
    EditMacro(idx, m.name, ICON, m.body)
  else
    local _, perChar = GetNumMacros()
    if perChar and perChar >= (MAX_CHARACTER_MACROS or 18) then
      print(PREFIX .. "|cffff5555character macro tab is full|r - free a slot for \"" .. m.name .. "\".")
      return false
    end
    idx = CreateMacro(m.name, ICON, m.body, true)
  end
  if pickup and idx and idx > 0 then PickupMacro(idx) end
  return true
end

function NM.MakeAll()
  local made, failed = 0, 0
  for _, m in ipairs(NM.List()) do
    if NM.Make(m) then made = made + 1 else failed = failed + 1 end
  end
  print(PREFIX .. made .. " macros created or updated for " .. (NM.Spec() or "?") .. (failed > 0 and (", " .. failed .. " skipped") or "") .. ".")
end

-- ---------- panel: spec dropdown + a grid of spell buttons ----------
local panel = CreateFrame("Frame")
panel.name = "Neutze's Macros"
local scroll, content, specDD, Build
local CONTENT_W = 600

local function Grid(parent, anchor)
  local list, buttons = NM.List(), {}
  local w = 140
  local perRow = math.max(1, math.floor((CONTENT_W + 4) / (w + 4)))
  local rowStart, last
  for i, m in ipairs(list) do
    local b = CreateFrame("Button", nil, parent, "UIPanelButtonTemplate")
    b:SetSize(w, 26)
    b:SetText(m.name)
    local fs = b.GetFontString and b:GetFontString()
    if fs and fs.ClearAllPoints then fs:ClearAllPoints(); fs:SetPoint("LEFT", b, "LEFT", 28, 0); fs:SetPoint("RIGHT", b, "RIGHT", -4, 0); fs:SetJustifyH("LEFT") end
    local ic = b:CreateTexture(nil, "ARTWORK")
    ic:SetSize(20, 20); ic:SetPoint("LEFT", b, "LEFT", 4, 0); ic:SetTexture(Icon(m))
    b:SetScript("OnClick", function() NM.Make(m, true) end)
    b:SetScript("OnEnter", function(self)
      GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
      GameTooltip:AddLine(m.name)
      GameTooltip:AddLine(m.body, .9, .9, .9, true)
      local idx = GetMacroIndexByName(m.name)
      GameTooltip:AddLine((idx and idx > 0) and "Click: update the macro and pick it up." or "Click: create it on this character and pick it up.", .7, .7, .7, true)
      GameTooltip:Show()
    end)
    b:SetScript("OnLeave", GameTooltip_Hide)
    if i == 1 then b:SetPoint("TOPLEFT", anchor, "BOTTOMLEFT", 0, -8); rowStart = b
    elseif (i - 1) % perRow == 0 then b:SetPoint("TOPLEFT", rowStart, "BOTTOMLEFT", 0, -4); rowStart = b
    else b:SetPoint("LEFT", last, "RIGHT", 4, 0) end
    last = b
    buttons[#buttons + 1] = b
  end
  return rowStart or anchor, math.ceil(#list / perRow)
end

local function BuildPanel(self)
  if not scroll then
    scroll = CreateFrame("ScrollFrame", nil, self, "UIPanelScrollFrameTemplate")
    scroll:SetPoint("TOPLEFT", 0, -4)
    scroll:SetPoint("BOTTOMRIGHT", -28, 4)
  end
  if content then content:Hide() end
  content = CreateFrame("Frame", nil, scroll)
  local sw = scroll.GetWidth and scroll:GetWidth()
  if type(sw) == "number" and sw > 200 then CONTENT_W = math.floor(sw) - 40 end
  content:SetSize(CONTENT_W + 32, 1)
  scroll:SetScrollChild(content)

  local title = content:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
  title:SetPoint("TOPLEFT", 16, -12)
  title:SetText("Neutze's Macros")
  local sub = content:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
  sub:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -6)
  sub:SetWidth(CONTENT_W); sub:SetJustifyH("LEFT")
  sub:SetText("Pick your spec, then click a spell: its macro is created on this character (or updated) and put on your cursor - drop it on a bar. One ability per macro; the stance or form is switched first where needed.")

  local sl = content:CreateFontString(nil, "OVERLAY", "GameFontNormal")
  sl:SetPoint("TOPLEFT", sub, "BOTTOMLEFT", 0, -16)
  sl:SetText((UnitClass("player") or "Class") .. " spec:")
  local function pick(s) DB().spec = s; Build() end
  if UIDropDownMenu_Initialize then
    if not specDD then
      specDD = CreateFrame("Frame", "NeutzeMacrosSpecDropDown", content, "UIDropDownMenuTemplate")
      UIDropDownMenu_SetWidth(specDD, 160)
      UIDropDownMenu_Initialize(specDD, function()
        for _, s in ipairs(NM.Specs()) do
          local info = UIDropDownMenu_CreateInfo()
          info.text, info.checked = s, (s == NM.Spec())
          info.func = function() CloseDropDownMenus(); pick(s) end
          UIDropDownMenu_AddButton(info)
        end
      end)
    end
    specDD:SetParent(content); specDD:Show()
    specDD:ClearAllPoints(); specDD:SetPoint("LEFT", sl, "RIGHT", -8, -2)
    UIDropDownMenu_SetText(specDD, NM.Spec() or "-")
  else
    local b = CreateFrame("Button", nil, content, "UIPanelButtonTemplate")
    b:SetSize(170, 22); b:SetPoint("LEFT", sl, "RIGHT", 8, 0); b:SetText(NM.Spec() or "-")
    b:SetScript("OnClick", function()
      local specs, cur = NM.Specs(), 0
      for i, s in ipairs(specs) do if s == NM.Spec() then cur = i end end
      pick(specs[cur % math.max(1, #specs) + 1])
    end)
  end
  local all = CreateFrame("Button", nil, content, "UIPanelButtonTemplate")
  all:SetSize(190, 22); all:SetPoint("TOPLEFT", sl, "BOTTOMLEFT", 0, -14)
  all:SetText("Create / update all")
  all:SetScript("OnClick", function() NM.MakeAll() end)

  local h = content:CreateFontString(nil, "OVERLAY", "GameFontNormal")
  h:SetPoint("TOPLEFT", all, "BOTTOMLEFT", 0, -14)
  local n = #NM.List()
  h:SetText(n > 0 and (n .. " macros for " .. (NM.Spec() or "?")) or "No presets for this class yet.")
  local _, rows = Grid(content, h)
  content:SetHeight(170 + rows * 30 + 40)
end
Build = function() BuildPanel(panel) end

panel:SetScript("OnShow", function(self)
  if self.built then return end
  self.built = true
  BuildPanel(self)
end)

-- options page under Neutze's Pantry (Options > AddOns > Neutze's Pantry > Neutze's Macros)
local OpenPanel = NeutzePantry.AddSubPage(panel)

function NM.Open()
  OpenPanel()
end

SLASH_NEUTZEMACROS1 = "/nm"
SLASH_NEUTZEMACROS2 = "/macros"
SlashCmdList.NEUTZEMACROS = function(msg)
  msg = (msg or ""):lower()
  if msg == "all" then NM.MakeAll(); return end
  NM.Open()
end
