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
#   Personal
#   -----------------------------

    alias cl='cd ~/Repos/colinlord.github.io; gatsby develop'

#   -----------------------------
#   SDC
#   -----------------------------

#   Don't forget to start postgres before running these commands!

    export PATH=node_modules/.bin:$PATH

    sdc-aws () {
      docker run -it --rm --net=host -e TZ=America/Chicago -v ~/.aws:/root/.aws tool-registry.sdcops.com/gimme-aws-creds:latest
      export AWS_PROFILE="SingleAccountName:Developer"
      cd ~/.aws
      nano credentials
    }
    
    alias sdcStorybook='cd ~/Repos/sdc-component-library/; npm run serve:storybook'
    alias sdcNuxt='cd ~/Repos/sdc-front-end-engineering/; npm run dev'