PROMPT="%F{049}%1~%f "

# zsh-syntax-highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[unknown-token]='none'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=051'

# Sets colors for lsd to use
export CLICOLOR=YES
export LS_COLORS=di=36:ln=37:so=37:pi=37:ex=32:bd=37:cd=37:su=37:sg=37:tw=37:ow=37

# Aliases
alias vim="nvim"
alias v="nvim"
alias ls="lsd"
alias sz="source ~/.zshrc"
alias c="clear"
alias gh="cd ~/GitHub"
alias config="cd ~/.config"
