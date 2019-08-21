function g::fa -d 'Stage all files'
    argparse -s 'h/help' -- $argv ^/dev/null
    if set -q _flag_help
        _g::help fa ''
        return
    end
    git add -u
    git add .
    g fi
end

    
    ### =================================== BRANCHES =====================================
    
