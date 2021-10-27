# dotfiles

# Pre-requisites

* If not already done: [generate git ssh key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

* [Install MesloLGS font](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k)

* Run the following commands:

```zsh
# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add brew to path
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USER/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install stuffs
brew install iterm2 zsh git neovim maven jenv rectangle vscodium asimov source-highlight zsh-autosuggestions zsh-syntax-highlighting

# Start asimov
sudo brew services start asimov

# Plug brew git onto key chain
git config --global credential.helper osxkeychain
``` 

# Set-up
```zsh
git clone --recurse-submodules https://github.com/cooltea713705/dotfiles.git ~/.dotfiles

echo -e "\nsource ~/.dotfiles/.zshrc" >> ~/.zshrc
```

**Note:** might need to tweak paths to `zsh-autosuggestions` and `zsh-syntax-highlighting` depending on where `brew` has installed them

# Extra

## iTerm2

* Preferences > Appearance > General > Exclude from Dock... + ... but only if all windows are hotkey windows
* Import profiles, set 'Opening from Dock' as default and remove previous default
