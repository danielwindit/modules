#
class motd inherits motd::params {
  case $::osfamily {
    'redhat': {
      file { '/etc/motd':
        ensure  => file,
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
        content => template('motd/motd.erb'),
      }

    } # redhat

    default: {
      fail("${title}, ${::osfamily} is an unknown OS family")
    }

  } # case

} # end motd

