
FROM golang:latest
LABEL maintainer="Synergyforce <manik@gmail.com>"
WORKDIR /app
COPY go.mod .
RUN go mod download
#docker run --name postgres_trial -p 5432:5432 -e POSTGRES_USER=postgres -e POSTGRES_DB=synergyf_work_day -e POSTGRES_PASSWORD=12345 -d postgres
#docker exec -it postgres3 psql -U postgres
COPY . .
RUN go build
CMD ["./go-test"]
EXPOSE 8084