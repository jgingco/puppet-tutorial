node default {
  file { '/root/README':
    ensure  => file,
    content => 'This is a readme',
    owner   => 'root',
  }
}

node 'puppet' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => $fqdn,
  }
}

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
