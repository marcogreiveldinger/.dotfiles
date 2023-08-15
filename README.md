# .dotfiles
My dotfile configurations

## Prerequisites:
- [Homebrew](https://brew.sh/)
- Xcode Command Line Tools (will be installed by homebrew)

To install yadm temporarily, then clone the .dotfiles repo and bootstrap the system, run the following command:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

curl -sL https://github.com/marcogreiveldinger/.dotfiles/raw/main/pre_bootstrap.sh | bash
```