" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['.'] = [ ':e $MYVIMRC'                                     , 'open init' ]
let g:which_key_map[';'] = [ ':Commands'                                       , 'commands' ]
let g:which_key_map['e'] = [ ':CocCommand explorer --toggle --sources=file+'   , 'explorer' ]
let g:which_key_map['c'] = [ ':let @/ = ""'                                    , 'no highlight' ]
let g:which_key_map['o'] = [ ':RnvimrToggle'                                   , 'open' ]
let g:which_key_map['p'] = [ ':Files'                                          , 'search files' ]

" windows
let g:which_key_map['w'] = {
      \ 'name' : '+windows',
      \ '-' : ['<C-W>s'     , 'split below']  ,
      \ '|' : ['<C-W>v'     , 'split right']  ,
      \ 'd' : ['<C-W>c'     , 'close']        ,
      \ '=' : ['<C-W>='     , 'balance']      ,
      \ 'M' : [':tabedit %' , 'maximize']     ,
      \ 'm' : [':tabclose'  , 'restaure']     ,
      \ 'h' : ['<C-W>h'     , 'window left']  ,
      \ 'j' : ['<C-W>j'     , 'window below'] ,
      \ 'l' : ['<C-W>l'     , 'window right'] ,
      \ 'k' : ['<C-W>k'     , 'window up']    ,
      \ '?' : [':Windows'   , 'fzf-window']
  \ }

" buffers
let g:which_key_map['b'] = {
      \ 'name' : '+buffers',
      \ 'd' : [':Bdelete'   , 'delete buffer']   ,
      \ 'f' : [':bfirst'    , 'first buffer']    ,
      \ 'h' : [':Startify'  , 'home buffer']     ,
      \ 'l' : [':blast'     , 'last buffer']     ,
      \ 'n' : [':bnext'     , 'next buffer']     ,
      \ 'p' : [':bprevious' , 'previous buffer'] ,
      \ '?' : [':Buffers'   , 'fzf buffer']
  \ }

" search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'                 , 'history'],
      \ 'a' : [':Ag'                       , 'text Ag'],
      \ 'b' : ['FzfPreviewBufferLines'     , 'current buffer'],
      \ 'B' : ['FzfPreviewBuffers'         , 'open buffers'],
      \ 'c' : [':Commits'                  , 'commits'],
      \ 'C' : [':BCommits'                 , 'buffer commits'],
      \ 'd' : [':FzfPreviewDirectoryFiles' , 'directories'],
      \ 'f' : [':FzfPreviewProjectFiles'   , 'files'],
      \ 'g' : [':FzfPreviewGitFiles'       , 'git files'],
      \ 'G' : [':GFiles?'                  , 'modified git files'],
      \ 'h' : [':History'                  , 'file history'],
      \ 'H' : [':History:'                 , 'command history'],
      \ 'l' : [':Lines'                    , 'lines'] ,
      \ 'm' : [':FzfPreviewMarks'          , 'list marks'],
      \ 'M' : [':Maps'                     , 'normal maps'] ,
      \ 'p' : [':Helptags'                 , 'help tags'] ,
      \ 'P' : [':Tags'                     , 'project tags'],
      \ 'q' : [':FzfPreviewQuickFix'       , 'quickfix list'],
      \ 't' : [':Rg'                       , 'text Rg'],
      \ 'T' : [':BTags'                    , 'buffer tags'],
      \ 'y' : [':Filetypes'                , 'file types'],
      \ 'z' : [':FZF'                      , 'FZF'],
      \ }

" Sessions
let g:which_key_map.S = {
      \ 'name' : '+Session' ,
      \ 'c' : [':SClose'  , 'Close Session']  ,
      \ 'd' : [':SDelete' , 'Delete Session'] ,
      \ 'l' : [':SLoad'   , 'Load Session']   ,
      \ 's' : [':SSave'   , 'Save Session']   ,
      \ }

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'a' : [':Git add .'            , 'add all'],
      \ 'b' : [':Git blame'            , 'blame'],
      \ 'c' : [':Git commit'           , 'commit'],
      \ 'd' : [':Git diff'             , 'diff'],
      \ 'D' : [':Gdiffsplit'           , 'diff split'],
      \ 'g' : [':GGrep'                , 'git grep'],
      \ 'G' : [':Gstatus'              , 'status'],
      \ 'l' : [':Git log'              , 'log'],
      \ 'm' : ['<Plug>(git-messenger)' , 'message'],
      \ 'p' : [':Git push'             , 'push'],
      \ 'P' : [':Git pull'             , 'pull'],
      \ 'r' : [':GRemove'              , 'remove'],
      \ 'S' : [':FzfPreviewGitStatus'  , 'status'],
      \ 'v' : [':GV'                   , 'view commits'],
      \ 'V' : [':GV!'                  , 'view buffer commits'],
      \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
