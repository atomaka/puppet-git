class git::package {
  anchor { 'git::package::begin': }
  anchor { 'git::package::end': }

  case $::osfamily {
    'Debian': {
      class { 'git::package::debian':
        require => Anchor['git::package::begin'],
        before  => Anchor['git::package::end'],
      }
    }
    'RedHat': {
      package { 'git': 
        require => Anchor['git::package::begin'],
        before  => Anchor['git::package::end'],
      }
    }
    default: {
      fail("Module ${module_name} does not yet support ${::operatingsystem}")
    }
  }
}
