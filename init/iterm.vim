" See http://www.iterm2.com/documentation-escape-codes.html
if $TERM_PROGRAM =~ "iTerm"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  if v:version > 704 || v:version == 704 && has('patch687')
    let &t_SR = "\<Esc>]50;CursorShape=2\x7"
  end
elseif $TERM =~ "xterm-256color"
  let &t_SI = "\<Esc>[5 q"
  let &t_EI = "\<Esc>[1 q"
  if v:version > 704 || v:version == 704 && has('patch687')
    let &t_SR = "\<Esc>[3 q"
  end
endif
