# Pterodactyl Auto PaperMC
A custom personal script for the Pterodactyl panel, to automatically pull the latest PaperMC build for the specified Minecraft version on startup. 

### Disclaimer
This is a personal-use script and was developed for educational purposes, you probably shouldn't use this in production environments. 

### start.sh
Determines the latest build in the specified minecraft version, downloads corresponding server jar file, and starts server. Server startup flags remain easily modifiable. Uses pterodactyl egg variables.

### Ptero startup command
```
/home/container/start.sh {{SERVER_MEMORY}} {{MINECRAFT_VERSION}}
```
