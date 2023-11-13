import http from 'k6/http';

export default function () {
    let res = http.get('http://test.k6.io');
};
