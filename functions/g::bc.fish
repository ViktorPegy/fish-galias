function g::bc -d 'Checkout on new branch from current commit'
    argparse -s 'h/help' -- $argv ^/dev/null
    if set -q _flag_help
        _g::help bc '<branch>'
        return
    end
    if test (count $argv) -lt 1
        return (_g::err "Missing argument <branch>")
    end
    git checkout -B $argv[1]
end
