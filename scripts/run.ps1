$ErrorActionPreference = 'Stop'

$projectRoot = (Resolve-Path "$PSScriptRoot\..").Path

& "$PSScriptRoot\download-libs.ps1" -ProjectRoot $projectRoot

Push-Location $projectRoot
try {
    if (Test-Path "build\classes") {
        Remove-Item -Recurse -Force "build\classes"
    }
    New-Item -ItemType Directory -Force -Path "build\classes" | Out-Null

    javac --release 17 -encoding UTF-8 -cp "lib/*" -d "build/classes" src/SRM/*.java
    java -cp "build/classes;src;lib/*" SRM.Login
} finally {
    Pop-Location
}
