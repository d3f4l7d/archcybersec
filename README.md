## Before Inception
### Legal
Of course, we're BLUE, but when it turns to be RED, or still BLUE...
> [!CAUTION]
> Any act of unauthorized access could violate the laws on your country (e.g., [CFAA](https://www.justice.gov/jm/jm-9-48000-computer-fraud)). Any of tools here must be used on your own systems to enhance your system security (check your system's open port, monitor nearby wi-fi device, try crack-ng your wi-fi device etc...).
### Wi-Fi Controller's required!
There're various IEEE 802.11 (Wi-Fi) WNIC (Wireless Network Interface Controller), but they're almost outdated devices such as Alfa AWUS036NHA, or built-in chip like Intel Wireless-AC 9560, and Intel Centrino Advanced-N 6235.
So now, I'm only testing just a few 'modern' (2021.11~) models as shown below.

| Model                                 | Description
| ------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| 1. Buffalo *WI-U3-1200AX2* [2021.11~] | RTL8852AU chipset, which has successfully deployed locally with [rtw89](https://github.com/morrownr/rtw89). |
| 2. Buffalo *WI-U3-2400XE2* [2024.02~] | RTL8852CU chipset, which has successfully deployed locally with [rtw89](https://github.com/morrownr/rtw89). |
| 3. Buffalo *WI-U3-866DHP* [2024.10~]  | RTL8812BU chipset, which has successfully deployed locally with [rtw88](https://github.com/lwfinger/rtw88). |

## Introduction
This repository will give you another "lazy" way to install some fundamental programs for my Arch Linux security usage. This code will automatically install some softwares by just executing it. The list of included programs is below:
| #  | softwares in `goodbyeworld.sh` |
| -- | ------------------------------ |
| 01 | openssh |
| 02 | ufw |
| 03 | xorg (all reccommended) |
| 04 | nmap |
| 05 | librewolf |
| 06 | wireshark (from source code) |
| 07 | THC-Hydra |
| 08 | metasploit framework (w/ rvm && postgresql) |
| 09 | aircrack-ng (w/ rtw88 && rtw89 wi-fi drivers) |

## Usage

> [!WARNING]
> Replace ownername, dbname, and ownerpasswd in MSF, postgres section beforehand.

Just execute like the below.
```
./goodbyeworld.sh 2>&1 | tee goodbyeworld_stdouterr.txt
```
If you already modified MSF, postgres section correctlly, just execute like the below.
```
yes | ./goodbyeworld.sh 2>&1 | tee goodbyeworld_stdouterr.txt
```
WOLF will install an entire librewolf browser on your system.
> [!WARNING]
> WOLF process will take 1-2.5hrs for its compiling depends on your connection quality.

### --- Usage of msfconsole ---

Just execute like the below.
```
msfconsole
```
Now, you entered msfconsole.
To connect postgres to msf, Check status at first.
```
db_status
```
If no connection like ```[*] postgresql selected, no connection```, create connection like the below.
```
db_connect <ownername>:<ownerpasswd>@127.0.0.1:5432/<dbname>
```
Now, you'll see ```[*] Connected to <dbname>. Connection type: postgresql. Connection name local_db_service```.

## License
MIT License - see [LICENSE](/LICENSE) for more details.
