# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export LC_ALL=en_US.UTF-8

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="amuse"
ZSH_THEME="ys"
#ZSH_THEME="peepcode"
#ZSH_THEME="xiong-chiamiov-plus"
#ZSH_THEME="xiong-chiamiov-plus"
# ZSH_THEME="bira"
#ZSH_THEME="avit"
#ZSH_THEME="gnzh"
#ZSH_THEME="agnoster"

# Uncomment the following line3to use case-sensitive completion.
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
plugins=(git autojump python  history-substring-search)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin/TFSCommandClient:/usr/local/bin/node:/usr/local/bin/atom:/usr/local/bin/TEE-CLC-11.0.0:"
# /usr/local/Cellar/freetds/1.00:
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias mvim='open -a "MacVim"'
# alias emacs=/usr/local/Cellar/emacs/25.2/bin/emacs
# alias cat=lolcat
# alias vim=nvim
alias vim=/usr/local/bin/vim
alias top=htop
alias javac="javac -J-Dfile.encoding=utf8"
alias grep="grep --color=auto"
alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport '
# The fuck
eval $(thefuck --alias)

export PATH="/usr/local/p/versions/python:$PATH"
export PATH="/usr/local/bin/python3:$PATH"
export PATH="/usr/local/share/dotnet:$PATH"
export PATH="/usr/local/Cellar/jq/1.5_2/bin:$PATH"
export NODE_PATH="/usr/local/lib/node_modules:$NODE_PATH"
export DYLD_LIBRARY_PATH=/usr/local/opt/openssl/lib:$DYLD_LIBRARY_PATH

export CHEAT_CONFIG_PATH="~/.dotfiles/cheat/conf.yml"

source $ZSH/oh-my-zsh.sh
source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#alias for cnpm
#alias cnpm="npm --registry=https://registry.npm.taobao.org \
  #--cache=$HOME/.npm/.cache/cnpm \
  #--disturl=https://npm.taobao.org/dist \
  #--userconfig=$HOME/.cnpmrc"

#PATH="/Users/yanbin/perl5/bin${PATH:+:${PATH}}"; export PATH;
#PERL5LIB="/Users/yanbin/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
#PERL_LOCAL_LIB_ROOT="/Users/yanbin/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
#PERL_MB_OPT="--install_base \"/Users/yanbin/perl5\""; export PERL_MB_OPT;
#PERL_MM_OPT="INSTALL_BASE=/Users/yanbin/perl5"; export PERL_MM_OPT;

alias tmux="TERM=screen-256color-bce tmux"

function lazygit() {
    git pull
    echo "Git Pull finish"
    git add .
    git commit -a -m "$1"
    git push
}

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

function preview() {
    open -a Preview "$1"
}
