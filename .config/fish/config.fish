function add_path
  set -gx PATH $argv[1] $PATH
end

function vf
  if test not $is_vf_loaded
    set -gx is_vf_loaded true
    echo 'Loading virtualfish...'
    eval (python -m virtualfish)
  end
  vf $argv
end

function set_path
end

function load
  set_path
  #fish_vi_key_bindings
  set -g fish_user_paths "/usr/local/opt/gettext/bin" $fish_user_paths
  source $HOME/.config/fish/custom/alias.fish
end

load
