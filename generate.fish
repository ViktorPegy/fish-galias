#!/usr/bin/env fish

set -l dir (dirname (status -f))
set -l cpl_file $dir/completions/g.fish 

echo -e 'complete -x -c g -s h -l help -d "help"'\n > $cpl_file
for file in (find $dir/functions/ -type f -name 'g::*.fish')
    rm $file
end

set -l name ''
set -l cpl_mode 0
for line in (cat "$dir/aliases.fish-tpl")
    if string match -qr '^#>>>' $line
        set -l header (string split '::' (string replace '#>>>' '' $line))
        set -l descr (string trim $header[2])
        set -l usage (string trim $header[3])
        set name (string trim $header[1])
        
        set -l func_file "$dir/functions/g::$name.fish"
        echo "function g::$name -d '$descr'" > $func_file
        echo "    argparse -s 'h/help' -- \$argv ^/dev/null" >> $func_file
        echo "    if set -q _flag_help" >> $func_file
        echo "        _g::help $name '$usage'" >> $func_file
        echo "        return" >> $func_file
        echo "    end" >> $func_file

        echo "# completes for $name" >> $cpl_file
        echo "_g::cpl 'g' $name '$descr'" >> $cpl_file
    else if test -n $name
        if string match -qr '^#<<<' $line
            echo 'end' >> "$dir/functions/g::$name.fish"
            set name ''
            if test $cpl_mode -eq 0
                echo "_g::cpl 'g\s+$name' # erase all" >> $cpl_file
            end
            echo '' >> $cpl_file
            set cpl_mode 0
        else if string match -qr '^#cpl' $line
            set cpl_mode 1
        else if test $cpl_mode -eq 1
            echo (string replace '_g::cpl' "_g::cpl 'g\s+$name'" $line) >> $cpl_file
        else
            echo "    $line" >> "$dir/functions/g::$name.fish"
        end
    end
end
