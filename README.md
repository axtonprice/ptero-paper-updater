# Pterodactyl automatic PaperMC updater egg
A custom personal script for Pterodactyl, to automatically update PaperMC to any version on startup.

*This is an unofficial fork from [github.com/parkervcp/eggs.](https://github.com/parkervcp/eggs/tree/master/game_eggs/minecraft/java/paper)*

### start.sh
Determines the latest build in specified version, downloads corresponding server jar file, and starts server. Server startup flags remain easily modifiable.
### Ptero startup command
```
/home/container/start.sh {{SERVER_MEMORY}} {{MINECRAFT_VERSION}}
```
