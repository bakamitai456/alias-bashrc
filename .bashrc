git_checkout_origin(){
    if [ -z $2 ]
    then
        git checkout origin/$1  \
        && git checkout -b $1 --track origin/$1 \
    else
        git checkout $1 \
        && git checkout -b $2 $1\
    fi
}

alias gcoo='git_checkout_origin'
