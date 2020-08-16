#Using Nginx Image
FROM nginx

# Update the software packages

RUN apt update -y && apt upgrade -y

## Deploy website

RUN apt install git -y

# Clone the website

COPY index.html /usr/share/nginx/html

# Publish Port

EXPOSE 80