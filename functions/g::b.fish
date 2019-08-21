function g::b -d 'Checkout on <branch>'
    argparse -s 'h/help' -- $argv ^/dev/null
    if set -q _flag_help
        _g::help b '<branch>'
        return
    end
    if test (count $argv) -lt 1
        return (_g::err "Missing argument <branch>")
    end
    git checkout $argv[1]
end

    
