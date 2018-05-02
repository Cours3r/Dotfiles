# Dotfiles

This repository if my collection of dotfiles for running arch and openbox or i3-gaps. The majority are copied from other users from r/unixporn and tweaked for my personal use, with a few that I wrote myself.

### Included

i3 - config file for i3-gaps

-> location: ~/.config/i3/

lockscreen - lock2.sh and icon, used to lock screen in openbox and i3-gaps

-> location: ~/.xlock/

Mouse - libinput config for touchpad on laptop

location -> /etc/X11/xorg.conf.d 

openbox - my openbox config files (rc.xml, autostart, enviorment, menu.xml)

-> location: ~/.config/openbox/

termite - config file for termite terminal emulator

-> location: ~/.config/termite/

tint2 - task bar from tint2

-> location: ~/.config/tint2/

zsh - my custom zsh prompt & .zshrc

-> location: .zshrc -> ~/

.             theme -> ~/.oh-my-zsh/custom/themes/

X - Xresources config for dracula theme for rofi, urxvt and other applications

-> location: .Xresources -> ~/.Xresources

alacritty - config for alacritty, dracula colors

-> location: alacritty.yml -> ~/.config/alacritty/

git - my git config

-> location: .gitconfig -> ~

nvim - my neovim, heavily from keiththomps, with plugins, functions, and other helpful configurations

-> location: init.vim -> ~/.config/nvim/

st - config.h for st with alpha value set and dracula color schemes

-> Apply scrollback, clipboard, and alpha patches, then build using custom config.h header

tmux - tmux config, heavily from keiththomps. Most keybinds are vim + alt key

-> location: .tmux.conf -> ~

### Bugs/Issues:

* Lock screen image doesn't scale, on a larger monitor it will require a manual resize
* nvim + tmux + dracula breaks italics fonts in all terminals, highlights everything instead.

### Acknowledgments

* dlcgold - used his FullMetalArch config to get a starting point with openbox
* keiththomps - used his tmux & nvim configs to start with
* lukesmith - Great videos with nice setups and tutorials. Found lot's of awesome tools from his videos.


