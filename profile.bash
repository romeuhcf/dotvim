# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
  # include .bashrc if it exists
  if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
  fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
  PATH="$HOME/bin:$PATH"
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
. ~/.gitflow.bash # Git Aliases
alias gs='git status'
alias gf='git flow'

# Bash line config
ESC="\033" # This is the escape sequence
NO_COLOR="$ESC[0m"
IRED="$ESC[1;31m" # ANSI color code for intense/bold red
IGRN="$ESC[1;32m" # ANSI color code for intense/bold green
IYEL="$ESC[1;33m" # ANSI color code for intense/bold yellow

# From http://railstips.org/blog/archives/2009/02/02/bedazzle-your-bash-prompt-with-git-info/
# I had to change 'git-symbolic-ref' to 'git symbolic-ref'
function parse_git_branch {
ref=$(git symbolic-ref HEAD 2> /dev/null) || return
echo " ["${ref#refs/heads/}"]" # I wanted my branch wrapped in [], use () or <> or whatever
  }

  # from http://ariejan.net/2010/04/25/ruby-version-and-gemset-in-your-bash-prompt-yes-sir
  function rvm_version {
  local gemset=$(echo $GEM_HOME | awk -F'@' '{print $2}')
  [ "$gemset" != "" ] && gemset="@$gemset"
  local version=$(echo $MY_RUBY_HOME | awk -F'-' '{print $2}')
  [ "$version" != "" ] && version="$version"
  local full="$version$gemset"
  [ "$full" != "" ] && echo "${full}:" # the colon at the end is a delimiter, you could use a space instead
}

#PS1="\h:\W \u\$" # For reference, here's the default OS X prompt
#export PS1="\$(rvm_version)\W \$(parse_git_branch)\$ " # Without the colors

# I had to put the \[ and \] down here, as opposed to $IRED, to avoid wrapping funkiness.
export PS1="\[$IRED\]$USER: \$(rvm_version)\[$NO_COLOR\]\w\[$IGRN\]\$(parse_git_branch)\n \[$IYEL\]⊗ \[$NO_COLOR\]"
source  ~/.vim/fzfcommands.bash  
grep '^#\+' ~/.vim/fzfcommands.bash
