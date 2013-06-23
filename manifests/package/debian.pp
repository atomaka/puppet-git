class git::package::debian {
  include apt
  apt::ppa { 'ppa:git-core/ppa': }

  package { 'git-core':
    ensure  => 'present',
    require => Apt::Ppa['ppa:git-core/ppa'],
  }
}
