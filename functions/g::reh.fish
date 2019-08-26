function g::reh -d 'Drop all changes'
    argparse -s 'h/help' -- $argv ^/dev/null
    if set -q _flag_help
        _g::help reh '[<git reset args>]'
        return
    end
    git reset --hard $argv
end
