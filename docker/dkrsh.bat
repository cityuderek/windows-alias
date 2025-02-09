@echo off
if "%2"=="sh" (
    docker exec -it %1 sh
) else if "%2"=="bash" (
    docker exec -it %1 bash
) else (
	docker exec -it %1 /bin/bash
)

