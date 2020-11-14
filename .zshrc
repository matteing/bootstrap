alias django="python3 manage.py"

function redis() {
    redis-server --save "" --appendonly no
}

# export PATH="/usr/local/opt/node@12/bin:$PATH"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
