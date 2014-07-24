class php{
 
  package { "php5":
    ensure => present,
  }
 
  package { "php5-cli":
    ensure => present,
  }
 
  package { "php5-xdebug":
    ensure => present,
  }
 
  package { "php5-mysql":
    ensure => present,
  }
 
  package { "php5-imagick":
    ensure => present,
  }
 
  package { "php5-mcrypt":
    ensure => present,
  }
 
  package { "php-pear":
    ensure => present,
  }
 
  package { "php5-dev":
    ensure => present,
  }
  
  package { "php5-gd":
    ensure => present,
  }
 
  package { "php5-curl":
    ensure => present,
  }
 
  package { "php5-sqlite":
    ensure => present,
  }
 
  package { "libapache2-mod-php5":
    ensure => present,
  }
 
}