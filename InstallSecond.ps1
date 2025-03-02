
$here = pwd

$tp = Test-Path "$here\plugins\RustyMods-Bestiary"
if($tp) {
  Write-Host "Uninstall Bestiary in Thunderstore"
  Write-Host -NoNewLine 'Press any key to continue...';
  $null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
  return 0
}
$bestiaryPath = "$here\plugins\RustyMods-Bestiary"

$tp = Test-Path "$here\plugins\MonsterLabZ"
$tp2 = Test-Path "$here\plugins\MonsterLabZFix-MonsterLabZ"
if($tp -or $tp2) {
  Write-Host "Uninstall MonsterLabZ in Thunderstore"
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

$iplugins = "$here\Installplugins\"
Move-Item "$iplugins*" .\plugins

Write-Host "You are good to go. Do not play with Slem."

Write-Host -NoNewLine 'Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
return 0