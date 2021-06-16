local function song(msg)
local text = msg.content_.text_
if text == 'اغاني' or text == 'الاغاني' then
local Text =[[
اختر نوع الاغاني
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'عربي', callback_data=msg.sender_user_id_.."/arab"},{text = 'عراقي', callback_data=msg.sender_user_id_.."/iraq"},
},
{
{text = 'اجنبي', callback_data=msg.sender_user_id_.."/english"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
------
function tdcli_update_callback(data)
if data.ID == "UpdateNewCallbackQuery" then
tahaj = data
msg = data
local Chat_id = data.chat_id_
local Msg_id = data.message_id_
local msg_idd = Msg_id/2097152/0.5
local Text = data.payload_.data_
if Text and Text:match('(.*)/arab') then
if tonumber(Text:match('(.*)/arab')) == tonumber(data.sender_user_id_) then
local Teext =[[
اختر المطرب
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'اي حاجه', callback_data=msg.sender_user_id_.."/arab1"},{text = 'تتتت', callback_data=msg.sender_user_id_.."/arab2"},
},
{
{text = 'اي حاجه برضو', callback_data=msg.sender_user_id_.."/arab3"},
},
}
local msg_id = msg.id_/2097152/0.5
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/arab1') then
if tonumber(Text:match('(.*)/arab1')) == tonumber(data.sender_user_id_) then
local Text =[[
هابي بلوك
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'DEV 7ODA ✅',url="t.me/MahmoudM2"}},
}
https.request("https://api.telegram.org/bot"..token..'/sendAudio?chat_id=' ..Chat_id.. '&audio=https://t.me/hggttr/193&caption=' .. URL.escape(Text)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end








----------
end
end
end
return {Tshake = song}
