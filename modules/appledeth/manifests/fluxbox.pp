class appledeth::fluxbox {
  file { '/home/jspc/.fluxbox/startup':
    ensure => 'present',
    owner => 'jspc',
    group => 'jspc',
    mode => '0600',
    source => 'puppet:///modules/appledeth/fluxbox_startup',
  }

  file { '/home/jspc/.fluxbox/keys':
    ensure => 'present',
    owner => 'jspc',
    group => 'jspc',
    mode => '0600',
    source => 'puppet:///modules/appledeth/fluxbox_keys',
  }

  file { '/home/jspc/.fluxbox/background.jpg':
    ensure => 'present',
    owner => 'jspc',
    group => 'jspc',
    mode => '0600',
    source => 'puppet:///modules/appledeth/ibm.jpg',
  }

  exec { 'fluxbox-generate_menu':
    user => 'jspc',
    cwd => '/home/jspc',
  }

}
