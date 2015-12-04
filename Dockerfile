FROM fedora:latest
MAINTAINER Martin Hagstrom <marhag87@gmail.com>

# Updates
RUN dnf update -y

# Install environment
RUN dnf install -y rpm-build rpmdevtools openssh-clients wget rpmlint vim fedora-review
RUN dnf groupinstall -y "Development tools"

ENTRYPOINT ["/bin/bash"]
