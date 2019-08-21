function g::rec -d 'Drop all changes and remove untracked files'
    argparse -s 'h/help' -- $argv ^/dev/null
    if set -q _flag_help
        _g::help rec ''
        return
    end
    g reh
    git clean -fd
end

    
