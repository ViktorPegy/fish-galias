function __galias::help -d 'Show help for galias ot its commands'
    set -l from_func (string match -qr '^in function "galias::(.*)"$' (status -t))
    if test -n $from_func
        set func_info (functions -D -v "galias::$from_func[2]")
        echo 'g ' $func[2] ' - ' $func_info[5]
        echo 'Usage g ' $func[2] ' [-h/--help] ' $help_args[1]
        if test (count $help_args) -ge 2
            echo ''
            string join \n $help_args[2..-1]
        end
    else
        set func_info (functions -D -v g)
        echo 'g - ' $func_info[5]
        echo 'Usage g [-h/--help] <command> [<command args>]'
        echo ''
        echo 'Commands:'
        for al in (string match -r '^galias::.*' (functions))
            set -l al_info (functions -D -v $al)
            echo (string replace 'galias::' '' $al) ' - ' $al_info[5]
        end
    end
end
