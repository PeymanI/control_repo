class profile::users_and_groups {
 
  group {'staff':
    ensure => present,
    gid    => '2001',
  }
 
  user {'admin':
    ensure => absent,
  }
  
  user {'aa_ian':
    ensure     => present,
    uid        => 1001,
    comment    => 'ian p',
    home       => '/home/aa_ian',
    managehome => '/home/aa_ian'
  }  
  
    
}
