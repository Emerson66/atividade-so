@echo off
cls
:menu
cls
color 80

date /t

echo Computador: %computername%        Usuario: %username%
                   
echo            MENU TAREFAS
echo  =====================================
echo * 1. Criar diretorio                  * 
echo * 2. Copiar arquivo para exercicios   *
echo * 3. Escanear Disco Local             *
echo * 4. Exibe hora                       *
echo * 5. Exibe strutura da pasta execicios* 
echo  =====================================

set /p opcao= Escolha uma opcao: 
echo ------------------------------
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% GEQ 6 goto opcao6

:opcao1
cls
MKDIR C:\Users\Desktop\exercicios

echo ==================================
echo *      Criar diretorio          *
echo ==================================
pause
goto menu

:opcao2
cls
xcopy /T /C C:\Users\Documents\git.png C:\Users\Desktop\exercicios
echo ==================================
echo * Copiar arquivo para exercicios *
echo ==================================
pause
goto menu

:opcao3
cls
rmdir /s /q C:\Users\Desktop\exercicios
echo ==================================
echo *  Apagar diretorio exerciocios  *
echo ==================================
chkdsk c:
pause
goto menu

:opcao4
cls
time /t
echo ==================================
echo *           Exibe hora          *
echo ==================================
pause
goto menu

:opcao5
cls
tree /f C:\Users\Desktop\exercicios
echo ==============================================
echo * Exibe strutura da pasta execicios          *
echo ==============================================

:opcao6
echo ==============================================
echo * Opcao Invalida! Escolha outra opcao do menu *
echo ==============================================
pause
goto menu