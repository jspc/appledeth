class appledeth::conky {
  file { '/home/jspc/.conkyrc':
    ensure => 'present',
    owner => 'jspc',
    group => 'jspc',
    mode => '0600',
    source => 'puppet:///modules/appledeth/conkyrc',
  }

 file { '/home/jspc/.conky_agenda':
    ensure => 'present',
    owner => 'jspc',
    group => 'jspc',
    mode => '0600',
    source => 'puppet:///modules/appledeth/conky_agenda',
  }

  file { '/home/jspc/.conky':
    ensure => 'directory',
  }

  file { '/home/jspc/.conky/3.weathers.sh':
    ensure => 'present',
    owner => 'jspc',
    group => 'jspc',
    mode => '0700',
    source => 'puppet:///modules/appledeth/conky-weather',
  }

}
