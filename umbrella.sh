#!/bin/bash

PLUGIN_DIR="/opt/cisco/secureclient/bin/plugins"
BACKUP_DIR="$PLUGIN_DIR/backup"
FILES=("libacumbrellaapi.dylib" "libacumbrellactrl.dylib")

function print_earth() {
cat << "EOF"

        .-"""-.
       /       \
   __ |  .-"""-.  | __
  / _`| /  _   _ \ |'_ \
 | (_| | (_) (_) || |_) |
  \__, |\  .___. /| .__/
    __/ |       || |
   |___/ \_____/ |_|  🌍

EOF
}

function print_blocked() {
cat << "EOF"

   _______
  |       |
  |  🔒   |  <--- ACCESS BLOCKED
  |_______|
    || ||
   /_/ \_\
EOF
}

function close_plugins() {
    echo ">> Closing Umbrella plugins..."
    mkdir -p "$BACKUP_DIR"

    for file in "${FILES[@]}"; do
        if [ -f "$PLUGIN_DIR/$file" ]; then
            mv "$PLUGIN_DIR/$file" "$BACKUP_DIR/"
            echo "Moved $file to backup"
        else
            echo "$file not found in plugins directory"
        fi
    done

    print_earth
    echo ">> Plugins closed."
}

function open_plugins() {
    echo ">> Opening Umbrella plugins..."
    for file in "${FILES[@]}"; do
        if [ -f "$BACKUP_DIR/$file" ]; then
            mv "$BACKUP_DIR/$file" "$PLUGIN_DIR/"
            echo "Restored $file to plugins directory"
        else
            echo "$file not found in backup directory"
        fi
    done
    
    print_blocked
    echo ">> Plugins restored."
}

case "$1" in
    close)
        close_plugins
        ;;
    open)
        open_plugins
        ;;
    *)
        echo "Usage: $0 {close|open}"
        exit 1
        ;;
esac
