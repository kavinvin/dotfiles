function set_path
    fish_add_path $HOME/.jenv/bin
    fish_add_path $HOME/.local/bin
    fish_add_path $HOME/miniconda3/bin
    fish_add_path $HOME/go/bin
    fish_add_path $HOME/.cargo/bin
    fish_add_path $HOME/bin
    fish_add_path $HOME/.cabal/bin
    fish_add_path /usr/local/opt/ghc@9/bin
    fish_add_path "$HOME/Library/Application Support/Coursier/bin"
end

function load_interactive
    set_path
    fish_vi_key_bindings
    source $HOME/.config/fish/custom/alias.fish
    source $HOME/.config/fish/custom/utils.fish
    source $HOME/.config/fish/custom/functions.fish
end

if status is-interactive
    load_interactive
end
