#!/usr/bin/fish
#

function list_pdf_onedrive
    set -l one_pdf_dir "$HOME/OneDrive/ebook"
    set -l x (fd -a -e "pdf" -e "epub" . $one_pdf_dir | rofi -dmenu -i -p "choose book:)") 
    if test -n "$x"
        nohup zathura $x > /dev/null 2>&1 &
    end
end

list_pdf_onedrive



