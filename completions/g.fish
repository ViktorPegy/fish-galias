complete -x -c g -s h -l help -d "help"

# completes for fi
_g::cpl 'g' fi 'List files with status and index'
_g::cpl 'g\s+fi' # erase all

# completes for fs
_g::cpl 'g' fs 'Stage files by index in `g fi`'
for fi_line in (g fi)
    _g::cpl 'g\s+fs' (string split -n -m 3 ' ' $fi_line)[1 3] '(\s+\d+)*'
end

# completes for fu
_g::cpl 'g' fu 'Unstage files by index in `g fi`'
for fi_line in (g fi)
    _g::cpl 'g\s+fu' (string split -n -m 3 ' ' $fi_line)[1 3] '(\s+\d+)*'
end

# completes for fa
_g::cpl 'g' fa 'Stage all files'
_g::cpl 'g\s+fa' # erase all

# completes for b
_g::cpl 'g' b 'Checkout on <branch>'
_g::cpl 'g\s+b' # erase all

# completes for bc
_g::cpl 'g' bc 'Checkout on new branch from current commit'
_g::cpl 'g\s+bc' # erase all

# completes for bf
_g::cpl 'g' bf 'Checkout on new <branch> from <base> (def master) with actualize <base>'
_g::cpl 'g\s+bf' # erase all

# completes for brf
_g::cpl 'g' brf 'Rebase from <base> (def master) with actualize <base>'
_g::cpl 'g\s+brf' # erase all

# completes for cm
_g::cpl 'g' cm 'Commit with message'
_g::cpl 'g\s+cm' # erase all

# completes for ca
_g::cpl 'g' ca 'Commit all files with message'
_g::cpl 'g\s+ca' # erase all

# completes for cu
_g::cpl 'g' cu 'Amend stages files to commit with no edit message'
_g::cpl 'g\s+cu' # erase all

# completes for re1
_g::cpl 'g' re1 'Uncommit last'
_g::cpl 'g\s+re1' # erase all

# completes for reh
_g::cpl 'g' reh 'Drop all changes'
_g::cpl 'g\s+reh' # erase all

# completes for rec
_g::cpl 'g' rec 'Drop all changes and remove untracked files'
_g::cpl 'g\s+rec' # erase all

# completes for ri
_g::cpl 'g' ri 'Rebase interactive <n> commits'
_g::cpl 'g\s+ri' # erase all

# completes for l
_g::cpl 'g' l 'Log commits with graph'
_g::cpl 'g\s+l' # erase all

# completes for ll
_g::cpl 'g' ll '`g l` with numstat'
_g::cpl 'g\s+ll' # erase all

# completes for pl
_g::cpl 'g' pl 'Pull'
_g::cpl 'g\s+pl' # erase all

# completes for plp
_g::cpl 'g' plp 'Pull & prune'
_g::cpl 'g\s+plp' # erase all

# completes for ps
_g::cpl 'g' ps 'Push'
_g::cpl 'g\s+ps' # erase all

# completes for psf
_g::cpl 'g' psf 'Force push'
_g::cpl 'g\s+psf' # erase all

# completes for pt
_g::cpl 'g' pt 'Push all tags'
_g::cpl 'g\s+pt' # erase all

