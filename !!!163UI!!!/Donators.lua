local _, U1 = ...;
U1Donators = {}
local topNames = "奶瓶小裤衩-血色十字军,御箭乘风-贫瘠之地,闪亮的眼睛丶-死亡之翼,空灵道-回音山,瓜瓜哒-白银之手,叶心安-远古海滩,乱劈妖裁-菲拉斯,孤雨梧桐-风暴之怒,释言丶-伊森利恩,乱灬乱-伊森利恩,古麗古麗-死亡之翼,Monarch-霜之哀伤,坚果别闹-燃烧之刃,冰淇淋上帝-血色十字军,奔跑的猎手-熊猫酒仙,发骚的院长-燃烧之刃,海潮之声-白银之手,短腿肥牛-无尽之海,败家少爷-死亡之翼,不含防腐剂-诺森德,大江江米库-雷霆之王,幽幽花舞-贫瘠之地,蒋公子-死亡之翼,Majere-冰风岗,邪恶肥嘟嘟-卡德罗斯,落霞菲-罗宁";
local recentDonators = {["万色星辰"] = "HR,天神小法;HH,大荒,银灯",["伊森利恩"] = "HR,丶决情,璀璨如夏花;HP,异度冰寒;HN,湯圆,青桥丶;HM,唐英雄;HK,暴走的肉圆子",["罗宁"] = "HR,佩剑高歌,無賊,山海婆娑,Syr;HQ,时琦丶狂三;HN,Magicsecutor;HM,黑翼信仰;HJ,光之灵;HI,偷走妳的心",["霜之哀伤"] = "HR,黑山小腰;HS,随风騎士",["加尔"] = "HR,快乐的阿昆达",["海克泰尔"] = "HR,狂徒的易伤机;HI,夕阳残雪",["安苏"] = "HR,大天使之毅,战亖放;HS,无妄丨羲,回手掏裆;HM,彼得诺夫;HL,丨灬流沙灬丨;HK,奶油土豆泥;HH,青鸟衔红巾;HG,醉青竹",["烈焰峰"] = "HR,雍也;HM,撸痔深",["凤凰之神"] = "HR,阿尒忒弥斯,爆打小耗子;HQ,黄瓜乀,苦茶羋,九|尪|王;HP,梨园甜哥;HO,星空叙事曲丶,丨火锅车手丨,毛毛虫闖红灯,戰神丶阿瑞凘,姒水姩澕;HN,艾星少女梦;HM,痞萌萌,咆哮的熊猫丶;HL,Ryujyamazaki;HK,敏敏新垣结衣;HJ,似水无恨,奶茶配辣条丶;HI,陈冠曦,关爱老实人,汉寿亭侯丶;HH,飞鸟与鱼丶,灬筱柒仔灬,教官我想上课,忘了这事了,凍骨頭丶;HG,火炎丷焱燚,胖胖的牛德头",["奥尔加隆"] = "HR,岛田美惠;HS,調皮的小強;HN,Onlymaka",["埃德萨拉"] = "HR,Tomoto;HQ,快乐的小二碧;HH,大锅喝醉了,烟花大魔王",["暗影之月"] = "HR,Sy",["巨龙之吼"] = "HR,林宥嘉;HO,丶艾斯泰尔,事后圣如佛",["死亡之翼"] = "HR,丶老张丶;HS,云山老牛,赞达拉小霸王;HQ,我系白羊座;HP,胸大镇民心,奎爷丶奎托斯;HO,丨阿乄伽丨,冰火毒龙跳糖;HN,小张老师,欧皇佳宝宝,问灬奈何,关月瞳;HM,丨心悦了尘丨,浅上灬藤乃;HL,超甜豆浆,猫天棒,争当豹子头,环保小卫士;HK,爱新觉罗凯牛;HJ,蚂丿蚁,丨丶斩;HI,洛秋凉丶,过来肝我全尸;HH,Ripperzz,三刀而已;HG,残落丶",["熊猫酒仙"] = "HR,暗殺星㐩㒷㐩;HO,弦外有音;HN,暗香未盈袖,砸水果店的猪,张易之,寕静;HM,黄橙橙丶;HK,蝴蝶之夏,雪落苍山;HJ,Guckkasten",["白银之手"] = "HR,白桃桃灬;HS,宅豆豆;HQ,禊萩;HP,剑与天秤,Heria;HO,安弈;HN,低调滴灵魂,茶板,娜小样儿,煙火丶;HM,風萧萧兮;HL,天肝勿燥,迪达弹弹;HK,梦魇术术;HJ,小孙策,阿不思的克星;HI,郭达曰斯坦森,福柯奥斯,荒原战歌;HG,放电小绵羊,云冷",["贫瘠之地"] = "HR,相视而笑;HS,Demonci;HO,黑手信条,鲈鱼;HJ,帅得坦然,邦桒迪;HI,辛德瑞拉之耀,迦勒底盾娘",["回音山"] = "HR,云语,云晨;HP,邻家小妹;HI,毛茸茸不是胖",["远古海滩"] = "HR,凤凰韵,凤凰心;HO,暮色如血",["迦拉克隆"] = "HR,森林暮色;HQ,沃罹贝尔;HN,Avemger;HL,骗你是小咕;HK,刃之無雙,諸神之怒;HJ,突然好想伱,米饼丶猎",["格瑞姆巴托"] = "HS,墨唐弥撒,玛戈妲莱妮,废土游魔;HO,永恒极光;HN,Ghostpoem;HM,兜兜里有糖纸;HK,脆脆丶奥斯卡,突然空闲;HI,一根儿木头丶;HH,你好丶阿瑞斯;HG,然然的苏菲",["甜水绿洲"] = "HS,哎哟哟小肥肉,Bappu",["国王之谷"] = "HS,破岚;HQ,小阿咪丶;HP,听见月光;HL,米娜斯媞莉絲;HJ,时而不着调;HG,隱哥,晚夜烛凉,法拉米尔夏月",["燃烧之刃"] = "HS,黎萱曲中人,浪子杰;HQ,赞达拉首富;HP,一七哈皮;HO,丶采薇,采薇丶,欧皇二狗子灬;HL,左边比较大,㑋丶晚安,跳刀拉比克;HH,落幕的月光,小炯丶;HG,玉强活动房屋",["银松森林"] = "HS,亲爱的我们上;HM,虎妹",["末日行者"] = "HS,杨惊羽;HQ,牛愛花;HO,最后的右手;HN,飞翔的浪漫;HJ,大师在流浪,不气饭的阿饭;HG,I残灬叶I",["提瑞斯法"] = "HS,小鸡啄米;HO,无聊真无聊",["影之哀伤"] = "HS,神奇的阿小木;HQ,Qiangli;HP,充血的抱齿兽,圣光的惩戒;HO,红蓝丶兔子;HG,风吹奶甩两边",["红云台地"] = "HS,新尼玛",["太阳之井"] = "HS,染指流年;HQ,漂亮鬼牧;HP,Oasi;HI,沧海半缘",["月神殿"] = "HS,你的小鱼干;HO,闲鱼本鱼",["???"] = "HS,撩小面;HQ,小又;HN,大哥防骑;HM,神罚之光",["克尔苏加德"] = "HS,氧氟沙星;HM,兰陵醉客;HK,小聆听;HI,舌尖上的咕咕",["阿拉索"] = "HS,残忍的老阿姨",["血色十字军"] = "HS,肆贰伍带槽;HJ,佛系牙牙;HI,未语嫣然",["风暴之怒"] = "HQ,平时子",["泰拉尔"] = "HQ,银子",["自由之风"] = "HQ,白夜",["古加尔"] = "HQ,夕阳一抹红颜",["诺莫瑞根"] = "HQ,泰兰徳丶拉风;HN,Hthunter",["玛瑟里顿"] = "HQ,冷艳流星锤",["主宰之剑"] = "HQ,核弹剑仙,你可真棒;HP,Rabbearr,混沌之殇,卖火柴小女孩;HN,李不懂丶,松脆库仔,丁当貓;HL,欧一冷总一皇,愛德華丿蒂奇;HK,未来皆可期;HJ,深秋;HH,绯红咖啡,风华是指流砂,丨寒影丨;HG,邪恶光环丶",["阿曼尼"] = "HQ,致命曼陀罗",["阿古斯"] = "HQ,花败心亦凉;HM,丶匕加锁丶",["雷斧堡垒"] = "HQ,汐小竹",["亡语者"] = "HQ,Sarakael",["密林游侠"] = "HP,德雷克;HO,巨大少女",["加兹鲁维"] = "HP,风中酷啦啦",["金色平原"] = "HP,烟若柳尘;HN,Moonstruck;HM,阿芙塔莉雅,科罗拉里昂",["神圣之歌"] = "HP,纯黑色棒棒糖",["萨菲隆"] = "HP,正版十七笔画",["玛多兰"] = "HP,隔世情缘",["冰霜之刃"] = "HP,终极混沌;HG,Anzi",["通灵学院"] = "HP,三眠丶",["血吼"] = "HP,谁动了我奶酪;HO,暗影绝殇",["天谴之门"] = "HP,星光永耀之地",["黑暗虚空"] = "HP,米迦勒丶炽焰;HI,血熊猫",["盖斯"] = "HP,梦洁",["加基森"] = "HP,一直向西",["阿克蒙德"] = "HO,麦尔德林;HK,死前两米;HJ,丫疼",["世界之树"] = "HO,让我提升好吗;HH,玉髓",["亚雷戈斯"] = "HO,聋五",["布兰卡德"] = "HO,樱井优太",["艾森娜"] = "HO,阳光保险集团",["阿薩斯[TW]"] = "HO,Elementary",["普罗德摩"] = "HO,柠檬水",["狂热之刃"] = "HO,虚空思故渊;HM,柔柔小芊芊;HI,兰蔻丶;HG,江上数峰青",["布莱克摩"] = "HO,冉冉",["阿拉希"] = "HO,随性随心",["鬼雾峰"] = "HO,言语就像风",["梦境之树"] = "HN,Nujabes",["战歌"] = "HN,检察助理",["索瑞森"] = "HN,闹闹猫",["血环"] = "HN,回忆冰冰凉;HJ,泥巴坨坨",["扎拉赞恩"] = "HN,盛装㐅舞步",["斯克提斯"] = "HN,爷丨丨玩莘",["血羽"] = "HM,蹲坟头啃土豆",["丽丽（四川）"] = "HM,奶大腰细,瑪德智障,鸡肉丸子;HG,戎州杨超越",["萨格拉斯"] = "HM,怪很强我先跑",["爱斯特纳"] = "HM,雪菲",["玛诺洛斯"] = "HM,高邮闹闹",["蜘蛛王国"] = "HM,傲气凌风",["菲米丝"] = "HL,静静的昕昕",["燃烧军团"] = "HL,菠萝波罗",["恶魔之翼"] = "HL,你亲爱的姐夫",["荆棘谷"] = "HL,贵气王族",["瓦里安"] = "HK,硬邦邦的",["伊瑟拉"] = "HK,滑雪爱好者",["奈法利安"] = "HK,新垣结衣",["阿比迪斯"] = "HK,经开建",["无尽之海"] = "HK,秀气娇娘,綉気毒舞;HJ,有丶帅的怪怪;HI,洛丝维亚瑟,森岛囚鹿;HH,发电的阿昆达",["迅捷微风"] = "HK,妖瞳百魅",["遗忘海岸"] = "HK,女武神丶",["梅尔加尼"] = "HJ,新屋熊",["冰风岗"] = "HJ,小红手阿坤达;HI,树读,大毛贼,Verne,先奶为敬",["阿尔萨斯"] = "HJ,Evansyong",["范克里夫"] = "HJ,星辰灬曜月",["破碎岭"] = "HJ,你好高冷癌;HI,按住了逼逼",["千针石林"] = "HJ,艾尔的醒醐,艾尔的灵魂",["凯尔萨斯"] = "HJ,深邃之光",["大地之怒"] = "HJ,永恒的史诗",["哈卡"] = "HJ,Github",["克洛玛古斯"] = "HI,狂戦,指尖的燃烧",["铜龙军团"] = "HI,藤井树",["火烟之谷"] = "HI,罗宾",["伊莫塔尔"] = "HI,舒孑影",["黑铁"] = "HH,雷丘的小伙伴,雨鸣丶",["轻风之语"] = "HH,Intotrush",["屠魔山谷"] = "HH,想吃小孩",["血牙魔王"] = "HH,夜空之辉",["黑龙军团"] = "HH,北巷故人",["拉文凯斯"] = "HH,民间贼神",["普瑞斯托"] = "HH,沉鱼",["奥特兰克"] = "HH,六不六",["耳语海岸"] = "HG,也曾经心动过",["冬泉谷"] = "HG,青鸢",["泰兰德"] = "HG,清靜淡雅"};
local start = { year = 2018, month = 8, day = 3, hour = 7, min = 0, sec = 0 }
local now = time()
local player_shown = {}
U1Donators.players = player_shown

