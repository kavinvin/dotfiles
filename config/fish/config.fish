function add_path
    set -gx PATH $argv[1] $PATH
end

function vf
    if not test -n "$VIRTUALFISH_HOME"
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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kavinvin/google-cloud-sdk/path.fish.inc' ]; . '/Users/kavinvin/google-cloud-sdk/path.fish.inc'; end
set -gx GOOGLE_APPLICATION_CREDENTIALS '/Users/kavinvin/.auth/kavinvin-f23b2b368703-lectio-owner.json'
