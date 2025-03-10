eval "$(/opt/homebrew/bin/brew shellenv)"


setopt share_history

export PATH="/opt/homebrew/opt/go@1.24/bin:$PATH"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"

if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
    eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/zen.toml)"
fi

source <(fzf --zsh)
export FZF_DEFAULT_OPTS="--color=fg:#cad3f5,bg:#24273a,hl:#f5e0dc,fg+:#cad3f5,bg+:#1e2030,hl+:#f5e0dc,info:#a6e3a1,prompt:#f5e0dc,spinner:#a6e3a1,pointer:#f5e0dc,marker:#f5e0dc,header:#a6e3a1"
function ctrl_f_search() {
  read -r "query?"
  local result
  result=$(
    rg --hidden --glob '!.git/**' --column --line-number --no-heading --color=always "$query" . | \
    fzf --ansi --delimiter ':' \
        --preview 'bat --style=numbers --color=always --highlight-line {2} {1}' \
        --bind 'enter:accept'
  )
  if [[ -n "$result" ]]; then
    local file
    local line
    file=$(echo "$result" | cut -d':' -f1)
    line=$(echo "$result" | cut -d':' -f2)
    nvim +"$line" "$file"
  fi
  zle reset-prompt
}
zle -N ctrl_f_search
bindkey '^F' ctrl_f_search

if [ -f ~/.private_env ]; then
    source ~/.private_env
fi

eval "$(oh-my-posh init zsh)"
