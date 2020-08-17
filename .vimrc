call plug#begin('~/.vim/plugged')
  Plug 'liuchengxu/space-vim-dark'
  Plug 'liuchengxu/vim-better-default'
  Plug 'liuchengxu/vim-which-key'
  Plug 'mhinz/vim-startify'
  Plug 'hotoo/pangu.vim'
  " JSON 格式，Filter
  Plug 'Bingbingyan/vim-jq'
  " 预览查询结果
  Plug 'osyo-manga/vim-over'

  " VIM Table Mode
  Plug 'dhruvasagar/vim-table-mode'

  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

  " 从 Insert Mode 切换到 Normal Mode 时 自动将输入法切换为英文
  " 需要将英文输入法设置为：US 而不是：ABC
  Plug 'ybian/smartim'

  Plug 'honza/vim-snippets'

  " Tagbar for Markdown
  Plug 'majutsushi/tagbar'
  Plug 'lvht/tagbar-markdown'
  Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
  Plug 'iamcco/mathjax-support-for-mkdp'
  Plug 'iamcco/markdown-preview.vim'
  Plug 'corriander/vim-markdown-indent'
  " VIM 中文文档
  Plug 'yianwillis/vimcdoc'
  " 自动括号
  Plug 'Raimondi/delimitMate'
  Plug 'alvan/vim-closetag'

  Plug 'elzr/vim-json'

  " Vim Org Mode
  Plug 'jceb/vim-orgmode'

  " 快速注释
  Plug 'scrooloose/nerdcommenter'
  " 缩进指示线
  Plug 'Yggdroot/indentLine'


  Plug 'rafi/awesome-vim-colorschemes'

  "OrgMode Date extension
  Plug 'tpope/vim-speeddating'

  "RestClient
  Plug 'Bingbingyan/vim-http-client'

  Plug 'vim-scripts/numbered.vim'

  Plug 'ianva/vim-youdao-translater'

  Plug 'roxma/vim-hug-neovim-rpc'

  Plug 'rhysd/git-messenger.vim'

  Plug 'quafzi/vim-flow-diagram'

  Plug 'lilydjwg/colorizer'

  Plug  'skywind3000/asyncrun.vim'

  Plug  'w0rp/ale'

  Plug  'Yggdroot/LeaderF'
  Plug 'junegunn/fzf',  { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'

  Plug 'ntpeters/vim-better-whitespace', { 'on': 'StripWhitespace' }

  Plug  'roxma/vim-hug-neovim-rpc'

  Plug  'tpope/vim-fugitive'
  Plug  'mhinz/vim-signify'


  Plug 'vim-airline/vim-airline-themes'
  Plug 'vim-airline/vim-airline'

  Plug  'itchyny/lightline.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'python-mode/python-mode'
call plug#end()

" 背景色透明
" hi Normal ctermbg=NONE  guibg=NONE
set timeoutlen=1000 ttimeoutlen=0
let g:mapleader = "\<Space>"
let g:maplocalleader = ","
" vim临时文件目录
set dir=~/tmp
set nu
syntax enable
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set autoread
" set nornu
set mouse=a                 " Automatically enable mouse usage
" set mousehide               " Hide the mouse cursor while typing
set background=dark
" colorscheme gruvbox
colorscheme space-vim-dark
"colorscheme solarized8_high
"colorscheme PaperColor
set hlsearch
"set guifont=Menlo\ Regular:h14
set guifont=Meslo\ LG\ S\ for\ Powerline:h12
set clipboard=unnamed
" set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME
"缩进指示线"
" let g:indentLine_char='⎸'
let g:indentLine_enabled = 1
" 竖向分屏分割线颜色、字符
set fillchars=vert:\│
hi VertSplit guifg=#e18254
" 显示不可见字符
set list
set listchars=tab:>-,trail:~,extends:>,precedes:<
" set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
" 在上下移动光标时，光标的上方或下方至少会保留显示的行数
set scrolloff=3

set expandtab
set tabstop=4
set shiftwidth=4
"set textwidth=80
set wrap
"set linebreak
" set showbreak=>
" Enable folding
set foldmethod=syntax
"set foldlevelstart=0
" 代码折叠的层级
set foldnestmax=9
"set foldlevel=0
" 使用系统剪贴板
"set clipboard=unnamed

" 搜索时忽略大小写
set ignorecase
" NERDTree 打开/关闭
nnoremap <F4> :NERDTreeToggle<CR>
nnoremap <Leader><F4> :NERDTreeFind<CR>
" NERDTree 显示行号
let g:NERDTreeShowLineNumbers=1
" NERDTree 显示相对行号
autocmd FileType nerdtree setlocal relativenumber
" 设置 NerdTree 默认宽度
let g:NERDTreeWinSize=30
let NERDTreeRespectWildIgnore=1
let g:NERDTreeIgnore=['.jar[[file]]', 'node_modules[[dir]]',  'target[[dir]]', 'node[[dir]]', '__pycache__[[dir]]','etc[[dir]]', '\.pyc$']
" let g:NERDTreeIndicatorMapCustom = {}
"     \ "Modified"  : "✹",
"     \ "Staged"    : "✚",
"     \ "Untracked" : "✭",
"     \ "Renamed"   : "➜",
"     \ "Unmerged"  : "═",
"     \ "Deleted"   : "✖",
"     \ "Dirty"     : "✗",
"     \ "Clean"     : "✔︎",
"     \ 'Ignored'   : '☒',
"     \ "Unknown"   : "?"
"     \ }


" Format Python Script
nmap <Leader>pf :0,$!yapf<CR>
set wildignore+=**node_modules**,*.pyc,*.class
"Ignore dist and build folders
set wildignore+=*/dist*/**,*/target/**,*/build/**

" Ignore libs
set wildignore+=*/lib/**,*/_3rd_party_/**,*/node_modules/**,*/bower_components/**

" Ignore images, pdfs, and font files
set wildignore+=*.png,*.PNG,*.jpg,*.jpeg,*.JPG,*.JPEG,*.pdf
set wildignore+=*.ttf,*.otf,*.woff,*.woff2,*.eot,*.jar,*.doc,*.docx,*.xls,*.xlsx

" Ignore compiled files
set wildignore+=*.class
let g:basewildignore=&wildignore
autocmd FileType python nnoremap <buffer> <LocalLeader><LocalLeader>r :update<Bar>execute 'AsyncRun! python '.shellescape(@%, 1)<CR>
autocmd FileType python nnoremap <buffer> <LocalLeader>r :update<Bar>execute 'AsyncRun! python3 '.shellescape(@%, 1)<CR>
autocmd FileType go nnoremap <buffer> <LocalLeader>r :update<Bar>execute 'AsyncRun! go run '.shellescape(@%, 1)<CR>
autocmd FileType javascript nnoremap <buffer> <LocalLeader>r :update<Bar>execute 'AsyncRun! node '.shellescape(@%, 1)<CR>
autocmd FileType sh nnoremap <buffer> <LocalLeader>r :update<Bar>execute 'AsyncRun! '.shellescape(@%, 1)<CR>
filetype indent on
filetype plugin indent on
autocmd FileType java nnoremap  <LocalLeader>r :call CompileRunGcc()<CR>


"tabs
nmap <leader>tn :tabnew<cr>
" nmap <leader>tc :tabclose<cr>

" disable arrow keys in normal mode
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>


"高亮行尾空格
highlight ExtraWhitespace ctermbg=White guibg=White
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()


" TableMode Setting
let g:table_mode_corner = '|'
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Quickfix window to Right and 80 Width
nmap <Leader>ll :cclose<CR>::botright vertical copen 70<CR>
"nmap <Leader>ll :cclose<CR>:vertical copen 70<CR>
" quick comment ss
  nmap <Leader>;; <Plug>NERDCommenterToggle
  omap <Leader>;; <Plug>NERDCommenterToggle
  vmap <Leader>;; <Plug>NERDCommenterToggle
  let g:NERDCommentEmptyLines = 1
  let g:NERDTrimTrailingWhitespace = 1
  let g:NERDCompactSexyComs = 1
  let g:NERDSpaceDelims = 1
  let g:NERDDefaultAlign = 'left'
  let g:NERDCustomDelimiters = { 'python': { 'left': '#','leftAlt': '#' } }
  let g:NERDCommentEmptyLines = 1


" function to delete duplicate lines
" 1,$!uniq
function! DelDuplicatedLines()
  while getline(".") == getline(line(".") - 1)
      exec 'norm! ddk'
  endwhile
  while getline(".") == getline(line(".") + 1)
      exec 'norm! dd'
  endwhile
endfunction


  function FormatWS()
    silent execute 's/^.\{-}\\.\\.//g'
    silent execute 's/\\u.*//g'
    silent execute 's/\\//g'
    silent execute 'call FormatJSON()'
  endfunction

"始终开启标志列
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 1
"自定义error和warning图标 需要安装字体
" let g:ale_sign_error = '✗'
" let g:ale_sign_warning = '⚡'
"在vim自带的状态栏中整合ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '•'
let g:ale_echo_msg_format = '[%linter%][%code%]: %s [%severity%]'
let g:ale_enabled = 1
let g:ale_lint_on_save = 1


" vim-better-whitespace
nnoremap <Leader>xd :StripWhitespace<CR>
nnoremap <F6> :TagbarToggle<CR>


" keybindings
" imap <C-a> <C-o>0
" imap <C-e> <C-o>$
" inoremap <C-f> <C-o>l
" inoremap <C-b> <C-o>h

nmap <Leader>q :q<CR>
nmap <Leader>Q :qa!<CR>

nnoremap <Leader>ff :Files<CR>
"inoremap <C-h> <ESC>hxi

" Make search results appear in the middle of the screen
nnoremap n nzz
nnoremap N Nzz
nnoremap G Gzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" vim-fugitive {
  nnoremap <silent> <Leader>gs :Gstatus<CR>
  nnoremap <silent> <Leader>gd :Gdiff<CR>
  nnoremap <silent> <Leader>gc :Gcommit<CR>
  nnoremap <silent> <Leader>gb :Gblame<CR>
  nnoremap <silent> <Leader>gl :Glog<CR>
  nnoremap <silent> <Leader>gp :Git push<CR>
  nnoremap <silent> <Leader>gr :Gread<CR>
  nnoremap <silent> <Leader>gw :Gwrite<CR>
  nnoremap <silent> <Leader>ge :Gedit<CR>

" coc.nvim
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=1

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" ale.vim
nmap <Leader>en <Plug>(ale_next)
nmap <Leader>ep <Plug>(ale_previous)
nnoremap <Leader>ts :ALEToggle<CR>

" 翻译当前光标所在单词
vnoremap <silent> <C-T> :<C-u>Ydv<CR>
nnoremap <silent> <C-T> :<C-u>Ydc<CR>
noremap <leader>yd :<C-u>Yde<CR>

" coc-snippets
let g:snips_author = 'Bing.B.Yan'
let g:snips_email = 'Bing.B.Yan@yzw.cn'
let g:snips_github = ''
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" fzf ag search
" Search UserHome Folder
nnoremap <Leader>f? :Files ~<CR>
" Search current CWD
nnoremap <Leader>ff :Files<CR>
nnoremap <Leader>fc :call fzf#vim#files('.', {'options':'--query '.expand('<cword>')})<CR>

nnoremap <Leader>ag :execute 'Ag! ' . input('Ag/')<CR>
" search current word with Ag
nnoremap <Leader>ac :execute 'Ag!' expand('<cword>')<CR>

" list buffers
nnoremap <silent> <Leader>bb :Buffers<CR>

" RestClient setting
let g:http_client_jcountMemberStatusson_escape_utf=0
" let g:http_client_preserve_responses=1
" let g:http_client_json_ft = 'json'
" let g:http_client_focus_output_window = 0
let g:http_client_json_escape_utf=0
let g:http_client_verify_ssl = 0
