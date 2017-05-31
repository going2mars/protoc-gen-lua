@echo off
 cd ../luascript
for %%i in (*.proto) do (
echo %%i
"..\protoc-gen-lua-master\protoc.exe" --plugin=protoc-gen-lua="..\protoc-gen-lua-master\plugin\protoc-gen-lua.bat" --lua_out=. %%i
)
echo end
pause