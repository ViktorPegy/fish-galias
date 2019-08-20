function galias::fs -d "stage file by idx"
    for idx in $argv
        if not string match -qr '\d+' $idx
            echo "WARNING: index must be integer: $idx"
            continue
        end
        git add (g st | sed -n {$idx}p | awk -F' ' '{ print $3 }')
    end
    g st
end
