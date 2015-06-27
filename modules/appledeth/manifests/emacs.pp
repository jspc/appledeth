class appledeth::emacs {
  file { '/tmp/emacs.tar.bz2':
    ensure => 'present',
    source => 'puppet:///modules/appledeth/emacs.tar.bz2',
  }

  file { '/home/jspc/.emacs':
    ensure => 'present',
    user => 'jspc',
    group => 'jspc',
    mode => '0600',
    source => 'puppet:///modules/appledeth/emacs',
  }

  exec { '/usr/bin/tar xf /tmp/emacs.tar.bz2 -C /home/jspc':
    user => 'jspc',
    creates => '/home/jspc/.emacs',
  }
}
