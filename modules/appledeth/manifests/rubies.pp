class appledeth::rubies {
  class {'rbenv':
    # install_dir => '/home/jspc/.rbenv',
    # owner => 'jspc',
    # group => 'jspc',

  }
  rbenv::plugin { 'sstephenson/ruby-build': }
}
