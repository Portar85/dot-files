export PS1="[\[$(tput sgr0)\]\[\033[38;5;39m\]\l\[$(tput sgr0)\]\[\033[38;5;15m\]]\[$(tput sgr0)\]\[\033[38;5;87m\]:\[$(tput sgr0)\]\[\033[38;5;45m\]\W\[$(tput sgr0)\]\[\033[38;5;9m\]/\[$(tput sgr0)\] "

export PATH=$PATH:~/Documents/Android/sdk/platform-tools

alias vi=/usr/local/bin/vim
alias vim=vi

alias apscms='cd /Users/PB/Documents/appspotr/src/appspotr-cms'
alias apsapi='cd /Users/PB/Documents/appspotr/src/appspotr-api'
alias apsand='cd /Users/PB/Documents/appspotr/src/appspotr-viewer-android-new'
alias apsbld='cd /Users/PB/Documents/appspotr/src/new-build-scripts'

export APPSPOTR_ANDROID_PATH='/Users/PB/Documents/appspotr/src/appspotr-viewer-android-new'
#export API_URL='http://localhost:8999'
export API_URL='https://api2.appspotr.com'

export CLOUD_URL='http://localhost:8000'
export RABBIT_HOST='54.145.249.65'
export DEVELOPMENT=true
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=C

export NVM_DIR="/Users/PB/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
