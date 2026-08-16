#!/bin/bash
CONF_DIR="./crafty_config"

echo -n "Enter username: "
read -r username

echo -n "Enter password: "
read -rs password

if [ ${#password} -lt 64 ]; then
    echo ""
    echo "Password must be atleast 64 characters long!"
    exit 1
fi

file_content=$(printf "{\n    \"username\": \"%s\",\n    \"password\": \"%s\"\n}" "$username" "$password")

mkdir -p "$CONF_DIR"
printf "%s" "$file_content" > "$CONF_DIR/default.json"
echo ""
echo "Wrote credentials for user $username to $CONF_DIR/default.json. DELETE LATER!"
