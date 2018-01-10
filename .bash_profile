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
#   Modea.com
#   -----------------------------

    modeaDatabase () {
      cd ~/Repos/Modea.com-3.0/
      postgres -D /usr/local/var/postgres
    }

    modeaServer () {
      cd ~/Repos/Modea.com-3.0/
      rails server
    }



#   -----------------------------
#   Jefferson College
#   -----------------------------

    jchs-vagrant () {
      cd ~/Repos/jchs8
      vagrant up
    }

    jchs-angular () {
      cd ~/Repos/jchs8/docroot/themes/custom/jchs_theme/jchs-frontend/
      npm start
    }

    blt() {
      if [ "`git rev-parse --show-cdup 2> /dev/null`" != "" ]; then
        GIT_ROOT=$(git rev-parse --show-cdup)
      else
        GIT_ROOT="."
      fi

      if [ -f "$GIT_ROOT/vendor/bin/blt" ]; then
        $GIT_ROOT/vendor/bin/blt "$@"
      else
        echo "You must run this command from within a BLT-generated project repository."
        return 1
      fi
    }



#   -----------------------------
#   VICC
#   -----------------------------

    vicc () {
      cd ~/Repos/vicc.org
      docker-compose up -d
      cd web/themes/vicc-emulsify
      npm start
    }

    # docker4drupal / VICC
    alias dphp='docker-compose exec php'
    alias ddrush='docker-compose exec php drush -r web'
    alias dcomposer='docker-compose exec php composer'
    alias ddrupal='docker-compose exec php drupal'



#   -----------------------------
#   Colin Lord.com
#   -----------------------------

    colinlord-com () {
      cd ~/Repos/colinlord.github.io
      bundle exec jekyll serve
    }



#   -----------------------------
#   Ruby
#   -----------------------------

    source ~/.profile
    [[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
    [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
