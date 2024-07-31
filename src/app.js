const express = require('express');

const app = express();

app.use(express.json());

app.get('/teste', (req, res) => {
  res
    .status(200)
    .send({ mensagem: 'Ufa, funcionou heim, não passava nem uma agulha' });
});

module.exports = app;
