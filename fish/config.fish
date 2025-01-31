# rikoteki default settings
function fish_greeting
    echo "Welcome to fish shell"
end

function fish_prompt --description 'Write out the prompt'
    echo 
    set -l last_status $status

    # User
    set_color $fish_color_user
    echo -n $USER
    set_color normal

    echo -n '@'

    # Host
    set_color $fish_color_host
    echo -n (prompt_hostname)
    set_color normal

    echo -n ':'

    # PWD
    set_color $fish_color_cwd
    echo -n (prompt_pwd)
    set_color normal

    __terlar_git_prompt
    fish_hg_prompt
    echo

    if not test $last_status -eq 0
        set_color $fish_color_error
    end

    echo -n '➤ '
    set_color normal
end

function fish_right_prompt
    echo (date "+%H:%M")
end

set SQLPATH /opt/oracle/instantclient_21_7 $SQLPATH
set TNS_ADMIN /opt/oracle/instantclient_21_7 $TNS_ADMIN
set LD_LIBRARY_PATH /opt/oracle/instantclient_21_7 $LD_LIBRARY_PATH
set ORACLE_HOME /opt/oracle/instantclient_21_7 $ORACLE_HOME

set PATH $HOME/.ghcup/bin /opt/google-cloud-sdk  $HOME/.cargo/bin /usr/local/go/bin ~/.local/bin /snap/bin /usr/sandbox/ /usr/local/bin /usr/bin /bin /usr/local/games /usr/games /usr/share/games /usr/local/sbin /usr/sbin /sbin $PATH

alias ls='ls -lh --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/opt/google-cloud-sdk/path.fish.inc' ]; . '/opt/google-cloud-sdk/path.fish.inc'; end
