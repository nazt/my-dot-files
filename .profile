#[ -r /usr/local/etc/bash_completion.d/grails ] && source /usr/local/etc/bash_completion.d/grails
export XAMPP_PATH=/Applications/XAMPP/xamppfiles/bin/
export PATH=/usr/local/bin:$XAMPP_PATH:$PATH
[[ -s "/Users/NAzT/.rvm/scripts/rvm" ]] && source "/Users/NAzT/.rvm/scripts/rvm"  # This loads RVM into a shell session.
export PS1="[\#] \t \u@\n\w $ "
alias ls="ls -G"
export NODE_PATH=/usr/local/lib/node
alias serv="python3 -m http.server"
#alias jenkins="java -jar /usr/local/Cellar/jenkins/1.418/lib/jenkins.war"

function parse_git_branch {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

GREEN="\[\033[0;32m\]"
YELLOW="\[\033[0;33m\]"
GRAY="\[\033[1;30m\]"

PS1="$GREEN\w$YELLOW \$(parse_git_branch)$GRAY \n\$ "
export EDITOR='subl -w'
export PATH="$PATH":/Users/NAzT/depot_tools
export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"
export ANDROID_HOME=`brew --prefix android`

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

function newtab {
  osascript -e "
    tell application \"System Events\" to tell process \"Terminal\" to keystroke \"t\" using command down
    tell application \"Terminal\" to do script \"cd \\\"$(PWD)\\\"\" in selected tab of the front window
  " > /dev/null 2>&1
} 
 export TERM='xterm-color'
 alias ls='ls -G'
 alias ll='ls -lG'
 alias l='ls -G'
 export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
 export GREP_OPTIONS="--color"

export GTEST_DIR=~/Projects/Library/gtest
