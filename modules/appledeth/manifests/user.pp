class appledeth::user {
  user { 'jspc':
    ensure => present,
    managehome => true,
  }

  file { '/home/jspc/projects':
    ensure => 'directory',
    owner => 'jspc',
    group => 'jspc',
    mode => '0700',
  }

  file { '/home/jspc/tmp':
    ensure => 'directory',
    owner => 'jspc',
    group => 'jspc',
    mode => '0700',
  }

  file { '/home/jspc/src':
    ensure => 'directory',
    owner => 'jspc',
    group => 'jspc',
    mode => '0700',
  }

  file { '/home/jspc/archives':
    ensure => 'directory',
    owner => 'jspc',
    group => 'jspc',
    mode => '0700',
  }

  file { '/home/jspc/bin':
    ensure => 'directory',
    owner => 'jspc',
    group => 'jspc',
    mode => '0700',
  }

  file { '/home/jspc/aur':
    ensure => 'directory',
    owner => 'jspc',
    group => 'jspc',
    mode => '0700',
  }

  file { '/home/jspc/.bashables':
    ensure => 'directory',
    owner => 'jspc',
    group => 'jspc',
    mode => '0700',
  }

  file { '/home/jspc/log':
    ensure => 'directory',
    owner => 'jspc',
    group => 'jspc',
    mode => '0700',
  }

  wget::fetch { 'https://raw.githubusercontent.com/jspc/homedir/master/.bashrc':
    destination => '/home/jspc/.bashrc',
    timeout => 0,
    verbose => false,
    execuser => 'jspc',
    redownload => true,
  }

  wget::fetch { 'https://raw.githubusercontent.com/jspc/homedir/master/.bash_profile':
    destination => '/home/jspc/.bash_profile',
    timeout => 0,
    verbose => false,
    execuser => 'jspc',
    redownload => true,
  }

  wget::fetch { 'https://raw.githubusercontent.com/jspc/homedir/master/.status':
    destination => '/home/jspc/.status',
    timeout => 0,
    verbose => false,
    execuser => 'jspc',
    redownload => true,
  }

  wget::fetch { 'https://raw.githubusercontent.com/jspc/homedir/master/.bashables/common':
    destination => '/home/jspc/.bashables/common',
    timeout => 0,
    verbose => false,
    execuser => 'jspc',
    redownload => true,
    mode => '0700',
  }

  wget::fetch { 'https://raw.githubusercontent.com/jspc/homedir/master/.bashables/git-completion':
    destination => '/home/jspc/.bashables/git-completion',
    timeout => 0,
    verbose => false,
    execuser => 'jspc',
    redownload => true,
    mode => '0700',
  }

}
