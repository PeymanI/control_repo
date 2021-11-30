class role::db_server {
  include profile::base
  include profile::db
  
  host {'pcli02.localdomain':
    ensure => present,
    ip     => '192.168.57.103',
  }
}
