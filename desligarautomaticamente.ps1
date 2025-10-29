$uptime = (Get-Date) - (gcim Win32_OperatingSystem).LastBootUpTime

if ($uptime.TotalHours -ge 72) {

    msg * "O computador será reiniciado por está ligado há mais de 3 dias. Você terá 15 minutos para salvar seus trabalhos em andamentos."
    
    Start-Sleep -Seconds 900
    
    Restart-Computer -Force
}
