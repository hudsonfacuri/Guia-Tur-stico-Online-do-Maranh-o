const express = require('express');
var mysql = require('mysql');

const app = express();

app.use(express.json());

app.get('/index', (req, res) => {
  res
    .status(200)
    .render("index");
});

app.get('/sobre', (req, res) => {
  res
    .status(200)
    .render("sobre");
});

app.get('/cidades' , async (req, res) => {
const connection = mysql.createConnection({
  host: 'localhost',
  user: "root",
  password: "Admin",
  database: "cidades",
})

connection.connect()
//console.log(connection)
var resposta = await connection.query('SELECT * FROM cidade', (err, rows, fields) => {
  if (err) throw err

  console.log('The solution is: ', rows[0].Nome)
  return rows
})
connection.end()
console.log(resposta)
res
    .status(200)
    //alterar o send
    .render('cidades', {resposta:resposta} );
})

module.exports = app;

