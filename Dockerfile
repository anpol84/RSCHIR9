
FROM golang:latest

ENV PORT=8080
ENV NAME=some

WORKDIR /app
# Копируем файлы go.mod и go.sum в директорию /app
COPY go.mod go.sum ./

RUN go mod download

COPY . .

CMD go run ./cmd/main.go --port=${PORT} --name=${NAME}

