FROM golang:1.20-alpine as builder
WORKDIR /app
RUN go install go.k6.io/xk6/cmd/xk6@v0.9.2
RUN xk6 build --with github.com/grafana/xk6-sql@v0.2.1


FROM alpine
WORKDIR /home/k6
COPY --from=builder /app /bin/

docker run -i -v $(pwd):/home/k6 k6_learning \
k6 run v1/test.k6.io/test.js \
--config v1/test.k6.io/load-test-config.json \
--out json=summary/test.json \
-e ENVIRONMENT='uat'