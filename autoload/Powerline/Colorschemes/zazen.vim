call Pl#Hi#Allocate({
  \ 'black'          : 16,
  \ 'white'          : 231,
  \
  \ 'darkestred'     : 52,
  \ 'darkred'        : 88,
  \ 'mediumred'      : 124,
  \ 'brightred'      : 160,
  \ 'brightestred'   : 196,
  \
  \ 'gray232'        : 232,
  \ 'gray233'        : 233,
  \ 'gray234'        : 234,
  \ 'gray235'        : 235,
  \ 'gray236'        : 236,
  \ 'gray237'        : 237,
  \ 'gray238'        : 238,
  \ 'gray239'        : 239,
  \ 'gray240'        : 240,
  \ 'gray241'        : 241,
  \ 'gray242'        : 242,
  \ 'gray243'        : 243,
  \ 'gray244'        : 244,
  \ 'gray245'        : 245,
  \ 'gray246'        : 246,
  \ 'gray247'        : 247,
  \ 'gray248'        : 248,
  \ 'gray249'        : 249,
  \ 'gray250'        : 250,
  \ 'gray251'        : 251,
  \ 'gray252'        : 252,
  \ 'gray253'        : 253,
  \ 'gray254'        : 254,
  \ 'gray255'        : 255,
  \ })

let g:Powerline#Colorschemes#zazen#colorscheme = Pl#Colorscheme#Init([
  \ Pl#Hi#Segments(['SPLIT'], {
    \ 'n': ['gray246', 'gray236'],
    \ 'N': ['gray246', 'gray236'],
    \ 'i': ['gray246', 'gray236'],
    \ }),
  \
  \ Pl#Hi#Segments(['mode_indicator', 'zazen:mode'], {
    \ 'n': ['gray246', 'gray236', ['bold']],
    \ 'i': ['gray246', 'gray236', ['bold']],
    \ 'v': ['gray246', 'gray236', ['bold']],
    \ 'r': ['gray246', 'gray236', ['bold']],
    \ 's': ['gray246', 'gray236', ['bold']],
    \ }),
  \
  \ Pl#Hi#Segments(['zazen:branch', 'branch', 'scrollpercent', 'raw', 'filesize'], {
    \ 'n': ['gray250', 'gray240'],
    \ 'N': ['gray239', 'gray235'],
    \ 'i': ['gray250', 'gray240'],
    \ }),
  \
  \ Pl#Hi#Segments(['fileinfo', 'filename'], {
    \ 'n': ['gray251', 'gray236', ['bold']],
    \ 'N': ['gray245', 'gray235', ['bold']],
    \ 'i': ['gray251', 'gray236', ['bold']],
    \ }),
  \
  \ Pl#Hi#Segments(['fileinfo.flags'], {
    \ 'n': ['brightestred', ['bold']],
    \ 'N': ['darkred'],
    \ 'i': ['brightestred', ['bold']],
    \ }),
  \
  \ Pl#Hi#Segments(['static_str'], {
    \ 'n': ['white', 'gray232'],
    \ 'N': ['gray247', 'gray232'],
    \ 'i': ['white', 'gray232'],
    \ }),
  \
  \ Pl#Hi#Segments(['errors'], {
    \ 'n': ['brightestred', 'gray236', ['bold']],
    \ 'i': ['brightestred', 'gray236', ['bold']],
    \ }),
  \
  \ Pl#Hi#Segments(['current_function', 'fileformat', 'fileencoding', 'pwd', 'filetype', 'rvm:string', 'rvm:statusline', 'virtualenv:statusline', 'charcode', 'currhigroup'], {
    \ 'n': ['gray246', 'gray236'],
    \ 'i': ['gray246', 'gray236'],
    \ }),
  \
  \ Pl#Hi#Segments(['lineinfo'], {
    \ 'n': ['gray236', 'gray252', ['bold']],
    \ 'N': ['gray245', 'gray252', ['bold']],
    \ 'i': ['gray236', 'gray252', ['bold']],
    \ }),
  \
  \ Pl#Hi#Segments(['lineinfo.line.tot'], {
    \ 'n': ['gray232'],
    \ 'N': ['gray232'],
    \ 'i': ['gray232'],
    \ }),
  \
  \ Pl#Hi#Segments(['zazen:trailingspace', 'zazen:tabs', 'zazen:fws'], {
    \ 'n': ['brightestred', 'gray232'],
    \ 'N': ['brightestred', 'gray232'],
    \ 'i': ['brightestred', 'gray232'],
    \ }),
  \
  \ Pl#Hi#Segments(['paste_indicator', 'ws_marker'], {
    \ 'n': ['white', 'brightred', ['bold']],
    \ }),
  \
  \ Pl#Hi#Segments(['nerdtree:raw.name'], {
    \ 'n': ['gray232', 'gray240', ['bold']],
    \ 'N': ['gray245', 'gray235', ['bold']],
    \ }),
  \
  \ Pl#Hi#Segments(['nerdtree:SPLIT'], {
    \ 'n': ['gray232', 'gray240'],
    \ 'N': ['gray245', 'gray235'],
    \ }),
  \
  \ Pl#Hi#Segments(['ctrlp:focus', 'ctrlp:byfname'], {
    \ 'n': ['gray232', 'gray240'],
    \ }),
  \
  \ Pl#Hi#Segments(['ctrlp:prev', 'ctrlp:next', 'ctrlp:pwd'], {
    \ 'n': ['gray246', 'gray235'],
    \ }),
  \
  \ Pl#Hi#Segments(['ctrlp:item'], {
    \ 'n': ['gray232', 'gray246', ['bold']],
    \ }),
  \
  \ Pl#Hi#Segments(['ctrlp:marked'], {
    \ 'n': ['gray232', 'gray240', ['bold']],
    \ }),
  \
  \ Pl#Hi#Segments(['ctrlp:count'], {
    \ 'n': ['gray232', 'gray240'],
    \ }),
  \
  \ Pl#Hi#Segments(['ctrlp:SPLIT'], {
    \ 'n': ['gray246', 'gray232'],
    \ }),
  \ ])

