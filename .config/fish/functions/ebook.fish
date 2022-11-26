function ebook 
    set pwd (pwd)
    set book_dir "$HOME/OneDrive/ebook"
    cd $book_dir
    set chosen_book_path (fd -e "pdf" -e "epub" . . | rofi -dmenu -i -p "choose book:)") 
    if test -n "$chosen_book_path"
        nohup zathura $chosen_book_path > /dev/null 2>&1 &
    end
    cd $pwd
end
