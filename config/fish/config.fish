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
    add_path $HOME/.local/bin
    add_path $HOME/miniconda3/bin
    add_path $HOME/go/bin
    add_path $HOME/.cargo/bin
end

function load
    set_path
    fish_vi_key_bindings
    source $HOME/.config/fish/custom/alias.fish
    source $HOME/.config/fish/custom/utils.fish
    source $HOME/.config/fish/custom/functions.fish
    source $HOME/.config/fish/custom/env.fish
end

load

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kavinvin/google-cloud-sdk/path.fish.inc' ]; . '/Users/kavinvin/google-cloud-sdk/path.fish.inc'; end
set -gx GOOGLE_APPLICATION_CREDENTIALS '/Users/kavinvin/.auth/kavinvin-f23b2b368703-lectio-owner.json'
set -gx AUTH_PUBLIC_KEY (cat ~/.auth/lectio-public.pem)

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval (eval /Users/kavinvin/miniconda3/bin/conda "shell.fish" "hook" $argv)
source ~/miniconda3/etc/fish/conf.d/conda.fish
# <<< conda initialize <<<
