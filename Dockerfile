FROM golang:1.20-alpine as builder
WORKDIR /app
RUN go install go.k6.io/xk6/cmd/xk6@v0.9.2
RUN xk6 build --with github.com/grafana/xk6-sql@v0.2.1 --with github.com/grafana/xk6-output-prometheus-remote@v0.2.0


FROM alpine
WORKDIR /home/k6
COPY --from=builder /app /bin/