const connection = require('../db-config');

const db = connection.promise();

const findMany = () => {
  let sqlQuery = 'SELECT * FROM projet';
  return db.query(sqlQuery)
    .then((result) => result[0]);
};

const findOne = (Id) => {
  return db.query(
    'SELECT * FROM projet WHERE id = ?',
    [Id])
    .then((result) => result[0]);
};

module.exports ={
  findMany,
  findOne,
};