# starship
eval "$(starship init zsh)"

# anyenv
# https://zenn.dev/ryuu/articles/use-anyversions
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# 補完
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
    autoload -Uz compinit
    compinit
fi

# krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
