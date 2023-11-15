#!/bin/bash
alias certipy='docker run --user $(id -u):$(id -g) --rm -it -v $PWD:/data certipy' # put certipy docker image in docker hub
alias stego='docker run --user $(id -u):$(id -g) --rm -it -v $PWD:/data dominicbreuker/stego-toolkit /bin/bash'
alias remnux='docker run --rm -it -v ${PWD}:/data remnux/remnux-distro /bin/bash'
alias retdec='docker run --rm -it -v ${PWD}:/data remnux/retdec /bin/bash'
