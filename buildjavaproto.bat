 cd ../luascript
for %%i in (*.proto) do (
echo %%i
"..\protoc-gen-lua-master\protoc.exe" --java_out=. %%i
)
echo end
pause