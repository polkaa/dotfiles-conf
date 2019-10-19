# DotFiles-Conf
Some dotfiles and configuration files


## Dotfiles



## Configs

### .i3/config

- modify gaps between elements :
    - `gaps inner x` : change all gaps
    - `gaps outer x` : change only outer gaps

## Others

### Grub custom

- Install grub-customizer by typing `sudo pacman -S grub-customizer`
- Then customize list, timeout, etc

### Rofi custom

- Install rofi by typing `sudo pacman -S rofi`
- Rofi github : https://github.com/davatorium/rofi
- If you want to add more themes : https://github.com/davatorium/rofi-themes
- Cpy \*.rasi files into /usr/share/rofi/themes
- Use the doc at : https://github.com/davatorium/rofi/wiki
- Modify Theme : https://github.com/davatorium/rofi/wiki/themes,
    do 2 the commands
- Go on rofi-theme-selector and choose your theme, validate by presing alt+a

### Nitrogen

Use it in order to change the wallpaper

### Conky

If you use start_conky_green (see in .i3/config) :
- in order to remove the help shortcuts -> comment the line
    `conky -c /usr/share/conky/conky1.10_shortcuts_green &&`
