#!/bin/sh

# install homebrew first as it installs xcode as well to use git!
if ! command -v brew &> /dev/null
then
    echo 'brew must be installed! (/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)")'
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew already installed. Getting updates..."
    brew update
    brew doctor
fi

# Create directory if it doesn't exist
mkdir -p ~/.local/bin

# Download yadm
curl -sfLo ~/.local/bin/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm

# Give execute permissions to yadm
chmod a+x ~/.local/bin/yadm

# Clone dotfiles repository
~/.local/bin/yadm clone --bootstrap -f https://github.com/marcogreiveldinger/.dotfiles.git

# Run yadm bootstrap
~/.local/bin/yadm bootstrap

# Clean up by removing yadm
rm -rf ~/.local/bin/yadm

echo "Dotfiles setup completed!"
