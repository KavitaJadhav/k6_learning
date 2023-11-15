import http from 'k6/http';
import {check} from 'k6';
import {setTags} from "./../../helper.js";
import * as db from './../../db.js';

export default function () {
    setTags();

    let user_ids = db.getUserIds()
    console.log(user_ids)

    let res = http.get('http://test.k6.io');
    check(res, {
        'success response': (result) => result.status === 200,
        'body contains text': (result) => result.body.includes('Collection of simple web-pages suitable for load testing.')
    })
};

// Command to pass env variable
// k6 run  test.js --out json=test.json --config load-test-config.json -e ENVIRONMENT='uat'