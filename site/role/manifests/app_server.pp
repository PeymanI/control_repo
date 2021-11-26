class role::app_server {
  include profile::web
  include profile::base
  include profile::app
  
  file { '/root/README':
    ensure  => file,
    content => "This Server/Service ${fqdn} is under the control of PUPPET\n",
    owner   => 'root',
  }
  
  host {'pcli01.localdomain':
    ensure => present,
    ip     => '192.168.57.102',
  }
}
