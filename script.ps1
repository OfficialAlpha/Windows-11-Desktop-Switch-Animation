$exelus = Get-Process Exelus.Win11DesktopSwitchAnimatior -ErrorAction SilentlyContinue
$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
if ($exelus) {
  if (!$exelus.HasExited) {
    $exelus | Stop-Process -Force
  }
}
else{
    Start-Process -FilePath "bin\Win11DesktopSwitchAnimator.exe" -WorkingDirectory $dir
}
Remove-Variable exelus