function g::rec -d 'Drop all changes and remove untracked files % RESET/REBASE'
    argparse -s 'h/help' -- $argv ^/dev/null
    if set -q _flag_help
        _g::help rec '[<git reset args>]'
        return
    end
    git reset --hard $argv
    git clean -fd
end
