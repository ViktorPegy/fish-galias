function __galias::err -d 'Show error for command'
    echo "ERROR: $argv[1]. For help use -h/--help." 1>&2
    return 1
end
