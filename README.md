# Pterodactyl Auto PaperMC
A custom personal script for the Pterodactyl panel, to automatically pull the latest PaperMC version on startup. 

### Disclaimer
This is a personal-use script and was developed for educational purposes, please don't use this in production environments. 

### start.sh
Determines the latest build in specified version, downloads corresponding server jar file, and starts server. Server startup flags remain easily modifiable.
### Ptero startup command
```
/home/container/start.sh {{SERVER_MEMORY}} {{MINECRAFT_VERSION}}
```
