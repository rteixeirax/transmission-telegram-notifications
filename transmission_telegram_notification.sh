#!/bin/bash

# Bot token
BOT_TOKEN="ADD_YOUR_TELEGRAM_BOT_TOKEN"

# Your chat id
CHAT_ID="ADD_YOUR_TELEGRAM_CHAT_ID"

# Notification message
# If you need a line break, use "%0A" instead of "\n".
MESSAGE="<strong>Download Completed</strong>%0A- ${TR_TORRENT_NAME}%0A"

# Sends the notification to the telegram bot and save the response content into the /tmp/notificationsLog.txt
curl -s -X POST "https://api.telegram.org/bot${BOT_TOKEN}/sendMessage?chat_id=${CHAT_ID}&text=${MESSAGE}&parse_mode=HTML" > /tmp/notificationsLog.txt

# Prints a info message in the console
echo "[${TR_TIME_LOCALTIME}]-[${TR_TORRENT_NAME}] Download completed. Telegram notification sent."

# Removes the temporary log file
rm /tmp/notificationsLog.txt

