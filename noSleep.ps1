<# Keep Windows active
   script writes to active screen so place the cursor in an open notepad or something of the like
   roboto@graybeardsec.com
#> 

$minutes = 90
$countdown = $minutes
$type = New-Object -com "Wscript.Shell"

for ($i = 0; $i -lt $minutes; $i++) {
  Start-Sleep -Seconds 60
  $countdown=$countdown-1
  $type.sendkeys($countdown)
  $type.sendkeys(" mins left ")
  $type.sendkeys("{ENTER}")
}
