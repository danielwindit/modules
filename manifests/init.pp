class motd inherits motd::params {
      file { '/etc/motd':
        ensure  => file,
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
        content => template('motd/motd.erb'),
      }
} 

