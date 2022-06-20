<div align=center>

# nixfiles

[![NixOS](https://img.shields.io/badge/NixOS-unstable-informational.svg?logo=nixos)](https://nixos.org) ![License](https://img.shields.io/github/license/helium18/nix-dots) [![made with Neovim](https://img.shields.io/badge/made_with-Neovim-green.svg?logo=neovim)]([https://github.com/helium18/nix-dots](https://github.com/helium18/nix-dots/tree/main/home/config/neovim))

</div>
<br>
<a href="https://nixos.org/"><img alt="NixOS logo" height="160" align = "left" src="https://nixos.wiki/images/thumb/2/20/Home-nixos-logo.png/311px-Home-nixos-logo.png"></a>
<br><br>
These are NixOS configuration files (aka dotfiles) 👾. I use NixOS with i3wm as a daily driver and home-manager to manage user-configuration files.

<br><br><br><br>

<img src="https://user-images.githubusercontent.com/86223025/173177840-593bbc25-3a39-4dc4-807c-de6a982e53b1.png" alt="image showing the desktop" align="right" width="100%">


<br>

![image](https://user-images.githubusercontent.com/86223025/173177942-aecd904f-a6c9-47cc-8841-6809e41679c4.png)
![image](https://user-images.githubusercontent.com/86223025/174433416-e9248a90-64fb-41e4-a7a2-b9a83455c187.png)

### Structure

```
.
├── home
│   ├── overlays # contains overlays https://nixos.wiki/wiki/Overlays
│   ├── programs # user program configurations
│   ├── scripts # misc bash scripts
│   ├── services # user=services
│   ├── wm # wm config
│   ├── hm-conf.nix # glue b/w flake.nix & home.nix
│   ├── home.nix 
│   └── packages.nix 
└── os
    ├── machines
    │   └── hp-omen
    ├── services # privileged services
    │   ├── tlp
    │   └── xserver
    ├── users 
    ├── boot.nix # boot conf
    ├── configuration.nix 
    ├── net.nix # networking
    ├── os-conf.nix # glue b/w flake.nix & configuration.nix
    └── packages.nix
```

### Programs
| Type  | Used |
| :---:  | :---:  |
| OS  | [NixOS](https://nixos.org/)  |
| Window Manager  | [i3-gaps](https://github.com/awesomeWM/awesome) + [eww](https://github.com/elkowar/eww)|
| Terminal | [Kitty](https://sw.kovidgoyal.net/kitty/) |
| Editor | [Neovim](https://neovim.io/) |
| Shell | Zsh |
| GTK theme | [Graphite-gtk-theme](https://github.com/vinceliuice/Graphite-gtk-theme) |
