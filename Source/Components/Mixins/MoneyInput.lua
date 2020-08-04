AuctionatorConfigMoneyInputMixin = {}

function AuctionatorConfigMoneyInputMixin:OnLoad()
  if self.labelText ~= nil then
    self.Label:SetText(self.labelText)
  end

  self.MoneyInput.SilverBox:SetScript("OnEnter", function() self:OnEnter() end)
  self.MoneyInput.SilverBox:SetScript("OnLeave", function() self:OnLeave() end)
  self.MoneyInput.GoldBox:SetScript("OnEnter", function() self:OnEnter() end)
  self.MoneyInput.GoldBox:SetScript("OnLeave", function() self:OnLeave() end)
end

function AuctionatorConfigMoneyInputMixin:SetAmount(value)
  self.MoneyInput:SetAmount(value)
  self.MoneyInput.GoldBox:SetCursorPosition(0)
  self.MoneyInput.SilverBox:SetCursorPosition(0)
end

function AuctionatorConfigMoneyInputMixin:GetAmount()
  return self.MoneyInput:GetAmount()
end

function AuctionatorConfigMoneyInputMixin:ResetAmount()
  self.MoneyInput:Clear()
end

function AuctionatorConfigMoneyInputMixin:Disable()
  self.MoneyInput.GoldBox:Disable()
  self.MoneyInput.SilverBox:Disable()
  self.MoneyInput:Clear()
end

function AuctionatorConfigMoneyInputMixin:Enable()
  self.MoneyInput.GoldBox:Enable()
  self.MoneyInput.SilverBox:Enable()
end
