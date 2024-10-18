# Custom_VSCode

- Open `VSCode` and go to `Settings` (`Ctrl + ,`)
- Clink `Open Settings (JSON)`
- Open file [`settings`](https://github.com/VietPQ685/custom-themes/blob/main/Custom_VSCode/settings.json) copy all and paste to file `settings.json`
- Create file `custom.css` in `C:/Users/phungviet/Documents/vscode/custom`
- Open file [`custom`](https://github.com/VietPQ685/custom-themes/blob/main/Custom_VSCode/custom.css) copy all and paste to file `custom.css`


# Some necessary Extensions

- Download file [`extensions`](https://github.com/VietPQ685/Custom-Themes/blob/main/Custom_VSCode/extensions.json) and paste into any `.vscode` folder
- Open .vscode folder in VSCode and go to Extensions, download extensions in `RECOMMENDED`

### How to get name of extensions
- Run the following command in CMD or PowerShell
```
code --list-extensions > extensions.txt
```
- Open extensions.txt in your current directory, inside is your VSCode Extensions list

## Fix some errors
- Markdown files cannot be typed in Vietnamese
  - Use `Ctrl + K + S`, find `markdown.extension.onBackspaceKey` and delete it
