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


sudo pacman -Syu --noconfirm


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
    yay -S --noconfirm librewolf

    echo "timeout reading password?"
    echo "Just execute this code twice!"
    echo "autoinstall of librewolf -- DONE"
fi

