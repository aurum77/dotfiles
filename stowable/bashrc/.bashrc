# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt
PS1="\n\[\033[0;36m\]\u\[\033[0;31m\]@\[\033[0;32m\]\h \[\033[0;35m\]\$( git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(git:\1) /')\n\[\033[1;33m\]\w\[\033[00m\] \[\033[1;33m\]>\[\033[0;00m\] "

# Aliases
alias sudo='sudo '	# for sudo use with other aliases if needed
alias l='exa'		# needs exa
alias ls='exa'
alias la='exa -a'
alias ll='exa -la'
alias tree='exa --tree'
alias v='vim'     	# needs nvim
alias c='clear'

# Enables directory change without using cd
shopt -s autocd
