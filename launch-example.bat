REM basePath anpassen!
set "basePath=C:\PATH\TO\ALL\REPOS\"
set "directories=user-api news-api news-client-email news-manager"

for %%i in (%directories%) do (
    cd /d "%basePath%%%i"
  
	echo ===================================
	git pull
    docker build -t %%i% .
)
cd /d "%basePath%news-kraken"
echo ===================================
docker-compose up

pause >nul