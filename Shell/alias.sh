#*****************************#
# add in /home/[user]/.bashrc #
#*****************************#

#For laravel install
alias sail='bash vendor/bin/sail' 

#For docker 

#Container management

# Start the docker-compose stack in the current directory
alias dcu="docker-compose up -d"

# Start the docker-compose stack in the current directory and rebuild the images
alias dcub="docker-compose up -d --build"

# Stop, delete (down) or restart the docker-compose stack in the current directory
alias dcs="docker-compose stop"
alias dcd="docker-compose down"
alias dcr="docker-compose restart"

# Show the logs for the docker-compose stack in the current directory
# May be extended with the service name to get service-specific logs, like
# 'dcl php' to get the logs of the php container
alias dcl="docker-compose logs"

# Quickly run the docker exec command like this: 'dex container-name bash'
alias dex="docker exec -it"

#Local
alias dcul="docker-compose -f 'local.docker-compose.yml' up"
alias dcdl="docker-compose -f 'local.docker-compose.yml' down"
alias dcrl="docker-compose -f 'local.docker-compose.yml' restart"
alias dcsl="docker-compose -f 'local.docker-compose.yml' stop"

#System-wide management

# 'docker ps' displays the currently running containers
alias dps="docker ps"

# 'docker ps -q' displays the currently running ID containers
alias dpsq="docker ps -q"

# 'docker stop' stop running containers
alias ds="docker stop"

# 'docker stop $(docker ps -q)' stop all running containers
#alias dsq="docker stop "$(dpsq)""

# This command is a neat shell pipeline to stop all running containers no matter
# where you are and without knowing any container names
alias dsa="docker ps -q | awk '{print $1}' | xargs -o docker stop"

# Remove stopped containers, unused images, unused networks, etc.:
alias dsp="docker system prune"




#Terminal configuration

alias c='clear'
alias lsa='ls -a'

alias ipconfig='ifconfig'
alias user_all_rigth='sudo chown -R $USER:$USER .'

# Edit conf file quickly
alias zshconf='vim ~/.zshrc && source ~/.zshrc'
alias sz='source ~/.zshrc'
alias aliasconf='vim ~/.zsh/aliases && source ~/.zsh/aliases'
alias funconf='vim ~/.zsh/functions && source ~/.zsh/functions'
alias tmuxc='vim ~/.tmux.conf'
alias xresources='vim ~/.Xresources && xrdb ~/.Xresources'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Power off, reboot and hibernate in my local language: Lingala
alias off='poweroff'
alias r='reboot'
alias vp='systemctl -i suspend'
alias h='systemctl hibernate'

# When you often forget sudo
alias systemctl='sudo systemctl'
alias ctl='systemctl'
alias pacman='sudo pacman'
alias apt='sudo apt'
alias mount='sudo mount'
alias umount='sudo umount'
alias hibernate='systemctl start hibernate.target'
alias wifi-menu='sudo wifi-menu'
alias fdisk='sudo fdisk -l'
alias d='docker'
alias dc='docker-compose'
alias k='kubectl'
alias showkube='export SPACESHIP_KUBECTL_SHOW=true'


#For python

alias py3='python3'
alias py='python'
alias rmpyc='find . | grep -E "(__pycache__|\.pyc|\.pyo$)" | xargs rm -rf'

# PHP
alias ci='composer install'
alias cu='composer update'

# Tmux
alias tmux='tmux -2' # Force tmux to use 256 colors
alias tl='tmux list-sessions'
alias tksv='tmux kill-server'
alias tkss='tmux kill-session -t'
alias ta='tmux attach -t'
alias td='tmux detach'
alias ts='tmux new-session -s'
alias tad='tmux attach -d -t'
alias tsw='tmux split-window -h'
alias tswd='tmux split-window -h -d'
alias tnw='tmux new-window'
alias tnwd='tmux new-window -d'

# Open a file or URL in the user's preferred application
alias open='xdg-open'
alias o='open'

# Process I launch
alias p='ps -u $USER'

# Powerfull ls
#alias ls='exa -g --git --group-directories-first' # exa is a modern replacement for ls
alias l='ls -a'
alias ll='ls -la -h'
alias lk='ll -s=size'
alias lm='ll -s=modified'
alias lc='ll --created -s=created'
alias lf='ls -al | fzf ' # fzf needs
alias lg='ls -al|grep'

#alias cat='bat -p' # bat > cat

# Navigation
alias -- +='pushd'
alias -- ++='pushd .'
alias -- -='popd'

# Global alias !!! Working in zsh only
alias -g G='|grep'
alias -g F='|fzf --ansi --exact --no-sort --reverse --tiebreak=index --bind "ctrl-m:execute: echo '{}'| xclip -selection c " '
alias -g C='|cb' # cb (see in .function file) copy to clipboard
alias -g L='|less -XNFR'
alias -g N='> /dev/null 2>&1'
alias -g S='| sort'
alias -g T='| wc -l'
alias -g P='$(clippaste)'
alias -g V='& progress -mp $!'


# alias for the most used commands
alias no='node'
alias y='yay'
alias wh='which'
alias wget="wget -c"

# npm
alias ni='npm install'
alias nr='npm run'


# Browser aliases
alias chrome='brave'
alias incognito='brave --incognito'


# Get my public IP address information.
alias ipinfo='curl ipinfo.io'
alias ipnet='dig +short myip.opendns.com @resolver1.opendns.com'
alias iplocal='ifconfig | sed -En "s/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p"'


# Disk Usage
alias diskspace='df -P -kHl'

#Git

alias main='git checkout main'
alias undopush='git push -f origin HEAD^:main'
alias n='clone $(clippaste)' # Clone git projet from url in clipboard. See clone in shell/zsh/functions file

alias master='git checkout master'
alias dev='git checkout dev'
alias checkout='git checkout'
alias push='git push'
alias fetch='git fetch'
alias pull='git pull'
alias add='git add'
alias commit='git commit -m """'
alias clone='git clone '
alias remotes='git remote -v'
alias mouv_remote='git remote rm'
alias add_remote='git remote add origin'
alias gbr='git branch'
alias gs='git status'