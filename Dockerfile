FROM golang:1.17.4
WORKDIR /app
COPY . .
RUN go build -o application
CMD [ "./application" ]
