    "=========================================================
" File:        browser-reload-linux.vim
" Author:      lordm <lordm2005[at]gmail.com>
" Last Change: 20-Feb-2014.
" Version:     1.2
" WebPage:     https://github.com/lordm/vim-browser-reload-linux
" License:     BSD
"==========================================================
"

if !exists('g:returnAppFlag')
    let g:returnAppFlag = 1
endif

function! s:ReloadBrowser(browser, ...)
    let l:currentWindow = substitute(system('xdotool getactivewindow'), "\n", "", "")

    " let l:activateCommand = " windowactivate "

    " if (a:0 == 1) "If using grep window title method
    "     let l:searchArgs = "--name " . "'" . a:1 . ".*" . a:browser . "'"
    " else
    "     let l:searchArgs = "--class " . "'" . a:browser . "'"
    " endif

    exec "silent ! xdotool search --onlyvisible --classname Navigator windowactivate --sync key ctrl+r"

    if g:returnAppFlag
        exec "silent ! xdotool windowactivate " . l:currentWindow
    endif
    redraw!
endfunction

" Firefox
command! -bar FirefoxReload call s:ReloadBrowser("Firefox")
command! -bar FirefoxReloadStart FirefoxReloadStop | autocmd BufWritePost <buffer> FirefoxReload
command! -bar FirefoxReloadStop autocmd! BufWritePost <buffer>
