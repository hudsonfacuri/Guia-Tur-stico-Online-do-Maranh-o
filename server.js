const app = require('./src/app.js');

const PORT = 3000;
app.set("view engine", "ejs")
app.listen(PORT, () => {
  console.log('atenção todos os altobots, aqui é seu lider, servidor otimos prime');
});
