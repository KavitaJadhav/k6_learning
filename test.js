import http from 'k6/http';

export let options = {
    vus: 10,
    iterations: 100,
    output: 'json=test_result1.json'
};

export default function () {
    let res = http.get('http://test.k6.io');
};
