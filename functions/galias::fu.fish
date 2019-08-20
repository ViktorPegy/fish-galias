function galias::fu -d "unstage file by idx"
    for idx in $argv
        if not string match -qr '\d+' $idx
            echo "WARNING: index must be integer: $idx"
            continue
        end
        git reset HEAD (g st | sed -n {$idx}p | awk -F' ' '{ print $3 }')
        g st
    end
end
