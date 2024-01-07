# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# autocomplete . and ..
zstyle ':completion:*' special-dirs true

# don't ask about auto-correct commands
unsetopt correct
# alias
alias nsxiv='nsxiv -a'
alias sxiv='sxiv -a'

# exports
export BROWSER=firefox
export EDITOR=nvim

# make LS_COLORS work on alacrity
eval "$(TERM=st dircolors)"

# make .pyenv work
eval "$(pyenv init --path)"
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# opam configuration
[[ ! -r /home/antonioppc/.opam/opam-init/init.zsh ]] || source /home/antonioppc/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
