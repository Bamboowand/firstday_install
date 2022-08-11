#!/bin/bash

#  安裝 Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/jacob_jheng/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

#  安裝 zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# 讓 vim 能顯示行數
echo 'syntax on' >> ~/.vimrc
echo 'set nu!' >> ~/.vimrc

# 安裝字型
cd ~/Downloads && git clone https://github.com/powerline/fonts.git
cd fonts && ./install.sh
cd && rm -rf ~/Downloads/fonts

brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font


#  安裝 node.js
brew install node

#  安裝 VSCode
brew install --cask visual-studio-code

#  安裝 Chrome
brew install --cask google-chrome

#  安裝 Firefox
brew install --cask firefox

#  安裝 sourcetree
brew install --cask sourcetree

#  安裝 Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# cat << EOF >> ~/.zshrc
# # Add Visual Studio Code (code)
# export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
# EOF
# source ~/.zshrc


# VSCode 安裝套件範例
# code --list-extensions
# code --install-extension ms-vscode.cpptools
# code --uninstall-extension ms-vscode.csharp


