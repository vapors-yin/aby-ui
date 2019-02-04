local _, U1 = ...;
U1Donators = {}
local topNames = "奶瓶小裤衩-血色十字军,御箭乘风-贫瘠之地,空灵道-回音山,叶心安-远古海滩,孤雨梧桐-风暴之怒,释言丶-伊森利恩,林叔叔丶-死亡之翼,魔道刺靑-菲拉斯,乱灬乱-伊森利恩,瓜瓜哒-白银之手,Monarch-霜之哀伤,优先毕业目标-贫瘠之地,奔跑的猎手-熊猫酒仙,发骚的院长-燃烧之刃,海潮之声-白银之手,败家少爷-死亡之翼,不含防腐剂-诺森德,大江江米库-雷霆之王,幽幽花舞-贫瘠之地,蒋公子-死亡之翼,Majere-冰风岗,短腿肥牛-无尽之海,邪恶肥嘟嘟-卡德罗斯";
local recentDonators = {["主宰之剑"] = "GW,Rabbearz;GV,聖侊,伊莉蛋怒风;GU,麻辣啤酒虾,艾沙夕沫;GS,我的弟弟乔治,淡然烟味",["菲米丝"] = "GW,怒雷丶",["冰霜之刃"] = "GW,软耳兔兔;GU,果肉多多",["无尽之海"] = "GW,夜丶后觉;GS,丶蛋蛋碎大石",["安苏"] = "GW,阿部察察灬,会魔法的月儿;GV,丶太阳光;GU,;GS,丶郑钱花,宝贝丶吃爪爪",["死亡之翼"] = "GW,Xeont,秋天的胖子;GV,大恶人双叶,默默丶幻,战飞天;GT,比法爷猛的术,小泰立丶,造化众神秀;GS,冬天里的圣光",["白银之手"] = "GW,Hasayake;GV,口八亚希;GU,哟丶叉叉酱,墨小菊;GT,相思最难熬,六十七号技师,仙婆婆,乌云丶,大海旳女婿;GS,Myangil",["奥达曼"] = "GW,红炉点雪",["奥蕾莉亚"] = "GW,一丢丢大;GS,烟末",["死亡熔炉"] = "GW,点烟冲锋释放",["冰风岗"] = "GW,毒奶小可爱;GV,王昭悠;GU,Trustthelove;GS,Akmythes",["阿古斯"] = "GW,快乐的小蛋挞",["国王之谷"] = "GW,卡多雷夜行者;GU,宿敌",["甜水绿洲"] = "GW,野兽的朋友",["克尔苏加德"] = "GW,五仁妹;GV,Summero",["玛洛加尔"] = "GV,宽口径奶嘴",["格瑞姆巴托"] = "GV,我只僾她,德伊德飘儿;GU,Leoares,墨色玄离;GT,Vv;GS,冰镇小酸奶",["冰川之拳"] = "GV,苏沐橙",["弗塞雷迦"] = "GV,断角库亚塔",["太阳之井"] = "GV,十月二十;GT,跳跳狐",["洛肯"] = "GV,Autumnsnow,航拽",["埃德萨拉"] = "GV,四岁;GT,烟灬花易冷,烟花小魔王,幽默泡泡丶",["金色平原"] = "GV,尛尛騎,尛尛獵,尛尛術,尛尛灋;GS,Virgil",["熔火之心"] = "GV,爆爆;GU,二牛",["末日行者"] = "GV,Xanxus,林遇清;GU,尐軟;GT,啪嗒嘭;GS,罗熙熙",["???"] = "GV,天照鱼酱;GU,西米糕;GR,大姐小跟班丶,特汚兔",["凤凰之神"] = "GV,组我绝对红爆,杨世碧丶;GU,丶丨我是演员;GT,山石大哥,聆听,艾泽柆斯的风;GS,夕晖,仙羽羽,邪恶蛋卷",["丽丽（四川）"] = "GV,欧咪咪",["玛里苟斯"] = "GV,好嗨呀",["熊猫酒仙"] = "GV,神器;GS,阿迩托莉蕥",["罗曼斯"] = "GU,偷偷出去玩",["阿曼尼"] = "GU,忘却了",["黑暗魅影"] = "GU,阿丝匹琳酱",["燃烧之刃"] = "GU,乔雯静刃,寻道问天",["伊森利恩"] = "GU,Iyrel,柒月灬浠",["贫瘠之地"] = "GU,近神人一页书,尾崎由香;GT,霧瞳,易安姐;GS,难得心动,戊己五六",["萨尔"] = "GU,血影猎手",["迦拉克隆"] = "GU,梦之火舞;GT,快乐的小柯基",["血环"] = "GU,知世丷",["银松森林"] = "GU,克非改命",["萨洛拉丝"] = "GU,凑崎纱夏",["古尔丹"] = "GT,夕颜漪语",["卡德罗斯"] = "GT,永恒地星空",["自由之风"] = "GT,浮世轻歌",["破碎岭"] = "GT,悠然似风",["布兰卡德"] = "GT,黑漆嘛踏,欧洲小弘哥",["瓦拉纳"] = "GT,专注魔法",["羽月"] = "GT,功夫胖胖",["鬼雾峰"] = "GT,浮世三千",["冬拥湖"] = "GT,朵朵海堂",["军团要塞"] = "GT,伤灬感入侵",["海达希亚"] = "GT,光明中升华",["暗影之月"] = "GT,殇囚",["鹰巢山"] = "GT,沧海一声笑",["苏塔恩"] = "GS,柔吻有你的夜",["月光林地"] = "GS,烟火在燃烧",["燃烧军团"] = "GS,若呆",["红龙军团"] = "GS,叉烧捞面",["血色十字军"] = "GS,把你鸡儿吓沒",["盖斯"] = "GS,紫弓,番茄丶栗子",["伊森德雷"] = "GS,柏璃丶",["血羽"] = "GS,小李他吗飞刀",["辛达苟萨"] = "GS,Jimforever",["迅捷微风"] = "GS,尘缘丶"};
local start = { year = 2018, month = 8, day = 3, hour = 7, min = 0, sec = 0 }
local now = time()
local player_shown = {}
U1Donators.players = player_shown

local topNamesOrder = {} for i, name in ipairs({ strsplit(',', topNames) }) do topNamesOrder[name] = i end

local realms, players, player_days = {}, {}, {}
local base64 = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';
local function ConvertDonators(day_realm_players)
    if not day_realm_players then return end
    for realm, allday in pairs(day_realm_players) do
        if not tContains(realms, realm) then table.insert(realms, realm) end
        for _, oneday in ipairs({strsplit(';', allday)}) do
            local date;
            for i, player in ipairs({strsplit(',', oneday)}) do
                if i == 1 then
                    local dec = (base64:find(player:sub(1,1)) - 1) * 64 + (base64:find(player:sub(2,2)) - 1)
                    local y, m, d = floor(dec/12/31)+2018, floor(dec/31)%12+1, dec%31+1
                    date = format("%04d-%02d-%02d", y, m, d)
                else
                    local fullname = player .. '-' .. (realm:gsub("%[.-%]", ""))
                    if not tContains(players, fullname) then
                        table.insert(players, fullname)
                        player_days[fullname] = date
                        player_shown[fullname] = topNamesOrder[fullname] or 0
                    end
                end
            end
        end
    end
end
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

function U1Donators:CreateFrame()
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

    f:Hide();
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