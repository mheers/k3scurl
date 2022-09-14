ARG K3S_VERSION
ARG CURL_VERSION

FROM tarampampam/curl:${CURL_VERSION} as curl

FROM rancher/k3s:${K3S_VERSION}
COPY --from=curl /bin/curl /bin/curl
