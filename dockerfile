FROM node
RUN mkdir /app
WORKDIR /app
COPY ./src ./
RUN npm install
ARG PORT_INT
ENV PORT=${PORT_INT}
RUN echo "#!/bin/bash \n npm start PORT=${PORT}" > ./entrypoint.sh
RUN chmod 777 ./entrypoint.sh
ENTRYPOINT ["./entrypoint.sh","$PORT"]