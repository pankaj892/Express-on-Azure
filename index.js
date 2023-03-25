'use strict' // use strict mode

var express = require('express') // import express

var app = module.exports = express() // create express app

app.get('/', function (req, res) { // create route
    res.send('Hello World!') // send response
});

if (!module.parent) { // if this is the main module
    app.listen(3000) // listen on port 3000
    console.log('Express started on port 3000') // log to console
}