function galias::st -d "list files with status and index"
    git -c color.status=always status --untracked-files=all -s | awk '{print NR, $0}'
end
