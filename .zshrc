alias django="python3 manage.py"

function redis() {
    redis-server --save "" --appendonly no
}

# export PATH="/usr/local/opt/node@12/bin:$PATH"
  export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

PROMPT="
%(#,%{$bg[yellow]%}%{$fg[black]%}%n%{$reset_color%},%{$fg[cyan]%}%n) \
%{$fg[white]%}@ \
%{$fg[green]%}%m \
%{$fg[white]%}in \
%{$terminfo[bold]$fg[yellow]%}%~%{$reset_color%}\
${hg_info}\
${git_info}\
${venv_info}\
 \
%{$fg[white]%} $exit_code
%{$terminfo[bold]$fg[white]%}$ %{$reset_color%}"

export DISABLE_AUTO_UPDATE=true
export ERL_AFLAGS="-kernel shell_history enabled -kernel shell_history_file_bytes 1024000"
