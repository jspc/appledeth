class appledeth::emacs {
  file { '/tmp/emacs.tar.bz2':
    ensure => 'present',
    source => 'puppet:///modules/appledeth/emacs.tar.bz2',
  }

  exec { 'tar xf /tmp/emacs.tar.bz2 -C /home/jspc':
    user => 'jspc',
    creates => '/home/jspc/.emacs',
  }
}
