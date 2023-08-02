FROM nginx:latest
EXPOSE 80
COPY nginx-for-compose.conf /etc/nginx/nginx.conf
CMD ["nginx", "-g", "daemon off;"]