echo
echo " _   _ _ _   _               _              _           _ _           "
echo "| | | (_) |_| |__   ___ _ __| |_ ___    ___| |__   __ _| | |_         "
echo "| |_| | | __| '_ \ / _ \ '__| __/ _ \  / __| '_ \ / _' | | __|        "
echo "|  _  | | |_| | | |  __/ |  | || (_) | \__ \ | | | (_| | | |_         "
echo "|_| |_|_|\__|_| |_|\___|_|   \__\___/  |___/_| |_|\__,_|_|\__|    _   "
echo "| |_| |__   ___  _   _    ___ ___  _ __ ___   ___    | |__  _   _| |_ "
echo "| __| '_ \ / _ \| | | |  / __/ _ \| '_ ' _ \ / _ \   | '_ \| | | | __|"
echo "| |_| | | | (_) | |_| | | (_| (_) | | | | | |  __/_  | |_) | |_| | |_ "
echo " \__|_| |_|\___/_\__,_|  \___\___/|_| |_| |_|\___( ) |_.__/ \__,_|\__|"
echo " _ __   ___    / _|_   _ _ __| |_| |__   ___ _ __|/                   "
echo "| '_ \ / _ \  | |_| | | | '__| __| '_ \ / _ \ '__|                    "
echo "| | | | (_) | |  _| |_| | |  | |_| | | |  __/ |_                      "
echo "|_| |_|\___/  |_|  \__,_|_|   \__|_| |_|\___|_(_)                     "
echo


sudo pacman -Syuu


if pacman -Q librewolf &> /dev/null; then
    echo "librewolf is already installed. Skip WOLF process..."
else
    echo
    echo "__        _____  _     _____ "
    echo "\ \      / / _ \| |   |  ___|"
    echo " \ \ /\ / / | | | |   | |_   "
    echo "  \ V  V /| |_| | |___|  _|  "
    echo "   \_/\_/  \___/|_____|_|    "
    echo

    echo "This process will take almost"
    echo "-- 2.5hrs with 1170Mbps wi-fi"
    echo "-- 1hr with 10G ethernet"
    echo
    yay -S --noconfirm librewolf
    echo
    echo "timeout reading password?"
    echo "Just execute this code twice!"
    echo "Create /etc/xdg/autostart/wolfd.desktop for autostart."
    echo "[Desktop Entry]"
    echo "Name=wolfd"
    echo "Exec=librewolf"
    echo "Type=Application"
    echo "Terminal=false"
    echo "autoinstall of librewolf -- DONE"
fi

if pacman -Q nmap &> /dev/null; then
    echo "nmap is already installed. Skip NMAP process..."
else
    echo
    echo " _   _ __  __    _    ____  "
    echo "| \ | |  \/  |  / \  |  _ \ "
    echo "|  \| | |\/| | / _ \ | |_) |"
    echo "| |\  | |  | |/ ___ \|  __/ "
    echo "|_| \_|_|  |_/_/   \_\_|    "
    echo

    sudo pacman -S --noconfirm nmap
    echo "autoinstall of nmap -- DONE"
fi
