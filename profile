alias vi=vim
# this is for tmux and the R-plugin
#alias vim="vim --servername VIM"
alias ll="ls -alFG"
alias lll="ls -alFG|less"
alias top="top -o rsize"
alias cdj="cd /Volumes/projects/jason/scripts/"
alias cdr="cd /Volumes/projects/jason/spg_repo/spg/"
alias cde="cd /Volumes/projects/External Projects/"
alias sshva="ssh vanalytics.paix.yougov.local"
alias ipy="ipython qtconsole &"
alias htop="sudo htop"

# this option allows vim to use c-q as visual-block mode
stty -ixon

# source .profile
alias sp="source ~/.profile"

# automatically run python2.6 in 32-bit mode
alias spy="arch -i386 python2.6"

# use vi commands on the terminal line 
set -o vi

# list directory contents when changing directories
cd () {
    builtin cd "$*" && ll
}

# for use with ipython/vim/qtconsole
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

# press v when editing a file in less to open in vim
export EDITOR=vim

# allow 
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/texbin

# help python 2.6 find the libraries it needs for the spss module
#export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/Applications/IBM/SPSS/Statistics/19/SPSSStatistics.app/Contents/lib

# stuff for R-vim plugin

# Change the TERM environment variable (to get 256 colors) and make Vim
# connecting to X Server even if running in a terminal emulator (many of
# the plugin features depend on this).
if [ "x$DISPLAY" != "x" ]
then
   if [ "screen" = "$TERM" ]
   then
       export TERM=screen-256color
   else
       export TERM=xterm-256color
   fi
fi
   #alias vim='vim --servername VIM'
