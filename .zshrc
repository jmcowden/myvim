# Path to your oh-my-zsh installation.
export ZSH=/Users/voyager/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="jonathan"
#ZSH_THEME="bira"
#ZSH_THEME="random"

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
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/texbin"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
ZSH_CUSTOM=/Users/voyager/.oh-my-zsh/plugins

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# THESE ARE NOT WORKING - specifically, this plugins function seems to do nothing
#plugins=(git quote vim)

# the hack solution to this is to manually source the plugins
#source $ZSH/plugins/rand-quote/*
source $ZSH/plugins/colored-man-pages/*

# this looks cool, but too slow
#source $ZSH/plugins/vi-mode/vi-mode.plugin.zsh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

#export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/texbin"
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
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# stuff from my .profile file for bash
alias vi=vim
alias ll="ls -alFG"
alias lll="ls -alFG|less"
alias top="top -o rsize"
alias cdj="cd /Volumes/projects/jason/scripts/"
alias cdr="cd /Volumes/projects/jason/spg_repo/spg/"
alias cde="cd /Volumes/projects/External Projects/"
alias sshva="ssh vanalytics.paix.yougov.local"
alias ipy="ipython qtconsole &"
alias cdd="cd /Users/voyager/Library/Application\ Support/Dungeon\ Crawl\ Stone\ Soup/morgue"
alias rmb="rm /Users/voyager/Library/Application\ Support/Dungeon\ Crawl\ Stone\ Soup/saves/bones/bones*"
alias namer="python /Users/voyager/games/name_gen/namegen_example.py"
alias newgame="rm bones*; python /Users/voyager/games/name_gen/namegen_example.py"
alias weather="curl wttr.in"

# source .profile
alias sp="source ~/.zshrc"

# use vi commands on the terminal line
#set -o vi
bindkey -v

# and lots of improvements!
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

# this seems to cause major slowdown - what's up?
#function zle-line-init zle-keymap-select {
#    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
#    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}$(git_custom_status) $EPS1"
#    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
#    zle reset-prompt
#}

#zle -N zle-line-init
#zle -N zle-keymap-select

# reduce delay switching modes
export KEYTIMEOUT=.1

# list directory contents when changing directories
cd () {
    builtin cd "$*" && ll
}

# for use with ipython/vim/qtconsole
#export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
unset PYTHONPATH

# press v when editing a file in less to open in vim
export EDITOR=vim

# allow
#export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/texbin

# show me a quote!
#quote

#### improtements to vi mode
# http://stratus3d.com/blog/2017/10/26/better-vi-mode-in-zshell/
# Better searching in command mode
bindkey -M vicmd '?' history-incremental-search-backward
bindkey -M vicmd '/' history-incremental-search-forward

# Beginning search with arrow keys
bindkey "^[OA" up-line-or-beginning-search
bindkey "^[OB" down-line-or-beginning-search
bindkey -M vicmd "k" up-line-or-beginning-search
bindkey -M vicmd "j" down-line-or-beginning-search

# Easier, more vim-like editor opening
bindkey -M vicmd v edit-command-line

# `v` is already mapped to visual mode, so we need to use a different key to
# open Vim
bindkey -M vicmd "^V" edit-command-line

export EDITOR='vim -u NONE'

export EDITOR='vim -u alternate_profile.vim'

# Make Vi mode transitions faster (KEYTIMEOUT is in hundredths of a second)
export KEYTIMEOUT=1

# Updates editor information when the keymap changes.
function zle-keymap-select() {
  zle reset-prompt
  zle -R
}

zle -N zle-keymap-select

function vi_mode_prompt_info() {
  echo "${${KEYMAP/vicmd/[% NORMAL]%}/(main|viins)/[% INSERT]%}"
}

# define right prompt, regardless of whether the theme defined it
RPS1='$(vi_mode_prompt_info)'
RPS2=$RPS1

# jk to change to normal mode
# (also need to adjust KEYTIMEOUT: # https://superuser.com/questions/351499/how-to-switch-comfortably-to-vi-command-mode-on-the-zsh-command-line)
bindkey -M viins 'jk' vi-cmd-mode
export KEYTIMEOUT=20
