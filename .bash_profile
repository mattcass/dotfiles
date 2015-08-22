# PATH
export PATH="/usr/local/bin:$PATH"

# COMMAND LINE
function parse_git_branch () {
git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"
BLUE='\e[0;34m'
CYAN='\e[0;36m'
PS1="$CYAN\u $NO_COLOUR\w$BLUE\$(parse_git_branch)$NO_COLOUR : "

# OPEN FILES / FOLDERS FROM THE COMMAND LINE IN SUBLIME --> BOOM CITY
alias sublime="open -a /Applications/Sublime\ Text.app"

