alias deploy="make -f ~/Projects/Deployfile"
alias django="python3 manage.py"

function redis() {
    redis-server --save "" --appendonly no
}
