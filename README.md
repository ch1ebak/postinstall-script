# CH1EBAK'S POSTINSTALL SCRIPT
## What is this?
This is a collection of scripts that I wrote to make the process of reinstalling Arch easier and faster. The code is pretty ugly, but hey, this is my first script, and it works, so who cares.

> [!WARNING]
> This probably only works on Arch based distros.

## Usage
```
bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/postinstall.sh)
```

## Modules
| Module  | Script   | Description                                                                                                                                 |
|---------|----------|----------------------------------------------------------------------------------------------------------------------------------------------|
| Install | Core     | Installs core applications I always want to have installed, no matter which WM or editor I use. Installs Paru and modifies pacman.conf. |
|         | Dotfiles | Clones my [dotfiles](https://github.com/ch1ebak/dotfiles) and links them to the config folder using Stow. Makes Rofi modules executable. |
|         | SDDM     | Installs SDDM and the [Astronaut](https://github.com/keyitdev/sddm-astronaut-theme) theme.                                                                                                      |
|         | Qtile    | Installs Qtile and its dependencies/applications I use on X11.                                                                              |
|         | Hyprland | Installs Hyprland and the Wayland-specific applications                                                                                     |
|         | Steam    | Installs Steam and its dependencies.                                                                                                        |
|         | Lutris   | Installs Lutris and all libraries listed in Lutris Docs.                                                                                    |
|         | VM       | Installs Virt-manager.                                                                                                                      |
| Remove  | Remove   | Remove scripts for Emacs, Neovim, Hyprland, Qtile, and VM, for when I'm feeling lazy.                                                       |
| System  | Update   | Updates Arch. Nothing fancy.                                                                                                                |
|         | Cleanup  | Cleans up unneeded dependencies, clears trash and old files.                                                                                |
| Themes  | Themes   | Changes the theme to Catppuccin, Dracula, Everforest, Grayscale, Gruvbox, Kanagawa, Spacegray, or Tokyo Night.                         |
