#Specify a base image
FROM node:alpine
ARG PORT=8080
#Copy the project
RUN mkdir /app
WORKDIR /app
COPY ./src ./ 
COPY ./entrypoint.sh ./
RUN npm install
RUN chmod 777 ./entrypoint.sh
CMD ["8080"]
ENTRYPOINT ["/bin/sh","./entrypoint.sh","$PORT"]





