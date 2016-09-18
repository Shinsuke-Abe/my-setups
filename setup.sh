# !/bin/sh
# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install github
brew install git

# download docker installer and mount
curl -o ./Docker.dmg -L "https://download.docker.com/mac/stable/Docker.dmg"
hdiutil mount ./Docker.dmg
sudo ditto /Volumes/Docker/Docker.app /Applications/Docker.app
echo "Please unmount docker.dmg"

# chrome
curl -o ./googlechrome.dmg -L "https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg"
hdiutil mount ./googlechrome.dmg
sudo ditto "/Volumes/Google Chrome/Google Chrome.app" "/Applications/Google Chrome.app"
echo "Please unmount googlechrome.dmg"

# Visual Studio Code
echo "visual studio code  https://code.visualstudio.com/Download"

# others
echo "Generating ssh key for Github Account..."
ssh-keygen -t rsa
echo "Set your key for Github Account. https://github.com/settings/keys"
echo `cat ./ssh/id_rsa.pub`

echo "You must install Keynote from App Store."

echo "Making docker-application directory..."
mkdir ~/docker-apps/