local topNamesOrder = {} for i, name in ipairs({ strsplit(',', topNames) }) do topNamesOrder[name] = i end

local pairs, ipairs, strsplit, format = pairs, ipairs, strsplit, format

local players, player_days = {}, {}
local base64 = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';
local function ConvertDonators(day_realm_players)
    if not day_realm_players then return end
    for realm, allday in pairs(day_realm_players) do
        for _, oneday in ipairs({strsplit(';', allday)}) do
            local date;
            for i, player in ipairs({strsplit(',', oneday)}) do
                if i == 1 then
                    local dec = (base64:find(player:sub(1,1)) - 1) * 64 + (base64:find(player:sub(2,2)) - 1)
                    local y, m, d = floor(dec/12/31)+2018, floor(dec/31)%12+1, dec%31+1
                    date = format("%04d-%02d-%02d", y, m, d)
                else
                    local fullname = player .. '-' .. (realm:gsub("%[.-%]", ""))
                    if player_days[fullname] == nil then
                        table.insert(players, fullname)
                        player_days[fullname] = date
                    end
                end
            end
        end
    end
end
local function GetPlayerNames(day_realm_players)
    if not day_realm_players then return end
    for realm, allday in pairs(day_realm_players) do
        for _, oneday in ipairs({strsplit(';', allday)}) do
            for i, player in ipairs({strsplit(',', oneday)}) do
                if i > 1 then
                    local fullname = player .. '-' .. (realm:gsub("%[.-%]", ""))
                    player_shown[fullname] = topNamesOrder[fullname] or 0
                end
            end
        end
    end
