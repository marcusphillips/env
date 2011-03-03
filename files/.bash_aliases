alias ls='ls --color=auto'
alias logme="git log --author='cameron'"
alias topme='top -u cameron'

alias grep="grep 2> /dev/null"
alias findpy="find . -name '*.py'"
alias findjs="find . -name '*.js'"
alias gjp="(findpy; findjs;) | xargs grep"
alias greppy="findpy | xagrep"
alias grepjs="findjs | xagrep"
