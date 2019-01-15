# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# export TERM="xterm-256color"
export TERM="xterm-kitty"

# Path to your oh-my-zsh installation.
export ZSH=/home/jmmartinez/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
ZSH_THEME="powerlevel9k"

DEFAULT_USER="colomain"

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
plugins=(git docker docker-compose extract powerline sudo wd completion zsh-autosuggestions) 

source $ZSH/oh-my-zsh.sh

# User configuration

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

export JAVA_HOME=/opt/jdk/current
export JDK_HOME=/opt/jdk/current
export PATH=$PATH:~/bin:~/.i3/scripts:~/.i3/scripts/i3ass:/opt/activator/bin:/opt/sbt/bin:/opt/mssql-tools/bin:$JAVA_HOME/bin:$CONSCRIPT_HOME/bin:/opt/mssql-tools/bin:/media/data/opt/apache-cassandra-3.11.0/bin:/home/jmmartinez/Projects/other/cbt:/opt/phantomjs-2.1.1-linux-x86_64/bin:~/.bloop:/opt/apache-jmeter-4.0/bin
export JAVA_OPTS="$JAVA_OPTS -Dscala.color" export SBT_OPTS="$SBT_OPTS $JAVA_OPTS -Dsbt.jse.engineType=Node -Dsbt.jse.command=$(which node)"
export LC_TIME=es_ES.UTF-8
export RANGER_LOAD_DEFAULT_RC=FALSE

alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias REPLesent='scala -Dscala.color -language:_ -nowarn -i REPLesent.scala'

alias cp='rsync -ae ssh'
alias cpv='rsync -vhae ssh --progress'
alias cpa='rsync -vhae ssh --progress --append'

alias stest='sbt "~adapter/test"'
alias srun='sbt "~adapter/re-start"'

alias i3config="vi ~/.i3/config"
alias ensime="ctags -Re . & sbt clean ensimeConfig test:compile ensimeServerIndex"

alias vim="nvim"
alias cc="calcurse"

# function rcp() { rsync -rahP --modify-window=1 "$@" }
# function rmv() { rsync -rahP --modify-window=1 --prune-empty-dirs --remove-sent-files "$@" }
# compdef _cp rcp rmv

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

PATH="/home/jmmartinez/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/jmmartinez/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/jmmartinez/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/jmmartinez/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/jmmartinez/perl5"; export PERL_MM_OPT;

autoload -U compinit
fpath=($HOME/.bloop/zsh $fpath)
compinit
