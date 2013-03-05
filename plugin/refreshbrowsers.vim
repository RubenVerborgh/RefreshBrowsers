if exists("loaded_refreshbrowsers")
    finish
endif
let loaded_refreshbrowsers = 1

function! RefreshBrowsers()
  if &modified
    write
    silent !~/.vim/bundle/refreshbrowsers/scripts/refreshbrowsers.sh
  endif
endfunction

"Refresh browsers when saving HTML, CSS and related files
autocmd BufWriteCmd *.html,*.erb,*.haml,*.scss,*.md,*.css,*.less :call RefreshBrowsers()
