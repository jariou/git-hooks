@echo off

:: ====================================================================
:: Name        : install_pco_hook.bat
:: Description : Installs a post-checkout hook for git
:: Author      : Various
:: Notes       : Need to be executed as an administrator
:: Revision    : May 2021 - Initial version
:: ====================================================================

set LIB_DIR=submodules

if exist .git\hooks\post-checkout del /F .git\hooks\post-checkout
mklink .git\hooks\post-checkout ..\..\src\post-checkout.py

if exist .git\hooks\%LIB_DIR% rmdir /S /Q .git\hooks\%LIB_DIR%
mklink /D .git\hooks\%LIB_DIR% ..\..\src\%LIB_DIR%