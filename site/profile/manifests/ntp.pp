class profile::ntp {
  include ntp
    file { '/etc/ntp.conf':
    ensure => file,
    content => 'server 0.uk.pool.ntp.org',
    content => 'server 1.uk.pool.ntp.org',
    content => 'server 2.uk.pool.ntp.org',
    content => 'server 3.uk.pool.ntp.org',
    
  }
