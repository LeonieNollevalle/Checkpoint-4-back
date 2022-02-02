const connection = require('../db-config');

const db = connection.promise();
const findMany = () => {
  let sqlQuery = 'SELECT * FROM categorie';
  return db.query(sqlQuery)
    .then((result) => result[0]);
};



module.exports ={
  findMany
};