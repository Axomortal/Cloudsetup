#!/bin/zsh

# Cloudsetup URL
Cloudsetup_URL="https://raw.githubusercontent.com/Axomortal/Cloudsetup/main"


# Install Oh My Zsh and check success
if sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"; then
    echo "Oh My Zsh installed successfully!"
else
    echo "There was an error installing Oh My Zsh."
fi

# Install neovim
sudo apt install neovim

# Install vim-plug for neovim and check success
if sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'; then
    echo "Vim-Plug installed successfully!"
else
    echo "There was an error installing Vim-Plug."
fi


# check if ~/.config/nvim/init.vim exists
if touch ~/.config/nvim/init.vim; then
    # Download the file using curl   
    if curl -fsSL "$Cloudsetup_URL/full_plug_init.vim" -o "$HOME/.config/nvim/init.vim"; then
        echo "Downloaded init.vim successfully, opening vim and installing plugins."
        nvim -c ':PlugInstall'
        echo "Setup Complete"
    else
        echo "Failed to download init.vim ."
    fi
else
    echo "no /.config/nvim exists or is not accessible"
fi
