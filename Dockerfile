FROM ubuntu:20.04
RUN apt update \
    && apt install -y python3 fortune
ADD app /app/
EXPOSE 80
CMD ["python3", "-m", "http.server", "-d", "/app/", "80"]