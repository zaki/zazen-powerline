call Pl#Statusline(
  \ Pl#Match('&ft', 'nerdtree'),
  \
  \ Pl#Segment(" %{Stl_GetBranch('$branch')} ",
    \ exists('g:loaded_fugitive') && g:loaded_fugitive == 1,
    \
    \ Pl#HiCurrent(   Pl#FG(250), Pl#BG(240)),
    \ Pl#HiInsert(    Pl#FG(250), Pl#BG(240)),
    \ Pl#HiNonCurrent(Pl#FG(239), Pl#BG(235))
    \ ),
  \ Pl#Split(
    \ Pl#HiCurrent(   Pl#BG(236)),
    \ Pl#HiInsert(    Pl#BG(236)),
    \ Pl#HiNonCurrent(Pl#BG(233))
    \ )
  \ )
