function _g::cpl
    if test (count $argv) -gt 1
        complete -x -c g -n "_g::is_cmd '$argv[1]' '$argv[4]'" -d "$argv[3]" -a $argv[2]
    else
        complete -x -c g -n "_g::is_cmd '$argv[1]'"
    end
end
