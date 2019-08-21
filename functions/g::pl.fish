function g::pl -d 'Pull'
    argparse -s 'h/help' -- $argv ^/dev/null
    if set -q _flag_help
        _g::help pl '[<git pull args>]'
        return
    end
    git pull $argv
end

    
