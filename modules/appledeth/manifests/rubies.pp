class appledeth::rubies {
  vcsrepo { '/home/jspc/.rbenv':
    ensure => 'present',
    provider => 'git',
    source => 'https://github.com/sstephenson/rbenv.git',
    user => 'jspc',
  }

  vcsrepo { '/home/jspc/.rbenv/plugins/ruby-build':
    ensure => 'present',
    provider => 'git',
    source => 'https://github.com/sstephenson/ruby-build.git',
    user => 'jspc',
  }

  file_line { 'rbenv Pathery':
    path => '/home/jspc/.after_homedir',
    line => 'export PATH="$HOME/.rbenv/bin:$PATH"',
  }

  file_line { 'eval rbenv':
    path => '/home/jspc/.after_homedir',
    line => 'eval "$(rbenv init -)"',
  }

}
