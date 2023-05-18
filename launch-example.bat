REM basePath anpassen!
set "basePath=C:\PATH\TO\ALL\REPOS\"
set "directories=user-api news-api news-client-email news-manager"

@echo ===========================================================
@echo "Pulling code"

for %%i in (%directories%) do (
    cd /d "%basePath%%%i"
  
    @echo:
	@echo ===========================================================
	@echo "%basePath%%%i"
	@echo:
	
	git pull
)

@echo:
@echo ===========================================================
@echo "Starting everything"
@echo:

cd /d "%basePath%news-kraken"
docker-compose up --build --force-recreate

pause >nul