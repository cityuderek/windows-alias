@echo off
IF NOT "%1" == "" (
    set AWS_PROFILE=%1
)
IF "%1" == "" (
    echo AWS_PROFILE=%AWS_PROFILE%
)


