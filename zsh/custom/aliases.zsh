# Easy folders navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Always recursive and verbose
alias cp="cp -rv"
alias rm="rm -rf"
alias mv="mv -v"

alias g="git"
alias gs="git status"
alias gc="git clone"
alias greset="git reset HEAD~"

# List all files colorized in long format
alias l="ls -l -G"
alias ls-a="ls -a -G"
# List all files colorized in long format, including dot files
alias la="ls -la -G"
# List only directories
alias lsd='ls -l -G | grep "^d"'
# Always use color output for `ls`
alias ls="command ls -G"

# Process status
alias psa="ps aux"
alias ht="htop"

# Easy folder and file loading
alias sites="~/Sites"
alias clients="~/Sites/clients"
# alias ops="~/Sites/open-source"
# alias pld="~/Sites/playground"
alias projects="~/Sites/projects"
alias dl="~/Downloads"
alias apps="/Applications"
alias fl="~/.files"

alias zload="source ~/.zshrc"
alias finder='open . -a finder.app'

# Miscellaneous
alias cleanup="find  -type f -name '*DS_Store' -ls -delete"
alias kll="killall"
alias h="history"
alias q="exit"

# Find the largest file under current directory
alias largestf='find -type f -printf '\''%s %p\n'\'' | sort -nr | head -n 40 | gawk "{ print \$1/1000000 \" \" \$2 \" \" \$3 \" \" \$4 \" \" \$5 \" \" \$6 \" \" \$7 \" \" \$8 \" \" \$9 }"'

# Show the external IP
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"

# Check web page download time
alias curl:t='curl -s -w "%{time_total} seconds\n" -o /dev/null'

# alias chucknorris="sudo"
alias aliases="print -rl -- ${(k)aliases}"
alias functions="print -rl -- ${(k)functions}"
alias parameters="print -rl -- ${(k)parameters}"

# alias for editors
alias s="subl"
alias ci="code-insiders"
alias c="ci"

# alias for docker
alias d="docker"
alias dc="docker-compose"
alias dip="docker ps -q | xargs -n 1 docker inspect --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}} {{ .Name }}' | sed 's/ \// /'"

# alias for yarn
alias y="yarn"
alias ys="yarn start"
alias yd="yarn dev"
alias yw="yarn watch"
alias yl="yarn lint"

# alias for docker-compose WordPress
alias wp:cli="dc exec app wp"

# alias for docker-compose PHP
alias php:composer="dc exec app composer"
alias php:dump-autoload="php:composer dump-autoload"

# alias for docker-compose Laravel
alias l:artisan="dc exec app php artisan"
# alias l:commands="l:artisan list"
alias l:migrate="l:artisan migrate"
alias l:rollback="l:artisan migrate:rollback"
alias l:keyg="l:artisan key:generate"
alias l:routes="l:artisan route:list"
alias l:seed="l:artisan db:seed"
alias l:make:auth="l:artisan make:auth"
alias l:make:controller="l:artisan make:controller"
alias l:make:model="l:artisan make:model"
alias l:make:test="l:artisan make:test"
alias l:make:seeder="l:artisan make:seeder"
