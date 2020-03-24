﻿function AtrBuildLTable_zhCN ()

AtrL = {};

AtrL["SCAN_EXPLANATION"] = ""
.."扫描拍卖行会建立价格数据库，用于两种途径："
.."<br/>"
.."1.在鼠标提示中显示价格"
.."<br/>"
.."2.在你建立拍卖，场上无其他拍卖品的时候显示建议价格。"
.."<br/><br/>"
.."扫描通常需要约10秒钟，但有时需要更久的时间。"
.."<br/><br/>"
.."有些人会在扫描时从WoW断线，你可以在以下网址查找相关原因及可能的解决办法:"
.."<br/>"
.."https://github.com/Auctionator/Auctionator/wiki";

-- New Vars
--- Globals
AUCTIONATOR_SELL_TAB_TEXT = "Sell"
AUCTIONATOR_AUCTION_DURATION = "Default Auction Duration"
AUCTIONATOR_DEFAULT_AUCTIONATOR_TAB = "Default Auctionator tab"
AUCTIONATOR_MINIMUM_QUALITY_LEVEL = "Minimum quality level:"
AUCTIONATOR_MEMORY_USAGE = "Auctionator Memory Usage"
AUCTIONATOR_ITEMS_IN_THE_DATABASE = "Items in the database:"
AUCTIONATOR_DELETE_HISTORICAL_PRICES = "On start-up delete historical prices older than:"
AUCTIONATOR_DELETE_HISTORICAL_PRICES_DAYS = "day/s"
AUCTIONATOR_CLEAR_SCANNING_HISTORY_BTN = "Clear Scanning History"
AUCTIONATOR_CLEAR_POSTING_HISTORY_BTN = "Clear Posting History"
AUCTIONATOR_CLEAR_STACKING_PREFERENCES_BTN = "Clear Stacking Preferences"
AUCTIONATOR_CLEAR_SHOPPING_LISTS_BTN = "Clear Shopping Lists"
AUCTIONATOR_SHOPPING_LISTS_OPTION_DESCRIPTION = "Select multiple shopping lists by holding down the control key while clicking"
AUCTIONATOR_SHPLIST_IMPORTSAVEBTN = "Shopping List Import Button"
AUCTIONATOR_SHPLIST_SAVEBTN = "Save"
AUCTIONATOR_SHPLIST_SELECTALLBTN = "Select All"
AUCTIONATOR_SHPLIST_ALREADY_EXIST = "The following shopping list(s) already exist:"
AUCTIONATOR_SHPLIST_OKAY = "OKAY"
AUCTIONATOR_SHPLIST_NEW_NAME_TEXT = "New name for this list"
AUCTIONATOR_AUTOR_TEXT = "Author:  Borjamacare (US)"
AUCTIONATOR_ITEM_NAME = "Item Name"
AUCTIONATOR_ITEM_PRICE = "Item Price"
AUCTIONATOR_CURRENT_AUCTIONS = "Current Auctions"
AUCTIONATOR_SAVE_THIS_SHPLIST = "Save this Shopping List"
AUCTIONATOR_LOWEST_PRICE = "Lowest Price"
AUCTIONATOR_ITEM_NAME = "Item Name"
AUCTIONATOR_NEW = "New"
AUCTIONATOR_IMPORT = "Import"
AUCTIONATOR_EXPORT = "Export"
AUCTIONATOR_ARE_YOU_SURE = "Are you sure?"
AUCTIONATOR_CLEAR_IT = "Clear It"
AUCTIONATOR_ADD_ITEM = "Add Item"
AUCTIONATOR_REMOVE_ITEM = "Remove Item"
AUCTIONATOR_SEARCH_FOR_ALL_ITEMS = "Search for All Items"
AUCTIONATOR_MANAGE_SHOPPING_LISTS = "Manage Shopping Lists"
AUCTIONATOR_NEW_SHOPPING_LIST = "New Shopping List"
AUCTIONATOR_NEXT_SCAN_ALLOWED = "Next scan allowed:"
AUCTIONATOR_LAST_SCAN = "Last scan:"
AUCTIONATOR_ITEMS_IN_DB = "Items in database:"
AUCTIONATOR_START_SCANNING = "Start Scanning"
AUCTIONATOR_AUCTIONS_SCANNED = "Auctions scanned:"
AUCTIONATOR_ITEMS_ADDED = "Items added:"
AUCTIONATOR_ITEMS_UPDATED = "Items updated:"
AUCTIONATOR_ITEMS_IGNORED = "Items ignored:"
--- End Globals
AtrL["AH"] = ""
AtrL["%A, %B %d at %I:%M %p"] = "%d/%m/%Y alle %H:%M" -- Date and Time. Refer to https://www.lua.org/pil/22.1.html
AtrL["Date"] = ""
AtrL["Today"] = ""
AtrL["Yesterday"] = ""
AtrL["Slow scan"] = ""
AtrL["Level"] = ""
AtrL["Shopping list overwritten:"] = ""
AtrL["Shopping list created:"] = ""
AtrL["Paste text that was previously exported into the text area to the left."] = ""
AtrL["Create new shopping lists with new names"] = ""
AtrL["Create new shopping lists with new names."] = ""
AtrL["Overwrite the existing shopping lists with the imported lists."] = ""
AtrL["Abort the import.  You can hand-edit the import text to change the names and then try again."] = ""
AtrL["Click Select All, type Ctrl-C to copy the text and then paste into any text document."] = ""
AtrL["%6d items"] = "" -- AUCTIONATOR_ITEMS_IN_THE_DATABASE %6d items description
AtrL["Default Auction duration"] = ""
AtrL["Options..."] = ""
AtrL["More"] = ""
AtrL["Yes, cancel them"] = ""
AtrL["No, leave them"] = ""
AtrL["Basic Options"] = "Attiva scorciatoia tasto Alt"
AtrL["Show Starting Price on the Sell Tab"] = ""
AtrL["Enable debug mode"] = ""
AtrL["basic options saved"] = ""
AtrL["Reset to Default"] = ""
AtrL["Shopping Lists"] = ""
AtrL["New"] = ""
AtrL["Edit"] = ""
AtrL["Delete"] = ""
AtrL["Rename"] = ""
AtrL["Import"] = ""
AtrL["Export"] = ""
AtrL["Tooltips"] = ""
AtrL["Show vendor prices in tooltips"] = ""
AtrL["Show auction house prices in tooltips"] = ""
AtrL["Show disenchant prices in tooltips"] = ""
AtrL["Show auction house prices in mailbox tooltips"] = ""
AtrL["Undercutting"] = ""
AtrL["Selling"] = ""
AtrL["Configure how you typically like to sell the items listed below."] = ""
AtrL["Clears"] = "Pulizia"
AtrL["The features below will help you clear out data that Auctionator stores.  Typically you would only need this in the event that that data gets corrupted."] = ""
AtrL["Read the FAQ at"] = "Leggi le FAQ su"
AtrL["MoP disenchanting data courtesy of the Norganna's AddOns (the Auctioneer folks)"] = ""
AtrL["Subcategory"] = ""
AtrL["Search For"] = ""
AtrL["Level Range"] = LEVEL_RANGE.."."
AtrL["Advanced Search"] = ""
AtrL["Advanced"] = ADVANCED_LABEL
AtrL["Vendor"] = AUCTION_CREATOR
AtrL["Version"] = GAME_VERSION_LABEL
AtrL["items"] = ""
AtrL["Time:"] = ""
AtrL["auctions returned empty results (out of %d)"] = ""
AtrL["auctions returned null itemLinks (out of %d)"] = ""
AtrL["Blizzard server failed to return all items"] = ""
AtrL["You might want to try slow scanning."] = ""
AtrL["Buy Another"] = ""
AtrL["Buy One"] = ""
AtrL["Are you sure you want to clear the scanned prices database?"] = ""
AtrL["This will clear the pricing history for all items for all your characters - even characters on different servers."] = ""
AtrL["Pricing history cleared."] = ""
AtrL["Are you sure you want to clear the posting history?"] = ""
AtrL["This will clear the information that Auctionator keeps for all items that you've posted - as shown on the \"Other\" tab after you scan for an item that you've sold in the past."] = ""
AtrL["Posting history cleared."] = ""
AtrL["Are you sure you want to clear your stacking preferences?"] = ""
AtrL["Go ahead - this isn't a big deal.  Auctionator will figure it out again fairly quickly.  This is just some info Auctionator keeps to help it set the default stack size a bit more intelligently."] = ""
AtrL["Stacking preferences cleared."] = ""
AtrL["Are you sure you want to clear your shopping lists?"] = ""
AtrL["If you put a lot of time into constructing detailed shopping lists, this will require you to build them all over again."] = ""
AtrL["Shopping lists cleared."] = ""
AtrL["Memory went from"] = ""
AtrL["to"] = ""
AtrL["Disenchant data restored. Number of entries:"] = ""
AtrL["No data available to be restored."] = ""
AtrL["1 stack available"] = ""
AtrL["%d stacks available"] = ""
AtrL["none available"] = ""
AtrL["Waiting for auction data"] = ""
AtrL["Updating database"] = ""
AtrL["Scan complete"] = ""
AtrL["Analyzing data"] = ""
AtrL["out of"] = ""
AtrL["Page %s of %s"] = ""
AtrL["FULL SCAN:"] = ""
AtrL["AUCTIONATOR_FS_CHUNK:"] = ""
AtrL["Warning"] = ""
AtrL["Bad item scanned."] = ""
AtrL["Name:"] = ""
AtrL["Count:"] = ""
AtrL["badItemCount:"] = ""
AtrL["ignored"] = ""
AtrL["Scanning auctions: page %d of %d"] = ""
AtrL["Scanning auctions for %s%s"] = ""
AtrL["When the Auction House is open\nclicking this button tells Auctionator\nto scan for the item and all its reagents."] = ""
AtrL["%d bought so far"] = ""
AtrL["%d available"] = ""
AtrL["Italian translation courtesy of %s"] = ""
-- End New Vars

