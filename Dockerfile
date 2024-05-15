FROM node:lts-iron
 
WORKDIR /diaz_gabby_site/
 
COPY public/ /diaz_gabby_site/public
COPY src/ /diaz_gabby_site/src
COPY package.json /diaz_gabby_site/
 
RUN npm install
 
CMD ["npm", "start"]