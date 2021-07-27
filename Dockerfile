# Build: docker build --no-cache -t routeasy .
# Run: docker run -d <-e "ENVVAR=value"> -p 3000:3000 -it --name server routeasy

FROM node:14-buster

COPY . .
CMD ["bash", "./scripts/init-db2.sh"]