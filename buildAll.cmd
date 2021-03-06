echo "Start building Electron.NET dev stack..."
echo "Restore & Build API"
cd ElectronNet.API
dotnet restore
dotnet build
cd ..
echo "Restore & Build API"
cd ElectronNet.CLI
dotnet restore
dotnet build
cd ..
echo "Restore & Build WebApp Demo"
cd ElectronNet.WebApp
dotnet restore
dotnet build
echo "Invoke electronize build in WebApp Demo"

echo "-- win"
dotnet electronize build win

echo "-- linux"
dotnet electronize build linux

REM Not supported on Windows Systems, because of SymLinks...
REM echo "-- osx"
REM   dotnet electronize build osx
