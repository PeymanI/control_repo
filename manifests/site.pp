node default {
  file { '/root/README':
    ensure => file,
    content => 'This Server/Service is under the control of PUPPET',
    owner   => 'root',
  }
}

node 'pmast01.localdomain' {
  include role::master_server
}
node /^pcli01/ { 
  include role::app_server
}
node /^pcli02/ {
  include role::db_server
}
