const projetRouter =require('express').Router();
const Projet = require('../models/projet');
require('dotenv').config;

projetRouter.get('/', (req, res) => {
  Projet.findMany(req.body)
    .then((projet) => {
      if (projet) {
        res.status(200).json(projet);
      } else {
        res.status(404).send('Project not found');
      }
    })
    .catch((err) => {
      res.status(500).send('Error retrieving movies from the database')
    })
});


module.exports=projetRouter;