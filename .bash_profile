# Source this first since it contains the locations of directories needed by functions
export PATH_TO_DOTS="$HOME/projects/dotfiles/"
source ${PATH_TO_DOTS}.exports
source ${PATH_TO_DOTS}.functions
source ${PATH_TO_DOTS}.aliases

source /usr/local/git/contrib/completion/git-completion.bash
source /usr/local/git/contrib/completion/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='[\[\033[38;5;14m\]\u\[$(tput sgr0)\] \[\033[38;5;219m\]\w\[$(tput sgr0)\]\[\033[38;5;75m\]$(__git_ps1)\[$(tput sgr0)\]]\$ '
 
# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# Setup the pyenv
if command -v pyenv 1>/dev/null 2>&1; then
	eval "$(pyenv init -)"
fi

# This should be the last line of the file
# For local changes
# Don't make edits below this
[ -f ".bash_profile.local" ] && source ".bash_profile.local"