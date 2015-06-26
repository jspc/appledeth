class appledeth {
  include stdlib
  include wget
  include appledeth::user
  include appledeth::software
  include appledeth::rubies

  # The following largely populate config files
  include appledeth::sudo
  include appledeth::xterm
  include appledeth::conky
  include appledeth::emacs
  include appledeth::fluxbox
  include appledeth::tmux
}
