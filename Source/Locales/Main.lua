local currentLocale = {}

local function FixMissingTranslations(incomplete, locale)
  if locale == "enUS" then
    return
  end
  local enUS = AUCTIONATOR_LOCALES["enUS"]()
  for key, val in pairs(enUS) do
    if incomplete[key] == nil then
      incomplete[key] = val
    end
  end
end

if AUCTIONATOR_LOCALES[GetLocale()] ~= nil then
  currentLocale = AUCTIONATOR_LOCALES[GetLocale()]()
  FixMissingTranslations(currentLocale, GetLocale())
else
  currentLocale = AUCTIONATOR_LOCALES["enUS"]()
end

for key, value in pairs(currentLocale) do
  _G["AUCTIONATOR_L_"..key] = value
end

function Auctionator.Locales.Apply(s, ...)
  if currentLocale[s] ~= nil then
    return string.format(currentLocale[s], ...)
  else
    error("Unknown/missing locale string")
  end
end
