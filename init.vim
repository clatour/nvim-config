syntax on
set encoding=utf8
set nocompatible
set diffopt=vertical

set termguicolors
set tabstop=2
set shiftwidth=2
set expandtab
set t_Co=256

colorscheme zenburn

lua require('plugins')
lua require'nvim-tree'.setup {} 

nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <C-p> <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>

let g:terraform_fmt_on_save=1

let g:airline_powerline_fonts=1
let g:airline_theme='zenburn'
let g:airline#extensions#tmuxline#enabled=0

let g:go_metalinter_command='golangci-lint'
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_fmt_autosave=1
let g:go_fmt_command='goimports'
let g:go_version_warning = 0

let g:mergetool_layout = 'mr'
let g:mergetool_prefer_revision = 'local'

nmap <leader>mt <plug>(MergetoolToggle)

lua require('lsp-plugins')
