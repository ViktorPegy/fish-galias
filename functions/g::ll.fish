function g::ll -d '`g l` with numstat'
    argparse -s 'h/help' -- $argv ^/dev/null
    if set -q _flag_help
        _g::help ll '[<git log args>]'
        return
    end
    g l --numstat $argv
end

    
    ### =================================== STASH ===================================
    
    # #>>> sl :: List stashes
    # git stash list | sed -e 's/^stash@{\(.*\)}:.*: \(.*\)$/\1: \2/'
    # #<<<
    
    # #>>> sm :: Stash with message :: <message>
    # if test (count $argv) -lt 1
    #     return (_g::err "Missing argument <message>")
    # end
    # git stash save -q -u $argv
    # g sl
    # #<<<
    
    # #>>> sp :: Pop stash with index :: <index>
    # if test (count $argv) -lt 1
    #     return (_g::err "Missing argument <index>")
    # end
    # git stash pop "stash@{$argv[1]}"
    # #<<<
    
    # #>>> sd :: DROP! stash with index :: <index>
    # if test (count $argv) -lt 1
    #     return (_g::err "Missing argument <index>")
    # end
    # git stash drop "stash@{$argv[1]}"
    # #<<<
    
    ### =================================== PUSH/PULL ===================================
    
