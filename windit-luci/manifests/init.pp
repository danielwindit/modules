class luci inherits luci::params {

  package {$luci_packages:
    ensure => present,
  }

  service {$luci_services:
    ensure  => running,
    enable  => true,
  }


}

