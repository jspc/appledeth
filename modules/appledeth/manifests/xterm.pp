class appledeth::xterm {
  package { 'xorg-xrdb': ensure => 'present' }
  package { 'xorg-xmodmap': ensure => 'present' }

  file { '/home/jspc/.Xresources':
    ensure => 'present',
    owner => 'jspc',
    group => 'jspc',
    mode => '0600',
    source => 'puppet:///modules/appledeth/xresources',
  }
}
