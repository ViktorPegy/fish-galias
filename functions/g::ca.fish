function g::ca -d 'Commit all files with message'
    argparse -s 'h/help' -- $argv ^/dev/null
    if set -q _flag_help
        _g::help ca '<message>'
        return
    end
    if test (count $argv) -lt 1
        return (_g::err "Missing argument <message>")
    end
    git commit -am $argv[1]
end

    
