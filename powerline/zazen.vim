function! Stl_GetMode() " {{{
  let ret = mode()

  let ret = substitute(ret, '', '^V', 'g')

  return ret
endfunction " }}}
function! Stl_GetBranch(branch_symbol) " {{{
  let ret = fugitive#statusline()
  let ret = substitute(ret, '\[\?G[iI][Tt](\([a-z0-9\-_\./:]\+\))\]\?', ' \1 ', 'gi')

  return ret
endfunction " }}}
function! Stl_GetSyntaxErrors(line_symbol) " {{{
  if ! exists('g:syntastic_stl_format')
    " Syntastic hasn't been loaded yet
    return ''
  endif

  " Temporarily change syntastic output format
  let old_stl_format = g:syntastic_stl_format
  let g:syntastic_stl_format = ' %E{ ERRORS (%e) '. a:line_symbol .' %fe }%W{ WARNINGS (%w) '. a:line_symbol .' %fw } '

  let ret = SyntasticStatuslineFlag()

  let g:syntastic_stl_format = old_stl_format

  return ret
endfunction " }}}
function! Stl_GetCurrentFunction() " {{{
  return cfi#format(' %s', '')
endfunction " }}}
function! Stl_GetCommandTLine() " {{{
  let line = getline('.')

  " Trim whitespace from current line
  let line = substitute(line, '\v^\>\s+|\s+$', '', 'g')

  return line
endfunction " }}}
function! Stl_GetManPage() " {{{
  let matches = matchlist(getline(1), '\v^([a-zA-Z_\.\-]+)\((\d+)\)')

  if ! len(matches)
    return 'n/a'
  endif

  let file = tolower(matches[1])
  let num = matches[2]

  return file
endfunction " }}}

function! Stl_TrailingSpace()
  if !exists("b:statusline_trailing_space_warning")
      if search('\s\+$', 'nw') != 0
          let b:statusline_trailing_space_warning = 'SPC|'
      else
          let b:statusline_trailing_space_warning = ''
      endif
  endif
  return b:statusline_trailing_space_warning
endfunction

function! Stl_Tabs()
  if !exists("b:statusline_tab_warning")
      let tabs = search('\t', 'nw') != 0

      if tabs
          let b:statusline_tab_warning =  'TAB|'
      else
          let b:statusline_tab_warning = ''
      endif
  endif
  return b:statusline_tab_warning
endfunction

function! Stl_FullwidthSpace()
  if !exists("b:statusline_fwspace_warning")
      let tabs = search('　', 'nw') != 0

      if tabs
          let b:statusline_fwspace_warning =  'FWS'
      else
          let b:statusline_fwspace_warning = ''
      endif
  endif
  return b:statusline_fwspace_warning
endfunction

