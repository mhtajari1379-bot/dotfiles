if status is-interactive
    fish_add_path -p $HOME/.local/bin
    set fish_greeting
    set fish_key_bindings fish_vi_key_bindings

    function l
        clear; and eza --long --header --icons --git --all $argv
    end

    function c
        z $argv; and l
    end

    function grep
        command grep --color=auto $argv
    end

    function diff
        command diff --color=auto $argv
    end

    function u
        paru $argv
    end

    function v
        code -r $argv
    end

    function q
        exit
    end

    function gs
        git status
    end

    function gd
        git diff
    end

    function lzg
        lazygit
    end

    function lzd
        lazydocker
    end

    function cmp
        git add -A
        git commit -m "$argv"
        git push
    end

    function cheat
        curl cheat.sh/$argv[1]
    end

    zoxide init fish | source

    starship init fish | source
end
