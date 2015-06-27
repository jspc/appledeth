class appledeth::software {
  # touchpad
  package { 'xf86-input-synaptics': ensure => 'present'}

  # DM/ X/ Whatevs
  package { 'lightdm': ensure => 'present'}
  package { 'lightdm-gtk-greeter': ensure => 'present'}
  package { 'xorg-server': ensure => 'present'}
  package { 'xorg-server-xephyr': ensure => 'present'}
  package { 'xscreensaver': ensure => 'present'}
  service { 'lightdm.service': enable => true}

  # Fluxbox
  package { 'conky': ensure => 'present'}
  package { 'fluxbox': ensure => 'present'}
  package { 'idesk': ensure => 'present'}

  # Others
  package { 'alsa-utils': ensure => 'present'}
  package { 'chromium': ensure => 'present'}
  package { 'cowsay': ensure => 'present'}
  package { 'docker': ensure => 'present'}
  package { 'emacs': ensure => 'present'}
  package { 'feh': ensure => 'present'}
  package { 'htop': ensure => 'present'}
  package { 'irssi': ensure => 'present'}
  package { 'lsof': ensure => 'present'}
  package { 'mopidy': ensure => 'present'}
  package { 'nginx': ensure => 'present'}
  package { 'nodejs': ensure => 'present'}
  package { 'notify-osd': ensure => 'present'}
  package { 'openssh': ensure => 'present'}
  package { 'strace': ensure => 'present'}
  package { 'thunderbird': ensure => 'present'}
  package { 'tmux': ensure => 'present'}
  package { 'xterm': ensure => 'present'}
}
