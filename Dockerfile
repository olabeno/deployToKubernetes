FROM alpine:latest
WORKDIR /app

# Install curl (for debugging if needed)
RUN apk add --no-cache bash curl

COPY entrypoint.sh .

# Ensure script is executable
RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]
