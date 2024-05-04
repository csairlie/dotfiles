# command prompt
PROMPT="%F{049}%1~%f "

# zsh-syntax-highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[unknown-token]='none'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=051'

# lsd colours
export CLICOLOR=YES
export LS_COLORS=di=36:ln=37:so=37:pi=37:ex=32:bd=37:cd=37:su=37:sg=37:tw=37:ow=37

# homebrew
export HOMEBREW_NO_ENV_HINTS=TRUE

# neovim
alias vim="nvim"
alias v="nvim"
alias lv="vim -c \"normal '0\""

# commands
alias ls="lsd"
alias sz="source ~/.zshrc"
alias c="clear"
alias e="exit"

# tmux
alias t="tmux"

# lazygit
alias lg="lazygit"
export XDG_CONFIG_HOME="$HOME/.config"

# taskell
alias todo="taskell ~/.config/taskell/taskell.md"

# homebrew
alias deps="brew deps --tree --installed"

# zoxide
alias cd="z"
eval "$(zoxide init zsh)"

# zsh history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history 
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# zsh-autosugesstions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
