#Pass env variable
k6 run  test.js --out json=test.json --config load-test-config.json -e ENVIRONMENT='uat'

#Updated command after restructuring
k6 run v1/test.k6.io/test.js --out json=summary/test.json --config v1/test.k6.io/load-test-config.json -e ENVIRONMENT='uat'

#Build docker image
docker build . -t k6_learning

#run tests with docker image
docker run -i -v $(pwd):/home/k6 k6_learning \
k6 run v1/test.k6.io/test.js \
--config v1/test.k6.io/load-test-config.json \
--out json=summary/test.json \
-e ENVIRONMENT='uat'

#run tests with docker image
docker run -i -v $(pwd):/home/k6 k6_learning \
k6 run v1/test.k6.io/test.js \
--quiet --log-output=none \
--config v1/test.k6.io/load-test-config.json \
--out json=summary/test.json \
-e ENVIRONMENT='uat'