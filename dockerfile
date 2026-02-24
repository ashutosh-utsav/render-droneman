FROM debian:bookworm-slim

WORKDIR /app

COPY pocketbase /app/pocketbase
COPY pb_data /app/pb_data

RUN chmod +x /app/pocketbase

EXPOSE 10000

CMD ["./pocketbase", "serve", "--http=0.0.0.0:10000"]