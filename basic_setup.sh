#!/bin/zsh

# Cloudsetup URL
Cloudsetup_URL="https://raw.githubusercontent.com/Axomortal/Cloudsetup/main"


# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Check if the installation was successful
if [[ $? -eq 0 ]]; then
    echo "Oh My Zsh installed successfully!"
else
    echo "There was an error installing Oh My Zsh."
fi

# Install neovim
sudo apt install neovim

# Install vim-plug for neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Check if the installation was successful
if [[ $? -eq 0 ]]; then
    echo "Vim-Plug installed successfully!"
else
    echo "There was an error installing Vim-Plug."
fi


# check if ~/.config/nvim/init.vim exists
touch ~/.config/nvim/init.vim

if [[ $? -eq 0 ]]; then
    # Download the file using curl
    curl -fsSL "$Cloudsetup_URL/full_plug_init.vim" -o "~/.config/nvim/init.vim"
    # Check if the download was successful
    if [[ $? -eq 0 ]]; then
        echo "Downloaded init.vim successfully, opening vim and installing plugins."
        nvim -c ':PlugInstall'
        echo "Setup Complete"
    else
        echo "Failed to download init.vim ."
    fi
else
    echo "no /.config/nvim exists or is not accessible"
fi
