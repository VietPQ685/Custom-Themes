# Install/Remove fastfetch
- Install fastfetch:
```
sudo apt install fastfetch
```
- Get config file:
```
fastfetch --gen-config
```
- Config file will be in `~/.config/fastfetch`


# Add/Remove fastfetch
- In Folder home, find file `.bashrc`
- Write the following text at the end of the file to display fastfetch when opening Terminal
```
fastfetch
```
- Delete `fastfetch` if you want to remove it


# Costum fastfetch
- In `.config`, open `fastfetch` and open `config.jsonc` to custom fastfetch
- Copy this file [custom_file][1] into `config.jsonc`

[1]: <https://github.com/VietPQ685/custom-themes/blob/main/Custom_fastfetch/config.jsonc>
