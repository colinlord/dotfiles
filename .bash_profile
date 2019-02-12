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
#   SUBLIME TEXT
#   -----------------------------

    export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH
    export EDITOR='subl -w'
    alias edit='subl'



#   -----------------------------
#   CONNECTIVITY
#   -----------------------------

    alias myip='curl ifconfig.me'



#   -----------------------------
#   OS X
#   -----------------------------

    alias showFiles='defaults write com.apple.finder AppleShowAllFiles -boolean true ; killall Finder'
    alias hideFiles='defaults write com.apple.finder AppleShowAllFiles -boolean false ; killall Finder'



#   -----------------------------
#   SDC
#   -----------------------------

    export WORKON_HOME=~/.virtualenvs
    export PATH="/usr/local/opt/openssl/bin:$PATH"
    VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
    source /Library/Frameworks/Python.framework/Versions/3.5/bin/virtualenvwrapper.sh
    export CRYPTOGRAPHY_ALLOW_OPENSSL_098=1

    sdc () {
      cd ~/Repos/scc-api/smilecheck/
      python3 manage.py runserver
    }
