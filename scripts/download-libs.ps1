param(
    [string]$ProjectRoot = (Resolve-Path "$PSScriptRoot\..").Path
)

$ErrorActionPreference = 'Stop'

$libDir = Join-Path $ProjectRoot 'lib'
New-Item -ItemType Directory -Force -Path $libDir | Out-Null

$deps = @(
    @{ Url = 'https://repo1.maven.org/maven2/mysql/mysql-connector-java/8.0.28/mysql-connector-java-8.0.28.jar'; Out = 'mysql-connector-java-8.0.28.jar' },
    @{ Url = 'https://repo1.maven.org/maven2/com/toedter/jcalendar/1.4/jcalendar-1.4.jar'; Out = 'jcalendar-1.4.jar' }
)

foreach ($dep in $deps) {
    $outPath = Join-Path $libDir $dep.Out
    if (Test-Path $outPath) {
        Write-Host "Already present: $($dep.Out)" -ForegroundColor DarkGray
        continue
    }

    Write-Host "Downloading $($dep.Out)..." -ForegroundColor Cyan
    Invoke-WebRequest -Uri $dep.Url -OutFile $outPath
}

Write-Host 'Done.' -ForegroundColor Green
