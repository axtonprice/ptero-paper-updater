#!/bin/bash
#$1 = {SERVER_MEMORY}
#$2 = {MINECRAFT_VERSION}

# Auto EULA setter
echo "[Arizon Software] Automatically updating eula.txt..."
cat <<EOF >eula.txt
eula=true
EOF
echo "[Arizon Software] Successfully updated eula.txt"

#Determine version
url='https://papermc.io/api/v2/projects/paper'
version=$2
if [ "$version" = "latest" ]; then 
  version=$(curl -sSfL "$url"); 
  version=${version%\"*} 
  version=${version##*\"}; 
fi
echo "[Arizon Software] Updating PaperMC in '/paper/$version/paper-$version.jar'..."
build=$(curl -sSfL "$url/versions/$version"); build=${build%]*} build=${build##*[,[]}
echo "[Arizon Software] Resolved latest version as $version (build #$build)"

#Download latest version
mkdir -p "/home/container/paper/$version/"
jarPath="/home/container/paper/$version/paper-$version.jar"
curl -sSfL "$url/versions/$version/builds/$build/downloads/paper-$version-$build.jar" -o "$jarPath"
echo "[Arizon Software] Successfully updated PaperMC to build #$build (MC $version)"

#Start server
echo "[Arizon Software] Starting server..."
java -Xms128M -Xmx"$1"M -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -jar "$jarPath" nogui
