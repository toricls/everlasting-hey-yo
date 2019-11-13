FROM alpine:3.8

COPY . .
RUN chmod +x ./hey-yo.sh

ENTRYPOINT [ "./hey-yo.sh" ]
