# docker components for a swarm node
# see clusters/swarm_production.yaml for example
class puppet_athletics::profile::swarm::node (
  $docker_version = undef,
) {
  class { 'docker':
    version => $docker_version,
  }
}
