function g::cm -d 'Commit with message'
    argparse -s 'h/help' -- $argv ^/dev/null
    if set -q _flag_help
        _g::help cm '<message>'
        return
    end
    if test (count $argv) -lt 1
        return (_g::err "Missing argument <message>")
    end
    git commit -m $argv[1]
end
