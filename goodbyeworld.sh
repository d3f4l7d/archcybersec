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


if ! command -v ufw &> /dev/null
then
    echo
    echo " _____ ___ ____  _____ "
    echo "|  ___|_ _|  _ \| ____|"
    echo "| |_   | || |_) |  _|  "
    echo "|  _|  | ||  _ <| |___ "
    echo "|_|   |___|_| \_\_____|"
    echo

    sudo pacman -S --noconfirm openssh ufw xorg
    sudo systemctl start sshd && sudo systemctl start ufw
    sudo systemctl enable sshd && sudo systemctl enable ufw
else
    echo "ufw is already installed. Skip SEC process..."
fi


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
    
    sudo pacman -S --noconfirm dkms bc
    git clone https://aur.archlinux.org/rtw88-dkms-git.git ~/.config/air/rtw88-dkms-git/
    cd ~/.config/air/rtw88-dkms-git/
    makepkg -sirc
    cd
    sudo dkms status rtw88
    
    git clone https://github.com/morrownr/rtw89 ~/.config/air/rtw89/
    cd ~/.config/air/rtw89/
    sudo dkms install $PWD
    sudo make install_fw
    sudo cp rtw89.conf /etc/modprobe.d/
    sudo dkms status rtw89

    sudo pacman -S --noconfirm libnl openssl ethtool util-linux zlib libpcap sqlite pcre2 hwloc cmocka hostapd tcpdump screen usbutils pciutils expect aircrack-ng
    aircrack-ng --help
    echo "autoinstall of aircrack-ng -- DONE"
else
    echo "aircrack-ng is already installed. Skip AIR process..."
fi


if ! command -v msfconsole &> /dev/null
then
    echo
    echo " __  __ ____  _____ "
    echo "|  \/  / ___||  ___|"
    echo "| |\/| \___ \| |_   "
    echo "| |  | |___) |  _|  "
    echo "|_|  |_|____/|_|    "
    echo
    
    echo "Currently, this section is under development. skipped for now"
    exit
    
    sudo pacman -S --noconfirm ruby ruby-rdoc postgresql
    gpg --keyserver keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
    wget -O /.config/rvm/rvm.sh https://get.rvm.io
    cd /.config/rvm
    sh rvm.sh stable
    echo "source ~/.rvm/scripts/rvm" >> ~/.zshrc
    source ~/.rvm/scripts/rvm
    rvm install 3.8.8
    rvm use 3.8.8 --default
    sudo chown -R postgres:postgres /var/lib/postgres/
    sudo -Hiu postgres initdb --locale en_US.UTF-8 -E UTF8 -D '/var/lib/postgres/data'
    sudo systemctl start postgresql
    sudo systemctl enable postgresql
    sudo -Hiu postgres createuser msf -P -S -R -D
    sudo -Hiu postgres createdb -O msf msf

    git clone https://github.com/rapid7/metasploit-framework.git ~/.config/msf/
    cd ~/.config/msf/
    gem install wirble sqlite3 bundler
    bundle install
    sudo touch /opt/metasploit/config/database.yml
    echo 'production:' | sudo tee -a /opt/metasploit/config/database.yml
    echo ' adapter: postgresql' | sudo tee -a /opt/metasploit/config/database.yml
    echo ' database: msf' | sudo tee -a /opt/metasploit/config/database.yml
    echo ' username: msf' | sudo tee -a /opt/metasploit/config/database.yml
    echo ' password: msf' | sudo tee -a /opt/metasploit/config/database.yml
    echo ' host: 127.0.0.1' | sudo tee -a /opt/metasploit/config/database.yml
    echo ' port: 5432' | sudo tee -a /opt/metasploit/config/database.yml
    echo ' pool: 75' | sudo tee -a /opt/metasploit/config/database.yml
    echo ' timeout: 5' | sudo tee -a /opt/metasploit/config/database.yml
    sudo sh -c "echo export MSF_DATABASE_CONFIG=/opt/metasploit/config/database.yml >> /etc/profile"
    sudo chown -R $USER:users /opt/metasploit
    ./msfconsole
    msfconsole -h
    echo "autoinstall of metasploit -- DONE"
else
    echo "metasploit is already installed. Skip MSF process..."
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
