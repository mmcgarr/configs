# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd extendedglob notify
setopt HIST_EXPIRE_DUPS_FIRST
setopt SHARE_HISTORY
unsetopt beep nomatch
bindkey '^R' history-incremental-search-backward
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
autoload -U select-word-style
select-word-style bash
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/mmcgarr/.zshrc'
zstyle ':completion:*' completer _complete
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'
zstyle ':completion:*' menu select

# remove % that zsh marks end of line with
PROMPT_EOL_MARK=''

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -U colors
colors

export PATH=/usr/local/bin:/usr/local/sbin:$PATH

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
setopt PROMPT_SUBST
export PROMPT='%{$fg[magenta]%}%n%{$reset_color%} @ %{$fg[yellow]%}%m%{$reset_color%} %~%b$(parse_git_branch) > '

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/mmcgarr/projects/metrics-receiver/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/mmcgarr/projects/metrics-receiver/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/mmcgarr/projects/metrics-receiver/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/mmcgarr/projects/metrics-receiver/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/mmcgarr/projects/metrics-receiver/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/mmcgarr/projects/metrics-receiver/node_modules/tabtab/.completions/slss.zsh
# export PATH="/usr/local/opt/helm@2/bin:$PATH"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH="/usr/local/opt/openjdk/bin:$PATH"
