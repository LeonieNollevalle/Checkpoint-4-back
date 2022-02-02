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
const createOne = ({ title, date, subtitle, description, image_url, id_categorie }) => {
  return db.query(
    'INSERT INTO projet (title, date, subtitle, description, image_url, id_categorie) VALUES (?, ?, ?, ?, ?, ?)',
    [title, date, subtitle, description, image_url, id_categorie])
    .then((result) => result[0])
}
const updateOne = (Id, Data) => {
  return db.query(
    'UPDATE projet SET ? WHERE id = ?',[Data, Id])
    .then((result) => result[0])
};

module.exports ={
  findMany,
  findOne,
  createOne,
  updateOne,
};