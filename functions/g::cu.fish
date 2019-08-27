function g::cu -d 'Amend stages files to commit with no edit message % COMMITS'
    argparse -s 'h/help' -- $argv ^/dev/null
    if set -q _flag_help
        _g::help cu ''
        return
    end
    git commit --amend --no-edit
end
