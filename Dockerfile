FROM almalinux:10

# hadolint ignore=DL3041
RUN dnf -y install "https://yum.voxpupuli.org/openvox8-release-el-$(rpm -E %rhel).noarch.rpm" && \
    dnf -y install openvox-agent && \
    dnf clean all
