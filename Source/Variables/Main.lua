-- TODO Initialize all the things here!
-- TODO Document all of our saved vars (started in Objects, should aggregate somewhere)
local VERSION_8_3 = 5

function Auctionator.Variables.Initialize()

  if AUCTIONATOR_SAVEDVARS == nil then
    AUCTIONATOR_SAVEDVARS = {}
  end
  if AUCTIONATOR_CONFIG == nil then
    Auctionator.Config.Reset()
  end

  Auctionator.Variables.InitializeFullScanVariables()
  Auctionator.Variables.InitializeDatabase()
  Auctionator.Variables.InitializeShoppingLists()

  Auctionator.State.CurrentVersion = GetAddOnMetadata("Auctionator", "Version")
  Auctionator.State.Loaded = true
end

function Auctionator.Variables.InitializeFullScanVariables()
  if AUCTIONATOR_SAVEDVARS.FULL_SCAN_DATA == nil then
    AUCTIONATOR_SAVEDVARS.FULL_SCAN_DATA = {
      TimeOfLastScan = nil,
      Completed = false,
      InProgress = false,
      ReceivedInitialEvent = false
    }
  end

  Auctionator.FullScan.State = AUCTIONATOR_SAVEDVARS.FULL_SCAN_DATA
end

function Auctionator.Variables.InitializeDatabase()
  Auctionator.Debug.Message("Auctionator.Database.Initialize()")
  -- Auctionator.Util.Print(AUCTIONATOR_PRICE_DATABASE, "AUCTIONATOR_PRICE_DATABASE")

  local realm = GetRealmName()

  -- First time users need the price database initialized
  if AUCTIONATOR_PRICE_DATABASE == nil then
    AUCTIONATOR_PRICE_DATABASE = {
      ["__dbversion"] = VERSION_8_3
    }
  end

  -- Changing how we record item info, so need to reset the DB if prior to 8.3
  if AUCTIONATOR_PRICE_DATABASE["__dbversion"] < VERSION_8_3 then
    AUCTIONATOR_PRICE_DATABASE = {
      ["__dbversion"] = VERSION_8_3
    }
  end

  -- Check for current realm and initialize if not present
  if AUCTIONATOR_PRICE_DATABASE[realm] == nil then
    AUCTIONATOR_PRICE_DATABASE[realm] = {}
  end

  Auctionator.State.LiveDB = AUCTIONATOR_PRICE_DATABASE[realm]

  -- TODO Get rid of this just want to make sure shit persists
  local count = 0
  for _ in pairs(Auctionator.State.LiveDB) do count = count + 1 end

  Auctionator.Utilities.Message("Database loaded with " .. count .. " entries.")
  -- TODO leftover from Atr_InitDB
  -- Atr_PruneScanDB ();
  -- Atr_PrunePostDB ();

  -- Atr_Broadcast_DBupdated (#gAtr_ScanDB, "dbinited");
end

function Auctionator.Variables.InitializeShoppingLists()
  if AUCTIONATOR_SHOPPING_LISTS == nil then
    AUCTIONATOR_SHOPPING_LISTS = {}
  end

  Auctionator.ShoppingLists.Lists = AUCTIONATOR_SHOPPING_LISTS
end
