☯  BYEE:~/Documents/GitHub/alpha_blog °master° ⌘  cd 
☯  BYEE:~ ⌘  vi .bash_profile
Error detected while processing /Users/BYEE/.vimrc:
line    1:
E492: Not an editor command: Plugin 'tomlion/vim-solidity';
line    2:
E492: Not an editor command: Plug 'tomlion/vim-solidity'
Press ENTER or type command to continue











































[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

function git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "°"${ref#refs/heads/}"° "
}

# Setup prompt
# source /opt/local/share/doc/git-core/contrib/completion/git-completion.bash
source ~/.git-completion.bash

function my_rvm_ruby_version {
  local gemset=$(echo $GEM_HOME | awk -F'@' '{print $2}')
  [ "$gemset" != "" ] && gemset="@$gemset"
  local version=$(echo $MY_RUBY_HOME | awk -F'-' '{print $2}')
  [ "$version" == "1.8.7" ] && version=""
  local full="$version$gemset"
  [ "$full" != "" ] && echo "°"$full"° "
}

USER_RED='\[\e[0;31m\]'
END_COLOR='\[\e[m\]'

alias restart="rake db:drop; rake db:create; rake db:migrate; rake db:seed;"

export PS1="\342\230\257  ${USER_RED}\u${END_COLOR}:\w \$(git_branch)\342\214\230  "

# Setup terminal colors, use yellow for directories
export CLICOLOR=1
export LSCOLORS=dxfxcxdxbxegedabagacad

export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
export EDITOR="subl"

# echo "Loading .bash_profile"
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
# # commented out in case you don't have these
# source ~/.git-completion.bash
# # source ~/.git-prompt.sh
# PATH=$PATH:$HOME/.rvm/bin
# export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
# export PATH="/usr/local/heroku/bin:$PATH"
# ### Set up overhead for git branch
# c_reset='\[\e[0m\]'
# c_path='\[\e[0;31m\]'
# c_git_clean='\[\e[0;32m\]'

