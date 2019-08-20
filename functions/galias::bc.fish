function galias::bc -d "checkout on new branch from current commit"
    if test (count $argv) -lt 1
        __galias::help
        return 1
    end
    git checkout -B $argv[1] $argv[2..-1]
end
