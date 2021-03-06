"Plugins

call plug#begin('~/.config/nvim/plugged')

"UltiSnips

Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltisnipsSnippetDirectories=[$HOME.'/.config/nvim/Ultisnips']
let g:UltiSnipsEditSplit="vertical"
"UltiSnips end

"Latex
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
"For forward search ; requires neovim-remote
let g:vimtex_compiler_progname = 'nvr'

Plug 'KeitaNakamura/tex-conceal.vim'
set conceallevel=1
let g:tex_conceal='abdmg'
"Latex end

"Lightline

Plug 'itchyny/lightline.vim'

"Lightline end

"goyo

Plug 'junegunn/goyo.vim'
"let g:goyo_linenr=1

"goyo end

"rust rls

Plug 'rust-lang/rust.vim'

"rust end

"Syntax checking

Plug 'vim-syntastic/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 0

let g:syntastic_mode_map = { 'passive_filetypes': ['tex'] }

"rust rls end

"rust rust-analyzer


"easy motion
Plug 'easymotion/vim-easymotion'

" Be a ninja; press space faster than an astronaut 


"nord

Plug 'arcticicestudio/nord-vim'




call plug#end()

"Plugins end


colo nord

"For some reason not set by nord
"highlight Conceal guifg=#ffffff guibg=#2E3440

"let g:airline_theme = 'nord'

" for tmux jankness https://github.com/tmux/tmux/issues/1246

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif


nmap <F12> :Goyo <CR>

"Colorscheme end

"Cursor

"Mode Settings

set guicursor=n-v-i-c:ver1

"set guicursor+=c:hor1

"highlight Cursor guifg=white guibg=black
"highlight iCursor guifg=white guibg=steelblue
"set guicursor=n-v-c:block-Cursor
"set guicursor+=i:ver100-iCursor
"set guicursor+=n-v-c:blinkon0
"set guicursor+=i:blinkwait10

" Configerations

set number

set cursorline

nmap <F9> :e! <CR>

nmap <Tab> :w <CR>

let mapleader = "\<space>"

setlocal spell
set spelllang=da,en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>
" Configerations end
