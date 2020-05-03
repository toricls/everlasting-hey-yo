FROM alpine:3.9

COPY . .
RUN chmod +x ./hey-yo.sh

ENTRYPOINT [ "./hey-yo.sh" ]
