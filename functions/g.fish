function g -d "Git shortcut + aliases"
    argparse -s 'h/help' -- $argv
    if set -q _flag_help; _g::help; return; end

    set -l cmd $argv[1]
    if test -z "$cmd"
        return (_g::err "missing parameter <command>")
    end
    
    if not functions -q "g::$cmd"
        return (_g::err "unknown command '$cmd'")
    end

    git rev-parse --git-dir >/dev/null ^&1
    if test $status -ne 0
        echo 'FATAL: Not a git repository.'
        return $status
    end

    eval "g::$cmd" (string escape -- $argv[2..-1])
end




