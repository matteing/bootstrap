#!/bin/zsh

# Sets up my Mac for development.

SCRIPTDIR="$(dirname "$0")"
THEME="steeef"

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo "${green}Setting up project folders...${reset}"
mkdir -p ~/Projects

echo "${green}Installing xcode-select...${reset}"
xcode-select --install

echo "${green}Enter your password to agree to Xcode:${reset}"
sudo xcodebuild -license accept

echo "${green}Disabling terminal login message...${reset}"
touch ~/.hushlogin

echo "${green}Installing oh-my-zsh...${reset}"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

echo "${green}Installing shell profile...${reset}"
cat "$SCRIPTDIR/.zshrc" >> "$CFG_FILE"
perl -pi -e  "s/robbyrussell/$THEME/g" ~/.zshrc

echo "${green}Installing latest Homebrew...${reset}"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "${green}Installing VS Code..."
brew cask install visual-studio-code

echo "${green}Installing IDEs...${reset}"
brew cask install webstorm
brew cask install pycharm


echo "${green}Installing Other stuff...${reset}"
brew cask install iterm2
brew cask install keepassxc
brew cask install google-chrome
brew cask install telegram
brew cask install spotify
brew cask install authy
brew cask install docker
brew cask install whatsapp
brew cask install slack
brew cask install sublime-text
brew install node@12
brew install python3
brew install awsebcli


echo "${green}Installing Fork...${reset}"
brew cask install fork

echo "${green}Installing Fira Code...${reset}"
brew tap homebrew/cask-fonts
brew cask install font-fira-code

echo "${green}Finished.${reset}"
