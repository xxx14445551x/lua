local a={Scripts={},Folder="Crescent/Lua"}if isfolder and not isfolder("Crescent")then makefolder("Crescent")end
if isfolder and not isfolder(a.Folder)then makefolder(a.Folder)end
function a:GetScripts()if not isfolder then return{}end;local b=listfiles(self.Folder)local c={}
for d,e in pairs(b)do if e:match("%.lua$")then local f=e:match("([^/\\]+)%.lua$")table.insert(c,f)end end
return c end
function a:LoadAndExecute(b)local c=self.Folder.."/"..b..".lua"
if isfile and isfile(c)then local d=readfile(c)local e,f=loadstring(d)if e then pcall(e)else print("[Lua] Error: "..f)end end end
function a:Delete(b)local c=self.Folder.."/"..b..".lua"if isfile and isfile(c)then delfile(c)end end
return a
