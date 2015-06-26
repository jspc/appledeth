class appledeth::xterm {
  file { '/home/jspc/.Xresources':
    ensure => 'present',
    owner => 'jspc',
    group => 'jspc',
    mode => '0600',
    source => 'puppet:///modules/appledeth/xresources',
  }
}
