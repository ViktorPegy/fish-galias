function g::ll -d 'Log commits with graph and numstat % LOG'
    argparse -s 'h/help' -- $argv ^/dev/null
    if set -q _flag_help
        _g::help ll '[<git log args>]'
        return
    end
    g l --numstat $argv
end
