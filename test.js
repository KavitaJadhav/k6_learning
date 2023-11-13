import http from 'k6/http';
import {check} from 'k6';

export default function () {
    let res = http.get('http://test.k6.io');
    check(res, {
        'success response': (result) => result.status === 200,
        'body contains text': (result) => result.body.includes('Collection of simple web-pages suitable for load testing.')
    })
};
