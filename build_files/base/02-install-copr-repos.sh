
#!/usr/bin/bash

set -eoux pipefail

# Add Staging repo
curl --retry 3 -Lo /etc/yum.repos.d/ublue-os-staging-fedora-"$(rpm -E %fedora)".repo \
    https://copr.fedorainfracloud.org/coprs/ublue-os/staging/repo/fedora-"$(rpm -E %fedora)"/ublue-os-staging-fedora-"$(rpm -E %fedora)".repo

# Add Switcheroo Repo
curl --retry 3 -Lo /etc/yum.repos.d/_copr_sentry-switcheroo-control_discrete.repo \
    https://copr.fedorainfracloud.org/coprs/sentry/switcheroo-control_discrete/repo/fedora-"$(rpm -E %fedora)"/sentry-switcheroo-control_discrete-fedora-"$(rpm -E %fedora)".repo

# Add Nerd Fonts Repo
curl --retry 3 -Lo /etc/yum.repos.d/_copr_che-nerd-fonts-"$(rpm -E %fedora)".repo https://copr.fedorainfracloud.org/coprs/che/nerd-fonts/repo/fedora-"$(rpm -E %fedora)"/che-nerd-fonts-fedora-"$(rpm -E %fedora)".repo

#incus, lxc, lxd
if [[ "${FEDORA_MAJOR_VERSION}" -lt "42" ]]; then
    curl -Lo /etc/yum.repos.d/ganto-lxc4-fedora-"${FEDORA_MAJOR_VERSION}".repo \
        https://copr.fedorainfracloud.org/coprs/ganto/lxc4/repo/fedora-"${FEDORA_MAJOR_VERSION}"/ganto-lxc4-fedora-"${FEDORA_MAJOR_VERSION}".repo
fi

#umoci
curl --retry 3 -Lo /etc/yum.repos.d/ganto-umoci-fedora-"${FEDORA_MAJOR_VERSION}".repo \
    https://copr.fedorainfracloud.org/coprs/ganto/umoci/repo/fedora-"${FEDORA_MAJOR_VERSION}"/ganto-umoci-fedora-"${FEDORA_MAJOR_VERSION}".repo

#ublue-os staging
curl --retry 3 -Lo /etc/yum.repos.d/ublue-os-staging-fedora-"${FEDORA_MAJOR_VERSION}".repo \
    https://copr.fedorainfracloud.org/coprs/ublue-os/staging/repo/fedora-"${FEDORA_MAJOR_VERSION}"/ublue-os-staging-fedora-"${FEDORA_MAJOR_VERSION}".repo

#karmab-kcli
curl --retry 3 -Lo /etc/yum.repos.d/karmab-kcli-fedora-"${FEDORA_MAJOR_VERSION}".repo \
    https://copr.fedorainfracloud.org/coprs/karmab/kcli/repo/fedora-"${FEDORA_MAJOR_VERSION}"/karmab-kcli-fedora-"${FEDORA_MAJOR_VERSION}".repo

# Fonts
curl --retry 3 -Lo /etc/yum.repos.d/atim-ubuntu-fonts-fedora-"${FEDORA_MAJOR_VERSION}".repo \
    https://copr.fedorainfracloud.org/coprs/atim/ubuntu-fonts/repo/fedora-"${FEDORA_MAJOR_VERSION}"/atim-ubuntu-fonts-fedora-"${FEDORA_MAJOR_VERSION}".repo

# Kvmfr module
curl --retry 3 -Lo /etc/yum.repos.d/hikariknight-looking-glass-kvmfr-fedora-"${FEDORA_MAJOR_VERSION}".repo \
    https://copr.fedorainfracloud.org/coprs/hikariknight/looking-glass-kvmfr/repo/fedora-"${FEDORA_MAJOR_VERSION}"/hikariknight-looking-glass-kvmfr-fedora-"${FEDORA_MAJOR_VERSION}".repo

# Podman-bootc
curl --retry 3 -Lo /etc/yum.repos.d/gmaglione-podman-bootc-fedora-"${FEDORA_MAJOR_VERSION}".repo \
    https://copr.fedorainfracloud.org/coprs/gmaglione/podman-bootc/repo/fedora-"${FEDORA_MAJOR_VERSION}"/gmaglione-podman-bootc-fedora-"${FEDORA_MAJOR_VERSION}".repo
