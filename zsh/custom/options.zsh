# Set name of the theme to load
ZSH_THEME="hero"

# Uncomment the following line to use case-sensitive completion
# CASE_SENSITIVE="true"

# How often to auto-update (in days)
export UPDATE_ZSH_DAYS=99999

# Uncomment the following line to disable auto-setting terminal title
# DISABLE_AUTO_TITLE="true"

# Enable command auto-correction
ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion
COMPLETION_WAITING_DOTS="true"

# Disable marking untracked files
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Change the command execution time
## The optional three formats: "mm/dd/yyyy"|"ddmmyyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd/mm/yyyy"

# Turn on spelling correction for commands
# setopt correct

# Which plugins would you like to load? (in ~/oh-my-zsh/plugins/*)
## Custom plugins may be added to ~/oh-my-zsh/custom/plugins/
plugins=(
  git
  git-extras
  git-flow
  git-hubflow
  github
  gitignore
  gulp
  heroku
  iwhois
  jira
  laravel5
  node
  branch
  brew
  composer
  docker
  docker-compose
  emoji
  emoji-clock
  dotenv
  osx
  rake
  ruby
  npm
  nvm
  rvm
  extract
  zsh-syntax-highlighting
  zsh-autosuggestions
)

# User configuration
export EDITOR=code

# Set up a colored prompt in Zsh
autoload -U promptinit
promptinit
