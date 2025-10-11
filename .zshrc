# --- Homebrew ---
eval "$(/opt/homebrew/bin/brew shellenv)"

# --- Terminal settings ---
stty -ixon

# --- History configuration ---
export HISTSIZE=100000
export SAVEHIST=100000
export HISTFILE=~/.zhistory
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY

# --- Aliases & editor ---
alias n='nvim'
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}
export EDITOR=nvim

# --- Edit command line with Ctrl+E ---
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^E' edit-command-line

# --- Environment variables ---
source ~/.public_env
if [ -f ~/.private_env ]; then
    source ~/.private_env
fi

# --- FZF configuration ---
source <(fzf --zsh)
export FZF_DEFAULT_OPTS="--color=fg:#cad3f5,bg:#24273a,hl:#f5e0dc,fg+:#cad3f5,bg+:#1e2030,hl+:#f5e0dc,info:#a6e3a1,prompt:#f5e0dc,spinner:#a6e3a1,pointer:#f5e0dc,marker:#f5e0dc,header:#a6e3a1"

# --- Ctrl+S: Insert command from repository ---
function cmd_repo() {
  local selected
  selected=$(
    grep -v '^#' ~/.commands |
      fzf --delimiter='|' \
          --with-nth=2 \
          --prompt="Command> " \
          --preview='echo {1} | bat --color=always --language=sh --style=plain' |
      cut -d'|' -f1 |
      sed 's/ *$//'
  )

  if [[ -n "$selected" ]]; then
    LBUFFER+="$selected"
    zle redisplay
  fi
}
zle -N cmd_repo
bindkey '^s' cmd_repo

# --- Oh My Posh (only if not Apple Terminal) ---
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
    eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/zen.toml)"
fi
