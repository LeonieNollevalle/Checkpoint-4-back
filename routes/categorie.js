const categorieRouter = require('express').Router();
const Categorie = require('../models/categorie');
require('dotenv').config;

 
categorieRouter.get('/', (req, res) => {
  Categorie.findMany(req.body)
    .then((Categorie) => {
      if (Categorie) {
        res.status(200).json(Categorie);
      } else {
        res.status(404).send('Category not found');
      }
    })
    .catch((err) => {
      res.status(500).send('Error retrieving category from the database')
    })
});

categorieRouter.get('/:id', (req, res) => {
  Categorie.findOne(req.params.id)
    .then((Categorie) => {
      if (Categorie) {
        res.status(200).json(Categorie);
      } else {
        res.status(404).send('Project not found');
      }
    })
    .catch((err) => {
      res.status(500).send('Error retrieving project from the database')
    })
});

module.exports= categorieRouter;