function g::plp -d 'Pull & prune'
    argparse -s 'h/help' -- $argv ^/dev/null
    if set -q _flag_help
        _g::help plp '[<git pull args>]'
        return
    end
    git pull -p $argv
end
