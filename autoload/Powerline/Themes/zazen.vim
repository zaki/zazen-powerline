let g:Powerline#Themes#zazen#theme = Pl#Theme#Create(
  \ Pl#Theme#Buffer(''
    \ , 'zazen:mode'
    \ , 'zazen:branch'
    \ , 'fileinfo'
    \ , 'syntastic:errors'
    \ , Pl#Segment#Truncate()
    \ , 'cfi:current_function'
    \ , Pl#Segment#Split()
    \ , 'rvm:string'
    \ , 'virtualenv:statusline'
    \ , 'fileformat'
    \ , 'fileencoding'
    \ , 'filetype'
    \ , 'lineinfo'
    \ , 'zazen:trailingspace'
    \ , 'zazen:tabs'
    \ , 'zazen:fws'
  \ ),
  \
  \ Pl#Theme#Buffer('ft_help'
    \ , ['static_str.name', 'Help']
    \ , 'filename'
    \ , Pl#Segment#Truncate()
    \ , Pl#Segment#Split()
    \ , 'scrollpercent'
  \ ),
  \
  \ Pl#Theme#Buffer('ft_vimpager'
    \ , ['static_str.name', 'Pager']
    \ , 'filename'
    \ , Pl#Segment#Truncate()
    \ , Pl#Segment#Split()
    \ , 'scrollpercent'
  \ ),
  \
  \ Pl#Theme#Buffer('ft_man'
    \ , ['static_str.name', 'Man page']
    \ , 'filename'
    \ , Pl#Segment#Truncate()
    \ , Pl#Segment#Split()
    \ , 'scrollpercent'
  \ ),
  \
  \ Pl#Theme#Buffer('ft_qf'
    \ , ['static_str.name', 'Quickfix']
    \ , Pl#Segment#Truncate()
    \ , Pl#Segment#Split()
  \ ),
  \
  \ Pl#Theme#Buffer('ctrlp', Pl#Theme#Callback('ctrlp_main', 'if ! exists("g:ctrlp_status_func") | let g:ctrlp_status_func = {} | endif | let g:ctrlp_status_func.main = "%s"')
    \ , 'ctrlp:prev'
    \ , 'ctrlp:item'
    \ , 'ctrlp:next'
    \ , 'ctrlp:marked'
    \ , Pl#Segment#Truncate()
    \ , Pl#Segment#Split()
    \ , 'ctrlp:focus'
    \ , 'ctrlp:byfname'
    \ , 'pwd'
  \ ),
  \
  \ Pl#Theme#Buffer('ctrlp', Pl#Theme#Callback('ctrlp_prog', 'if ! exists("g:ctrlp_status_func") | let g:ctrlp_status_func = {} | endif | let g:ctrlp_status_func.prog = "%s"')
    \ , 'ctrlp:count'
    \ , Pl#Segment#Truncate()
    \ , Pl#Segment#Split()
    \ , 'pwd'
  \ ),
  \
  \ Pl#Theme#Buffer('nerdtree'
    \ , 'zazen:branch'
    \ , ['raw.name', '%{Powerline#Functions#GetShortPath(4)}']
    \ , Pl#Segment#Truncate()
    \ , Pl#Segment#Split()
  \ )
\ )

