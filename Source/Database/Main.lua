local VERSION_8_3 = 5

function Auctionator.Database.Initialize()
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
  print(GREEN_FONT_COLOR:WrapTextInColorCode("Auctionator Db initialized with " .. count .. " entries."))

  Auctionator.Debug.Message("Live DB Loaded", count .. " entries")
  -- TODO leftover from Atr_InitDB
  -- Atr_PruneScanDB ();
  -- Atr_PrunePostDB ();

  -- Atr_Broadcast_DBupdated (#gAtr_ScanDB, "dbinited");
end

-- C_AuctionHouse.GetBrowseResults()
-- browseResults BrowseResultInfo[]
--
-- BrowseResultInfo
-- itemKey            ItemKey
-- appearanceLink     string?
-- totalQuantity      number
-- minPrice           number
-- containsOwnerItem  boolean

-- ItemKey
-- itemID             number
-- itemLevel          number
-- itemSuffix         number
-- battlePetSpeciesID number

function Auctionator.Database.InitializeScan(results)
  -- Auctionator.Database.Scanning = true
  -- Auctionator.Database.CurrentResults = results

  Auctionator.Database.AppendResults(results)
  C_AuctionHouse.RequestMoreBrowseResults()
end

function Auctionator.Database.AppendResults(results)
  Auctionator.Debug.Message("Auctionator.Database.AppendResults", #results)

  -- This is incredibly inefficient, WIP
  for i = 1, #results do
    Auctionator.Database.AddItem(results[i].itemKey.itemID, results[i].minPrice)
  end
  -- if C_AuctionHouse.HasFullBrowseResults() then
  --   Auctionator.Debug.Message("Finished processing results")
  --   Auctionator.Database.Scanning = false
  --   Auctionator.Database.ProcessLastScan()
  --   return
  -- else
  --   tAppendAll(Auctionator.Database.CurrentResults, results)

  --   print("Current count of results is " .. #Auctionator.Database.CurrentResults)
  --   C_AuctionHouse.RequestMoreBrowseResults()
  -- end


  -- -- We need to batch results by item ID (in order to find lowest price)
end

function Auctionator.Database.ProcessLastScan()
  print("This is where I need to process all " .. #Auctionator.Database.ResultsForProcessing .. " items")

  Auctionator.Database.ResultsForProcessing = Auctionator.Database.CurrentResults
  Auctionator.Database.Scanning = false

  if Auctionator.Database.LastResults == nil then
    Auctionator.Database.LastResults = Auctionator.Database.CurrentResults
  else
    tAppendAll(Auctionator.Database.LastResults, Auctionator.Database.CurrentResults)
  end

  Auctionator.Database.CurrentResults = {}

end

function Auctionator.Database.AddItem(itemID, buyoutPrice)
  -- Auctionator.Debug.Message("Auctionator.Database.AddItem", item)

  local db = Auctionator.State.LiveDB

  if (not db[itemID]) then
    db[itemID] = {};
  end

  if db[itemID].mr == nil or buyoutPrice > db[itemID].mr then
    db[itemID].mr = buyoutPrice
  end
  Auctionator.Database.UpdateHistory(itemID, buyoutPrice)
end

--Takes all the items with a list of their prices, and determines the minimum
--price.
function Auctionator.Database.ProcessFullScan(priceIndexes)
  local db = Auctionator.State.LiveDB;
  for itemID, prices in pairs(priceIndexes) do
      if (not db[itemID]) then
        db[itemID] = {};
      end
      local minPrice = prices[1];
      for i=1,#prices do
          if prices[i]<minPrice then
              minPrice = prices[i]
          end
      end
      db[itemID].mr = minPrice;
      Auctionator.Database.UpdateHistory(itemID, minPrice)
  end
end

--(I'm guessing) Records historical price data.
function Auctionator.Database.UpdateHistory(itemID, buyoutPrice)
  local db = Auctionator.State.LiveDB
  local daysSinceZero = Atr_GetScanDay_Today();

  local lowlow  = db[itemID]["L" .. daysSinceZero];
  local highlow = db[itemID]["H" .. daysSinceZero];

  if (highlow == nil or buyoutPrice > highlow) then
    db[itemID]["H"..daysSinceZero] = buyoutPrice;
    highlow = buyoutPrice;
  end

  -- save memory by only saving lowlow when different from highlow

  local isLowerThanLow    = (lowlow ~= nil and buyoutPrice < lowlow);
  local isNewAndDifferent   = (lowlow == nil and buyoutPrice < highlow);

  if (isLowerThanLow or isNewAndDifferent) then
    db[itemID]["L"..daysSinceZero] = buyoutPrice;
  end
end

-- TODO DOCUMENTATION
-- id: ItemLink:IdString()
-- mr: currentLowPrice (most recent)
-- cc: classID
-- sc: subclassID
-- L[age]: lowest price seen *today*
-- H[age]: highest price seen *today* (of the lowest prices for all scans today)?
-- po: mark for purge (!= nil)

function Auctionator.Database.GetPrice(itemId)
  if Auctionator.State.LiveDB[itemId] ~= nil then
    return Auctionator.State.LiveDB[itemId].mr
  else
    return nil
  end
end
