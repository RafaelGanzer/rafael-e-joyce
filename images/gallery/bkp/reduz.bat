@echo off
setlocal

echo Redimensionando as fotos...
echo.

for %%f in (*.jpg *.jpeg *.png) do (
    magick mogrify -resize "1920x1080>" -quality 85 "%%f"
)

echo.
echo O redimensionamento foi concluido!
echo Lembre-se: as fotos originais foram sobrescritas.
echo.
pause