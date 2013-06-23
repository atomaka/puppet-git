class git::package::debian {
  include apt
  apt::ppa { 'ppa:git-core/stable': }

  package { 'git-core':
    ensure  => 'present',
    require => Apt::Ppa['ppa:git-core/stable'],
  }
}
