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
      res.status(500).send('Error retrieving project from the database')
    })
});

projetRouter.get('/:id', (req, res) => {
  Projet.findOne(req.params.id)
    .then((Projet) => {
      if (Projet) {
        res.status(200).json(Projet);
      } else {
        res.status(404).send('Project not found');
      }
    })
    .catch((err) => {
      res.status(500).send('Error retrieving project from the database')
    })
});

projetRouter.post('/', (req, res) => {
    Projet.createOne(req.body)
      .then((result) => {
        res.send({ succes: 'Project successfully save', data: result });
      })
      .catch((err) => {
        res.send('Error saving the Project');
      })
  });

  projetRouter.put("/:id", (req, res) => {
    Projet.updateOne(req.params.id, req.body)
        .then((result) => {
          res.status(204).send('Project updated successfully')
        })
        .catch((err) => {
          res.status(401).send("Error updating the project")
        })
    });  

    projetRouter.delete("/:id", (req, res) => {
      Projet.deleteOne(req.params.id)
        .then((result) => {
          res.send({ success: 'Project deleted successfully', data: result })
        })
        .catch((err) => {
          res.send("Error deleting the Project")
        });
    
    });

module.exports=projetRouter;