""" The config of packages under pack

" Git {{{
try
    let s:gitgutter = g:loaded_gitgutter
catch
    let s:gitgutter = 0
endtry

if s:gitgutter
    noremap <silent> <leader>gg <ESC>:GitGutterToggle<CR>:GitGutterLineHighlightsToggle<CR>
    let g:gitgutter_enabled = 1
    let g:gitgutter_highlight_lines = 1
    let g:gitgutter_escape_grep = 1
    let g:gitgutter_realtime = 0
    let g:gitgutter_eager = 0
endif
" }}}

" Snippets {{{
try
    let s:UltiSnips = g:UltiSnipsEnableSnipMate
    let s:UltiSnips = 1
catch
    let s:UltiSnips = 0
endtry

if s:UltiSnips
    noremap <leader>us :UltiSnipsEdit<CR>
    let g:UltiSnipsEditSplit = 'vertical'
    let g:UltiSnipsNoPythonWarning = 1
    let g:UltiSnipsSnippetsDir = $HOME."/.vim/.Snippets"
    let g:UltiSnipsSnippetDirectories = [".Snippets", "UltiSnips"]
    " Local snippets directory is `.Snippets`
    " Remote snippets directory is `UltiSnips`, provided by snippets-for-vim
endif
" }}}

" vim: set shiftwidth=4 softtabstop=-1 expandtab:
" vim: foldmethod=marker foldmarker={{{,}}} foldenable:
" vim: set textwidth=80 colorcolumn=80:
