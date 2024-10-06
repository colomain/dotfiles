# The following two lines were added by the sbt installSbtn task:
fpath=($fpath /home/jmmartinez/.sbt/1.0/completions)
autoload -Uz compinit; compinit
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export TERM="xterm-256color"
# export TERM="xterm-kitty"

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
plugins=(git docker docker-compose extract sudo wd zsh-autosuggestions z) 

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
#Integració ssh amb gnome keyring
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export JAVA_HOME=/opt/jdk/current
# export GRAALVM_HOME=/opt/graalvm/current
export JDK_HOME=/opt/jdk/current
export PATH=$PATH:/usr/sbin:~/bin:/usr/local/bin:~/.i3/scripts:~/.i3/scripts/i3ass:/opt/activator/bin:/opt/sbt/current/bin:/opt/mssql-tools/bin:$JAVA_HOME/bin:$CONSCRIPT_HOME/bin:/opt/mssql-tools/bin:/media/data/opt/apache-cassandra-3.11.0/bin:/home/jmmartinez/Projects/other/cbt:/opt/phantomjs-2.1.1-linux-x86_64/bin:~/.bloop:/opt/apache-jmeter/current/bin:/opt/apache-kafka/current/bin:/opt/apache-maven/current/bin:~/.cargo/bin:/home/jmmartinez/.local/share/coursier/bin:/opt/balena-cli:/opt/netbeans/current/bin:/home/jmmartinez/.local/share/JetBrains/Toolbox/scripts:/home/linuxbrew/.linuxbrew/bin
export PATH="$PATH:/home/jmmartinez/.local/share/JetBrains/Toolbox/scripts"
export PATH="$PATH:/home/jmmartinez/.cache/scalacli/local-repo/bin/scala-cli"
export PATH="$HOME/.jenv/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH=/home/jmmartinez/.cache/rebar3/bin:$PATH
export JAVA_OPTS="$JAVA_OPTS -Dscala.color" 
export SBT_OPTS="$SBT_OPTS $JAVA_OPTS -Dsbt.jse.engineType=Node -Dsbt.jse.command=$(which node)"
export LC_TIME=es_ES.UTF-8
export RANGER_LOAD_DEFAULT_RC=FALSE

alias sbt='/opt/sbt/current/bin/sbt'
# alias ls='ls --color=auto'
alias ls='eza -al --long --header --color=always --group-directories-first'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias REPLesent='scala -Dscala.color -language:_ -nowarn -i REPLesent.scala'
alias tw='timew'

alias cp='rsync -ae ssh'
alias cpv='rsync -vhae ssh --progress'
alias cpa='rsync -vhae ssh --progress --append'

alias b="bloop"
alias bp='bloop projects'
alias br='bloop run'
alias run='bloop run $(bp | head -n 1)'
alias bt='bloop test'
alias t='bloop test $(bp | head -n 1)'
alias bc='bloop compile'
alias bcl='bloop clean'
alias compile='blopp compile $(bp | head -n 1)'
alias clean='bloop clean $(bp | head -n 1)'
alias bi='export BLOOP_ENABLED=true; sbt bloopInstall'
alias tcore='bloop test core'
alias wrun='sbt wrun'
alias rweb='sbt wrun'
alias tweb='bloop test web'
alias srun='kport 2555; bloop run system -m ApplicationMain -- -J-Djline.terminal=unix'
alias rsystem='bloop run system -m ApplicationMain'
alias tsystem='bloop test system'
alias prun='kport 2553; bloop run pri'
alias rpri='bloop run pri'
alias tpri='bloop test pri'
alias tall='bloop test core system pri web'
# alias r='./run'
# alias run='./run'
# alias test='./test'

alias i3config="vim ~/.i3/config"
alias ensime="ctags -Re . & sbt clean ensimeConfig test:compile ensimeServerIndex"

alias bitacora="\vim ~/Dropbox/Documentos/Jose/bitacora.md"
alias vim="nvim"
alias cc="calcurse"
alias sbtn="/opt/sbt/current/bin/sbtn-x86_64-pc-linux"
alias egrep="grep -E"
alias cat="bat"

export DOCKER_COMPOSE_FILE="docker-compose-acceptance.yml"
export APP_DIR="/home/sbtuser"
export AE="acceptance-executor"
export DC="docker-compose -f $DOCKER_COMPOSE_FILE"
export DC_EXEC="$DC exec -T -u sbtuser -w $APP_DIR"



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

eval "$(direnv hook zsh)"

path=($path /home/jmmartinez/.sbt/1.0/bin)

# Bleep managed
fpath=("/home/jmmartinez/.config/bleep/zsh" $fpath)
compinit

# Bleep managed

# bun completions
[ -s "/home/jmmartinez/.bun/_bun" ] && source "/home/jmmartinez/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

eval "$(jenv init -)"


source ~/.zsh/completion/scalingo_complete.zsh

# fnm
FNM_PATH="/home/jmmartinez/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/jmmartinez/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi
