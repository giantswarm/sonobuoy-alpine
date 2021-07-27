FROM sonobuoy/sonobuoy:v0.52.0
FROM quay.io/giantswarm/alpine:3.14.0-giantswarm

COPY --from=0 /sonobuoy /sonobuoy

WORKDIR /
CMD ["/sonobuoy", "aggregator", "--no-exit", "-v", "3", "--logtostderr"]
