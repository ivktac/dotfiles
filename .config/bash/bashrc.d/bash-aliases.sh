#!/usr/bin/env bash

# Many things grubed from: https://github.com/ublue-os/toolboxes/blob/main/toolboxes/bluefin-cli/files/etc/profile.d/modern-unix.sh

# Eza for ls
alias ls='eza' 2>/dev/null
alias li='eza --icons'
alias l.='eza -d .*' 2>/dev/null
alias ll='eza -l --icons=auto --group-directories-first' 2>/dev/null
alias la='ls -a'
alias l1='eza -1'

# Bat for cat
alias cat='bat -pp' 2>/dev/null

alias grep='grep --color=auto'

# Help for tldr
alias help='tldr'

# dircolors tree
alias tree='tree -C'

# Replace tmux with zellij
# TODO: find how to setup zellij + nvim
# alias tmux='zellij' 2>/dev/null
alias ze="zellij" 2>/dev/null
alias t="tmux" 2>/dev/null
alias hx="helix" 2>/dev/null

# Good aliases
alias vi='nvim'
alias vim='nvim'

alias less="less -R"

alias ..='cd ..'
alias ...="cd ../.."

alias cpuinfo='lscpu'
alias meminfo="free -h"

alias sys="systemctl"

alias upd='sudo pacman -Syuv'
alias fcd='cd $(fd -t d | fzf)'
alias cpwd='pwd | tr -d "\n" | wl-copy'

alias g='git'
alias l='ll -Ah --git'

alias venv='[ ! -d "./.venv" ] && python -m venv .venv; source .venv/bin/activate'

alias vm="vboxmanage startvm OracleLinux9.5 --type headless 2>/dev/null; ssh vm"
