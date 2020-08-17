node default {
  file { '/root/README':
    ensure  => file,
    content => 'This is a readme',
    owner   => 'root',
  }
}

node 'puppet' {
  include role::master_server
}
