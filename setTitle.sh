#Set Title for the Terminal window
function st {

        if [[ $@ ]]
        then
                title=$@
        else
                title=`pwd`
        fi
        echo -en "\033]2;${title}\007"
}

