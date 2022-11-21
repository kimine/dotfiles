function zapdf 
    set -l pdfpath (fd -a -e "pdf" -e "epub" . "$HOME/OneDrive/ebook"| fzf)
    if test -n "$pdfpath"
        nohup zathura $pdfpath > /dev/null 2>&1 &
    end
end
