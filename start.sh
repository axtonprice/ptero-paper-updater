#!/bin/bash
#$1 = {SERVER_MEMORY}
#$2 = {MINECRAFT_VERSION}
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
java -Xms256M -Xmx"$1"M -jar "$jarPath"
