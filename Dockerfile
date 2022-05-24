FROM nginx:latest

ADD css/style.css /usr/share/nginx/html/css/style.css
ADD index.html /usr/share/nginx/html/index.html
ADD ico/myIcon.png /usr/share/nginx/html/ico/myIcon.png
ADD img/avatar_original.png /usr/share/nginx/html/img/avatar_original.png

RUN chmod +r /usr/share/nginx/html/css/style.css
RUN chmod +r /usr/share/nginx/html/index.html
RUN chmod +r /usr/share/nginx/html/img/avatar_original.png

CMD [ "nginx", "-g", "daemon off;" ]
