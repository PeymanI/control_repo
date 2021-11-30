class profile::users_and_groups {
 
  group {'staff':
    ensure => present,
    gid    => 2001,
  }
 
 group {'project01':
    ensure => present,
    gid    => 2002,
  }
 
  user {'aa_ian':
    ensure     => present,
    uid        => 1001,
    gid        => 2001,
 #   groups     => 2002,
    comment    => 'ian p',
    home       => '/home/aa_ian',
    managehome => true,
  }
  
  user {'aa_ian1':
    ensure     => present,
    uid        => 1002,
    gid        => 2001,
 #   groups     => 2002,
    comment    => 'ian p - emergency account',
    home       => '/home/aa_ian1',
    managehome => true,
  }
  
  user {'ex103435':
    ensure     => present,
    uid        => 2001,
    gid        => 2002,
    comment    => 'Project account 01',
    home       => '/home/project/ex103435',
    managehome => true,
  }
  
  
user {'admin':
    ensure => absent,
  }
  
  group {'aa_ian':
    ensure => absent,
  }


}
