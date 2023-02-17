# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
source $HOME/.config/zsh/antigen.zsh
setopt autocd extendedglob
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/cosmo/.zshrc'
export ZSH_CUSTOM="$HOME/.config/zsh/plug"
autoload -Uz compinit
compinit
# End of lines added by compinstall
source .alias
source .var
PS1="%F{#54acf1}┌┤[%~][%t]
└»%f "
export PATH="$HOME/.local/bin:$PATH"
