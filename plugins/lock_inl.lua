--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀          BY ABBAS ALSAIDI           ▀▄ ▄▀ 
▀▄ ▄▀            WRITER ABBAS             ▀▄ ▄▀ 
▀▄ ▄▀           Dev@Abbas9_9              ▀▄ ▄▀   
▀▄ ▄▀          لفتح وقفل الانلاين           ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
do
local function pre_process(msg)

    local inline = 'mate:'..msg.to.id
    if msg.text == '[unsupported]' and redis:get(inline) and not is_momod(msg) then
            delete_msg(msg.id, ok_cb, true)
end
    return msg
    end
    
 local function Abbas(msg, matches)
if is_momod(msg) and matches[1] == "قفل" and matches[2] == "الانلاين" then
local inline = 'mate:'..msg.to.id
redis:set(inline, true)
return "" 
end
if is_momod(msg) and matches[1] == "فتح" and matches[2] == "الانلاين" then
    local inline = 'mate:'..msg.to.id
    redis:del(inline)
    return "" 
  end
end
return {
    patterns ={
        '^(قفل) (الانلاين)$',
        '^(فتح) (الانلاين)$',
        '^[#!/](قفل) (الانلاين)$',
        '^[#!/](فتح) (الانلاين)$',
    },
run = Abbas,
pre_process = pre_process 
}
end

-----لا تمسح الحقوق ياعار غيرك تعبان على الملفات -------
--------------------عباس السعيدي-----------------------
--------------------Dev@Abbas9_9-----------------------
