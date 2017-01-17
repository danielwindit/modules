#
class motd::params (
  $motd,
) {
  include stdlib
  case $::puppetversion {
    /^3\.[789].*/: {
      fail("${title}, Puppet version ${::puppetversion} not yet implemented.")
    } # puppet >= 3.6 and < 4.0

    /^3\.[0123456].*/: {
      validate_string($motd)
    } # puppet >= 3.0 and < 3.6

    default: {
      fail("${title}, Puppet version ${::puppetversion} not supported.")
    } # unsupported puppet versions
  } # case

} # end motd::params

