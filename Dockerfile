FROM rust:latest

RUN cargo install monolith
RUN cargo install textpod
RUN mkdir /app
WORKDIR /app
RUN apt update
RUN apt install nginx dos2unix -y
COPY ./nginx.conf /etc/nginx/sites-enabled/default
COPY ./startup.sh /app/startup.sh
RUN dos2unix /app/startup.sh

CMD ["/app/startup.sh"]
