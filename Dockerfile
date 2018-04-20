FROM busybox:glibc
WORKDIR /app
ADD server /app
CMD ["./server"]
