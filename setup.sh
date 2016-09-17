# /bin/sh
# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install github
brew install git

# download docker installer and mount
curl --create-dir -o ~/docker/Docker.dmg -L "https://download.docker.com/mac/stable/Docker.dmg"
hdiutil mount ./docker/Docker.dmg

# chrome
echo "chrome application download must confirm term of service. please access https://www.google.co.jp/chrome/browser/desktop/index.html?brand=CHBD&gclid=Cj0KEQjw0_O-BRCfjsCw25CYzYoBEiQAqO9BDFGxDoOrMsVtMKBNuZBsmaeS2cFHy9IUMiB8znfUgnQaAicD8P8HAQ#"

# Visual Studio Code
echo "visual studio code  https://code.visualstudio.com/Download"

# others
echo "Generating ssh key for Github Account..."
ssh-keygen -t rsa
echo "Set your key for Github Account. https://github.com/settings/keys"
echo `cat ./ssh/id_rsa.pub`

echo "You must install Keynote from App Store."