@powershell -NoProfile -ExecutionPolicy Bypass -Command "$d=new-object System.Net.WebClient;$d.Proxy.Credentials=[System.Net.CredentialCache]::DefaultNetworkCredentials;$d.DownloadFile('http://mirror.ctan.org/systems/texlive/tlnet/install-tl-windows.exe','install-tl-windows.exe')"
call .\install-tl-windows.exe
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
powershell start-process cinst anaconda3 /AddToPath:1 texstudio -y
exit 0