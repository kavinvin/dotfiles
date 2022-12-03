abbr fun functions

alias ... 'cd ../..'
alias .... 'cd ../../..'
alias ..... 'cd ../../../..'
alias ...... 'cd ../../../../..'

abbr _ sudo

for i in (seq 9)
  alias $i 'tmux new -A -s '$i
end

alias v 'f -e vim'

alias l 'ls -lah'
alias la 'ls -lAh'
alias ll 'ls -lh'
alias ls 'ls -G'
alias lsa 'ls -lah'
alias md 'mkdir -p'
abbr gg 'git graph'

abbr ns nslookup
abbr o 'open .'
abbr p ping
abbr p1 'ping 1.1.1.1'
abbr p8 'ping 8.8.8.8'
abbr python python3
abbr pip 'python3 -m pip'
alias e exit
alias vim nvim
alias vi nvim
alias acme.sh "~/.acme.sh/acme.sh"

alias ghci 'stack exec -- ghci'
