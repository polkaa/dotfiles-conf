# Dotfiles-Conf
Some dotfiles and configuration files


## Dotfiles

### Urxvt - term

Create .Xdefaults file and put your customization.
For instance :
`urxvt*depth: 32`
`urxvt*background: rgba:0000/0000/0200/c800`
to have transparant term 


## Configs

### .i3/config

- modify gaps between elements :
    - `gaps inner x` : change all gaps
    - `gaps outer x` : change only outer gaps

### Grub custom - dmenu

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

### Conky

If you use start_conky_green (see in .i3/config) :
- in order to remove the help shortcuts -> comment the line
    `conky -c /usr/share/conky/conky1.10_shortcuts_green &&`


## Others

### Nitrogen

Use it in order to change the wallpaper

### Lightdm

Use lightdm-settings to change the login screen
