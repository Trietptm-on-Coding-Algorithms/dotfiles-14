# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"
# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git tmux colorize web-search urltools history-substring-search colored-man dircycle sudo encode64 pip zsh-syntax-highlighting)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

####################################################################################
####################################################################################
# PyEnv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"

####################################################################################
###################################################################################
# RbEnv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

####################################################################################
####################################################################################
# Terminal & shell
export TERM=xterm-256color
export EDITOR=vim
unsetopt sharehistory
zstyle ':completion:*:killall:*' command 'ps -u $USER -o cmd'
bindkey "^K" up-line-or-history
bindkey "^J" down-line-or-history
alias cls='printf \\033c'
tabs 4 >/dev/null

####################################################################################
####################################################################################
# Configuration aliases
alias zshconfig="vi ~/.zshrc"
alias zshreload="exec zsh"
alias bspconfig="vi ~/.config/bspwm/bspwmrc"
alias bspreload="~/.config/bspwm/bspwmrc"
alias bspkeys="vi ~/.config/sxhkd/sxhkdrc"
alias viconfig="vi ~/.vimrc.local"

####################################################################################
####################################################################################
# Misc
help() { run-help $1 }
ida() { (pyenv archshell 2.7.8_32bit; exec ~/ida/idaq $1)& disown }
ida64() { (pyenv archshell 2.7.8_32bit; exec ~/ida/idaq64 $1)& disown }
xo() { xdg-open $1 }
pylab() { ipython qtconsole --pylab=inline }
binmeld() { meld <(xxd $1) <(xxd $2) }
alias tree="tree -C"
alias ll="ls -hl"
alias diff="colordiff"
alias clrz="colorize"
alias ctags="ctags -R -a"
export GCC_COLORS=1
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on"
export _JAVA_AWT_WM_NONREPARENTING=1
