#!/bin/bash
CONF_DIR="./crafty/config/"

echo -n "Enter username: "
read -r username

echo -n "Enter password: "
read -rs password

file_content=$(printf "{\n    \"username\": \"%s\",\n    \"password\": \"%s\"\n}" "$username" "$password")

mkdir -p "$CONF_DIR"
printf "%s" "$file_content" > "$CONF_DIR/default.json"
echo ""
echo "Wrote credentials for user $username to $CONF_DIR/default.json"
