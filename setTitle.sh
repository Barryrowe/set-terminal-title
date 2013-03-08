#Set Title for the Terminal window
function st {

        if [[ $@ ]]
        then
                title=$@
        else
                title=`pwd`
        fi

        os=`uname -a`

        if [[ $os =~ ^.*Darwin.* ]]
        then
                echo "Mac OSX Detected"
                printf "\e]1;${title}\a"
        else
                echo -en "\033]2;${title}\007"
        fi
}

#For our example, I want to set the title to a random movie quote 
#so we need to setup our array
declare -a quotes=("Johnny Five is Alive!" "No Food After Midnight" "I am completely, out of ammo. That's never happend to me before..." "I love the powerglove. It's so Bad!!" "Nilbog.. It's Goblin Spelled Backwards!!!" "Good Work Zombie Arm" "This Individual's Name is Not Sure")

#I want this to be extensible, so we allow a setup file called
#quotes.txt that can hold even more quotes!
if [ -e /opt/misc/quotes.txt ]
then
        old_IFS=$IFS
        IFS=$'\n'
        lines=($(cat /opt/misc/quotes.txt))
        IFS=$old_IFS

        quotes=("${quotes[@]}" "${lines[@]}")
fi

millis=`date +%s`
index=$((${millis}%${#quotes[@]}))


#An example of using the st command
st "${quotes[index]}"
