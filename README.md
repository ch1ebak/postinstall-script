# CH1EBAK'S POSTINSTALL SCRIPT
> [!NOTE]
> I've cleaned up the script and rewrote it in one file to make it more portable.

![](https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/screenshots/postinstall.png)

## What is this?
This is a collection of scripts that I wrote to make the process of reinstalling Arch easier and faster. The code is pretty ugly, but hey, this is my first script, and it works, so who cares.

> [!WARNING]
> This probably only works on Arch based distros.

## Usage
```
bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/postinstall)
```

## Modules
| Module  | Script   | Description                                                                                                                              |
| ------- | -------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Install | Core     | Installs core applications I always want to have installed, no matter which WM or editor I use. Installs Paru and modifies pacman.conf.  |
|         | Dotfiles | Clones my [dotfiles](https://github.com/ch1ebak/dotfiles) and links them to the config folder using Stow. Makes Rofi modules executable. |
|         | SDDM     | Installs SDDM and the [Astronaut](https://github.com/keyitdev/sddm-astronaut-theme) theme.                                               |
|         | Qtile    | Installs Qtile and its dependencies/applications I use on X11.                                                                           |
|         | Hyprland | Installs Hyprland and the Wayland-specific applications                                                                                  |
|         | Mango    | Installs Mango WC and the Wayland-specific applications                                                                                  |
|         | Gaming   | Installs Steam, Lutris, Nexus Mod Manager and Heroic Launcher.                                                                           |
|         | VM       | Installs Virt-manager.                                                                                                                   |
| Remove  | Remove   | Remove scripts for Hyprland, Qtile, and VM, for when I'm feeling lazy.                                                                   |
| System  | Update   | Updates Arch. Nothing fancy.                                                                                                             |
|         | Cleanup  | Cleans up unneeded dependencies, clears trash and old files.                                                                             |

> [!WARNING]
> Theme switcher no longer included - I have moved it to [scripts/rofi-utilities](https://github.com/ch1ebak/scripts/blob/main/rofi-utilities)
