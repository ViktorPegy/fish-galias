function _g::help
    if test (count $argv) -gt 0
        set -l f_info (functions -D -v "g::$argv[1]")
        echo 'g' $argv[1] '-' (string replace -r '\s*%.*$' '' $f_info[5])
        echo 'Usage: g' $argv[1] '[-h/--help]' $argv[2]
    else
        echo 'g - Git shortcut + aliases'
        echo -e 'Usage: g [-h/--help] <command> [<command args>]'\n
        echo -e 'Commands:'\n
        set -l sections
        for al in (string match -r '^g::.*' (functions))
            set -l al_info (functions -D -v $al)
            set al_info (string trim (string split -nrm 2 '%' $al_info[5]))
            if test -z "$al_info[2]"
                set section 'OTHER'
            else
                set section (string escape --style=var $al_info[2])
                set -a sections $section
            end
            set -l al_name (string replace 'g::' '' $al)
            set -ga g_section_$section "$al_name - $al_info[1]"
        end
        set -l sections (string join \n $sections | sort | uniq)
        for sec in $sections OTHER
            set -l sec_var g_section_$sec
            if set -q $sec_var
                echo -e (string unescape --style=var $sec)":"
                string join \n $$sec_var
                echo
            end
            set -e $sec_var
        end
    end
    return 0
end
