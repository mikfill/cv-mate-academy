FROM nginx:latest

COPY . /usr/share/nginx/html/

RUN apt-get update && apt-get install -y nano

CMD [ "nginx", "-g", "daemon off;" ]
