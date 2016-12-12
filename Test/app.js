/*
* It's important to escape characters to avoid SQL injection 
* https://github.com/mysqljs/mysql#escaping-query-values
* 
* HTTP status codes
* https://en.wikipedia.org/wiki/List_of_HTTP_status_codes
*/ 

var http        = require('http');
var mysql       = require('mysql');
var express     = require('express');
var bodyParser  = require('body-parser');

var connection = mysql.createConnection({
   host : '10.10.102.166',
   user : 'root',
   password : 'Tech10172001',
   database : 'heltons'
});

connection.connect();

connection.query('SELECT 1 + 1 AS solution', function(err, rows, fields) {
   if(err) throw err;
   else console.log('database connected');
});

// instance of express server
var app = express();

// makes it possible to parse JSON
app.use(bodyParser.json());

// middleware: ready to handle invalid json
app.use(function(error, req, res, next) {
   if (error instanceof SyntaxError) {
       res.status(400).send('Bad Request');
   } else {
       next();
   }
});

/* POST - CREATE */
app.post('/task', function(req, res) {
   console.log('/task req.body = ' + JSON.stringify(req.body));
   var insert = 'INSERT INTO tasks SET ?';
   connection.query(insert, req.body, function(err, rows) {
       if(err) {
           res.status(400).send('Bad Request');
       } else {
           res.status(201).send('Created');
       }
   });
});

/* GET - READ */
app.get('/tasks', function(req, res) {
   var select = 'SELECT * FROM tasks';
   connection.query(select, function(err, rows) {
       res.send({ data : rows });
   });
});

app.get('/task/:id', function(req, res) {
   var select = 'SELECT * FROM tasks WHERE task_id = ?';
   connection.query(select, [req.params.id], function(err, rows) {
       res.send({ data : rows });
   });
});

/* PUT - UPDATE */
app.put('/task/:id', function(req, res) {
   console.log('put task with id: ' + req.params.id);
});

/* DELETE */
app.delete('/task/:id', function(req, res) {
   console.log('delete task with id: ' + req.params.id);
});

http.createServer(app).listen(3000);

console.log('http://localhost:3000/');
