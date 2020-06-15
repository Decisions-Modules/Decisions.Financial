#This is a General Purpose Script for picking the right version
#of msbuild for our myriad environments so that people can easily
#build without having to copy these if statements into all build files

# Check for Visual Studio MSBuild version 2019 (15.0)
if (Test-Path ${Env:ProgramFiles(x86)}'\Microsoft Visual Studio\2019\Enterprise\MSBuild\Current\bin\msbuild.exe' ) {
    Write-Output ${Env:ProgramFiles(x86)}'\Microsoft Visual Studio\2019\Enterprise\MSBuild\Current\bin\msbuild.exe'
    exit
}

# Check for Visual Studio MSBuild version 2019 (15.0)
if (Test-Path ${Env:ProgramFiles(x86)}'\Microsoft Visual Studio\2019\Professional\MSBuild\Current\bin\msbuild.exe' ) {
    Write-Output ${Env:ProgramFiles(x86)}'\Microsoft Visual Studio\2019\Professional\MSBuild\Current\bin\msbuild.exe'
    exit
}

# Check for Visual Studio MSBuild version 2017 (15.0)
if (Test-Path ${Env:ProgramFiles(x86)}'\Microsoft Visual Studio\2017\Professional\MSBuild\15.0\bin\msbuild.exe' ) {
    Write-Output ${Env:ProgramFiles(x86)}'\Microsoft Visual Studio\2017\Professional\MSBuild\15.0\bin\msbuild.exe'
    exit
}

# Check for Visual Studio MSBuild version 2017 (15.0)
if (Test-Path ${Env:ProgramFiles(x86)}'\Microsoft Visual Studio\2017\Enterprise\MSBuild\15.0\bin\msbuild.exe' ) {
    Write-Output ${Env:ProgramFiles(x86)}'\Microsoft Visual Studio\2017\Enterprise\MSBuild\15.0\bin\msbuild.exe'
    exit
}

# Check for Visual Studio (for poor people) MSBuild version 2019 (15.0)
if (Test-Path ${Env:ProgramFiles(x86)}'\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe' ) {
    Write-Output ${Env:ProgramFiles(x86)}'\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe'
    exit
}

# Check for Visual Studio (for poor people) MSBuild version 2017 (15.0)
if (Test-Path ${Env:ProgramFiles(x86)}'\Microsoft Visual Studio\2017\Community\MSBuild\15.0\bin\msbuild.exe' ) {
    Write-Output ${Env:ProgramFiles(x86)}'\Microsoft Visual Studio\2017\Community\MSBuild\15.0\bin\msbuild.exe'
    exit
}

# Check for Visual Studio (for poor people) MSBuild version 2017 (15.0)... on CF's computer where he installs stuff to weird locations
if (Test-Path 'W:\Program Files (x86)\Microsoft Visual Studio\2017\Community\MSBuild\15.0\bin\msbuild.exe' ) {
    Write-Output 'W:\Program Files (x86)\Microsoft Visual Studio\2017\Community\MSBuild\15.0\bin\msbuild.exe'
    exit
}

# Check for Standalone msbuild 2017 tools (15.0)
if (Test-Path ${Env:ProgramFiles(x86)}'\Microsoft Visual Studio\2017\MSBuild\15.0\bin\msbuild.exe' ) {
    Write-Output ${Env:ProgramFiles(x86)}'\Microsoft Visual Studio\2017\MSBuild\15.0\bin\msbuild.exe'
    exit
}

# Keep falling through and check for older versions! 2015....
if (Test-Path ${Env:ProgramFiles(x86)}'\MSBuild\14.0\bin\msbuild.exe' ) {
    Write-Output ${Env:ProgramFiles(x86)}'\MSBuild\14.0\bin\msbuild.exe'
    exit
}

# 2013.... 
if (Test-Path ${Env:ProgramFiles(x86)}'\MSBuild\12.0\bin\msbuild.exe' ) {
    Write-Output ${Env:ProgramFiles(x86)}'\MSBuild\12.0\bin\msbuild.exe'
    exit
}