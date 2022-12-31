# dotfiles
---
This will contain some of my configuration files for my system.

## NVIM
Note that to get my nvim configuration working you will need to follow a 
few steps.
1. Add init.lua to the root of your vim home. (VIMHOME)
2. Add the *vim* gruvbox theme into (VIMHOME)/colors.
3. Install all of you language analyzers with :CocInstall. Note that you
will need these.
    * node
    * npm
    * + any analyzers for languages you want to use

### Additionals
There is also a init.vim file that can be used, if you don't want to use 
lua for some weird reason.

## Awesome
This you can pretty much just slap into your awesome config. The wallpapers
.py file can be useful for changing wallpapers with nitrogen. I forget
most of what the other plugins for this do.
### Note
For this you will need the AwesomeWM installed, and also you will need 
the nitrogen wallpaper setter.
