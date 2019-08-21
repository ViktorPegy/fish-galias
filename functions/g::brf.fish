function g::brf -d 'Rebase from <base> (def master) with actualize <base>'
    argparse -s 'h/help' -- $argv ^/dev/null
    if set -q _flag_help
        _g::help brf '[<base>]'
        return
    end
    set -l branch (git rev-parse --abbrev-ref HEAD)
    test -z $branch; and return (_g::err 'Can not derermine git branch')
    test "$branch" = 'HEAD'; and return (_g::err 'On detached head')
    
    set -l base_branch $argv[3]
    test -z "$base_branch"; and set base_branch 'master'
    
    git checkout $base_branch
    and git fetch
    and git rebase
    and git checkout $branch
    and git rebase $base_branch
end

    
    ### =================================== COMMITS ===================================
    
