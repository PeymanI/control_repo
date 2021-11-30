class profile::users_and_groups {
 
  group {'staff':
    ensure => present,
    gid    => '2001',
  }
 
  user {'admin':
    ensure => absent,
  }
  
  group {'aa_ian':
    ensure => absent,
  }
  
  
  user {'aa_ian':
    ensure     => present,
    uid        => 1001,
    gid        => 'staff',
    comment    => 'ian p',
    home       => '/home/aa_ian',
    managehome => true,
  }  
  
    
}
