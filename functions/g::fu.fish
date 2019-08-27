function g::fu -d 'Unstage files by index in `g fi` % FILES'
    argparse -s 'h/help' -- $argv ^/dev/null
    if set -q _flag_help
        _g::help fu '<idx> [<idx>...]'
        return
    end
    set -l fi (g fi | awk -F' ' '{ print $3 }')
    for idx in $argv
        if not string match -qr '\d+' $idx
            echo "WARNING: index must be integer: $idx"
            continue
        end
        if test -z "$fi[$idx]"
            echo "WARNING: no files with index: $idx"
            continue
        end
        git reset -q HEAD $fi[$idx]
    end
    g fi
end