-- Old Vars
AtrL["%6d items"]="%6d 项物品"
AtrL["%d auctions created for %s"] = "已建立%d项拍卖:%s"
AtrL["%d available"] = "%d 项可购买"
AtrL["%d bought so far"] = "已经购买: %d"
AtrL["%d of %d bought so far"] = "已经购买: %d/%d"
AtrL["%d of your auctions are not the lowest priced.\n\nWould you like to cancel them?"]="%d项你的拍卖非目前最低价\n\n要取消拍卖吗?"
AtrL["%d stacks available"] = "%d 堆叠可购买"
AtrL["+"] = "高级搜索"
AtrL["1 stack available"] = "1 堆叠可购买"
AtrL["About Auctionator"]="关于 Auctionator"
AtrL["About"] = "关于"
AtrL["Active Items"] = "目前拍卖"
AtrL["Add Item To List"] = "添加物品至购物单"
AtrL["Add Item"] = "添加物品"
AtrL["Advanced Search"] = "高级搜索"
AtrL["All Items"] = "全部物品"
AtrL["always"] = "总是"
AtrL["Are you sure you want to create\nan auction with no buyout price?"] = "确定不设一口价?"
AtrL["As many as possible"] = "最多"
AtrL["Auction #%d created for %s"] = "已建立%d项拍卖:%s"
AtrL["Auction cancelled for "] = "已取消拍卖:"
AtrL["Auction created for %s"] = "已建立拍卖:%s"
AtrL["Auction House timed out"] = "时间过期"
AtrL["Auction"] = "拍卖"
AtrL["Auctionator has yet to record any auctions for this item"] = "尚无此物品记录"
AtrL["Auctionator memory usage:"] = "Auctionator 内存用量"
AtrL["Auctionator provided an auction module to LilSparky's Workshop."] = ""
AtrL["Auctionator scan data"] = "Auctionator 扫描资料"
AtrL["Auctionator"] = ""
AtrL["Auctions scanned"] = "拍卖已扫描"
AtrL["Auctions scanned:"] = "拍卖已扫描:"
AtrL["Author:  Borjamacare"] = "作者: Borjamacare"
AtrL["Automatically cancel all of your auctions|n|nthat are not the lowest priced?"] = "自动下架目前非最低价物品?"
AtrL["available"] = "项"
AtrL["average of your auctions for"] = "平均在你的拍卖"
AtrL["Back"] = "返回"
AtrL["based on cheapest current auction"] = "根据目前最低价"
AtrL["based on cheapest stack of the same size"] = "根据目前同堆叠数最低价"
AtrL["based on selected auction"] = "根据选择的拍卖物品"
AtrL["based on"] = "根据"
AtrL["Basic Options for %s"] = "%s的基本设定"
AtrL["basic options saved"] = "基本设定已储存"
AtrL["Basic Options"] = "基本设定"
AtrL["BOP"] = "拾取绑定"
AtrL["Buy Another"] = "再购买一项"
AtrL["Buy One"] = "购买一项"
AtrL["Buy"] = "购买"
AtrL["Buyout Price"] = "一口价"
AtrL["Cancel Auctions"] = "取消拍卖"
AtrL["Cancel"] = "取消"
AtrL["Category"] = "主分类"
AtrL["Check and Cancel Auctions"] = "检查并取消拍卖"
AtrL["Check for Undercuts"] = "最低价检查"
AtrL["Checking stopped"] = "检查停止"
AtrL["Cleaning up"] = "清理"
AtrL["Common items"] = "普通物品"
AtrL["Common"] = "普通"
AtrL["Configure how you typically like to sell the items listed below."]="设定卖出时的偏好选项"
AtrL["Continue"] = "继续"
AtrL["Create %d Auctions"] = "开始%d项拍卖"
AtrL["Create Auction"] = "开始拍卖"
AtrL["Create Multiple Auctions failed.\nYou need at least one empty slot in your bags."] = "拍卖多项物品失败\n背包中至少要有一格空位"
AtrL["Current Auctions"] = "目前拍卖"
AtrL["Current"] = "目前拍卖"
AtrL["Database"] = "数据库"
AtrL["Date"] = "日期"
AtrL["days"]="天"
AtrL["Default Auctionator tab"] = "开启拍卖时默认页面"
AtrL["default behavior"] = "预设"
AtrL["Delete Shopping List"] = "删除购物单"
AtrL["Deposit"] = "保证金"
AtrL["Disenchant"] = "分解"
AtrL["Done"] = "完成"
AtrL["Drag an item you want to sell to this area."] = "将物品放到这里以供拍卖"
AtrL["Duration"] = "拍卖时长"
AtrL["Edit"] = "编辑"
AtrL["Enable alt-key shortcut"]="启用Alt快捷键"
AtrL["Epic items"] = "史诗物品"
AtrL["Epic"] = "史诗"
AtrL["Flasks"] = "精炼药剂"
AtrL["For information on the latest version browse to"] = "获取最新版本信息:"
AtrL["for your stack of %d"] = "总价 (堆叠数%d)"
AtrL["Forget this Item"] = "删除此项"
AtrL["French translation courtesy of %s"] = "法文翻译: %s"
AtrL["full scan database cleared"] = "扫描数据库已清除"
AtrL["Full Scan..."] = "扫描..."
AtrL["Gems - Cut"] = "宝石-已切割"
AtrL["Gems - Uncut"] = "宝石-未切割"
AtrL["German translation courtesy of %s"] = "德文翻译: %s"
AtrL["Glyphs"] = "雕文"
AtrL["Herbs"] = "草药"
AtrL["History"] = "历史"
AtrL["If this option is checked, every time you initiate a new auction the auction duration will be reset to the default duration you've selected."]="若勾选此选项，每当你摆放拍卖物品时，将自动设定为您选择的的有效期限"
AtrL["If this option is checked, holding the Alt key down while clicking an item in your bags will switch to the Auctionator panel, place the item in the Auction Item area, and start the scan."]="若勾选此选项，在背包中按下Alt并点击物品，会自动跳至Auctionator的卖出页面、摆放物品，并查询当前价格"
AtrL["If this option is checked, the Auctionator BUY panel will display first whenever you open the Auction House window."]="若勾选此选项，打开拍卖行后会自动显示 Auctionator 的购买界面"
AtrL["Ignore any ERROR message to the contrary below."] = ""
AtrL["in about %d minutes"] = "约%d分后"
AtrL["in about one minute"] = "约1分后"
AtrL["in less than a minute"] = "在1分钟内"
AtrL["Item Enhancements"] = "物品附魔"
AtrL["Item Name"] = "物品"
AtrL["Item Price"] = "单价"
AtrL["Items added to database"] = "物品新增到数据库"
AtrL["Items added:"] = "新增物品:"
AtrL["Items ignored"] = "忽略物品"
AtrL["Items ignored:"] = "忽略物品:"
AtrL["Items in database:"] = "数据库中物品:"
AtrL["Items in the database:"] = "数据库中物品:"
AtrL["Items updated in database"] = "数据库物品已更新"
AtrL["Items updated:"] = "更新物品:"
AtrL["items"] = "物品"
AtrL["Just Check Auctions"] = "只检查拍卖"
AtrL["Last scan:"] = "上次已扫描:"
AtrL["Level Range"] = "等级范围"
AtrL["Low Low Price"] = "最低价"
AtrL["Lowest Price"] = "最低价"
AtrL["max"] = "最多"
AtrL["max. stacks of %d"] = "最多个，堆叠 %d"
AtrL["Minimum Quality Level"] = "最低物品品质"
AtrL["Minimum quality level:"] = "最低物品品质"
AtrL["More"] = "其他"
AtrL["Name for your new shopping list"] = "购物单名称"
AtrL["never"] = "从不"
AtrL["Never"] = "从不"
AtrL["New Shopping List"] = "新增购物单"
AtrL["New"] = "新建"
AtrL["Next scan allowed:"] = "下次可扫描:"
AtrL["no buyout price"] = "无一口价"
AtrL["No current auctions found"] = "查无物品"
AtrL["No current auctions found\n\n(related auctions shown)"] = "查无物品\n\n(显示相关物品)"
AtrL["No current auctions with buyouts found"] = "查无已设定一口价的物品"
AtrL["No, leave them"]="保持拍卖"
AtrL["none available"] = "无"
AtrL["None"] = "无"
AtrL["Now"] = "立即"
AtrL["On start-up delete historical prices older than:"]="启动时删除过旧的历史纪录:"
AtrL["Only include items in the scanning database that are this level or higher"] = "数据库中只包含高于此品质的物品"
AtrL["Options"] = "设定"
AtrL["Other"] = "其他"
AtrL["over %d gold"] = "超过 %3d 金"
AtrL["over %d silver"] = "超过 %3d 银"
AtrL["over 1 gold"] = "超过 %3d 铜"
AtrL["Past"] = "历史"
AtrL["per item price"] = "物品单价"
AtrL["Per Item"] = "单价"
AtrL["per item"] = "单价"
AtrL["per stack"] = "总价"
AtrL["percent"] = "%"
AtrL["Poor (all)"] = "粗糙(全部)"
AtrL["Poor items"] = "粗糙物品"
AtrL["Potions and Elixirs"] = "药水及药剂"
AtrL["pricing history cleared"] = "价格历史已清除"
AtrL["Processing"] = "处理中"
AtrL["Quest Item"] = "任务物品"
AtrL["Rare items"] = "精良物品"
AtrL["Rare"] = "精良"
AtrL["Really delete the shopping list %s ?"] = "真的要删除购物单 %s ?"
AtrL["Entry must not be blank"] = ""
AtrL["Recent Searches"] = "最近搜索"
AtrL["Recommended buyout price"] = "建议一口价"
AtrL["Recommended Buyout Price"] = "建议一口价"
AtrL["Remove Item From List"] = "从购物单移除物品"
AtrL["Remove Item"] = "移除物品"
AtrL["removed from database"] = "'从数据库中移除"
AtrL["Required DE skill level"] = "需求附魔等级"
AtrL["Reset to Default"] = "恢复默认值"
AtrL["Russian translation courtesy of %s"] = "俄文翻译: %s"
AtrL["Scan complete"] = "扫描完成"
AtrL["Scan in progress"] = "扫描中"
AtrL["Scanning auctions for %s%s"] = "搜索 %s%s"
AtrL["Scanning auctions for %s: page %d"] = "搜索 %s :第%d页"
AtrL["Scanning auctions: page %d"] = "搜索中:第%d页"
AtrL["Scanning is entirely optional."] = "扫描是选择性的"
AtrL["scanning options saved"] = "扫描选项已储存"
AtrL["Scanning"] = "扫描中"
AtrL["Scanning..."] = "扫描中"
AtrL["Search for All Items"] = "搜索全部物品"
AtrL["Search For"] = "名称"
AtrL["Search"] = "搜索"
AtrL["Select an item from the list on the left\n or type a search term above to start a scan."] = "在左边的购物单中选择物品\n或在上方输入物品名称"
AtrL["Select the Auctionator panel to be displayed first whenever you open the Auction House window."]="选择当你进入拍卖时首先开启的页面"
AtrL["Sell"] = "卖出"
AtrL["Selling"] = "卖出"
AtrL["Set a default duration"]="设定有效期限预设值"
AtrL["Show auction house prices in tooltips"]="显示拍卖价格"
AtrL["Show disenchant prices in tooltips"]="显示分解价格"
AtrL["Show disenchanting details"] = "显示分解价格..."
AtrL["Show Starting Price on the Sell Tab"]="在卖出页面显示起始价格"
AtrL["Show vendor prices in tooltips"]="显示商店价格"
AtrL["Source"] = "来源"
AtrL["Spanish translation courtesy of %s"] = "西班牙翻译: %s"
AtrL["stack available"] = "堆叠可购买"
AtrL["stack for"] = "堆叠的"
AtrL["stack of"] = "项，堆叠"
AtrL["stack price"] = "堆叠总价"
AtrL["Stack Price"] = "总价"
AtrL["stack"] = "堆叠"
AtrL["stacks available"] = "堆叠可购买"
AtrL["stacks for"] = "堆叠的"
AtrL["stacks for:"] = "堆叠的:"
AtrL["stacks of"] = "项，堆叠"
AtrL["Start canceling"]="取消拍卖"
AtrL["Start Scanning"] = "开始扫描"
AtrL["Starting Price Discount"] = "竞标价折扣"
AtrL["Starting Price"] = "起始价格"
AtrL["Stop Checking"] = "停止检查"
AtrL["Subcategory"] = "副分类"
AtrL["Swedish translation courtesy of %s"] = "瑞典翻译: %s"
AtrL["The latest information on Auctionator can be found at"] = "Auctionator的最新信息在:<br/>"
AtrL["There is a more recent version of Auctionator: VERSION"] = "有更新的Auctionator版本:"
AtrL["Today"] = "今天"
AtrL["tooltip configuration saved"] = "鼠标提示选项已储存"
AtrL["Tooltips"] = "鼠标提示"
AtrL["Total Price"] = "总价"
AtrL["trade volume"] = "交易量" --?
AtrL["Uncommon items"] = "优秀物品"
AtrL["Uncommon"] = "优秀"
AtrL["Undercut by"] = "压价金额:"
AtrL["undercutting configuration saved"] = "最低价选项已储存"
AtrL["Undercutting"] = "最低价"
AtrL["unknown"] = "未知"
AtrL["unrecognized command"] = "未知指令"
AtrL["Vendor"] = "售价"
AtrL["Version"] = "版本"
AtrL["when ALT is held down"] = "当按下Alt键时"
AtrL["when CONTROL is held down"] = "当按下Ctrl键时显示"
AtrL["When SHIFT is down show"] = "当按下Shift键时显示"
AtrL["when SHIFT is held down"] = "当按下Shift键时显示"
AtrL["Wowecon global price"] = ""
AtrL["Wowecon server price"] = ""
AtrL["Yesterday"] = "昨天"
AtrL["You can buy at most %d auctions"] = "你最多可购入 %d 项拍卖物品"
AtrL["You can create at most %d auctions"] = "你最多可建立 %d 项拍卖物品"
AtrL["You can stack at most %d of these items"] = "此物品最多可设定 %d 堆叠量"
AtrL["You do not have enough gold\n\nto make any more purchases."] = "你身上的金钱不足以购买更多拍卖物品"
AtrL["You may have at most 40 single-stack (x1)\nauctions posted for this item.\n\nYou already have %d such auctions and\nyou are trying to post %d more."] = "你最多可建立 40 项 1 堆叠量的相同物品\n\n你已有 %d 项此物品的拍卖，试图再建立 %d 项"
AtrL["You may have no more than\n\n%d items on a shopping list."] = "购物单最多可包含 %d 物品"
AtrL["your auction on"] = "你拍卖于"
AtrL["your most recent posting"] = "你最近的拍卖"
AtrL["yours"] = "你的"
AtrL["Manage Shopping Lists"] = "管理购物单"
AtrL["Shopping Lists"] = "购物单"
AtrL["Delete"] = "删除"
AtrL["Rename"] = "重命名"
AtrL["Import"] = "导入"
AtrL["Export"] = "导出"
AtrL["Options..."] = "选项..."
AtrL["Clears"] = "清理数据库"


end
