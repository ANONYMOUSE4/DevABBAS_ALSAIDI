--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀          BY ABBAS ALSAIDI           ▀▄ ▄▀ 
▀▄ ▄▀            WRITER ABBAS             ▀▄ ▄▀ 
▀▄ ▄▀           Dev@Abbas9_9              ▀▄ ▄▀   
▀▄ ▄▀        تنشيط وتحديث وتصحيح          ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]

do
function run(msg, matches)
  if matches[1] == "تنشيط" and is_sudo(msg) then
    return os.execute("./launch.sh"):read('*all')
  elseif matches[1] == "تحديث" and is_sudo(msg) then
     return io.popen("git pull"):read('*all')
  elseif  matches[1] == "تصحيح" and is_sudo(msg) then 
    return io.popen("redis-server"):read('*all')
  end
end
return {
  patterns = {
    "^(تنشيط)",
    "^(تحديث)",
    "^(تصحيح)"
  },
  run = run
}
end
-----لا تمسح الحقوق ياعار غيرك تعبان على الملفات -------
--------------------عباس السعيدي-----------------------
--------------------Dev@Abbas9_9-----------------------