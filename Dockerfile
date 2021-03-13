FROM gcr.io/distroless/java:11

ENV IP="127.0.0.1"


# Main  server port
EXPOSE 9000
# Images server port
EXPOSE 9001
# Web server port
EXPOSE 8080

COPY --chown=nonroot:nonroot dc-server /datacrow

WORKDIR /datacrow
VOLUME  ["/data"]

USER nonroot:nonroot

CMD [ "/datacrow/datacrow-server.jar", "-ip:${IP}", "-userdir:/data", "-port:9000", "-imageserverport:9001", "-webserverport:8080" ]