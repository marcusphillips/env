[ -z "$PS1" ] && return # bail if not an interactive shell

export HISTCONTROL=ignoredups
export HISTCONTROL=ignoreboth
export HISTFILESIZE=10000

export PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME}\007"'
export PS1="\u@\h \[\033[1;32m\]\$(git branch 2> /dev/null | fgrep '*' | sed 's/* //')\[\033[0m\] \[\033[1;33m\]\w\[\033[0m\] $ "
export TERM=rxvt-unicode

export PATH=$PATH:~/bin:~/scripts
export PYTHONPATH=$PYTHONPATH:.:..:~/bt/test
export GREP_OPTIONS='--color=auto -R -n'
export EDITOR=emacs


# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


eval "`dircolors -b`"


if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

if [ -f .bash_aliases ]; then
	. .bash_aliases
fi

# load local configurations
for F in ".bashrc" ".bash_aliases"; do
	if [ -f "$F.local" ]; then
		source "$F.local";
	fi
done;

