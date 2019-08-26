function g::fi -d 'List files with status and index'
    argparse -s 'h/help' -- $argv ^/dev/null
    if set -q _flag_help
        _g::help fi ''
        return
    end
    git -c color.status=always status --untracked-files=all -s | env LC_COLLATE=C sort -b -k2 | awk '{print NR, $0}'
end
