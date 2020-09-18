""" Optixal's Neovim Init.vim
"=========================================================
"===================== Plugins ===========================
"=========================================================
call plug#begin()

" Aesthetics - Main
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/rainbow_parentheses.vim'

" Color Schemes
Plug 'nightsense/nemo'
Plug 'herrbischoff/cobalt2.vim'
Plug 'dracula/vim', { 'commit': '147f389f4275cec4ef43ebc25e2011c57b45cc00' }
Plug 'nightsense/forgotten'

" Functionalities
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'vim-scripts/restore_view.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'PhilRunninger/nerdtree-visual-selection'
" Plug 'airblade/vim-gitgutter'
Plug 'alvan/vim-closetag'
Plug 'AndrewRadev/tagalong.vim'
Plug 'qpkorr/vim-bufkill'
Plug 'metakirby5/codi.vim'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'alvan/vim-closetag'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'sheerun/vim-polyglot'
Plug 'chrisbra/Colorizer'
Plug 'heavenshell/vim-pydocstring'
Plug 'vim-scripts/loremipsum'
Plug 'metakirby5/codi.vim'
Plug 'dkarter/bullets.vim'
" tsx plugs
Plug 'ianks/vim-tsx'
Plug 'leafgarland/typescript-vim'

" Entertainment
"Plug 'ryanss/vim-hackernews'

call plug#end()

""" Python3
let g:python3_host_prog = expand('/Users/cbaby/.pyenv/shims/python')
""" Python2
let g:python_host_prog = '/usr/local/bin/python2'
""" Node
let g:node_host_prog = '/Users/cbaby/.nvm/versions/node/v12.16.0/bin/neovim-node-host'
""" Ruby
let g:loaded_ruby_provider = 0 "off

""" Coloring
syntax on
color dracula
" highlight Pmenu guibg=white guifg=black gui=bold
highlight Pmenu guifg=black gui=bold
highlight Comment gui=bold
highlight Normal gui=none
highlight NonText guibg=none

" Opaque Background (Comment out to use terminal's profile)
set termguicolors

" Transparent Background (For i3 and compton)
highlight Normal guibg=NONE ctermbg=NONE
highlight LineNr guibg=NONE ctermbg=NONE

""" Other Configurations
filetype plugin indent on
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set ruler laststatus=2 showcmd showmode
set list listchars=trail:»,tab:»-
set fillchars+=vert:\
set wrap breakindent
set encoding=utf-8
set number
set title

"============ Plugin Configurations ============

" Restore_view
set viewoptions=cursor,folds,slash,unix
"let g:skipview_files = ['*\.vim']
" autocmd BufWrite *.* mkview
" autocmd BufRead *.* silent! loadview

" NERDTree
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '↠'
let g:NERDTreeDirArrowCollapsible = '↡'

" Bufferline
let g:bufferline_echo=0
let g:bufferline_show_bufnr=0
let g:bufferline_active_buffer_left= '['
let g:bufferline_active_buffer_right= ']'
let g:bufferline_modified= '+'
" Airline
let g:airline_powerline_fonts               = 1
let g:airline_section_z                     = ' %{strftime("%-I:%M %p")}'
let g:airline_section_warning               = ''
"let g:airline#extensions#tabline#enabled    = 1
"let g:airline#extensions#tabline#fnamemod   = ':t'
let g:airline#extensions#coc#enabled        = 1
"let g:airline#extensions#tabline#formatter  = 'unique_tail_improved'
let g:airline#extensions#coc#error_symbol   = 'X'
let g:airline#extensions#coc#warning_symbol = '!'
" let g:airline#extensions#coc#format_err  = ''

" Neovim :Terminal
tmap <Esc> <C-\><C-n>
tmap <C-w> <Esc><C-w>
"tmap <C-d> <Esc>:q<CR>
autocmd BufLeave term://* stopinsert

" EasyAlign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" indentLine
let g:indentLine_char = '▏'
let g:indentLine_color_gui = '#363949'

" TagBar
let g:tagbar_width = 30
let g:tagbar_iconchars = ['↠', '↡']

" fzf-vim
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'Type'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Character'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
let $FZF_DEFAULT_OPTS="--preview '[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --style=numbers --color=always {} || highlight -O ansi -l {} || coderay {} || rougify {} || cat {}) 2> /dev/null'"
let g:fzf_layout = { 'down': '40%' }

""" Filetype-Specific Configurations

