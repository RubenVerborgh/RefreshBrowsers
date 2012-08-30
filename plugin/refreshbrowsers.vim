if exists("loaded_refreshbrowsers")
    finish
endif
let loaded_refreshbrowsers = 1

function! RefreshBrowsers()
  if &modified
    write
    silent !osascript ~/.vim/bundle/refreshbrowsers/scripts/refreshbrowsers.scpt
  endif
endfunction

"Refresh browsers when saving HTML, CSS and related files
autocmd BufWriteCmd *.html,*.erb,*.haml,*.scss,*.md,*.css,*.less :call RefreshBrowsers()
