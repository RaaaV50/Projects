Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$rand = New-Object System.Random

while ($true) {
    # Gera deslocamentos aleatórios entre -100 e +100 pixels
    $dx = $rand.Next(-100, 101)
    $dy = $rand.Next(-100, 101)

    # Pega a posição atual do mouse
    $pos = [System.Windows.Forms.Cursor]::Position

    # Calcula nova posição
    $newX = [Math]::Max(0, $pos.X + $dx)
    $newY = [Math]::Max(0, $pos.Y + $dy)

    # Move o mouse
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($newX, $newY)

    # Segundos de mexer
    $sleepTime = 10
    Start-Sleep -Seconds $sleepTime
}
