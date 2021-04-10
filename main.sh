cd ~
echo "Downloading thermal printer driver"
sudo apt-get install git
echo " • Installing git"
clear
echo "Downloading thermal printer driver"
/usr/bin/printf " \xE2\x9C\x94 Installed git\n"
echo " • Downloading dependecies"
sudo apt install build-essential cmake libcups2-dev libcupsimage2-dev
clear
echo "Downloading thermal printer driver"
/usr/bin/printf " \xE2\x9C\x94 Installed git\n"
/usr/bin/printf " \xE2\x9C\x94 Installed dependecies\n"
echo " • Building"
git clone https://github.com/klirichek/zj-58
cd zj-58/
mkdir build && cd build && cmake ../
cmake --build
sudo make install
clear
/usr/bin/printf "\xE2\x9C\x94 Installed thermal printer driver\n"
clear
echo "Installing development stuff"
echo " • Installing vscode"
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt update
sudo apt install code
clear
echo "Installing development stuff"
/usr/bin/printf " \xE2\x9C\x94 Installed vscode\n"
echo " • Cloning freePOS"
mkdir git && cd git
git clone https://github.com/heagan01/freePOS
clear
echo "Installing development stuff"
/usr/bin/printf " \xE2\x9C\x94 Installed vscode\n"
/usr/bin/printf " \xE2\x9C\x94 Cloned freePOS\n"
echo " • Installing npm"
sudo apt-get install npm
clear
/usr/bin/printf " \xE2\x9C\x94 Finished all\n"