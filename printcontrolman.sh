if pacman -Q zsh &> /dev/null; then
    #!/bin/zsh
    date
    echo "zsh detected ($USER@$HOSTNAME)"
else
    echo "zsh is not installed."
    echo "This script was tested under zsh."
    echo "Install zsh via pacman like: sudo pacman -S zsh && sudo chsh -s /bin/zsh $USER"
    echo "Or remove this if section via your texteditor like: vim printcontrolman.sh"
    exit
fi


echo
echo "    _        _                                    __            _ _   "
echo "   / \   ___| |_ _   _ ___   _ __   ___  _ __    / _| __ _  ___(_) |_ "
echo "  / _ \ / __| __| | | / __| | '_ \ / _ \| '_ \  | |_ / _' |/ __| | __|"
echo " / ___ \ (__| |_| |_| \__ \ | | | | (_) | | | | |  _| (_| | (__| | |_ "
echo "/_/   \_\___|\__|\__,_|___/ |_| |_|\___/|_| |_| |_|  \__,_|\___|_|\__|"
echo " _ __ ___ _   _ _ __ ___    _ __ (_)___(_)  _ __ ___   ___ _ __  ___  "
echo "| '__/ _ \ | | | '_ ' _ \  | '_ \| / __| | | '_ ' _ \ / _ \ '_ \/ __| "
echo "| | |  __/ |_| | | | | | | | | | | \__ \ | | | | | | |  __/ | | \__ \ "
echo "|_|  \___|\__,_|_| |_| |_| |_| |_|_|___/_| |_| |_| |_|\___|_| |_|___/ "
echo " ___(_) |_   _ __ ___  __ _                                           "
echo "/ __| | __| | '__/ _ \/ _' |                                          "
echo "\__ \ | |_  | | |  __/ (_| |                                          "
echo "|___/_|\__| |_|  \___|\__,_|                                          "
echo


sudo pacman -Syuu


if pacman -Q cups &> /dev/null; then
    echo "cups is already installed. Skip CUPS process..."
else
    echo
    echo "  ____ _   _ ____  ____  "
    echo " / ___| | | |  _ \/ ___| "
    echo "| |   | | | | |_) \___ \ "
    echo "| |___| |_| |  __/ ___) |"
    echo " \____|\___/|_|   |____/ "
    echo

    sudo pacman -S --noconfirm cups cups-pdf
fi


echo
echo "  ____                             _       _ _            _          "
echo " / ___|   _ _ __ ___    _ __  _ __(_)_   _(_) | ___  __ _(_) ___     "
echo "| |  | | | | '_ ' _ \  | '_ \| '__| \ \ / / | |/ _ \/ _' | |/ _ \    "
echo "| |__| |_| | | | | | | | |_) | |  | |\ V /| | |  __/ (_| | | (_) |   "
echo " \____\__,_|_| |_| |_| | .__/|_|  |_| \_/ |_|_|\___|\__, |_|\___/    "
echo "  __ _  __| |          |_|                          |___/            "
echo " / _' |/ _' |                                                        "
echo "| (_| | (_| |                                                        "
echo " \__,_|\__,_|           _                          _                 "
echo "(_)_ __ ___  _ __  _ __(_)_ __ ___   ___ _ __   __| |_   _ _ __ ___  "
echo "| | '_ ' _ \| '_ \| '__| | '_ ' _ \ / _ \ '_ \ / _' | | | | '_ ' _ \ "
echo "| | | | | | | |_) | |  | | | | | | |  __/ | | | (_| | |_| | | | | | |"
echo "|_|_| |_| |_| .__/|_|  |_|_| |_| |_|\___|_| |_|\__,_|\__,_|_| |_| |_|"
echo " ___  ___ | |_|  _ _ __ ___                                          "
echo "/ __|/ _ \| | | | | '_ ' _ \                                         "
echo "\__ \ (_) | | |_| | | | | | |                                        "
echo "|___/\___/|_|\__,_|_| |_| |_|                                        "
echo

