FROM cockroachdb/cockroach:v2.0.2

# overrite default cockroach so we can execute sql commands when container starts
COPY cockroach.sh cockroach /cockroach/

WORKDIR /cockroach/

ENV COCKROACH_CHANNEL=official-docker

EXPOSE 26257 8080
ENTRYPOINT ["/cockroach/cockroach.sh"]