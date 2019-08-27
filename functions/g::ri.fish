function g::ri -d 'Rebase interactive <n> commits % RESET/REBASE'
    argparse -s 'h/help' -- $argv ^/dev/null
    if set -q _flag_help
        _g::help ri '<n>'
        return
    end
    if test (count $argv) -lt 1
        return (_g::err "Missing argument <n>")
    end
    git rebase -i HEAD~$argv[1]
end
