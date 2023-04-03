#  ---------------------------------------------------------------------------
#
#  All of Colin's bash configuration and aliases
#
#  ---------------------------------------------------------------------------


#   -----------------------------
#   GENERAL
#   -----------------------------

    alias ..='cd ../'
    alias ...='cd ../../'
    alias .3='cd ../../../'
    alias .4='cd ../../../../'
    alias .5='cd ../../../../../'
    alias .6='cd ../../../../../../'
    alias repos="cd ~/Repos"
    alias Repos="cd ~/Repos"


#   -----------------------------
#   CONNECTIVITY
#   -----------------------------

    alias myip='curl ifconfig.me'


#   -----------------------------
#   NVM
#   -----------------------------
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
