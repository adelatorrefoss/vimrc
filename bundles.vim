" Bundels declaration
Bundle 'tpope/vim-fugitive'
Bundle 'ack.vim'
Bundle 'AutoComplPop'
Bundle 'ctrlp.vim'
Bundle 'EasyMotion'
Bundle 'tpope/vim-fugitive'
Bundle 'Gundo'
Bundle 'vim-less'
Bundle 'loremipsum'
Bundle 'matchit.zip'
Bundle 'snipMate'
Bundle 'sparkup'
Bundle 'surround.vim'
Bundle 'Tagbar'
Bundle 'tComment'
Bundle 'wokmarks.vim'
Bundle 'rebtags'
Bundle 'kchmck/vim-coffee-script'
Bundle 'vundle'
Bundle 'grails-vim'
Bundle 'nerdtree'

" Bundels Configuration

" CTRLP Configuration
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_open_new_file = 't'
let g:ctrlp_open_multiple_files = 't'
let g:ctrlp_max_depth = 40
let g:ctrlp_max_height = '20'
let g:ctrlp_us_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
                         \ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']
" Easymotion configuration
let g:EasyMotion_leader_key = '\'

" Vim-Coffee-Script
autocmd BufNewFile,BufRead *.coffee set filetype=coffee

" Tagbar
let g:tagbar_ctags_bin='/usr/bin/ctags'
nmap <F8> :TagbarToggle<CR>
let g:tagbar_type_groovy = {
  \ 'ctagstype' : 'groovy',
  \ 'kinds'     : [
  \ 'p:package',
  \ 'c:class',
  \ 'i:interface',
  \ 'f:function',
  \ 'v:variables',
  \ ]
\ } 

" NERDTree
map <S-w> :NERDTreeToggle<CR>
