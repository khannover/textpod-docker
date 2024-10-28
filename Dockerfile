FROM rust:latest

RUN cargo install monolith textpod
RUN mkdir /app
WORKDIR /app
RUN apt update
RUN apt install nginx -y
COPY ./nginx.conf /etc/nginx/sites-enabled/default
COPY ./startup.sh /app

CMD ["/app/startup.sh"]
