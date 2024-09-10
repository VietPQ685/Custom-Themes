# custom-VSCode

> Đây là những plug custom NVim của Việt, nó được dựa trên các custom của Vũ Nguyễn Coder và Neural Nine

> Đây là link video Youtube của Vũ Nguyễn Coder: `https://youtu.be/Tp8i1EHsQ1Q?si=Kwv3cmigrQ8rG_wO`

> Đây là link video Youtube của NeuralNine: `https://youtu.be/JWReY93Vl6g?si=r6aDK_4rlVAFeEob`


# Sau đây là các bước hướng dẫn
- Cài `NeoVim` (có thể xem hướng dẫn trên mạng tùy theo hệ điều hành mà có các cách tải khác nhau)
- Trước hết tạo Folder `nvim` (\*\*ví dụ\*\* đường dẫn: `~/.config/nvim` hoặc `AppData/Local/nvim`)
- Tải các File `init.vim`, `coc_settings.json` và Foler `settings` và để tất cả vào Folder `nvim` bên trên
- Trong Folder `nvim` tạo một Folder `plugged`
- Sau đó cài `git`, `nodejs`, `python` (có thể xem hướng dẫn trên mạng vẫn ok)
- Tiếp đến là cài Vim-Plug, vào link `https://github.com/junegunn/vim-plug` và kéo xuống phần `Installation`, xong cài theo hệ điều hành đang dùng
- Sau đó vào File `init.vim` bên trong Folder `nvim` đã tạo bằng nvim (\*Ví dụ\*: `nvim ~/.config/nvim/init.vim` đây là dòng lệnh mở File init.vim bằng nvim ở bên trong Kali Terminal)
- Gõ `:PlugInstall` để tải các plugin (`:PlugUpdate` để update các plugin, `:PlugClean` để xóa các plugin không dùng)

  ### Nhớ phải thay đổi các đường dẫn bên trong File `init.vim` nha!!!
