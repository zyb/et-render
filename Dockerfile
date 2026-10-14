
FROM ghcr.io/easytier/easytier:v2.6.4

ENV PORT=10000

ENTRYPOINT ["/sbin/tini", "--", "/bin/sh", "-c"]

CMD ["exec easytier-core --no-tun --listeners \"ws://0.0.0.0:${PORT}\" --private-mode true --network-name \"${ET_NETWORK_NAME}\" --network-secret \"${ET_NETWORK_SECRET}\" --rpc-portal 127.0.0.1:15888"]
