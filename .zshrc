# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/ts140/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
export ZSH_THEME="agnoster"
#ZSH_THEME="blinks"

[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

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
 DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
 DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
 HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git autojump copyfile copydir dirpersist extract history pass)

source $ZSH/oh-my-zsh.sh

source antigen.zsh
# want your terminal to support 256 color schemes? I do ...
export TERM="xterm-256color"
[ -n "$TMUX" ] && export TERM=screen-256color
#
# # if you do a 'rm *', Zsh will give you a sanity check!
setopt RM_STAR_WAIT
#
# # allows you to type Bash style comments on your command line
# # good 'ol Bash
setopt interactivecomments
#
# # Zsh has a spelling corrector
setopt CORRECT
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

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
 alias zshconfig="mate ~/.zshrc"
 alias ohmyzsh="mate ~/.oh-my-zsh"
 alias tmux="tmux -2"
tmux_init()
{
	tmux  new-session -s "0" -d -n "local" #start a seesion
	tmux  new-window -n "other"	#start a window
	tmux  split-window -h	#split horizental
	tmux  attach-session -d	# start tmux with 256 color and attach to session
}
if which tmux 2>&1 >/dev/null; then
	test -z "$TMUX" && (tmux -2 attach || tmux_init)
fi
# Load various lib files 
antigen bundle robbyrussell/oh-my-zsh lib/ 
#
# Antigen Theme
#
antigen theme jdavis/zsh-files themes/jdavis
#antigen theme robbyrussell
antigen bundle git 
antigen bundle tmuxinator 
antigen bundle zsh-users/zsh-syntax-highlighting 
antigen bundle rupa/z
# For SSH, starting ssh-agent is annoying 
antigen bundle ssh-agent
if [[ $CURRENT_OS == 'OS X' ]]; then 
	antigen bundle brew 
	antigen bundle brew-cask 
	antigen bundle gem 
	antigen bundle osx
elif [[ $CURRENT_OS == 'Linux' ]]; then 
	# None so far... 
	if [[ $DISTRO == 'CentOS' ]]; then 
		antigen bundle centos 
	fi
fi
antigen bundle jdavis/zsh-files
#antigen bundle git@github.com:jdavis/secret.git
