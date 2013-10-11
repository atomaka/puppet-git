#
class git {
  anchor { 'git::begin': }
  anchor { 'git::end': }
  class { 'git::package': }

  Anchor['git::begin'] -> Class['git::package'] -> Anchor['git::end']
}
