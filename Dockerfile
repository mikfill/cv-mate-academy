FROM nginx:latest


ADD css/style.css /usr/share/nginx/html/css/style.css
ADD index.html /usr/share/nginx/html/index.html
ADD ico/Github-Icon.png /usr/share/nginx/html/ico/Github-Icon.png
ADD ico/Linkedin.png /usr/share/nginx/html/ico/Linkedin.png
ADD ico/myIcon.png /usr/share/nginx/html/ico/myIcon.png
ADD ico/Telegram_logo.png /usr/share/nginx/html/ico/Telegram_logo.png
ADD img/avatar_original.png /usr/share/nginx/html/img/avatar_original.png
ADD img/sidebar-myskills-cloud.png /usr/share/nginx/html/img/sidebar-myskills-cloud.png

RUN chmod +r /usr/share/nginx/html/css/style.css
RUN chmod +r /usr/share/nginx/html/index.html
RUN chmod +r /usr/share/nginx/html/ico/Github-Icon.png
RUN chmod +r /usr/share/nginx/html/ico/Linkedin.png
RUN chmod +r /usr/share/nginx/html/ico/Telegram_logo.png
RUN chmod +r /usr/share/nginx/html/img/avatar_original.png
RUN chmod +r /usr/share/nginx/html/img/sidebar-myskills-cloud.png

CMD [ "nginx", "-g", "daemon off;" ]
