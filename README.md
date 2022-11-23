# Personal Dotfiles

### Current Setup

- **OS**: Arch Linux
- **DE**: KDE Plasma, bspwm
- **Terminal Emulator**: Kitty
- **Shell**: zsh
- **Code Editor**: Neovim, Sublime Text 4
- **Terminal Multiplexer**: tmux
- **Application Launcher**: rofi

##### External Dependencies

In order for everything to work correctly, the following packages should be installed. Most of them can be installed via the distribution package manager.

- ripgrep
- fd
- fzf
- zoxide
- zsh-syntax-highlighting

### Installation

```sh
$ git clone https://github.com/andrmantz/Dotfiles.git
$ cd Dotfiles/

# Use stow to manage dotfiles easily

# Use stow */ to symlink everything.
$ stow */

# Or symlink a specific config
$ stow zsh
```
