# PEG-Sharepoint-File-Folder-Sync-Recurse.ps1
# Kopiert nur spezifische Dateien von a nach b, unter Berücksichtigung und ggf. Erstellung der Ordner-Strukturen
# Erstellt von Alexander Karls, pegasus GmbH
# Erstellungs-Datum: 15.08.2019
# Versions-Stand: 1.0
# Versions-History:
# 15.08.19: Script-Erstellung

# Konfigurationsblock "Arbeitssicherheit"
$sourcePath1 = '\\peg-srv-share\PEG-Arbeitssicherheit'
$destPath1 = 'C:\Users\alk\pegasus IT GmbH\Portal - Arbeitssicherheit'

Get-ChildItem $sourcePath1 -Recurse -Include '*.pdf' | Foreach-Object `
{
$destDir1 = Split-Path ($_.FullName -Replace [regex]::Escape($sourcePath1), $destPath1)
if (!(Test-Path $destDir1))
{
New-Item -ItemType directory $destDir1 | Out-Null
}
Copy-Item $_ -Destination $destDir1
}


# Konfigurationsblock "Datenschutz"
$sourcePath2 = '\\peg-srv-share\PEG-Public\QM\Datenschutz'
$destPath2 = 'C:\Users\alk\pegasus IT GmbH\Portal - Datenschutz'

Get-ChildItem $sourcePath2 -Recurse -Include '*.pdf' | Foreach-Object `
{
$destDir2 = Split-Path ($_.FullName -Replace [regex]::Escape($sourcePath2), $destPath2)
if (!(Test-Path $destDir2))
{
New-Item -ItemType directory $destDir2 | Out-Null
}
Copy-Item $_ -Destination $destDir2
}

# Konfigurationsblock "pegasus intern"
$sourcePath3 = '\\peg-srv-share\PEG-Public\PEG-Infopool'
$destPath3 = 'C:\Users\alk\pegasus IT GmbH\Portal - pegasus intern'

Get-ChildItem $sourcePath3 -Recurse -Include '*.pdf' | Foreach-Object `
{
$destDir3 = Split-Path ($_.FullName -Replace [regex]::Escape($sourcePath3), $destPath3)
if (!(Test-Path $destDir3))
{
New-Item -ItemType directory $destDir3 | Out-Null
}
Copy-Item $_ -Destination $destDir3
}

# Konfigurationsblock "Skill-Listen"
$sourcePath4 = '\\peg-srv-share\PEG-Public\Dokumente\Skill-Listen'
$destPath4 = 'C:\Users\alk\pegasus IT GmbH\Portal - pegasus intern\Skill-Listen'

Get-ChildItem $sourcePath4 -Recurse -Include '*.pdf' | Foreach-Object `
{
$destDir4 = Split-Path ($_.FullName -Replace [regex]::Escape($sourcePath4), $destPath4)
if (!(Test-Path $destDir4))
{
New-Item -ItemType directory $destDir4 | Out-Null
}
Copy-Item $_ -Destination $destDir4
}
