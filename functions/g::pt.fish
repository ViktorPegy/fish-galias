function g::pt -d 'Push all tags'
    argparse -s 'h/help' -- $argv ^/dev/null
    if set -q _flag_help
        _g::help pt '[<git push args>]'
        return
    end
    git push --tags --all
end
