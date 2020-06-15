#Decisions 2017 - Master build script.
#Run this to build and install the full platform.  
#This script is a replacement for msbuild.bat

# call common PS1 script to get msbuild path
$MSBUILDEXE = & "../../GetMSBuildPath.ps1"
& $MSBUILDEXE build.proj