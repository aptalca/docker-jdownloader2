#JDownloader2

##Install On unRaid:

On unRaid, install from the Community Repositories and enter the app folder location and the port for the webUI.


##Install On Other Platforms (like Ubuntu or Synology 5.2 DSM, etc.):

On other platforms, you can run this docker with the following command:

```
docker run -d --name="JDownloader2" -e HEIGHT="720" -e WIDTH="1280" -v /path/to/config:/config:rw -v /etc/localtime:/etc/localtime:ro -p PORT:8080 aptalca/docker-jdownloader2
```

###Setup Instructions:

- Replace "/path/to/config" with your choice of folder location. That is where all of your configuration and library files will reside, so you won't lose data when you update, reinstall, etc.
- Replace PORT with your choice of port.
- You can change the screen resolution by modifying the WIDTH and HEIGHT variables.

To access the GUI, point your web browser to http://SERVERIP:PORT/#/client/c/JDownloader2 (Replace SERVERIP and PORT with your values)

JDownloader 2 also has a webserver accessible through my.jdownloader.org
