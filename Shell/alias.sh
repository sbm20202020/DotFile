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

alias git_master='git checkout master'
alias git_dev='git checkout dev'
alias git_checkout='git checkout -'
alias git_push='git push'
alias git_fetch='git fetch'
alias git_pull='git pull'
alias git_rem='git pull'


