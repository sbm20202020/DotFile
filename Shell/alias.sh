#*****************************#
# add in /home/[user]/.bashrc #
#*****************************#

#For laravel 8 install
alias sail='bash vendor/bin/sail' 

#For docker
alias run_docker="docker-compose -f 'local.docker-compose.yml' up"
alias down_docker="docker-compose -f 'local.docker-compose.yml' down"
alias restart_docker="docker-compose -f 'local.docker-compose.yml' restart"
alias stop_docker="docker-compose -f 'local.docker-compose.yml' stop"

#Terminal configuration

alias c='clear'
alias lsa='ls -a'

alias ipconfig='ifconfig'
alias user_all_rigth='sudo chown -R $USER:$USER .'

# Power off, reboot and hibernate in my local language: Lingala
alias off='poweroff'
alias r='reboot'
alias vp='systemctl -i suspend'
alias h='systemctl hibernate'

#For python

alias py3='python3'
alias py='python'

#Git

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