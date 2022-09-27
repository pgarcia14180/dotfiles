# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/pedrogarcia/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/pedrogarcia/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/pedrogarcia/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/pedrogarcia/.fzf/shell/key-bindings.zsh"
