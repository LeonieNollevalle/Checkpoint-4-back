const express = require('express');
require('dotenv').config;
const app = express();
const connection = require('./db-config.js');
const PORT = process.env.PORT || 4000;

const { setUpRoutes } = require('./routes');
app.use(express.json());

connection.connect(err =>{
  if(err)console.log('erreur connection à la db')
  else console.log('connection à la db ok id ' + connection.threadId)
})
setUpRoutes(app);

app.listen(PORT, () =>{
  console.log(`server is running on port ${PORT}`);
})