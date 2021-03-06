@echo off

set protoPath=..\proto
set luascriptPath=..\luascript

for %%i in (%protoPath%\*.proto) do (
	echo %%i
	protoc.exe --proto_path=%protoPath% --cpp_out=%luascriptPath% %%i
)

pause
