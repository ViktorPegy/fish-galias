function g::l -d 'Log commits with graph'
    argparse -s 'h/help' -- $argv ^/dev/null
    if set -q _flag_help
        _g::help l '[<git log args>]'
        return
    end
    git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit -5 $argv
end

    
