class appledeth::tmux {
  file { '/home/jspc/.tmux.conf':
    ensure => 'present',
    owner => 'jspc',
    group => 'jspc',
    mode => '0600',
    source => 'puppet:///modules/appledeth/tmux.conf',
  }
}
