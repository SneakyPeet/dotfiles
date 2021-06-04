# run git in terminal to triger devtools install

# mac:show hidden files
defaults write com.apple.finder AppleShowAllFiles true; killall Finder

# mac:roseta (M1 only)
softwareupdate --install-rosetta

[https://brew.sh/](https://brew.sh/)

# brew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# do the next steps

brew update

brew upgrade

brew tap homebrew/cask

# git:ssh-key
# from home dir https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

ssh-keygen -t ed25519 -C "koornhof.pieter@gmail.com"

pbcopy < ~/.ssh/id_ed25519.pub

# emacs
# using emacs plus hhttps://github.com/d12frosted/homebrew-emacs-plus

brew tap d12frosted/emacs-plus

brew install emacs-plus

ln -s /usr/local/opt/emacs-plus@27/Emacs.app /Applications

# emacs:spacemacs

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
git init .
git remote add origin git@github.com:SneakyPeet/dotfiles.git
git pull origin master

# emacs:spacemacs:deps

brew install ripgrep

brew install the_silver_searcher

brew install aspell

brew tap homebrew/cask-fonts
brew install —cask font-source-code-pro

# clojure:java
# using openjdk https://github.com/AdoptOpenJDK/homebrew-openjdk

brew tap AdoptOpenJDK/openjdk

# choose your java
brew install --cask adoptopenjdk8
brew install --cask adoptopenjdk11

# clojure:clojure
# https://clojure.org/guides/getting_started

brew install clojure/tools/clojure

brew install leiningen

brew install borkdude/brew/clj-kondo

# todo  babashka

# ROSETTA
# https://osxdaily.com/2020/11/18/how-run-homebrew-x86-terminal-apple-silicon-mac/

softwareupdate --install-rosetta --agree-to-license

# ADD TO .zshrc
# if [ "$(sysctl -n sysctl.proc_translated)" = "1" ]; then
# local brew_path="/usr/local/homebrew/bin"
# else
#    local brew_path="/opt/homebrew/bin"
# fi
# export PATH="${brew_path}:${PATH}"


# 1. Copy terminal, rename the copy, and set it to run in rosetta
# 2. Open rosetta
# 3. install homebrew
# 4. add the above to your .zshrc
# 5. close all terminals
# 6. re-open
# 7. install nvm from homebrew
# 8. nvm install v8
# 9. nvm use v8


# node:nvm
# https://github.com/nvm-sh/nvm#install--update-script
# nvm install 8
