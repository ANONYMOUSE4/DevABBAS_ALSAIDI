--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀          BY ABBAS ALSAIDI           ▀▄ ▄▀ 
▀▄ ▄▀            WRITER ABBAS             ▀▄ ▄▀ 
▀▄ ▄▀           Dev@Abbas9_9              ▀▄ ▄▀   
▀▄ ▄▀         معلومات السيرفر             ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
local function run(msg, matches)
local text = io.popen("sh ./data/cmd.sh"):read('*all')
if is_sudo(msg) then
  return text
end
  end
return {
  patterns = {
'^(معلومات السيرفر)$',},
  run = run,
  moderated = true
}
-----لا تمسح الحقوق ياعار غيرك تعبان على الملفات -------
--------------------عباس السعيدي-----------------------
--------------------Dev@Abbas9_9-----------------------