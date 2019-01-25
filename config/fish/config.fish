function add_path
    set -gx PATH $argv[1] $PATH
end

function vf
    if test not $is_vf_loaded
        set -gx is_vf_loaded true
        echo 'Loading virtualfish...'
        eval (python3 -m virtualfish)
    end
    vf $argv
end

function set_path
    add_path $HOME/.jenv/bin
end

function load
    set_path
    fish_vi_key_bindings
    source $HOME/.config/fish/custom/alias.fish
    source $HOME/.config/fish/custom/utils.fish
    source $HOME/.config/fish/custom/functions.fish
end

load

# test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
