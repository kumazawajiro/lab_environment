@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
powershell -command "& { cinst wget -y}"
wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-windows.exe
call .\install-tl-windows.exe
powershell -command "& { cinst texstudio anaconda3 --params="/AddToPath:1" -y }"
call refreshenv
conda install flake8 -y
exit 0
