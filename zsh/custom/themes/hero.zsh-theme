local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local user_host='%{$terminfo[bold]$fg[blue]%}@%m%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'
local current_dir='%{$fg[cyan]%}${PWD/#$HOME/~}%{$reset_color%}'
# local user_symbol='› '
local user_symbol='%{$fg[cyan]%}$ %{$reset_color%}'
local node_version=''
local rvm_ruby=''

if which rvm-prompt &> /dev/null; then
  rvm_ruby='%{$fg[red]%}($(rvm-prompt i v g))%{$reset_color%}'
fi

node_version='%{$fg[red]%}(node $(node -v)) (npm v$(npm -v))%{$reset_color%}'

PROMPT="${user_host} ${rvm_ruby} ${node_version}
${current_dir}%B ${git_branch}${user_symbol}%b"
RPS1="%B${return_code}%b"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="] %{$reset_color%}"
