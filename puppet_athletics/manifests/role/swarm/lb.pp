# configures a loadbalancer for the docker swarm cluster
class puppet_athletics::role::swarm::lb {
  include profile::base
  include puppet_athletics::profile::base
  include puppet_athletics::profile::swarm::lb::nginx
  include puppet_athletics::profile::swarm::lb::keepalived
}
