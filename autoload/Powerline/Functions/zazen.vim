function! Powerline#Functions#zazen#TrailingSpace() " {{{
  if !exists("b:statusline_trailing_space_warning")
      if search('\s\+$', 'nw') != 0
          let b:statusline_trailing_space_warning = '__'
      else
          let b:statusline_trailing_space_warning = ''
      endif
  endif
  return b:statusline_trailing_space_warning
endfunction " }}}

function! Powerline#Functions#zazen#Tabs() " {{{
  if !exists("b:statusline_tab_warning")
      let tabs = search('\t', 'nw') != 0

      if tabs
          let b:statusline_tab_warning =  '->'
      else
          let b:statusline_tab_warning = ''
      endif
  endif
  return b:statusline_tab_warning
endfunction " }}}

function! Powerline#Functions#zazen#FullWidthSpace() " {{{
  if !exists("b:statusline_fwspace_warning")
      let tabs = search('　', 'nw') != 0

      if tabs
          let b:statusline_fwspace_warning =  'FWS'
      else
          let b:statusline_fwspace_warning = ''
      endif
  endif
  return b:statusline_fwspace_warning
endfunction " }}}

function! Powerline#Functions#zazen#GetMode() " {{{
  let mode = mode()

  if mode =~# '\v(v|V|)'
    " Visual mode
    if mode ==# 'v'
      let mode = ' V '
    elseif mode ==# 'V'
      let mode = 'V L'
    elseif mode ==# ''
      let mode = 'V B'
    endif
  elseif mode =~# '\v(s|S|)'
    " Select mode
    if mode ==# 's'
      let mode = ' S '
    elseif mode ==# 'S'
      let mode = 'S L'
    elseif mode ==# ''
      let mode = 'S B'
    endif
  elseif mode =~# '\vi'
    let mode = ' I ' " Insert mode
  elseif mode =~# '\v(R|Rv)'
    let mode = ' R ' " Replace mode
  else
    " Fallback to normal mode
    let mode = ' N ' " Normal (current)
  endif

  return mode
endfunction " }}}
function! Powerline#Functions#zazen#GetBranch(symbol) " {{{
  let ret = ''
  if (exists('g:loaded_fugitive') && g:loaded_fugitive == 1)
    let ret = fugitive#statusline()
    let ret = substitute(ret, '\c\v\[?G[iI][tT]\(([a-z0-9\-_\./:]+)\)\]?', a:symbol .' \1', 'gi')
  endif
  return ret
endfunction " }}}
