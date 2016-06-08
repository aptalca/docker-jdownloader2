### JDownloader2

JDownloader2 docker container with a built-in browser based gui

#### Install On unRaid:

On unRaid, install from the Community Repositories and enter the app folder location and the port for the webUI.


#### Install On Other Platforms (like Ubuntu or Synology 5.2 DSM, etc.):

On other platforms, you can run this docker with the following command:

```
docker run -d \
  --name="JDownloader2" \
  -e HEIGHT="720" \
  -e WIDTH="1280" \
  -v /path/to/config:/config:rw \
  -v /etc/localtime:/etc/localtime:ro \
  -p XXXX:8080 \
  aptalca/docker-jdownloader2
```

#### Setup Instructions:

- Replace "/path/to/config" with your choice of folder location. That is where all of your configuration and library files will reside, so you won't lose data when you update, reinstall, etc.
- Replace "XXXX" with your choice of port.
- You can change the screen resolution by modifying the WIDTH and HEIGHT variables.
- Ctrl-Alt-Shft will bring up the menu that allows changing input options, as well as controlling the clipboard
- In order to use the built-in browser for manual recaptcha solving, go to advanced settings, find the following two settings: 1) `GeneralSettings: Browser Command Line` and 2) `BrowserCaptchaSolver: Browser Commandline` and change both values to the following: `[ "/usr/bin/firefox", "%s" ]`

To access the GUI, point your web browser to http://SERVERIP:PORT/#/client/c/JDownloader2 (Replace SERVERIP and PORT with your values)

JDownloader 2 also has a webserver accessible through my.jdownloader.org

#### Changelog: 
- 2016-06-08 - Added firefox for recaptcha through the webgui (See instructions above on settings)
- 2016-01-08 - Fixed permissions for downloaded files. Should work better for samba shares.


##### Note:
Some platforms like Debian are having issues with setting timezones. If you get the following error:
`mv: cannot move '/etc/localtime.dpkg-new' to '/etc/localtime': Device or resource busy
*** /etc/my_init.d/00_config.sh failed with status 1` and the container stops, remove the following from your run command: `-v /etc/localtime:/etc/localtime:ro` and replace it with the following: `-e TZ="America/New_York"`

You can change the timezone to yours according to the list here: https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
