# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  common-aliases
  command-not-found
  colored-man-pages
  # fbterm
  sudo
  # systemd
  web-search
  taskwarrior
  z
  zsh-completions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration
PATH_POWERLINE="/home/petrus/.local/bin"
PATH_DISTCC="/usr/lib/distcc/bin:"
export PATH="/usr/sbin:/usr/local/sbin:/sbin:${PATH_POWERLINE}:${PATH}"

# enable command auto-correction
# setopt correctall

# NOTE:CONFLICT
# gentoo wiki recommended completion prompt
# autoload -U compinit promptinit
# compinit
# promptinit; prompt gentoo

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

# more powerful ls
alias LS='find -mount -maxdepth 1 -printf "%.5m %10M %#9u:%-9g %#5U:%-5G %TF_%TR %CF_%CR %AF_%AR %#15s [%Y] %p\n" 2>/dev/null'

alias history_stamp='fc -il 1'

alias steam='LIBGL_DRI3_DISABLE=1 /usr/bin/steam'

alias vi='vim --clean'
alias vim-tiny='vim -u ~/.vim/vim-tiny.vim'

alias mail_read="mail -f $HOME/mbox"

# proxy
# export http_proxy=socks5://192.168.2.1:23456
# export https_proxy=socks5://192.168.2.1:23456

# spaceship theme setting

spaceship_rename_terminal_window() {
  # Reset tmux pane title
  printf '\033]2;%s\033\\' "${PWD/#$HOME/~}"
}

SPACESHIP_PROMPT_ORDER=(
  rename_terminal_window
  time
  user
  dir
  host
  git
  exec_time
  line_sep
  jobs
  exit_code
  char
)

# SPACESHIP_CHAR_SYMBOL="❯ "
# SPACESHIP_JOBS_SYMBOL="»"
SPACESHIP_TIME_SHOW=true
SPACESHIP_USER_PREFIX="as "
SPACESHIP_USER_SHOW="needed"
SPACESHIP_DIR_TRUNC=0
SPACESHIP_DIR_TRUNC_PREFIX=".../"
SPACESHIP_DIR_TRUNC_REPO=false
