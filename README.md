# Pterodactyl Auto PaperMC
A custom personal script for the Pterodactyl panel, to automatically pull the latest PaperMC build for the specified Minecraft version on startup. 

### Disclaimer
This is a personal-use script and was developed for educational purposes, you probably shouldn't use this in production environments. 

### start.sh
Determines the latest build in the specified minecraft version, downloads corresponding server jar file, and starts server. Server startup flags remain easily modifiable. Uses pterodactyl egg variables. The script also automatically sets eula.txt if it has not been set already.

### Ptero startup command
```
/home/container/start.sh {{SERVER_MEMORY}} {{MINECRAFT_VERSION}}
```

### Screenshots
![image](https://github.com/axtonprice/ptero-paper-updater/assets/37771600/a711dc1b-e48d-44dd-935d-293514f5c883)
![image](https://github.com/axtonprice/ptero-paper-updater/assets/37771600/2e1d18f0-70ad-4168-a92e-bb6cd6d64f38)
![image](https://github.com/axtonprice/ptero-paper-updater/assets/37771600/8ce1d88e-6169-4534-bbb4-cd179eb57d0e)
