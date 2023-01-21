REM basePath anpassen!
set "basePath=C:\PATH\TO\ALL\REPOS\"
set "directories=user-api news-api news-client-email news-manager"

@echo ===========================================================
@echo "Pulling code & building images"

for %%i in (%directories%) do (
    cd /d "%basePath%%%i"
  
    @echo:
	@echo ===========================================================
	@echo "%basePath%%%i"
	@echo:
	
	git pull
    docker build -t %%i% .
)

@echo:
@echo ===========================================================
@echo "Starting everything"
@echo:

cd /d "%basePath%news-kraken"
docker-compose up

pause >nul