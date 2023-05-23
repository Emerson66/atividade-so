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
echo * 3. exibe estrutura do diretorio exercicio     *
echo * 4. Exibe hora                       *
echo * 5. Exibe Sistema Operacional        * 
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
MKDIR C:\Users\TADS\Desktop\exercicios

echo ==================================
echo *      Criar diretorio          *
echo ==================================
pause
goto menu

:opcao2
cls
copy  C:\Users\TADS\Desktop\git.png C:\Users\TADS\Desktop\exercicios
echo ==================================
echo * Copiar arquivo para exercicios *
echo ==================================
pause
goto menu

:opcao3
cls
tree /F C:\Users\TADS\Desktop\exercicios
echo ==================================
echo *  exibe estrutura do diretorio exercicio  *
echo ==================================
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
ver
echo ==============================================
echo * Exibe Sistema Operacional          *
echo ==============================================

:opcao6
echo ==============================================
echo * Opcao Invalida! Escolha outra opcao do menu *
echo ==============================================
pause
goto menu