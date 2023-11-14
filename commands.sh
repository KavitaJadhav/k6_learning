#Pass env variable
k6 run  test.js --out json=test.json --config load-test-config.json -e ENVIRONMENT='uat'

#Updated command after restructuring
k6 run v1/test.k6.io/test.js --out json=summary/test.json --config v1/test.k6.io/load-test-config.json -e ENVIRONMENT='uat'