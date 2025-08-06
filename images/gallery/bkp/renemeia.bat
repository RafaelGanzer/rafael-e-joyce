@echo off
setlocal enabledelayedexpansion

set count=0
for %%f in (*.jpg *.jpeg *.png *.gif *.bmp) do (
    set /a count+=1
    set "newname=000!count!"
    ren "%%f" "!newname:~-4!%%~xf"
)

echo.
echo Todas as imagens foram renomeadas com sucesso!
echo.
pause