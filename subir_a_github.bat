@echo off
chcp 65001 >nul
title Subir Proyecto a GitHub (rafainertanldcinfo)
color 0A

set "PATH=C:\Program Files\Microsoft Visual Studio\18\Community\Common7\IDE\CommonExtensions\Microsoft\TeamFoundation\Team Explorer\Git\cmd;%PATH%"

cd /d "%~dp0"
echo ===================================================================
echo        SUBIENDO PROYECTO A GITHUB (MODO SEGURO - SIN TOKEN)
echo        Repo: https://github.com/purorodriguez903-oss/rafainertanldcinfo.git
echo ===================================================================
echo.
git add .
git commit -m "Actualizacion completa a RAFA INTERNAL"
echo Enviando cambios a GitHub...
git push -u origin main
echo.
if %errorlevel% equ 0 (
    echo ===================================================================
    echo  [EXITO] Proyecto subido correctamente a GitHub!
    echo  Railway detectara los cambios y desplegara el bot automaticamente.
    echo ===================================================================
) else (
    echo ===================================================================
    echo  Si se abre una ventana del navegador, haz clic en Authorize en GitHub.
    echo ===================================================================
)
echo.
pause
