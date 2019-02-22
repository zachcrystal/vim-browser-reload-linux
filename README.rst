========================
browser-reload-linux.vim
========================

Description
=====================

Vim plugin to reload your browser. 
This is a linux compatible version inspired by the mac version https://github.com/tell-k/vim-browsereload-mac


Required
=====================

xdotool
::

  sudo pacman -S xdotool


Usage
=====================

browser reload::

 :FirefoxReload     //reload "Firefox"

start auto reload::

 :FirefoxReloadStart  

stop auto reload::

 :FirefoxReloadStop

Settings
=====================

By default, after reload browser focus will retain back to the vim window.

If you want to stop returnApp and keep the focus on the browser, 
change variable "g:returnAppFlag" to 0

::

 "default is 1
 let g:returnAppFlag = 1

If you want old style commad, write this setting in your .vimrc

::

 "reload
 command! -bar Fr silent FirefoxReload
 "auto reload start
 command! -bar FrStart silent FirefoxReloadStart
 "auto reload stop
 command! -bar FrStop silent FirefoxReloadStop
