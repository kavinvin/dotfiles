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
abbr pc 'pbcopy'
abbr pp pbpaste
abbr pe pipenv
alias please sudo
abbr pt 'ptpython'
abbr pu pushd
abbr python python3
abbr pip 'python3 -m pip'
abbr py python3
abbr rd rmdir
alias safari 'open -a safari'
abbr ssl openssl
abbr ta 'tmux a -t'
abbr tn 'tmux new -s'
abbr kat 'kafkacat'
abbr ne nix-env
abbr k kanji
alias e exit
abbr race typerace
alias reload 'source $HOME/.config/fish/config.fish'
abbr ts ts-node
abbr k kubectl
abbr gssh 'gcloud compute ssh'
alias vim nvim
alias vi nvim
alias v 'f -e nvim'
abbr gfuck 'git add --all; git commit --amend --no-edit; git push -f'
alias dsmlr 'ssh -J dsmlr.kavin.io'
alias kplus 'ssh -J 167.99.68.183:9022'
