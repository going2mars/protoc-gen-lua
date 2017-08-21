@echo off

set protoPath=..\proto
set luascriptPath=..\luascript

for %%i in (%protoPath%\*.proto) do (
	echo %%i
	protoc.exe --plugin=protoc-gen-lua="plugin\protoc-gen-lua.bat" --proto_path=%protoPath% --lua_out=%luascriptPath% %%i
)

pause
