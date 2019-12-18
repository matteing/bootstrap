alias deploy="make -f ~/Projects/Deployfile"
alias django="python3 manage.py"

function redis() {
    redis-server --save "" --appendonly no
}

# Setting up pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
