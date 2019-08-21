function _g::help
    if test (count $argv) -gt 0
        set -l f_info (functions -D -v "g::$argv[1]")
        echo 'g' $argv[1] '-' $f_info[5]
        echo 'Usage: g' $argv[1] '[-h/--help]' $argv[2]
    else
        echo 'g - Git shortcut + aliases'
        echo 'Usage: g [-h/--help] <command> [<command args>]'
        echo ''
        echo 'Commands:'
        for al in (string match -r '^g::.*' (functions))
            set -l al_info (functions -D -v $al)
            echo (string replace 'g::' '' $al) '-' $al_info[5]
        end
    end
end
