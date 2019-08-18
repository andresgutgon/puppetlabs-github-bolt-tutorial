## Bolt executable in Mac OS X
After installing with brew `brew cask install puppetlabs/puppet/puppet-bolt` binary is not in the path.
Here is how to access it:
```
/opt/puppetlabs/bolt/bin/bolt --help
```

# Tutorial
I'm following this tutorial for undestanding Puppet/Bolt: https://puppetlabs.github.io/bolt/
The code is here: `https://github.com/puppetlabs/bolt/tree/master/docs/_includes/lesson1-10`

### Nodes
The example requires having a Dockerfile and a docker-compose that runs 3 nodes.
These nodes are configured in ~/.ssh/config. This way we can do `ssh node1` or `ssh node2`
Password for `root` user in this Docker image is `root`. No big deal just to try things.

To start nodes run this command:
```
docker-compose up --scale ssh=3 -d
```
This will spin up 3 nodes
