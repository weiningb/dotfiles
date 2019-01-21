# Source this first since it contains the locations of directories needed by functions
export PATH_TO_DOTS="$HOME/projects/dotfiles/"
source ${PATH_TO_DOTS}.exports
# source ${PATH_TO_DOTS}.functions
source ${PATH_TO_DOTS}.aliases

source /usr/local/git/contrib/completion/git-completion.bash
source /usr/local/git/contrib/completion/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='[\u \w$(__git_ps1)]\$ '

# This should be the last line of the file
# For local changes
# Don't make edits below this
[ -f ".bash_profile.local" ] && source ".bash_profile.local"