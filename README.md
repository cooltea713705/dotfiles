# dotfiles

# Pre-requisites
```zsh
# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install stuffs
brew install iterm2 zsh git neovim hugo maven jenv rectangle vscodium intellij-idea-ce asimov source-highlight zsh-autosuggestions zsh-syntax-highlight

```

# Set-up
```zsh
git clone --recurse-submodules https://github.com/cooltea713705/dotfiles.git .dotfiles

echo -e "\nsource ~/.dotfiles/.zshrc" >> .zshrc
```
