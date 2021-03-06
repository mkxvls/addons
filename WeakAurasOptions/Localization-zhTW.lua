if not(GetLocale() == "zhTW") then
    return;
end

local L = WeakAuras.L

-- Options translation
L["1 Match"] = "1符合"
L["Actions"] = "動作"
L["Activate when the given aura(s) |cFFFF0000can't|r be found"] = "指定的光環|cFFFF0000無法找到時|r激活"
L["Add a new display"] = "新增特效"
L["Add Dynamic Text"] = "新增動態文字"
L["Addon"] = "插件"
L["Addons"] = "插件"
L["Add to group %s"] = "新增到群組%s"
L["Add to new Dynamic Group"] = "新增動態群組"
L["Add to new Group"] = "新增群組"
L["Add Trigger"] = "新增觸發"
L["A group that dynamically controls the positioning of its children"] = "可動態控制子元素位置的群組"
L["Align"] = "置中"
L["Allow Full Rotation"] = "允許完整旋轉"
L["Alpha"] = "透明度"
L["Anchor"] = "錨點"
L["Anchor Point"] = "錨點指向"
L["Angle"] = "角度"
L["Animate"] = "閃爍"
L["Animated Expand and Collapse"] = "動畫擴展和摺疊"
L["Animation relative duration description"] = [=[動畫的持續時間相對持續時間的顯示，表示為一小部分(1 / 2)，百分比(50％)，或十進制(0.5)。
|cFFFF0000注意：|r 如果顯示沒有進度(它沒有時間事件觸發，是光環沒有持續時間，或其他)，動畫將不會撥放。

|cFF4444FF舉例：|r
如果動畫的持續時間設定為 |cFF00CC0010%|r，然後顯示觸發的增益持續20秒，開始動畫將會撥放2秒。
如果動畫的持續時間設定為 |cFF00CC0010%|r，然後顯示觸發的增益沒有設定持續時間，將不會撥放開始動畫(儘管這樣如果你指定動畫在數秒內)。"]=]
L["Animations"] = "動畫"
L["Animation Sequence"] = "動畫序列"
L["Aquatic"] = "水中"
L["Aura (Paladin)"] = "光環"
L["Aura(s)"] = "光環"
L["Auto"] = "自動"
L["Auto-cloning enabled"] = "自動複製啟用"
L["Automatic Icon"] = "自動圖示"
L["Backdrop Color"] = "背景顏色"
L["Backdrop Style"] = "背景類型"
L["Background"] = "背景"
L["Background Color"] = "背景顏色"
L["Background Inset"] = "背景小圖"
L["Background Offset"] = "背景位移"
L["Background Texture"] = "背景材質"
L["Bar Alpha"] = "條透明度"
L["Bar Color"] = "條顏色"
L["Bar Color Settings"] = "狀態條顏色設定"
L["Bar in Front"] = "狀態條置頂"
L["Bar Texture"] = "條材質"
L["Battle"] = "戰鬥"
L["Bear"] = "承受"
L["Berserker"] = "狂暴"
L["Blend Mode"] = "混合模式"
L["Blood"] = "血魄"
L["Border"] = "邊框"
L["Border Color"] = "邊框顏色"
L["Border Inset"] = "邊框插頁"
L["Border Offset"] = "邊框位移"
L["Border Settings"] = "邊框設定"
L["Border Size"] = "邊框大小"
L["Border Style"] = "邊框類型"
L["Bottom Text"] = "底部文字"
L["Button Glow"] = "按鈕發光"
L["Can be a name or a UID (e.g., party1). Only works on friendly players in your group."] = "可能是名稱或是用戶名稱(例如，隊伍1)。只在你群組裡的友善玩家作用。"
L["Cancel"] = "取消"
L["Cat"] = "貓"
L["Change the name of this display"] = "改變特效名稱"
L["Channel Number"] = "頻道編號"
L["Check On..."] = "檢查..."
L["Choose"] = "選擇"
L["Choose Trigger"] = "選擇觸發"
L["Choose whether the displayed icon is automatic or defined manually"] = "選擇在特效顯示的圖示是自動或手動定義"
L["Clone option enabled dialog"] = [=[你已經啟用一項設定來使用|cFFFF0000自動複製|r。

|cFFFF0000自動複製|r造成顯示自動重複來顯示多個訊息來源。
直到你讓顯示在|cFF22AA22動態群組|r，所有複製被顯示在其它所有的一大堆的上面。

你想要讓顯示被放到新的|cFF22AA22動態群組|r？]=]
L["Close"] = "關閉"
L["Collapse"] = "摺疊"
L["Collapse all loaded displays"] = "摺疊所有已載入的特效"
L["Collapse all non-loaded displays"] = "摺疊所有未載入的特效"
L["Color"] = "顏色"
L["Compress"] = "精簡"
L["Concentration"] = "集中值"
L["Constant Factor"] = "常數因子"
L["Control-click to select multiple displays"] = "Ctrl點擊選擇多個特效"
L["Controls the positioning and configuration of multiple displays at the same time"] = "同時控制多個特效的位置和設定"
L["Convert to..."] = "轉換成..."
L["Cooldown"] = "冷卻時鐘"
L["Copy"] = "複製"
L["Copy settings from..."] = "複製設定從..."
L["Copy settings from another display"] = "從其它特效複製設定"
L["Copy settings from %s"] = "從%s複製設定"
L["Count"] = "計數"
L["Creating buttons: "] = "創建按鈕："
L["Creating options: "] = "創建設定："
L["Crop X"] = "裁剪X"
L["Crop Y"] = "裁剪Y"
L["Crusader"] = "十字軍"
L["Custom Code"] = "自訂編碼"
L["Custom Trigger"] = "自訂觸發"
L["Custom trigger event tooltip"] = [=[選擇用於自訂觸發檢查的事件。
多事件可以使用逗號或空格分隔開。

|cFF4444FF舉例：|r
UNIT_POWER, UNIT_AURA PLAYER_TARGET_CHANGED]=]
L["Custom trigger status tooltip"] = [=[選擇用於自訂觸發檢查的事件。
這是狀態類型的觸發器，指定的事件不需預計參數就可以被WeakAuras調用。
多事件可以使用逗號或空格分隔開。

|cFF4444FF舉例：|r
UNIT_POWER, UNIT_AURA PLAYER_TARGET_CHANGED]=]
L["Custom Untrigger"] = "自訂無效觸發"
L["Custom untrigger event tooltip"] = [=[選擇用於自訂無效觸發檢查的事件。
它與事件觸發定義不同。
多個事件可以使用逗號或空格分隔開。

|cFF4444FF舉例：|r
UNIT_POWER, UNIT_AURA PLAYER_TARGET_CHANGED]=]
L["Death"] = "死亡"
L["Death Rune"] = "死亡符文"
L["Debuff Type"] = "減益類型"
L["Defensive"] = "防護"
L["Delete"] = "刪除"
L["Delete all"] = "刪除全部"
L["Delete children and group"] = "刪除子元素和群組"
L["Deletes this display - |cFF8080FFShift|r must be held down while clicking"] = "刪除特效 - 在點擊的時候必須按住|cFF8080FFShift|r "
L["Delete Trigger"] = "刪除觸發"
L["Desaturate"] = "去色"
L["Devotion"] = "虔誠"
L["Disabled"] = "禁用"
L["Discrete Rotation"] = "分離旋轉"
L["Display"] = "特效"
L["Display Icon"] = "特效圖示"
L["Display Text"] = "特效文字"
L["Distribute Horizontally"] = "水平分佈"
L["Distribute Vertically"] = "垂直分佈"
L["Do not copy any settings"] = "不複製任何設定"
L["Do not group this display"] = "該特效不分組"
L["Duplicate"] = "複製"
L["Duration Info"] = "持續時間訊息"
L["Duration (s)"] = "持續時間(秒)"
L["Dynamic Group"] = "動態群組"
L["Dynamic text tooltip"] = [=[這裡有幾個特別的編碼允許用到文字動畫：

|cFFFF0000%p|r - 進度 - 剩餘時間的時間條或是不是時間條的數值
|cFFFF0000%t|r - 總共 - 最大時間條的持續時間或是最大不是時間條的數值
|cFFFF0000%n|r - 名稱 - 顯示名稱(通常是光環名稱)或是顯示編號如果沒有動態名稱
|cFFFF0000%i|r - 圖示 - 圖示關連到顯示
|cFFFF0000%s|r - 堆疊 - 光環堆疊數量(通常)
|cFFFF0000%c|r - 自訂 - 允許你定義一個自訂的Lua回傳字傳數值到顯示的函數]=]
L["Enabled"] = "啟用"
L["Enter an aura name, partial aura name, or spell id"] = "輸入光環名稱，部分光環名稱，或是法術編號"
L["Event Type"] = "事件類型"
L["Expand"] = "擴展"
L["Expand all loaded displays"] = "展開所有已載入的特效"
L["Expand all non-loaded displays"] = "展開所有未載入的特效"
L["Expand Text Editor"] = "擴展文字編輯"
L["Expansion is disabled because this group has no children"] = "擴展被禁用因為群組沒有子元素"
L["Export"] = "匯出"
L["Export to Lua table..."] = "匯出到Lua表..."
L["Export to string..."] = "匯出到字串..."
L["Fade"] = "淡化"
L["Finish"] = "結束"
L["Fire Resistance"] = "火焰抗性"
L["Flight(Non-Feral)"] = "飛行(非野性)"
L["Font"] = "字型"
L["Font Flags"] = "字型標記"
L["Font Size"] = "字型大小"
L["Font Type"] = "字型類型"
L["Foreground Color"] = "前景顏色"
L["Foreground Texture"] = "前景材質"
L["Form (Druid)"] = "形態"
L["Form (Priest)"] = "形態"
L["Form (Shaman)"] = "形態"
L["Form (Warlock)"] = "形態"
L["Frame"] = "框架"
L["Frame Strata"] = "框架層級"
L["Frost"] = "冰霜"
L["Frost Resistance"] = "冰霜抗性"
L["Full Scan"] = "完整掃描"
L["Ghost Wolf"] = "鬼魂之狼"
L["Glow Action"] = "發光動作"
L["Group aura count description"] = [=[%s的成員總數必須受到一個或多個給予的光環為顯示觸發。
如果輸入的數字是一個整數(如5)，受影響的團隊成員數量將與輸入的數字相比。
如果輸入的數字是一個小數(如0.5)，分數(例如1/ 2)，或百分比(例如50%%)，那麼這部分的%s必須受到影響。

|cFF4444FF舉例：|r
|cFF00CC00> 0|r 會觸發當任何人在%s已被影響
|cFF00CC00= 100%%|r 會觸發當所有人在%s已被影響
|cFF00CC00!= 2|r 會觸發當%s人員數量已被影響不完全2
|cFF00CC00<= 0.8|r 會觸發當%s已被影響的少於80% (4 of 5 隊伍成員， 8 of 10 or 20 of 25 團隊成員)
|cFF00CC00> 1/2|r 會觸發當超過一半以上的%s已被影響
|cFF00CC00>= 0|r 總是觸發，不管怎樣]=]
L["Group Member Count"] = "群組成員總數"
L["Group (verb)"] = "群組"
L["Height"] = "高度"
L["Hide this group's children"] = "隱藏群組的子元素"
L["Hide When Not In Group"] = "不再群組裡隱藏"
L["Horizontal Align"] = "水平對齊"
L["Icon Info"] = "圖示訊息"
L["Ignored"] = "忽略"
L["Ignore GCD"] = "忽略公共冷卻(GCD)"
L["%i Matches"] = "%i符合"
L["Import"] = "匯入"
L["Import a display from an encoded string"] = "從編碼字串匯入特效"
L["Justify"] = "對齊"
L["Left Text"] = "左邊文字"
L["Load"] = "載入"
L["Loaded"] = "已載入"
L["Main"] = "主要"
L["Main Trigger"] = "主要觸發"
L["Mana (%)"] = "法力(%)"
L["Manage displays defined by Addons"] = "由插件管理已定義的特效"
L["Message Prefix"] = "訊息字首"
L["Message Suffix"] = "訊息字尾"
L["Metamorphosis"] = "變形"
L["Mirror"] = "鏡像"
L["Model"] = "模組"
L["Moonkin/Tree/Flight(Feral)"] = "梟獸/樹/飛行(野性)"
L["Move Down"] = "向下移動"
L["Move this display down in its group's order"] = "讓該特效的群組排序向下移動"
L["Move this display up in its group's order"] = "讓該特效的群組排序向上移動"
L["Move Up"] = "向上移動"
L["Multiple Displays"] = "多個特效"
L["Multiple Triggers"] = "多觸發"
L["Multiselect ignored tooltip"] = [=[|cFFFF0000忽略|r - |cFF777777單一|r - |cFF777777多個|r
這設定將不會被使用來判斷當顯示應該載入]=]
L["Multiselect multiple tooltip"] = [=[|cFFFF0000忽略|r - |cFF777777單一|r - |cFF777777多個|r
任何數量的匹配值可以被挑選]=]
L["Multiselect single tooltip"] = [=[|cFFFF0000忽略|r - |cFF777777單一|r - |cFF777777多個|r
只有單一的匹配值可以被挑選]=]
L["Must be spelled correctly!"] = "必須拼寫正確!"
L["Name Info"] = "名稱訊息"
L["Negator"] = "不"
L["New"] = "新增"
L["Next"] = "下一頁"
L["No"] = "取消"
L["No Children"] = "無子元素"
L["Not all children have the same value for this option"] = "並非所有子元素對這項設定有相同的數值"
L["Not Loaded"] = "未載入"
L["No tooltip text"] = "取消提示資訊文字"
L["% of Progress"] = "進度%"
L["Okay"] = "確認"
L["On Hide"] = "事件隱藏視窗時觸發"
L["Only match auras cast by people other than the player"] = "只匹配其他玩家施放的光環"
L["Only match auras cast by the player"] = "只匹配玩家自己施放的光環"
L["On Show"] = "顯示時觸發"
L["Operator"] = "運算符"
L["or"] = "或"
L["Orientation"] = "方向"
L["Other"] = "其它"
L["Outline"] = "輪廓"
L["Own Only"] = "只顯示自己的"
L["Player Character"] = "玩家角色"
L["Play Sound"] = "播放音效"
L["Presence (DK)"] = "存在"
L["Presence (Rogue)"] = "存在"
L["Prevents duration information from decreasing when an aura refreshes. May cause problems if used with multiple auras with different durations."] = "當光環刷新防止持續時間下降的訊息。如果使用多個光環用不同持續時間，可能會造成問題。"
L["Primary"] = "主天賦"
L["Progress Bar"] = "進度條"
L["Progress Texture"] = "進度材質"
L["Put this display in a group"] = "將其放入到某個群組中"
L["Ready For Use"] = "準備使用"
L["Re-center X"] = "重新置中X"
L["Re-center Y"] = "重新置中Y"
L["Remaining Time Precision"] = "精確剩餘時間"
L["Remove this display from its group"] = "將其從群組裡移除"
L["Rename"] = "重新命名"
L["Requesting display information"] = "請求顯示訊息從%s..."
L["Required For Activation"] = "需激活"
L["Retribution"] = "懲戒"
L["Right-click for more options"] = "右鍵點擊顯示更多設定"
L["Right Text"] = "右邊文字"
L["Rotate"] = "旋轉"
L["Rotate In"] = "旋轉進入"
L["Rotate Out"] = "旋轉退出"
L["Rotate Text"] = "旋轉文字"
L["Rotation"] = "旋轉"
L["Same"] = "相同"
L["Search"] = "搜尋"
L["Secondary"] = "第二天賦"
L["Send To"] = "發送到"
L["Set tooltip description"] = "設定提示資訊文字"
L["Shadow Dance"] = "暗影之舞"
L["Shadowform"] = "暗影型態"
L["Shadow Resistance"] = "暗影抗性"
L["Shift-click to create chat link"] = "Shift-點擊 創建一個|cFF8800FF[聊天連結]"
L["Show all matches (Auto-clone)"] = "顯示所有相符的(自動複製)"
L["Show players that are |cFFFF0000not affected"] = "顯示|cFFFF0000未被影響|r的玩家"
L["Shows a 3D model from the game files"] = "顯示遊戲檔案中的3D模組"
L["Shows a custom texture"] = "顯示自訂材質"
L["Shows a progress bar with name, timer, and icon"] = "顯示一個包含名稱，時間和圖示的進度條"
L["Shows a spell icon with an optional a cooldown overlay"] = "顯示可選的法術圖示有冷卻時間重疊"
L["Shows a texture that changes based on duration"] = "顯示根據時間變動的材質"
L["Shows one or more lines of text, which can include dynamic information such as progress or stacks"] = "顯示包含動態訊息文字(例如進度或是堆疊數量,允許一行或多行)"
L["Shows the remaining or expended time for an aura or timed event"] = "顯示光環或是時間事件的剩餘或是用掉時間"
L["Show this group's children"] = "顯示群組的子元素"
L["Size"] = "大小"
L["Slide"] = "滑動"
L["Slide In"] = "滑入"
L["Slide Out"] = "滑出"
L["Sort"] = "排序"
L["Sound"] = "音效"
L["Sound Channel"] = "聲道"
L["Sound File Path"] = "音效檔案路徑"
L["Space"] = "間隔"
L["Space Horizontally"] = "橫向間隔"
L["Space Vertically"] = "縱向間隔"
L["Spell ID"] = "法術編號"
L["Spell ID dialog"] = [=[你使用|cFFFF0000法術編號|r指定了光環。

預設情況下,|cFF8800FFWeakAuras|r無法區分相同名稱的光環名稱(這個有別於|cFFFF0000法術編號|r)。 
不過在啟用完整掃描設定後，|cFF8800FFWeakAuras|r可以搜尋指定的|cFFFF0000法術編號|r。

你確定要啟用完整掃描來匹配該cFFFF0000法術編號|r嗎？]=]
L["Stack Count"] = "堆疊數量"
L["Stack Count Position"] = "堆疊數量位置"
L["Stack Info"] = "堆疊訊息"
L["Stacks Settings"] = "堆疊設定"
L["Stagger"] = "交錯"
L["Stance (Warrior)"] = "姿態"
L["Start"] = "開始"
L["Stealable"] = "可法術竊取"
L["Stealthed"] = "潛行"
L["Sticky Duration"] = "置頂時間"
L["Temporary Group"] = "臨時群組"
L["Text"] = "文字"
L["Text Color"] = "文字顏色"
L["Text Position"] = "文字定位"
L["Text Settings"] = "文字設定"
L["Texture"] = "材質"
L["The children of this group have different display types, so their display options cannot be set as a group."] = "群組的子元素有不同的特效類型，所以特效的選項無法設定到群組。"
L["The duration of the animation in seconds."] = "動畫的持續時間(秒)。"
L["The type of trigger"] = "觸發類型"
L["This condition will not be tested"] = "該條件不會被測試"
L["This display is currently loaded"] = "目前已載入的特效"
L["This display is not currently loaded"] = "目前未載入的特效"
L["This display will only show when |cFF00FF00%s"] = "該特效僅在|cFF00FF00 %s 時才會顯示"
L["This display will only show when |cFFFF0000 Not %s"] = "該特效僅在|cFF00FF00不是%s 時才會顯示"
L["This region of type \"%s\" has no configuration options."] = "這地區類型\"%s\"沒有設定選項。"
L["Time in"] = "時間"
L["Timer"] = "計時器"
L["Timer Settings"] = "計時器設定"
L["Toggle the visibility of all loaded displays"] = "切換所有已載入特效的可見狀態"
L["Toggle the visibility of all non-loaded displays"] = "切換所有未載入特效的可見狀態"
L["Toggle the visibility of this display"] = "切換特效的可見狀態"
L["to group's"] = "到群組"
L["Tooltip"] = "提示資訊"
L["Tooltip on Mouseover"] = "滑鼠經過提示"
L["Top Text"] = "頂部文字"
L["to screen's"] = "到螢幕"
L["Total Time Precision"] = "總共時間精度"
L["Tracking"] = "追蹤"
L["Travel"] = "旅行形態"
L["Trigger"] = "觸發"
L["Trigger %d"] = "觸發%d"
L["Triggers"] = "觸發"
L["Type"] = "類型"
L["Ungroup"] = "移出群組"
L["Unholy"] = "穢邪"
L["Unit Exists"] = "單位存在"
L["Unlike the start or finish animations, the main animation will loop over and over until the display is hidden."] = "不同於開始或結束的動畫，主要動畫將重複循環直到特效被隱藏。"
L["Unstealthed"] = "未潛行"
L["Update Custom Text On..."] = "更新自訂文字在..."
L["Use Full Scan (High CPU)"] = "使用完整掃描(高CPU)"
L["Use tooltip \"size\" instead of stacks"] = "使用提示資訊中的數字代替堆疊數量"
L["Vertical Align"] = "垂直對齊"
L["View"] = "檢視"
L["Width"] = "寬度"
L["X Offset"] = "X位移"
L["X Scale"] = "X比例"
L["Yes"] = "是的"
L["Y Offset"] = "Y位移"
L["Y Scale"] = "Y 刻度"
L["Z Offset"] = "Z位移"
L["Zoom"] = "縮放"
L["Zoom In"] = "放大"
L["Zoom Out"] = "縮小"



