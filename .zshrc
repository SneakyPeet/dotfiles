jdk() {
        version=$1
        export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
        java -version
}


if [ "$(sysctl -n sysctl.proc_translated)" = "1" ]; then
    local brew_path="/usr/local/homebrew/bin"
else
    local brew_path="/opt/homebrew/bin"
fi
export PATH="${brew_path}:${PATH}"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/pieterkoornhof/Development/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/pieterkoornhof/Development/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/pieterkoornhof/Development/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/pieterkoornhof/Development/google-cloud-sdk/completion.zsh.inc'; fi
