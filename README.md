#JDownloader2

##Install On unRaid:

On unRaid, install from the Community Repositories and enter the app folder location and the port for the webUI.


##Install On Other Platforms (like Ubuntu or Synology 5.2 DSM, etc.):

On other platforms, you can run this docker with the following command:

```
docker run -d --name="JDownloader2"  -v /path/to/config:/config:rw -v /etc/localtime:/etc/localtime:ro -p 8080:8080 aptalca/docker-jdownloader2
```

Replace "/path/to/config" with your choice of folder location. That is where all of your configuration and library files will reside, so you won't lose data when you update, reinstall, etc.
