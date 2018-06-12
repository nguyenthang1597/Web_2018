var http = require('http');
var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var session = require('express-session');
var passport = require('passport');

var flash = require('connect-flash');	

var mysql = require('./config/mysql')

require('dotenv').config()
// var handleLayoutMDW = require('./middle-wares/handleLayout');
var hbs = require('./config/express-handlebars');
var app = express();
var server = http.createServer(app);

//config Express
require('./config/express')(app, express, session, hbs, logger, cookieParser, bodyParser, passport, flash);
//config Route
require('./routes/routes')(app);

require('./config/passport')(passport);

server.listen(3000, (err) => {
	if (err)
		console.log(err);
	else
		console.log('Server is running in localhost:3000');
})
