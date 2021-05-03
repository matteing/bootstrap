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
brew install --cask visual-studio-code

echo "${green}Installing IDEs...${reset}"
brew install --cask webstorm
brew install --cask pycharm


echo "${green}Installing Other stuff...${reset}"
brew install --cask iterm2
brew install --cask keepassxc
brew install --cask google-chrome
brew install --cask telegram
brew install --cask spotify
brew install --cask authy
brew install --cask whatsapp
brew install --cask sublime-text
brew install --cask appcleaner
brew install --cask rectangle


echo "${green}Installing Fork...${reset}"
brew install --cask fork

echo "${green}Installing Fira Code...${reset}"
brew tap homebrew/cask-fonts
brew install --cask font-fira-code

echo "${green}Installing languages...${reset}"
brew install nvm
nvm install --lts
nvm use --lts
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
brew install pyenv
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc
pyenv install 3.9.4
pyenv global 3.9.4
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -

echo "${green}Finished.${reset}"
