#!/bin/sh

# Bot token
BOT_TOKEN="ADD_YOUR_TELEGRAM_BOT_TOKEN"

# Your chat id
CHAT_ID="ADD_YOUR_TELEGRAM_CHAT_ID"

# Notification message
# If you need a line break, use "%0A" instead of "\n".
MESSAGE="✅ <strong>Download Completed</strong>%0A- ${TR_TORRENT_NAME}%0A"

# Prepares the request url
TG_WEBHOOK_URL="https://api.telegram.org/bot${BOT_TOKEN}/sendMessage"

# Prepares the the directory for saving the logs
BASEDIR=$(dirname "$0")

# Sends the notification to the telegram bot and save the response content into the notificationsLog.txt
curl -S -X POST \
  -d chat_id="${CHAT_ID}" \
  -d text="${MESSAGE}" \
  -d parse_mode="HTML" \
  "${TG_WEBHOOK_URL}" -w "\n" | tee -a "${BASEDIR}/notificationsLog.txt"

# Prints a info message in the console
echo "[${TR_TIME_LOCALTIME}]-[${TR_TORRENT_NAME}] Download completed. Telegram notification sent."
