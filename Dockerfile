# Docker container with chef-solo & berkshelf
FROM centos
MAINTAINER Aaron Walker "a.walker@base2services.com"

# Install Chef
RUN yum update -y
RUN yum install -y gcc automake autoconf libtool make
RUN curl -L https://www.opscode.com/chef/install.sh | bash
RUN echo "gem: --no-ri --no-rdoc" > ~/.gemrc

# Install Berkshelf with chef's own ruby
RUN /opt/chef/embedded/bin/gem install berkshelf
