function zapdf 
    set -l pdfpath (fd -a -e "pdf" -e "epub" . "$HOME/OneDrive/ebook"| fzf)
    if test -n "$pdfpath"
        zathura $pdfpath > /dev/null 2>&1 & disown
    end
end
