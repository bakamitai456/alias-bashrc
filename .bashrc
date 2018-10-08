git_checkout_origin(){
    git checkout origin/$1 \
    && git checkout -b $1 \
    && git branch --set-upstream-to=origin/$1 $1
}

alias gcoo='git_checkout_origin'
