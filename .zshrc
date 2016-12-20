# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd
unsetopt extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/terzic/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

if [[ $TERMINIX_ID ]]; then
	source /etc/profile.d/vte.sh
fi

bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char
bindkey  -s "^[OM"   "^M"
bindkey  "^[[5D"  emacs-backward-word
bindkey  "^[[5C"  emacs-forward-word

PATH=$PATH:~/bin:~/dev/tools/apache-maven-3.3.9/bin
JAVA_HOME=/usr/lib/jvm/java-8-jdk

plugins=(archlinux mvn)
