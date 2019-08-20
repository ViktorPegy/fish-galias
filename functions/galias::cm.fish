function galias::cm -d "commit with message"
    if test (count $argv) -lt 1
        echo "Usage: g cm <commit message>"
        return
    end
    git commit -m $argv[1] $argv[2..-1]
end
