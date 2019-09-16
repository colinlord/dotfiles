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
#   Personal
#   -----------------------------

    gatsby () {
      cd ~/Repos/colinlord.github.io
      gatsby develop
    }

#   -----------------------------
#   SDC
#   -----------------------------

    export WORKON_HOME=~/.virtualenvs
    export PATH="/usr/local/opt/openssl/bin:$PATH"
    VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
    source /Library/Frameworks/Python.framework/Versions/3.5/bin/virtualenvwrapper.sh
    export CRYPTOGRAPHY_ALLOW_OPENSSL_098=1

    sdc () {
      workon smilecheck
      cd ~/Repos/scc-api/smilecheck/
      python3 manage.py runserver
    }

    sdc-css () {
      workon smilecheck
      cd ~/Repos/scc-api/smilecheck/
      python3 manage.py compilescss
    }

    sdc-requirements () {
      cd ~/Repos/scc-api/
      pip3 install -r requirements.txt
    }

    sdc-migrate () {
      workon smilecheck
      cd ~/Repos/scc-api/smilecheck/
      python3 manage.py migrate
    }

    sdc-db () {
	    cd ~/Repos/scc-api/smilecheck/
	    python3 tools/standalone_scripts/restore_database.py -t qa6
    }

    sdc-upgrade () {
      workon smilecheck
      cd ~/Repos/scc-api/
      pip3 install -r requirements.txt
      cd smilecheck
      python manage.py migrate
      npm install
    }

    if command -v pyenv 1>/dev/null 2>&1; then
      eval "$(pyenv init -)"
      eval "$(pyenv virtualenv-init -)"
    fi

    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
    export GPG_TTY=$(tty)
