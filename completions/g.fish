complete -x -c g -s h -l help -d "help"

# completes for fi
_g::cpl 'g' fi 'List files with status and index % FILES'
_g::cpl 'g\s+' # erase all

# completes for fs
_g::cpl 'g' fs 'Stage files by index in `g fi` % FILES'
for fi_line in (g fi)
    _g::cpl 'g\s+fs' (string split -n -m 3 ' ' $fi_line)[1 3] '(\s+\d+)*'
end

# completes for fu
_g::cpl 'g' fu 'Unstage files by index in `g fi` % FILES'
for fi_line in (g fi)
    _g::cpl 'g\s+fu' (string split -n -m 3 ' ' $fi_line)[1 3] '(\s+\d+)*'
end

# completes for fa
_g::cpl 'g' fa 'Stage all files % FILES'
_g::cpl 'g\s+' # erase all

# completes for b
_g::cpl 'g' b 'Checkout on <branch> % BRANCHES'
_g::cpl 'g\s+' # erase all

# completes for bc
_g::cpl 'g' bc 'Checkout on new branch from current commit % BRANCHES'
_g::cpl 'g\s+' # erase all

# completes for bf
_g::cpl 'g' bf 'Checkout on new <branch> from <base> (def master) with actualize <base> % BRANCHES'
_g::cpl 'g\s+' # erase all

# completes for brf
_g::cpl 'g' brf 'Rebase from <base> (def master) with actualize <base> % BRANCHES'
_g::cpl 'g\s+' # erase all

# completes for cm
_g::cpl 'g' cm 'Commit with message % COMMITS'
_g::cpl 'g\s+' # erase all

# completes for ca
_g::cpl 'g' ca 'Commit all files with message % COMMITS'
_g::cpl 'g\s+' # erase all

# completes for cu
_g::cpl 'g' cu 'Amend stages files to commit with no edit message % COMMITS'
_g::cpl 'g\s+' # erase all

# completes for re1
_g::cpl 'g' re1 'Uncommit last % RESET/REBASE'
_g::cpl 'g\s+' # erase all

# completes for reh
_g::cpl 'g' reh 'Drop all changes % RESET/REBASE'
_g::cpl 'g\s+' # erase all

# completes for rec
_g::cpl 'g' rec 'Drop all changes and remove untracked files % RESET/REBASE'
_g::cpl 'g\s+' # erase all

# completes for ri
_g::cpl 'g' ri 'Rebase interactive <n> commits % RESET/REBASE'
_g::cpl 'g\s+' # erase all

# completes for l
_g::cpl 'g' l 'Log commits with graph % LOG'
_g::cpl 'g\s+' # erase all

# completes for ll
_g::cpl 'g' ll 'Log commits with graph and numstat % LOG'
_g::cpl 'g\s+' # erase all

# completes for pl
_g::cpl 'g' pl 'Pull % PUSH/PULL'
_g::cpl 'g\s+' # erase all

# completes for plp
_g::cpl 'g' plp 'Pull & prune % PUSH/PULL'
_g::cpl 'g\s+' # erase all

# completes for ps
_g::cpl 'g' ps 'Push % PUSH/PULL'
_g::cpl 'g\s+' # erase all

# completes for psf
_g::cpl 'g' psf 'Force push % PUSH/PULL'
_g::cpl 'g\s+' # erase all

# completes for pt
_g::cpl 'g' pt 'Push all tags % PUSH/PULL'
_g::cpl 'g\s+' # erase all