" HTML, XML, Jinja, etc.
autocmd FileType python nmap <leader>x :0,$!~/.config/nvim/env/bin/python -m yapf<CR>
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType xml setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango inoremap {{ {{  }}<left><left><left>
autocmd FileType htmldjango inoremap {% {%  %}<left><left><left>
autocmd FileType htmldjango inoremap {# {#  #}<left><left><left>
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2

""" Custom Functions

" Trim Whitespaces
function! TrimWhitespace()
    let l:save = winsaveview()
    %s/\\\@<!\s\+$//e
    call winrestview(l:save)
endfunction

""" Custom Mappings

let mapleader=" "
nmap <leader>q :BD<CR>
nmap <leader>w :noa w<CR>
nmap <leader>pw :pwd<CR>
nmap \ :NERDTreeToggle<CR>
"nmap <leader>w :TagbarToggle<CR>
"nmap <leader>ea :AirlineTheme
nmap <leader>r :so ~/.config/nvim/init.vim<CR>
nmap <leader>t :call TrimWhitespace()<CR>
"xmap <leader>a gaip*
"nmap <leader>a gaip*
" nmap <leader>vs <C-w>v<C-w>l:terminal<CR>
nmap <leader>d <Plug>(pydocstring)
nmap <leader>co :Colors<CR>
nmap <leader>f :Files<CR>
nmap <leader>L :Lines<CR>
nmap <leader>l :BLines<CR>
nmap <leader><leader>b :Buffers<CR>
nmap <leader>cm :BCommits<CR>
nmap <leader>g :Goyo<CR>
nmap <leader>pre :MarkdownPreview<CR>
nmap gs <Plug>(coc-git-chunkinfo)
"nmap <leader>h :RainbowParentheses!!<CR>
"nmap <leader>j :set filetype=journal<CR>
"nmap <leader>k :ColorToggle<CR>
"nmap <leader>l :Limelight!!<CR>
"xmap <leader>l :Limelight!!<CR>
nnoremap<Tab> :bnext<CR>
nnoremap<S-Tab> :bprevious<CR>
nnoremap<leader>bd :%bd!<CR>

" =========================================================
" =============== stuff I added, not organized ============
" =========================================================
" Core
set number relativenumber
map <esc> :noh<cr>
nnoremap ; :

if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif

" autosave/unlimited undo
set autowriteall
set noswapfile
au FocusLost * silent! wa

if has('persistent_undo')
    set undolevels=5000
    set undodir="$HOME/.config/nvim/.NVIM_UNDO_FILES"
    set undofile
endif

"================================================
"=============== View/Navigation ===============
"================================================
" Splits/Panels
set splitbelow
set splitright
nnoremap <leader>sp :split<CR>
nnoremap <leader>vs :vs<CR>
nnoremap <leader>sw <C-w>r
nnoremap <leader>ee <C-w>=
nnoremap <leader>j <C-w><C-w>
nnoremap <leader><leader> <C-w>
nnoremap L 15j
nnoremap H 15k
nnoremap U <C-r>
nnoremap E $
nnoremap B ^
" Folding
nnoremap <expr> <f9> &foldlevel ? 'zM' :'zR'
nnoremap <f8> zA


" Vim-Devicons --------------------------------------------------------------{{{

  let g:NERDTreeGitStatusNodeColorization = 1
  " 
  let g:webdevicons_enable_denite = 0
  let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
  let g:DevIconsEnableFoldersOpenClose = 1
  let g:WebDevIconsOS = 'Darwin'
  let g:WebDevIconsUnicodeDecorateFolderNodes = 1
  let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols         = { } " needed
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js']   = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['tsx']  = 'ﯤ'
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['ts']   = 'ﯤ'
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['vim']  = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['css']  = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['json'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md']   = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['sql']  = ''

" }}}

let g:NERDTreeShowIgnoredStatus = 1  "enables ignored highlighting
let g:NERDTreeGitStatusNodeColorization = 1  "enables colorization
let g:NERDTreeGitStatusWithFlags = 1  "enables flags, (may be default), required for colorization
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
highlight link NERDTreeGitStatusIgnored Comment  "custom color

set guicursor+=n-v-c:blinkon1
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
              \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
              \,sm:block-blinkwait0-blinkoff0-blinkon1

"==================Markdown preview===================
let g:mkdp_auto_close=0
let g:mkdp_refresh_slow=1
let g:markdown_syntax_conceal = 0

"===============a lot of coc.nvim config===============
let g:coc_global_extensions = [
  \ 'coc-css',
  \ 'coc-html',
  \ 'coc-stylelint',
  \ 'coc-emmet',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-git',
  \ ]
" from readme
" if hidden is not set, TextEdit might fail.
set hidden
" Some servers have issues with backup files, see #649 set nobackup set nowritebackup "Better display for messages
set cmdheight=2
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Or more vscode like behavior:
nmap <expr> <silent> <C-d> <SID>select_current_word()
function! s:select_current_word()
  if !get(g:, 'coc_cursors_activated', 0)
    return "\<Plug>(coc-cursors-word)"
  endif
  return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
endfunc

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" if has('patch8.1.1068')
"   " Use `complete_info` if your (Neo)Vim version supports it.
"   inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
" else
"   imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" endif

" Use `[g` and `]g` to navigate diagnostics
"nmap <silent> [g <Plug>(coc-diagnostic-prev)
"nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
" autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)
nmap <F3> <Plug>(coc-references)

" Remap for format selected region
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)

" augroup mygroup
"   autocmd!
"   " Setup formatexpr specified filetype(s).
"   autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"   " Update signature help on jump placeholder
"   autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
" augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
"xmap <leader>a  <Plug>(coc-codeaction-selected)
"nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
"nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
"nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
"xmap if <Plug>(coc-funcobj-i)
"xmap af <Plug>(coc-funcobj-a)
"omap if <Plug>(coc-funcobj-i)
"omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
"nmap <silent> <C-d> <Plug>(coc-range-select)
"xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
" command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
" command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
" command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
"nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
"nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
"nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
"nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
"nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
"nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
"nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
"nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
"
"
" obnoxious red error warning
hi CocUnderline gui=underline term=underline
hi CocErrorHighlight ctermfg=red  guifg=#c4384b gui=underline term=underline
hi CocWarningHighlight ctermfg=yellow guifg=#c4ab39 gui=underline term=underline

" fold settings
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=4
nnoremap fo zo
nnoremap fc zc
