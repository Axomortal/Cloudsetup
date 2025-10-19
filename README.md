# Shell und Utility setup

Collection of plugins and programms for shell use

## zsh shell
install zsh wiht:  
>sudo apt install zsh  

shell customisation mit [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh/wiki)  
download and run installscript with:  
>sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"  

## Editor NVIM

neovim
> sudo apt install neovim

pluginmanager [vim-plug](https://github.com/junegunn/vim-plug)  
to install for neovim := 
> sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

init.vim files move to ~/.config/nvim/init.

then i can run 
>:PlugInstall //to install Plugins  
>:PlugUpdate  //to update and install Plugins  
>:PlugDiff //for update changes  
>:PlugClean //to remove plugins no longer in init.vim  

