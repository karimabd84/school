#!/usr/bin/env bash

#exit if any command fails
set -e

#dotnet restore ./src/WebApi
dotnet restore ./src/WebClient

# Ideally we would use the 'dotnet test' command to test netcoreapp and net451 so restrict for now 
# but this currently doesn't work due to https://github.com/dotnet/cli/issues/3073 so restrict to netcoreapp

#dotnet test ./src/WebApi -c Release -f netcoreapp1.0
#dotnet test ./src/WebClient -c Release -f netcoreapp1.0

# Instead, run directly with mono for the full .net version 
#dotnet build ./src/WebApi -c Release -f net460
dotnet build ./src/WebClient -c Release -f netcoreapp1.0

#mono \  
#./test/TEST_PROJECT_NAME/bin/Release/net451/*/dotnet-test-xunit.exe \
#./test/TEST_PROJECT_NAME/bin/Release/net451/*/TEST_PROJECT_NAME.dll

revision=${TRAVIS_JOB_ID:=1}  
revision=$(printf "%04d" $revision) 

#dotnet pack ./src/WebApi -c Release -o ./artifacts --version-suffix=$revision
dotnet pack ./src/WebClient -c Release -o ./artifacts --version-suffix=$revision