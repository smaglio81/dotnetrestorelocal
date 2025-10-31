push-location .\dotnetrestoretest

dotnet restore dotnetrestoretest.csproj -s "C:\Program Files (x86)\Microsoft SDKs\NuGetPackages\\" -s https://api.nuget.org/v3/index.json  # error, tries to use the remote source as a local source
dotnet restore dotnetrestoretest.csproj -s "C:\Program Files (x86)\Microsoft SDKs\NuGetPackages\\" # works
dotnet restore dotnetrestoretest.csproj  -s https://api.nuget.org/v3/index.json # works

pop-location