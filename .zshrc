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
