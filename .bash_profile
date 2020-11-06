# Source this first since it contains the locations of directories needed by functions
export PATH_TO_DOTS="$HOME/projects/dotfiles/"
export BASH_SILENCE_DEPRECATION_WARNING=1
source ${PATH_TO_DOTS}.exports
source ${PATH_TO_DOTS}.functions
source ${PATH_TO_DOTS}.aliases

# Setup the pyenv
if command -v pyenv 1>/dev/null 2>&1; then
	eval "$(pyenv init -)"
fi

# Set vim mode in bash
set -o vi

# Setup Bash autocomplete
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# This should be the last line of the file
# For local changes
# Don't make edits below this
[ -f ".bash_profile.local" ] && source ".bash_profile.local"
