# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Use vi-like commands
set -o vi

# Use vim as default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# Use extended pattern matching
shopt -s extglob

# Export directory for screen
export SCREENDIR=$HOME/.screen

# PATH
if [ -f ~/.bashfiles/path ]; then
  . ~/.bashfiles/path
else
  printf "Missing PATH configuration file in ~/.bashfiles/path\n"
fi

# History
if [ -f ~/.bashfiles/history ]; then
  . ~/.bashfiles/history
else
  printf "Missing history configuration file in ~/.bashfiles/history\n"
fi

# Terminal
if [ -f ~/.bashfiles/terminal ]; then
  . ~/.bashfiles/terminal
else
  printf "Missing terminal configuration file in ~/.bashfiles/terminal\n"
fi

# Alias
if [ -f ~/.bashfiles/alias ]; then
  . ~/.bashfiles/alias
else
  printf "Missing alias configuration file in ~/.bashfiles/alias\n"
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
