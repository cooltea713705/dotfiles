# Profile zsh start-up, (also zprof call at the bottom)
# zmodload zsh/zprof

export PATH="/usr/local/sbin:$PATH"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# brew install zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# brew install neovim
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Aliases
alias vi=$EDITOR

# brew install source-highlight
export LESSOPEN="| src-hilite-lesspipe.sh %s"
export LESS=' -R'

# jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
# Note: jenv enable-plugin export is slow!!! the issue is that without it JAVA_HOME is not set :-(
# https://github.com/jenv/jenv/issues/44
export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"
alias jenv_set_java_home='export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"'

# Maven config
export MAVEN_OPTS="-Xmx1024m -Xms512m" # system-wide (maven files are for project-level http://maven.apache.org/configure.html)

# p10k configuration
if [[ -f ~/.p10k.zsh ]] {
  source ~/.p10k.zsh
} elif [[ -f ${0:h}/.p10k.zsh ]] {
  source ${0:h}/.p10k.zsh
}

# Path to your oh-my-zsh installation.
export ZSH="${0:h}/ohmyzsh"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
COMPLETION_WAITING_DOTS="true"

source $ZSH/oh-my-zsh.sh

source ${0:h}/powerlevel10k/powerlevel10k.zsh-theme

# brew install zsh-syntax-highlighting
# Need to be put at the end of .zshrc
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# https://gist.github.com/magicdude4eva/2d4748f8ef3e6bf7b1591964c201c1ab
### Fix slowness of pastes with zsh-syntax-highlighting.zsh
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish
### Fix slowness of pastes

# iTerm2 Shell Integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Profile zsh start-up
# zprof
