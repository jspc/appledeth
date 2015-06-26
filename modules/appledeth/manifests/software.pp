class appledeth::software {
  # DM/ X/ Whatevs
  package { 'lightdm': ensure => 'present'}
  package { 'xorg-server-xephyr': ensure => 'present'}
  service { 'lightdm.service': enable: true}

  # Fluxbox
  package { 'fluxbox': ensure => 'present'}
  package { 'conky': ensure => 'present'}

  # Others
  package { 'alsa-utils': ensure => 'present'}
  package { 'chromium': ensure => 'present'}
  package { 'cowsay': ensure => 'present'}
  package { 'docker': ensure => 'present'}
  package { 'emacs': ensure => 'present'}
  package { 'feh': ensure => 'present'}
  package { 'irssi': ensure => 'present'}
  package { 'lsof': ensure => 'present'}
  package { 'nginx': ensure => 'present'}
  package { 'strace': ensure => 'present'}
  package { 'thunderbird': ensure => 'present'}
  package { 'tmux': ensure => 'present'}
  package { 'xterm': ensure => 'present'}
}
