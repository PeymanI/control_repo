class role::db_server {
  include profile::base
  include profile::db
  
  file { '/root/README':
    ensure  => file,
    content => "This Server/Service ${fqdn} is under the control of PUPPET\n",
    owner   => 'root',
  }
  
  host {'pcli02.localdomain':
    ensure => present,
    ip     => '192.168.57.103',
  }
}
