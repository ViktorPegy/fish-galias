function g::psf -d 'Force push'
    argparse -s 'h/help' -- $argv ^/dev/null
    if set -q _flag_help
        _g::help psf '[<git push args>]'
        return
    end
    git push -f $argv
end

    
