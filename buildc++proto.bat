 cd ../luascript
for %%i in (*.proto) do (
echo %%i
"..\protoc-gen-lua-master\protoc.exe" --cpp_out=. %%i
)
echo end
pause