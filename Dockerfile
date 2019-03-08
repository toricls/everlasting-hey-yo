FROM alpine:3.7

COPY . .
RUN chmod +x ./hey-yo.sh

ENTRYPOINT [ "./hey-yo.sh" ]
