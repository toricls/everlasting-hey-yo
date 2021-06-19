FROM busybox

COPY . .
RUN chmod +x ./hey-yo.sh

ENTRYPOINT [ "./hey-yo.sh" ]
