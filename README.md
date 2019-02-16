# darkstardocker
A docker implementation for darkstar.

## TODO: (Oh this list is going to be long so in the near future)
- Solve the g++ std=c++17 lib issue (preventing compleation of the compile).
- Get ENTRYPOINT ["/docker-entrypoint.sh"] working so it will auto-launch the script with the environmental variables. 
- Make the Darkstar LUA configurations into accessible volumes.

## TODO: Later
- Setup php-7.2fpm service
- Install Lumen API to connect to the temp tables generated for public use. (Keep the public domain away from the working server)
-- Consider using a flat table for temp-tables.

## How to use it

Run:
```
docker-compose up
```

Currently, until the entry point of installation is fixed; Once up, log-into the linux_darkstar container. After you are in the
bash, you can attempt to run ./docker-entrypoint.sh to set up the DB and compile. 

### NOTE:
the darkstar.env configurations will set if the server will get compiled or DB is installed, so before you 'up' change those values to true.

### How to get into docker bash?
```
docker exec -i -t container_name /bin/bash
```
https://askubuntu.com/questions/505506/how-to-get-bash-or-ssh-into-a-running-container-in-background-mode
