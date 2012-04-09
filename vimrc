if filereadable(expand("~/.vimrc-before"))
  source ~/.vimrc-before
endif
if filereadable(expand("~/.vim/vimrc-default"))
  source ~/.vim/vimrc-default
endif
if filereadable(expand("~/.vimrc-after"))
  source ~/.vimrc-after
endif
