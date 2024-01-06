FROM debian:bullseye

RUN apt-get update -y 
RUN apt-get install wget -y && wget https://github.com/google/cadvisor/releases/download/v0.37.0/cadvisor
RUN chmod +x cadvisor

EXPOSE 8080

CMD ["./cadvisor"]