# Bash script that sends a message to the telegram bot after the transmission finishes downloading a torrent.

### Instructions:

 * Put the script in a folder at your choice

 * Stop tansmission-deamon service

    `sudo service transmission-daemon stop`

 * Allow the execution of the script

    `sudo chmod +rx transmission_telegram_notification.sh`

 * Open the transmission-daemon settings file

     `sudo nano /etc/transmission-daemon/settings.json`

    Change the following:
      ```json
       "script-torrent-done-enabled": true,
       "script-torrent-done-filename": "/your/script/path",
      ```

  * Save the changes and start the transmission-daemon service
     
     `sudo service transmission-daemon start`

**Note:** *Those variables are inherited from Transmission*
    
  * `TR_APP_VERSION`
  * `TR_TIME_LOCALTIME`
  * `TR_TORRENT_DIR`
  * `TR_TORRENT_HASH`
  * `TR_TORRENT_ID`
  * `TR_TORRENT_NAME`
