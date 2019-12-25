function g::s -d 'Git short status % STATUS/FILES'
    argparse -s 'h/help' -- $argv ^/dev/null
    if set -q _flag_help
        _g::help s '[<git status args>]'
        return
    end
    git status --short --branch $argv
end
