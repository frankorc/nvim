" Leader Key Maps 

" Timeout
let g:which_key_timeout = 100

let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'

" Coc Search & Replace
nnoremap <leader>? :CocSearch -C 1 <C-R>=expand("<cword>")<CR><CR>
let g:which_key_map['?'] = 'Search and Replace'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0
let g:which_key_max_size = 0

" Change the colors if you want
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKey          Operator
highlight default link WhichKeyGroup     Function
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['e'] = [ ':NERDTreeFind'                     , 'NERDTreeFind' ]
let g:which_key_map['q'] = [ 'quit'                               , 'Quit' ]
let g:which_key_map['i'] = [ ':BLines'                            , 'Search Word In' ]
let g:which_key_map['p'] = [ ':FloatermNew --wintype=normal --height=6'       , 'Terminal' ]
let g:which_key_map['f'] = [ ':FloatermNew lf'                                , 'Lf' ]
let g:which_key_map['h'] = [ '<C-W>s'                             , 'Split Horizontal']
let g:which_key_map['u'] = [ ':Files'                             , 'Search Files']
let g:which_key_map['o'] = [ 'Rg'                                  , 'Search Word Out' ]
let g:which_key_map['v'] = [ '<C-W>v'                             , 'Split Vertical']


" s is for startify
let g:which_key_map.s = {
      \ 'name' : '+Startify' ,
      \ 'c' : [':SClose'          , 'Close Session']  ,
      \ 'd' : [':SDelete'         , 'Delete Session'] ,
      \ 'r' : [':SLoad'           , 'Load Session']     ,
      \ 's' : [':SSave'           , 'Save Session']   ,
      \ 'a' : [':Startify'        , 'Start Page']     ,
      \ }

" w is for save
let g:which_key_map.w = {
      \ 'name' : '+Save' ,
      \ 'q' : [':wq'    , 'Quit w/ changes'],
      \ 'e' : [':q!'                 , 'Quit w/o changes'],
      \ 's' : ['w'                 , 'Save changes w/o quit'],
      \ }

" c is for comment 
let g:which_key_map.c = {
      \ 'name' : '+Comment' ,
      \ 'c' : ['gcc'        , 'Comment Line'],
      \ 's' : ['gcap'    , 'Comment Paragraph'],
      \ }

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+Git' ,
      \ 'A' : [':Git add .'                        , 'Add all'],
      \ 'a' : [':Git add %'                        , 'Add current'],
      \ 'c' : [':Git commit'                       , 'Commit'],
      \ 'm' : [':GitMessenger'                         , 'Messenger'],
      \ 's' : [':Gstatus'                          , 'Status'],
      \ 'l' : [':Gblame'                          , 'Blame'],
      \ 'o' : [':Git show'                          , 'Show'],
      \ }


call which_key#register('<Space>', "g:which_key_map")
