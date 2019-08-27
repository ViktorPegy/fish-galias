function g::ps -d 'Push % PUSH/PULL'
    argparse -s 'h/help' -- $argv ^/dev/null
    if set -q _flag_help
        _g::help ps '[<git push args>]'
        return
    end
    git push $argv
end
