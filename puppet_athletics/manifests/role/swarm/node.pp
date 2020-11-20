# configures a node for the docker swarm cluster
class puppet_athletics::role::swarm::node {
  include profile::base
  include puppet_athletics::profile::base
  include puppet_athletics::profile::swarm::node
}
