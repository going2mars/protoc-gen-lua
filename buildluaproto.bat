@echo off

set protoPath=%~dp0..\proto
set luascriptPath=%~dp0..\luascript

for %%i in (%protoPath%\*.proto) do (
	echo %%i
	%~dp0protoc.exe --plugin=protoc-gen-lua="%~dp0plugin\protoc-gen-lua.bat" --proto_path=%protoPath% --lua_out=%luascriptPath% %%i
)

pause
