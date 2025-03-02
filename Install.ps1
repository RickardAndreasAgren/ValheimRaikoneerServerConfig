

$here = pwd
$tp = Test-Path "$here\..\BepInEx"
if(-not $tp) {
 Write-Host "Why am I not in the BepInEx directory?"
 
 Write-Host -NoNewLine 'Press any key to continue...';
 $null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
 return 0
}

$tp = Test-Path "$here\plugins\MonsterLabZConfig"
if($tp -eq $true) {
    Write-Host "If you want to do a fresh install, remove MonsterLabZConfig and RustyMods-BestiaryMod and redownload plugins in Thunderstore first."
	
	Write-Host -NoNewLine 'Press any key to continue...';
	$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
	return 0
}


$tp = Test-Path "$here\plugins\RustyMods-Bestiary"
if(-not $tp) {
 Write-Host "Bestiary must be installed for the first part of installation, import the mod configuration code in Thunderstore"
 Write-Host -NoNewLine 'Press any key to continue...';
 $null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
 return 0
}
$bestiaryPath = "$here\plugins\RustyMods-Bestiary"

$tp = Test-Path "$here\plugins\MonsterLabZ"
$tp2 = Test-Path "$here\plugins\MonsterLabZFix-MonsterLabZ"
if(-not $tp -and -not $tp2) {
 Write-Host "MonsterLabZ must be installed for the first part of installation, import the mod configuration code in Thunderstore"
 Write-Host -NoNewLine 'Press any key to continue...';
 $null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
 return 0
}
if($tp -eq $true) {
    $mlzPath = "$here\plugins\MonsterLabZ"
}
if($tp2 -eq $true) {
    $mlzPath = "$here\plugins\MonsterLabZFix-MonsterLabZ"
}

Move-Item "$mlzPath\MonsterLabZ.dll" "$here\installplugins\MonsterLabZConfig\Managed_Data\MonsterLabZ.libassembly"
Move-Item "$bestiaryPath\Bestiary.dll" "$here\installplugins\RustyMods-BestiaryModR\Managed_Data\bestiary.libassembly"

Write-Host "Proceed to uninstall MonsterLabZ and RustyMods-BestiaryMod from Thunderstore and then run InstallSecond.ps1"

Write-Host -NoNewLine 'Press any key to finish...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
return 0