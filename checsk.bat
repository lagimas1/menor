@echo off
setlocal

:: Definir cor de fundo e texto do prompt
color 0F
:: Limpar a tela
cls

:: Cabeçalho
echo.
echo -----------------------------------------
echo        INFORMACOES DO SISTEMA
echo -----------------------------------------
echo.

:main
:: Limpar a tela
cls

:: Mostrar informações do disco
echo Informacoes do Disco:
echo -----------------------------
wmic diskdrive get Model, SerialNumber
echo.

:: Mostrar informações da placa-mãe
echo Informacoes da Placa-Mae:
echo -----------------------------
wmic baseboard get SerialNumber
echo.

:: Mostrar informações da BIOS
echo Informacoes da BIOS:
echo -----------------------------
wmic bios get SerialNumber
echo.

:: Mostrar UUID do Sistema
echo UUID do Sistema:
echo -----------------------------
wmic csproduct get UUID
echo.

:: Mostrar marca do sistema
echo Marca do Sistema:
echo -----------------------------
wmic computersystem get Manufacturer
echo.

pause > nul
goto main

endlocal
