# Käytä pohjana virallista Nginx-Imagea
FROM nginx:1.23.3

# Kopioi nyt paikallinen koodi seuraavaan kansioon /usr/share/nginx/html
COPY ./dist/angular-example-app /usr/share/nginx/html

# Nyt määritetään portti
EXPOSE 80

# Käynnistä Nginx
CMD ["nginx", "-g", "daemon off;"]
