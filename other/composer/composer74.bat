@REM copy this file to C:\ProgramData\ComposerSetup\bin
@echo OFF
:: in case DelayedExpansion is on and a path contains ! 
setlocal DISABLEDELAYEDEXPANSION
php74 "%~dp0composer.phar" %*