end
GetPlayerNames(recentDonators)
GetPlayerNames(U1.historyDonators)

function U1Donators:CreateFrame()
    ConvertDonators(recentDonators)
    recentDonators = nil
    ConvertDonators(U1.historyDonators)
    U1.historyDonators = nil

    table.sort(players, function(a, b)
        local order1 = topNamesOrder[a] or 9999
        local order2 = topNamesOrder[b] or 9999
        if order1 ~= order2 then return order1 < order2 end
        local _, r1 = strsplit("-", a)
        local _, r2 = strsplit("-", b)
        if r1 ~= r2 then
            if r1 == '???' then return false
            elseif r2 == '???' then return true
            else return r1 < r2; end
        end
        local day1 = player_days[a]
        local day2 = player_days[b]
        if day1 ~= day2 then return day1 > day2 end
        return a < b
    end)
    -- 排完序就不需要了
    topNames = nil
    topNamesOrder = nil

    local f = WW:Frame("U1DonatorsFrame", UIParent, "BasicFrameTemplateWithInset"):Size(320, 500):TR(U1Frame, "TL", -10, 0):SetToplevel(1):SetFrameStrata("DIALOG")

    f.TitleText:SetText("爱不易的捐助者，谢谢你们")
    f.InsetBg:SetPoint("TOPLEFT", 4, -50)
    CoreUIMakeMovable(f)

    local scroll = CoreUICreateHybridStep1(nil, f(), nil, true, true, nil)
    WW(scroll):TL(f.InsetBg, 3, -3):BR(f.InsetBg, -2-21, 2):un() --:TL(3, -20)
    f.scroll = scroll

    local headn = TplColumnButton(f, nil, 22):SetWidth(108):SetText("玩家主角色"):SetScript("OnClick", noop):un()
    WW(headn:GetFontString()):SetFontHeight(14):un()
    local heads = TplColumnButton(f, nil, 22):SetWidth(80):SetText("服务器"):SetScript("OnClick", noop):un()
    WW(heads:GetFontString()):SetFontHeight(14):un()
    local headd = TplColumnButton(f, nil, 22):SetWidth(100):SetText("捐助时间"):SetScript("OnClick", noop):un()
    WW(headd:GetFontString()):SetFontHeight(14):un()
    CoreUIAnchor(f, "TOPLEFT", "TOPLEFT", 8, -30, "LEFT", "RIGHT", 0, 0, headn, heads, headd)

    local function fix_text_width(obj)
      obj:GetFontString():SetAllPoints()
    end

    scroll.creator = function(self, index, name)
      local row = WW(self.scrollChild):Button(name):LEFT():RIGHT():Size(0, 20)
      row:SetHighlightTexture([[Interface\QuestFrame\UI-QuestTitleHighlight]], 'ADD')

      row.name = row:Button():Size(100, 20):EnableMouse(false):SetButtonFont(U1FCenterTextMid):SetText(111):GetButtonText():SetJustifyH("Center"):up()
      row.server = row:Button():Size(75, 20):EnableMouse(false):SetButtonFont(U1FCenterTextTiny):SetText(111):GetButtonText():SetJustifyH("Right"):up()
      row.firstdate = row:Button():Size(90, 20):EnableMouse(false):SetButtonFont(U1FCenterTextTiny):SetText(333):GetButtonText():SetJustifyH("Right"):up()

      fix_text_width(row.name)
      fix_text_width(row.server)
      fix_text_width(row.firstdate)

      CoreUIAnchor(row, "LEFT", "LEFT", 5, 0, "LEFT", "RIGHT", 5, 0, row.name, row.server, row.firstdate)
      return row:un()
    end

    scroll.getNumFunc = function()
      return #players
    end

    scroll.updateFunc = function(self, row, index)
      row.index = index
      local name, realm = strsplit('-', players[index])
      row.name:SetText(name)
      row.server:SetText(realm)
      row.firstdate:SetText(player_days[players[index]]);
      --row.name:GetFontString():SetTextColor(1,1,1)
      --local date_fmt = '%Y/%m/%d'
      --local txt = date(date_fmt, time())
      --row.firstdate:SetText(txt)
    end

    CoreUICreateHybridStep2(scroll, 0, 0, "TOPLEFT", "TOPLEFT", 0)

    f:Hide()

    collectgarbage()
    return f()
end

CoreOnEvent("PLAYER_ENTERING_WORLD", function()
    local origs = {}
    local addMessageReplace = function(self, msg, ...)
        msg = msg and tostring(msg) or ""
        local h, t, part1, fullname, part2 = msg:find("(\124Hplayer:(.-):.-:.-:.-\124h%[)(\124c.........-\124r%]\124h)")
        if fullname and ((U1Donators and U1Donators.players[fullname]) or (U1STAFF and U1STAFF[fullname])) then
            --local _, height = self:GetFont()
            msg = msg:sub(1,h-1) .. part1 .. '\124TInterface\\AddOns\\!!!163UI!!!\\Textures\\UI2-logo:' .. (13) .. '\124t' .. part2 .. msg:sub(t+1);
        end
        origs[self](self, msg, ...)
    end
    WithAllChatFrame(function(cf)
        if cf:GetID() == 2 then return end
        origs[cf] = cf.AddMessage
        cf.AddMessage = addMessageReplace
    end)
    return "remove"
end)