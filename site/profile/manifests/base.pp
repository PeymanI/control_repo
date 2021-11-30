class profile::base {
 file { '/README.PUPPET':
    ensure => file,
    content => "This Server/Service ${fqdn} is under the control of PUPPET\nUsing PUPPET MASTER pmast01.localdomain",
    owner   => 'root',
  }
 
 user {'admin':
    ensure => present
  }
  
  include profile::ssh_server

}
