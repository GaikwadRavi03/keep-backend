var request = require('supertest')
var app = require('../router/Keep.route');
describe('GET /', function () {
    it('respond with hello world', function () {
        //navigate to root and check the the response is "hello world"
        request(app).get('/hello').expect('Hello World');
    });
});