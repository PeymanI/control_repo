class role::app_server {
  include profile::web
  include profile::base
  include profile::app
  host {'pcli01.localdomain':
    ensure => present,
    ip => 192.168.57.102',
    }
}
