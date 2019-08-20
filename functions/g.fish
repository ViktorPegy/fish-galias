function g -d "Git shortcut + aliases"
    argparse -s 'h/help' -- $argv
    if set -q _flag_help; g::help; return; end

    set -l cmd $argv[1]
    if test -z "$cmd"
        return (__galias::err "missing parameter <command>")
    end
    
    if not string match -qr "g::$cmd" (g::aliases)
        return (__galias::err "unknown command '$cmd'")
    end

    eval "galias::$cmd" $argv[2..-1]
end

function g::help
    if test (count $argv) -gt 0
        echo 'g ' $argv[1] ' - ' $argv[2]
        echo 'Usage g ' $argv[1] ' [-h/--help] ' $argv[3]
    else
        echo 'g - Git shortcut + aliases'
        echo 'Usage g [-h/--help] <command> [<command args>]'
        echo ''
        echo 'Commands:'
        ### HELP:START
        ### HELP:STOP
    end
end
