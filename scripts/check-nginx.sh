#!/bin/bash
SERVICE="nginx"

if systemctl is-active --quiet "$SERVICE"; then
 echo  "$(date): $SERVICE is running"
else
 echo "$(date): $SERVICE is DOWN , restarting..."
 systemctl restart "$SERVICE"

 if systemctl is-active --quiet "$SERVICE"; then
  echo "$(date): $SERVICE restarted successfully"
 else
  echo "$(date): $SERVICE restart fails"
 fi
fi

