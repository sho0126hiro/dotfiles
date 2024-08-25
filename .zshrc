# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

# starship
eval "$(starship init zsh)"

# anyenv
# https://zenn.dev/ryuu/articles/use-anyversions
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"
export PATH="$HOME/.anyenv/envs/rbenv/bin/rbenv:$PATH"

# direnv
eval "$(direnv hook zsh)"

# completions
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
    autoload -Uz compinit
    compinit
fi

# aliases
alias p='pnpm'
alias g='git'

# device-specific info
if [ -f "$HOME/.zshrc_device" ]; then
    source "$HOME/.zshrc_device"
fi

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
