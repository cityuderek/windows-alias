@echo off
echo branch=%1
IF NOT "%1" == "" (
    rem echo checkout=%1
    git checkout %1
)
git pull
