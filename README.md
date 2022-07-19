# dotfiles

# Pre-requisites

* [Generate git ssh key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

* [Install MesloLGS font](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k)

* Run the following commands:

```zsh
# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add brew to path
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USER/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# brew autoupdate
brew autoupdate start

# Set up git
brew install git

# Plug brew git onto key chain
git config --global credential.helper osxkeychain

# Clone dotfiles
git clone --recurse-submodules git@github.com:cooltea713705/dotfiles.git ~/.dotfiles

# Install stuffs
brew bundle --file=~/.dotfiles

# Start asimov
sudo brew services start asimov

``` 

* Configure git author

# Complete Set-up
```zsh
echo -e "\nsource ~/.dotfiles/.zshrc" >> ~/.zshrc
```

## iTerm2

* Preferences > General > Preferences > Load preferences from a custom folder: ~/.dotfiles  
* (if not already done) Preferences > Appearance > General > Exclude from Dock... + ... but only if all windows are hotkey windows
* (if not already done) Import profiles, set 'Opening from Dock' as default and remove previous default
