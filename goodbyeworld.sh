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
    nmap --version
    echo "autoinstall of nmap -- DONE"
fi


if ! command -v tshark &> /dev/null
then
    echo
    echo " ____  _   _    _    ____  _  __"
    echo "/ ___|| | | |  / \  |  _ \| |/ /"
    echo "\___ \| |_| | / _ \ | |_) | ' / "
    echo " ___) |  _  |/ ___ \|  _ <| . \ "
    echo "|____/|_| |_/_/   \_\_| \_\_|\_|"
    echo

    sudo pacman -S --noconfirm wireshark-cli
    tshark --version
    echo "autoinstall of tshark -- DONE"
else
    echo "tshark is already installed. Skip SHARK process..."
fi


if pacman -Q john &> /dev/null; then
    echo "john is already installed. Skip JOHN process..."
else
    echo
    echo "     _  ___  _   _ _   _ "
    echo "    | |/ _ \| | | | \ | |"
    echo " _  | | | | | |_| |  \| |"
    echo "| |_| | |_| |  _  | |\  |"
    echo " \___/ \___/|_| |_|_| \_|"
    echo

    sudo pacman -S --noconfirm john
    john -h
    echo "autoinstall of john -- DONE"
fi


if ! command -v aircrack-ng &> /dev/null
then
    echo
    echo "    _    ___ ____  "
    echo "   / \  |_ _|  _ \ "
    echo "  / _ \  | || |_) |"
    echo " / ___ \ | ||  _ < "
    echo "/_/   \_\___|_| \_|"
    echo

    echo "Currently, AIR process won't work properly. Skip AIR process..."
    exit
    sudo pacman -S --noconfirm base-devel libnl openssl ethtool util-linux zlib libpcap sqlite pcre2 hwloc cmocka hostapd wpa_supplicant tcpdump screen iw usbutils pciutils
    
    git clone https://github.com/aircrack-ng/aircrack-ng ~/.config/aircrack-ng-git/
    cd ~/.config/aircrack-ng-git/
    autoreconf -i
    ./configure --with-experimental
    make
    make install
    ldconfig

    mkdir ~/.config/aircrack-ng
    wget -O ~/.config/aircrack-ng/aircrack-ng-1.7.tar.gz https://download.aircrack-ng.org/aircrack-ng-1.7.tar.gz
    tar -zxvf ~/.config/aircrack-ng/aircrack-ng-1.7.tar.gz -C ~/.config/aircrack-ng/
    cd ~/.config/aircrack-ng/aircrack-ng-1.7
    autoreconf -i
    ./configure --with-experimental
    make
    sudo make install
    sudo ldconfig

    echo "autoinstall of aircrack-ng -- DONE"
else
    echo "aircrack-ng is already installed. Skip AIR process..."
fi


echo
echo " ____  _         _                                        "
echo "/ ___|(_) __   _(_)___   _ __   __ _  ___ ___ _ __ ___    "
echo "\___ \| | \ \ / / / __| | '_ \ / _' |/ __/ _ \ '_ ' _ \   "
echo " ___) | |  \ V /| \__ \ | |_) | (_| | (_|  __/ | | | | |_ "
echo "|____/|_|   \_/ |_|___/ | .__/ \__,_|\___\___|_| |_| |_( )"
echo "                        |_|         _ _                |/ "
echo " _ __   __ _ _ __ __ _  | |__   ___| | |_   _ _ __ ___    "
echo "| '_ \ / _' | '__/ _' | | '_ \ / _ \ | | | | | '_ ' _ \   "
echo "| |_) | (_| | | | (_| | | |_) |  __/ | | |_| | | | | | |_ "
echo "| .__/ \__,_|_|  \__,_| |_.__/ \___|_|_|\__,_|_| |_| |_(_)"
echo "|_|                                                       "
echo
