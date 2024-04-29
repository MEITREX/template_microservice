@echo off
echo Generating API documentation...
echo This requires npm to be installed!
echo This requires the service to be running

REM TODO: change the port and title

REM clear old docs
del api.md

set port=1001
set title=Template API

REM install graphql-markdown if not installed
if not exist node_modules\graphql-markdown (
   echo Installing graphql-markdown, run this script again after installation
   npm install graphql-markdown
)

npx graphql-markdown "http://localhost:%port%/graphql" --title "%title%" > api.md