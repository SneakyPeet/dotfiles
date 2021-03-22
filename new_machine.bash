
# mac:show hidden files
defaults write com.apple.Finder AppleShowAllFiles true

killall Finder

# mac:allows 3rd party installs to be enabled from system preference

pctl --master-disable 

[https://brew.sh/](https://brew.sh/)

# brew

/bin/bash -c "$(curl -fsSL [https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh](https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh))"

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

# if you want fresh spacemacs 
# git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

# if you want custom spacemacs
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

# node:nvm
# https://github.com/nvm-sh/nvm#install--update-script
