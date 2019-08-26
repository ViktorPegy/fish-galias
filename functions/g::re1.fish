function g::re1 -d 'Uncommit last'
    argparse -s 'h/help' -- $argv ^/dev/null
    if set -q _flag_help
        _g::help re1 ''
        return
    end
    git reset --soft HEAD^
end
