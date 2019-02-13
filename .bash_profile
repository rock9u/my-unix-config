
# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
export PATH="/usr/local/Cellar/python/3.7.0/bin:${PATH}"
alias python="python3.6"
alias pip="pip3.6"
alias st="git status"
alias gpsh="git push"
alias gpll="git pull"
alias gc="git commit -m"
alias co="git checkout"
alias test="npm test"
alias ls="ls -G"
alias lm="ls -la"
alias cdc='cd ~/Documents/Development/'
alias sshpi="ssh pi@192.168.2.114"
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_202.jdk/Contents/Home
export ANDROID_HOME=/Users/demandhub/Library/Android/sdk
export NODE_PATH='/usr/local/lib/node_modules'
export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/tools:$JAVA_HOME/bin
alias get_booted_ios='xcrun simctl list | grep Booted'
