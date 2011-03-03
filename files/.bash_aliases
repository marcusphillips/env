alias ls='ls --color=auto'
alias logme="git log --author='cameron'"
alias topme='top -u cameron'

alias grep="grep 2> /dev/null"
alias findpy="find . -name '*.py'"
alias findjs="find . -name '*.js'"
alias gjp="(findpy; findjs;) | xargs grep"
alias greppy="findpy | xagrep"
alias grepjs="findjs | xagrep"

BT="/nail/pg/$USER/bt/"
alias bt="cd $BT"
alias logs="cd /nail/pg/$USER/logs/"
alias cycle="pushd $BT; ./configure config; templates; ./cycle_servers.sh; popd"
alias templates="pushd $BT/templates; make; popd"
alias clearcacheserv="bt;./cacheserv/stop_server.sh;find /nail/pg/$USER/logs/ -name "*.bin" | xargs rm; cd -"

function taila { tail -f $1 | sed 's/"Moz.*//g';}
function taile { tail -f error_log | sed 's/, referer.*//'; }
