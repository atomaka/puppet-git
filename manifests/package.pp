#
class git::package {
  anchor { 'git::package::begin': }
  anchor { 'git::package::end': }

  case $::osfamily {
    'Debian': {
      case $::operatingsystem {
        'ubuntu': {
          class { 'git::package::ubuntu':
            require => Anchor['git::package::begin'],
            before  => Anchor['git::package::end'],
          }
        }
        'debian': {
          package { 'git-core':
            require => Anchor['git::package::begin'],
            before  => Anchor['git::package::end'],
          }
        }
        default: {
          err("Module ${module_name} does not yet support ${::operatingsystem}")
        }
      } # Case $::operatingsystem
    }
    'RedHat': {
      package { 'git':
        require => Anchor['git::package::begin'],
        before  => Anchor['git::package::end'],
      }
    }
    default: {
      fail("Module ${module_name} does not yet support ${::osfamily}")
    }
  }
}
