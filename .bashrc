git_checkout_origin(){
    if [ -z $2 ]
    then
        git checkout origin/$1  \
        && git checkout -b $1 --track origin/$1 
    else
        git checkout $1 \
        && git checkout -b $2 $1
    fi
}

git_checkout_new_branch_from_master(){
    if [ -z $1 ]
    then
        echo "Please enter branch name"
    else
        git checkout master \
        git checkout -b $1
}

alias gcoo='git_checkout_origin'
alias gcfm='git_checkout_new_branch_from_master'
