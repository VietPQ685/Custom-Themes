# Custom_Oh-My-Posh

## Install Oh My Posh

```
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
```
```
sudo chmod +x /usr/local/bin/oh-my-posh
```

## Use Nerd Font
- You can skip this step if you are already using Nerd Font
> Install Nerd Font: [`JetBrainsMono Nerd Font`](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip)


## Download and Install Ohmyposh Themes
```
mkdir ~/.poshthemes
```
```
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download
```
```
themes.zip -O ~/.poshthemes/themes.zip
```
```
unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
```
```
chmod u+rw ~/.poshthemes/*.json
```
```
rm ~/.poshthemes/themes.zip
```

## Custom Themes
- You can use available themes in `~/.poshthemes` or custom themes for youself
- The following is a theme I customized myself
    - Open `~/.poshthemes` and create file `viet.omp.json`


## Use Ohmyposh Themes
- Open file `.bashrc` (path address: `~/.bashrc`)
- Write the text below to use Ohmyposh Themes
```
eval "$(oh-my-posh init bash --config ~/.poshthemes/viet.omp.json)"
```