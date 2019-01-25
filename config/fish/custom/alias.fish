abbr fun functions

alias ... 'cd ../..'
alias .... 'cd ../../..'
alias ..... 'cd ../../../..'
alias ...... 'cd ../../../../..'

abbr _ sudo

for i in (seq 9)
  alias $i 'tmux new -A -s '$i
end

alias a 'fasd -a'
alias d 'fasd -d'
alias f 'fasd -f'
alias s 'fasd -si'
alias sd 'fasd -sid'
alias sf 'fasd -sif'
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
abbr py python3
abbr rd rmdir
alias safari 'open -a safari'
abbr ssl openssl
abbr t tmux
abbr ta 'tmux a -t'
abbr tn 'tmux new -s'
abbr y yarn
abbr kat 'kafkacat'
abbr c cabal
abbr ne nix-env
abbr k kanji
alias e exit
abbr race typerace
alias reload 'source $HOME/.config/fish/config.fish'
abbr k kanjidamage
abbr kd kanjidamage
abbr j jisho
abbr vo vocabulary
abbr ts ts-node
abbr ju julia
abbr ku kubectl
abbr gssh 'gcloud compute ssh'
alias vim nvim
alias vi nvim
alias v 'f -e nvim'
abbr ic imgcat
