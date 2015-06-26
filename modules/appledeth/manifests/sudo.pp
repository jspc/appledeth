class appledeth::sudo {
  file { '/etc/sudoers.d/ssh_defaults':
    ensure => 'present',
    owner => 'root',
    group => 'root',
    mode => '0700',
    source => 'puppet:///modules/appledeth/ssh_defaults',
  }

  file { '/etc/sudoers.d/jspc':
    ensure => 'present',
    owner => 'root',
    group => 'root',
    mode => '0700',
    source => 'puppet:///modules/appledeth/jspc_sudo',
  }
}
