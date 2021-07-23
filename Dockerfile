FROM quay.io/giantswarm/alpine:3.14.0

ARG SONOBUOY_VERSION=0.52.0

# Install sonobuoy
RUN wget -qO - "https://github.com/vmware-tanzu/sonobuoy/releases/download/v${SONOBUOY_VERSION}/sonobuoy_${SONOBUOY_VERSION}_linux_amd64.tar.gz" | tar -C /usr/local/bin -xzf - \
    && chmod 755 /usr/local/bin/sonobuoy

WORKDIR /
CMD ["/sonobuoy", "aggregator", "--no-exit", "-v", "3", "--logtostderr"]
