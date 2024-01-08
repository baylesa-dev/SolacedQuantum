<div style="text-align:center">
   <img src="./.assets/image.png">
</div>

## Run on macOS Apple Chip (M1, M2, ...)

1. Install .NET 6.0 for macOS ARM64 **AND** x64 :
   https://dotnet.microsoft.com/en-us/download/dotnet/6.0

2. Download the right version of the simulator: https://www.nuget.org/api/v2/package/Microsoft.Quantum.Simulators/0.21.2112180703

3. Rename the simulator [filename].nupkg as [filename].zip and then extract it

```bash
mv microsoft.quantum.simulators.0.21.2112180703.nupkg microsoft.quantum.simulators.0.21.2112180703.nupkg.zip
```

4. Copy over the said libraries to the most recent version of simulator inside the nuget cache:

```bash
cp microsoft.quantum.simulators.0.21.2112180703.nupkg/runtimes/osx-x64/native/* ~/.nuget/packages/microsoft.quantum.simulators/0.28.302812/runtimes/osx-x64/native/
```

5. Export the right dotnet path:

```
export PATH=/usr/local/share/dotnet/x64:$PATH
```

6. Run the program

```bash
dotnet run
```

🎉

![Alt text](image-2.png)
