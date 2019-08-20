#!/usr/bin/env fish

set -l aliases
set -l aliases_names

set -l dir (dirname (status -f))

for line in (cat "$dir/aliases.fish-tpl")
    if string match -qr '^##' $line
        set -a aliases 'end'
        set -a aliases ''
    else if string match -qr '^#' $line
        set -l header (string split '::' (string replace '#' '' $line))
        set -l name (string trim $header[1])
        set -l descr (string trim $header[2])
        set -l usage (string trim $header[3])
        set -a aliases_names $name
        set -a aliases "function g::$name"
        set -a aliases "    argparse -s 'h/help' -- \$argv"
        set -a aliases "    if set -q _flag_help; g::help $name '$descr' '$usage'; return; end"
    else
        set -a aliases "    $line"
    end
end
