function g::bf -d 'Checkout on new <branch> from <base> (def master) with actualize <base>'
    argparse -s 'h/help' -- $argv ^/dev/null
    if set -q _flag_help
        _g::help bf '<branch> [<base>]'
        return
    end
    if test (count $argv) -lt 1
        return (_g::err "Missing argument <branch>")
    end
    set -l branch $argv[2]
    test -z "$branch"; and set branch 'master'
    
    git checkout $branch
    and git fetch
    and git rebase
    and git checkout -B $argv[1]
end
