# dotfiles

# Set-up
```zsh
# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install iterm2 zsh git neovim hugo maven jenv rectangle vscodium intellij-idea-ce asimov source-highlight zsh-autosuggestions zsh-syntax-highlight

git clone --recurse-submodules https://github.com/cooltea713705/dotfiles.git .dotfiles

echo "source ~/.dotfiles/.zshrc" >> .zshrc

```
