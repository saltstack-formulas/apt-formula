
## apt-formula/apt/ppa.sls

# Install utilities for working with APT PPA Repositories
# e.g. /usr/bin/add-apt-repository

python-software-properties:
  pkg:
    - installed
