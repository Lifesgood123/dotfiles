#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# default bash PS1
#PS1='\u@\h \W \$ '

# custom PS1
#PS1='\u@\h \W \[\e[1;35m\]\$\[\e[m\] '
# minimal PS1
PS1='\W \[\e[1;32m\]\$\[\e[m\] '


# use vim as editor
if [[ -x /usr/bin/vim ]]
then
    #export VIMRUNTIME=/usr/bin/vim
    export EDITOR=/usr/bin/vim
    export VISUAL=$EDITOR
    alias vim='vim -p'
    alias view='vim -R'
    alias vimtab='vim -p'
    alias viewtab='vim -Rp'
fi


# ls aliases
alias ls='ls --color=auto'
alias lsa='ls -A --color=auto'
alias lsl='ls -lh --color=auto'
alias lsla='ls -Alh --color=auto'
alias lso='ls -A | grep --color=auto'
alias lsr='ls -R'
alias lslr='ls -lR'
alias lsd='ls -d */'
alias lsld='ls -dl */'
alias lslo='ls -Alh | grep --color=auto'
alias lsonly='ls -A | grep --color=auto'
alias lslonly='ls -Alh | grep --color=auto'


# systemd things
if [[ -x /usr/bin/journalctl ]]
then   
    alias searchlogs='journalctl -b --no-pager | grep'
fi


### package manager aliases
# Arch - Pacman
if [[ -x /usr/bin/pacman ]]
then
    alias supacins='sudo pacman -S'
    alias supacrem='sudo pacman -R'
    alias supacfullrem='sudo pacman -Rc'
    alias supacupd='sudo pacman -Syu'
    alias supacclean='sudo paccache -r'
    alias pacsearch='pacman -Ss '
    alias pacinfo='pacman -Si'
    alias makesrcinfo='makepkg --printsrcinfo'

    # Arch - Pacaur
    if [[ -x /usr/bin/pacaur ]]
    then
        alias supacins='pacaur -S'
        alias supacrem='pacaur -R'
        alias supacfullrem='pacaur -Rc'
        alias supacupd='pacaur -Syu'
        alias pacsearch='pacaur -Ss'
        alias pacinfo='pacaur -Si'
        alias getpkgbuild='pacaur -d'
        alias getpkgmakepkg='pacaur -m'
    fi
fi


# RHEL/CentOS - Yum
if [[ -x /usr/bin/yum ]]
then
    alias suyumins='sudo yum install '
    alias suyumrem='sudo yum remove '
    alias suyumgins='sudo yum groupinstall '
    alias suyumgrem='sudo yum groupremove '
    alias suyumclean='sudo yum clean all'
fi


# git aliases
if [[ -x /usr/bin/git ]]
then
    alias gstat='git status '
    alias gadd='git add '
    alias gcommit='git commit '
    alias gclone='git clone '
    alias glog='git log -3'
    alias gpull='git pull '
    alias gpush='git push '
    alias gdiff='git diff'
    alias gamend='git commit --amend --reuse-message=HEAD'
    alias gunstage='git reset HEAD '
    alias gresetchanges='git checkout --'
    alias gswitch='git checkout'
fi


# python stuff
alias venv='virtualenv '
alias venv2='virtualenv -p "$(which python2)"'
alias actvenv='source bin/activate'
alias unittest='python -m unittest'
#export WORKON_HOME="~/.venvs"
#source /usr/bin/virtualenvwrapper.sh
export PYTHONDONTWRITEBYTECODE=1    # no more stupid .pyc files


# /r/unixporn related
alias i3config='vim ~/.config/i3/config'
alias viblocks='vim ~/.i3blocks.conf'
alias vixres='vim ~/.Xresources'
alias xrdbreload='xrdb ~/.Xresources'
alias fetch='neofetch --crop_mode fit'
alias smugfetch='neofetch --image ~/Pictures/smugfaces/ --crop_mode fit'
alias feh='feh --geometry 900x600'
alias ncmpcpp='ncmpcpp; clear'


# ur waifu is trash
if [[ -x /usr/bin/trash-put ]]
then
    alias rm='trash-put'
    alias lstrash='trash-list'
    alias emptrash='trash-empty'
    alias trashres='trash-restore'
    alias trashrm='trash-rm'
    alias reallyrm='/usr/bin/rm'
fi


# random things
alias sudo='sudo '
alias vibashrc='vim ~/.bashrc'
alias vivimrc='vim ~/.vimrc'
alias loadrc='. ~/.bashrc'
alias symlink='ln -s'
alias wtfis='whatis '
alias chkexit='echo $?'
alias follow='tail -f'


# shell options
shopt -s autocd


# perl... for urxvt copy and paste... that's it, I swear.
PATH="/home/dbishop/perl5/bin${PATH+:}${PATH}"; export PATH;
PERL5LIB="/home/dbishop/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/dbishop/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/dbishop/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/dbishop/perl5"; export PERL_MM_OPT;
