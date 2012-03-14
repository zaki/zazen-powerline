let g:Powerline#Segments#zazen#segments = Pl#Segment#Init(['zazen',
  \ Pl#Segment#Create('mode',          '%{Powerline#Functions#zazen#GetMode()}'),
  \ Pl#Segment#Create('branch',        '%{Powerline#Functions#zazen#GetBranch("$BRANCH")}'),
  \ Pl#Segment#Create('trailingspace', '%{Powerline#Functions#zazen#TrailingSpace()}'),
  \ Pl#Segment#Create('tabs',          '%{Powerline#Functions#zazen#Tabs()}'),
  \ Pl#Segment#Create('fws',           '%{Powerline#Functions#zazen#FullWidthSpace()}'),
\ ])
