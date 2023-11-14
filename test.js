import http from 'k6/http';
import execution from 'k6/execution';
import {check} from 'k6';

export default function () {
    execution.vu.tags.environment = __ENV.ENVIRONMENT;
    console.log(execution.vu.tags)

    let res = http.get('http://test.k6.io');
    check(res, {
        'success response': (result) => result.status === 200,
        'body contains text': (result) => result.body.includes('Collection of simple web-pages suitable for load testing.')
    })
};

// Command to pass env variable
// k6 run  test.js --out json=test.json --config load-test-config.json -e ENVIRONMENT='uat'