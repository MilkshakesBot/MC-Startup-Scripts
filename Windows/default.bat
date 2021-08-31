@echo off
: Server Startup Script

: Set the EULA to already be TRUE
IF EXIST ".\eula.txt" (echo "eula.txt already exists skipping download...")  ELSE (curl https://gist.githubusercontent.com/MilkshakesBot/cb33ff1ae3df307c8088bd243d304fc8/raw -o eula.txt)

: Create server.properties
IF EXIST ".\server.properties" (echo "server.properties already exists skipping download...") ELSE (curl https://gist.githubusercontent.com/MilkshakesBot/8914486f71998d49b19cbdbefc2a3679/raw -o server.properties)

: Edit the below values to change JVM Arguments or Allocated RAM for the server
set ALLOCATED_RAM="1G"
set JVM_ARGUMENTS="-XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true"
: Comment this line if you are are using over 13 GB of ram
set JVM_ARGUMENTS_RAM="-XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:InitiatingHeapOccupancyPercent=15"
: Uncomment this line if you are are using over 13 GB of ram
: set JVM_ARGUMENTS_RAM="-XX:G1NewSizePercent=40 -XX:G1MaxNewSizePercent=50 -XX:G1HeapRegionSize=16M -XX:G1ReservePercent=15 -XX:InitiatingHeapOccupancyPercent=20"

: Download latest Paper.jar from PaperMC.io
IF EXIST ".\default.jar" (echo "server.jar already exists skipping download...") ELSE (echo "server.jar does not exist. Downloading..." & curl https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar -o default.jar)

: Starting the server
echo "Starting the Server."
java -jar -Xms"%ALLOCATED_RAM%" -Xmx"%ALLOCATED_RAM%" "%JVM_ARGUMENTS%" "%JVM_ARGUMENTS_RAM%" default.jar nogui