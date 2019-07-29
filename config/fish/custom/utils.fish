function wifi
  switch $argv[1]
  case on
    networksetup -setairportpower en0 on
  case off
    networksetup -setairportpower en0 off
  case restart
    wifi off
    wifi on
  case status
    networksetup -getairportpower en0
    networksetup -getairportnetwork en0
  case info
    networksetup -getinfo "Wi-Fi"
  case proxy
    switch $argv[2]
    case enable
      if test $argv[3]
        set host $argv[3]
        set port $argv[4]
      else
        set host localhost
        set port 8080
      end
      networksetup -setwebproxy "Wi-fi" $host $port
      networksetup -setsecurewebproxy "Wi-fi" $host $port
    case disable
      networksetup -setwebproxystate "Wi-fi" off
      networksetup -setsecurewebproxystate "Wi-fi" off
    case status
      set line_break "------------------------"
      echo -e "$line_break\nHTTP\n$line_break"
      networksetup -getwebproxy "Wi-Fi"
      echo -e "$line_break\nHTTPS\n$line_break"
      networksetup -getsecurewebproxy "Wi-Fi"
    end
  end
end

function kerio
  switch $argv[1]
  case login
    read username -p "echo 'Username: '"
    read -i password -p "echo 'Password: '"
    wget --no-check-certificate --post-data="kerio_username=$username&kerio_password=$password" https://portal.it.kmitl.ac.th:4081/internal/dologin.php
  end
end

function __fish_complete_kerio
  set cmd (commandline -poc)
  if test (count $cmd) -eq 1
     echo 'login'
  end
end

function pipe-arg
  read -l -p "" stdin
  eval "$argv[1] $stdin"
end

function kanjidamage
  set query $argv
  #set url (curl -Ls -o /dev/null -w "%{url_effective}" "http://www.kanjidamage.com/kanji/search?q=$argv[1]")
  set url "http://www.kanjidamage.com/kanji/search?q=$query"
  safari $url
end

function jisho
  set query $argv
  set url "https://jisho.org/search/$query"
  safari $url
end

function vocabulary
  set query $argv
  set url "https://www.vocabulary.com/dictionary/$query"
  safari $url
end

function kanji
  set DATA_PATH ~/.config/fish/data/inverse-1-to-N.json
  cat $DATA_PATH | fx ".$argv[1]" | cat
end

complete -f -c wifi -a 'on off restart status proxy'
complete -f -c kerio -a '(__fish_complete_kerio)'
complete -f -c typerace -a 'practice online'

function __fish_complete_openssl
    openssl list-standard-commands
    openssl list-cipher-commands
    openssl list-message-digest-commands
end

complete -c openssl -a '(__fish_complete_openssl)' -f
