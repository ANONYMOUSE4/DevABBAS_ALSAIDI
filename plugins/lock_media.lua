--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀          BY ABBAS ALSAIDI           ▀▄ ▄▀ 
▀▄ ▄▀            WRITER ABBAS             ▀▄ ▄▀ 
▀▄ ▄▀           Dev@Abbas9_9              ▀▄ ▄▀   
▀▄ ▄▀   قفل او كتم الوسائط = Lock Media   ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
do 

local function pre_process(msg) 
local Abbas = msg['id'] 
  local user = msg.from.id 
local chat = msg.to.id 
    local Abbas9_9 = 'mate:'..msg.to.id 
    if redis:get(Abbas9_9) and msg.media and not is_momod(msg) then 

            delete_msg(msg.id, ok_cb, false) 
local test = " 🗣 صــديقي 🚫😡 ["..msg.from.first_name.."]".."\n".."يمنع نشر صور فيديوهات صوتيات وكافة الميديا هنا ان تكرر الامر سوف تجبرني على طردك/ج يرجى اتباع القوانين 😘✔️⚖✔️ ".."\n".." 👮 username : @"..(msg.from.username or " ") 
reply_msg(Abbas, test, ok_cb, true) 

end 

        return msg 
    end 

local function ABBAS(msg, matches) 
local Abbas = msg['id'] 

    if matches[1] == 'قفل الوسائط'  and is_momod(msg) then 
                    local Anonymouse= 'mate:'..msg.to.id 
                    redis:set(Anonymouse, true) 
local anon = '☑️ تم قفل 🔒 جميع الوسائط 🔕 \n🔺Order By : @'..msg.from.username..'\n🔻Order By : '.. msg.from.id..'\n'
reply_msg(Abbas, anon, ok_cb, true) 
elseif matches[1] == 'قفل الوسائط' and not is_momod(msg) then 
local Abbas9_9 = 'للـمـشـرفـيـن فـقـط 👮🖕🏿'
reply_msg(Abbas, Abbas9_9, ok_cb, true) 
  elseif is_momod(msg) and matches[1] == 'فتح الوسائط' then
      local Anonymouse= 'mate:'..msg.to.id
      redis:del(Anonymouse)
local anon = '☑️ تم فتح جميع الوسائط 🔓🔔 \n🔺Order By : @'..msg.from.username..'\n🔻Order By : '.. msg.from.id..'\n'
reply_msg(Abbas, anon, ok_cb, true) 
elseif matches[1] == 'فتح الوسائط' and not is_momod(msg) then 
local Abbas9_9= 'للـمـشـرفـيـن فـقـط 👮🖕🏿'
reply_msg(Abbas, Abbas9_9, ok_cb, true) 
end 
end 

return { 
    patterns = { 
    "^(قفل الوسائط)$", 
    "^(فتح الوسائط)$", 
  },
run = ABBAS, 
    pre_process = pre_process 
} 

end
-----لا تمسح الحقوق ياعار غيرك تعبان على الملفات -------
--------------------عباس السعيدي-----------------------
--------------------Dev@Abbas9_9-----------------------