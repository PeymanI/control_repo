node default {
file { '/README.PUPPET':
    ensure => file,
    content => "This Server/Service ${fqdn} is under the control of PUPPET\n",
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
