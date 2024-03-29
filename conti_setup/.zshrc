# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="${HOME}/.bin:${PATH}"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="dieter"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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

export VISUAL=vim
export EDITOR="$VISUAL"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ll='ls -alF'
alias debug='env JFROG_CLI_LOG_LEVEL=DEBUG'
alias gl='git log --oneline --graph --decorate'
alias glt='git log --oneline --decorate --graph --all'
alias tag_reset='git tag -l | xargs git tag -d && git fetch --tags'
alias k='kubectl'
alias dbuild='docker build -t'
alias drun='docker run --rm -it --name toolset -v $HOME:$HOME'
alias rfor='repo forall -p'
alias ggrep='grep -rnw . -e'
alias prettyjson="python -m json.tool"
alias pj="prettyjson"


#################	BASICS
function get_token() {
	echo -n 'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZGVudGlmaWVyIjoiTUlDUk9XQVZFTE9SRCIsInZlcnNpb24iOiJ2MiIsInJlc2V0X2RhdGUiOiIyMDIzLTA5LTA5IiwiaWF0IjoxNjk0NTkxMTM3LCJzdWIiOiJhZ2VudC10b2tlbiJ9.ryBWO8tmGzaf9pOnXLduB1hBr5PvHQxWmHr32crIiEsERkdNP6gMgJCBQKgx7dKf874V3fyeuHoBrXg8ADiCEKdbGsRNATcyHCydqo5LOTLd-yE9bHC5yTJtsUQz1ar2JiK3qPeckdO-yXmhIF9_9b8nrOmB8dpyFlr_iAmAR_GKy3rGZ_po7cpgCDMgeF4rdMH1eN6FBia16TBbNWPQteaTLRSxrXGYNIFzcbCeup0S6KHJXkR3kOJ5Yrj063qT9Hdf8YzV9WkPn1lWmVyeNxxb_IJcRzUCR5miyZUX3iVYsJrNPQbgOyi819dyZu75fVrOqWAvIFYKr83vA6x5Bw'
}

#function sp_auth() { #add auth to request
#	echo -n "--header Authorization: Bearer `get_token`'"
#}

function log_and_delete() { #write prettyjson to log, open it and deleter it afterwards
	pj > log && vim log && rm log
}
alias lad="log_and_delete"

function sp_info() { #get agent info
	curl "https://api.spacetraders.io/v2/my/agent" --header 'Authorization: Bearer '`get_token`
}

function sp_show_systems() { #list all systems
	curl "https://api.spacetraders.io/v2/systems" --header 'Authorization: Bearer '`get_token`
}

function sp_show_wp() { #get location info, $1=sector-system, $2=sector-system-waypoint
	curl "https://api.spacetraders.io/v2/systems/$1/waypoints/$2" --header 'Authorization: Bearer '`get_token`
}

function sp_show_wp_spec() { #get location info, type-specific; $1=sector-system, $2=sector-system-wp, $3=wp-type ('shipyard', 'market', 'jump-gate')
	curl "https://api.spacetraders.io/v2/systems/$1/waypoints/$2/$3" --header 'Authorization: Bearer '`get_token`
}

function sp_show_all_wp() { #show all wps in system
	curl "https://api.spacetraders.io/v2/systems/$1/waypoints" --header 'Authorization: Bearer '`get_token`
}

function sp_list_fleet() { #lists all ships
	curl "https://api.spacetraders.io/v2/my/ships" --header 'Authorization: Bearer '`get_token`
}

################	BUY/SELL
function sp_buy_ship() { #buy ship at shipyard. $1=ship type, $2=shipyard wp
	curl -d "{
	\"shipType\":\"$1\",
	\"waypointSymbol\":\"$2\"
	}" --request POST --url "https://api.spacetraders.io/v2/my/ships" --header 'Authorization: Bearer '`get_token` \
	--header 'Content-Type: application/json'
}

function sp_cargo_sell() { #sell cargo to market; $1=ship, $2=tradeSymbol, $3=nbUnits
	curl -d "{
	\"symbol\":\"$2\",
	\"units\":\"$3\"
	}" --request POST --url "https://api.spacetraders.io/v2/my/ships/$1/sell" --header 'Authorization: Bearer '`get_token` \
	--header 'Content-Type: application/json'
}

function sp_cargo_show() { #lists ship cargo, $1=ship
	curl "https://api.spacetraders.io/v2/my/ships/$1/cargo" --header 'Authorization: Bearer '`get_token`
}

################	CONTRACTS
function sp_list_cont() { #list contracts
	curl "https://api.spacetraders.io/v2/my/contracts" --header 'Authorization: Bearer '`get_token`
}

function sp_get_cont() { #get contract details, $1=contractId
	curl "https://api.spacetraders.io/v2/my/contracts/$1" --header 'Authorization: Bearer '`get_token`
}

function sp_cont_acc() { # accept contract, $1=contractId
	curl -d "" --request POST --url "https://api.spacetraders.io/v2/my/contracts/$1/accept" --header 'Authorization: Bearer '`get_token`
}

function sp_cont_deliver() { # deliver cargo to contract, $1=contractId, $2=shipSymbol, $3=tradeSymbol, $4=nbUnits
	curl -d "{
	\"shipSymbol\":\"$2\",
	\"tradeSymbol\":\"$3\",
	\"units\":\"$4\"
	}" --request POST --url "https://api.spacetraders.io/v2/my/ships/$1/navigate" --header 'Authorization: Bearer '`get_token` \
	--header 'Content-Type: application/json'
}

function sp_cont_fulfill() { # finalize contract, $1=contractId
	curl -d "" --request POST --url "https://api.spacetraders.io/v2/my/contracts/$1/fulfill" --header 'Authorization: Bearer '`get_token`
}

###############		MOVEMENT
function sp_orbit() { #put ship in orbit, $1=ship 
	curl -d "" --request POST --url "https://api.spacetraders.io/v2/my/ships/$1/orbit" --header 'Authorization: Bearer '`get_token`
}

function sp_dock() { #dock ship at current wp, $1=ship 
	curl -d "" --request POST --url "https://api.spacetraders.io/v2/my/ships/$1/dock" --header 'Authorization: Bearer '`get_token`
}

function sp_refuel() { #refuel ship, $1=ship
	curl -d "" --request POST --url "https://api.spacetraders.io/v2/my/ships/$1/refuel" --header 'Authorization: Bearer '`get_token`
}

function sp_nav() { #navigate to point, $1=ship symbol, $2=target wp
	curl -d "{
	\"waypointSymbol\":\"$2\"
	}" --request POST --url "https://api.spacetraders.io/v2/my/ships/$1/navigate" --header 'Authorization: Bearer '`get_token` \
	--header 'Content-Type: application/json'
}

###############		ACTIONS
function sp_extract() { #mine from asteroid field, $1=ship
	curl -d "" --request POST --url "https://api.spacetraders.io/v2/my/ships/$1/extract" --header 'Authorization: Bearer '`get_token`
}

#curl wttr.in/TLS

# Add JBang to environment
alias j!=jbang
export PATH="$HOME/.jbang/bin:$PATH"
