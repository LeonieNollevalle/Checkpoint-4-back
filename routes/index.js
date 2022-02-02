const projetRouter = require('./projet');
const categorieRouter =require ('./categorie');

const setUpRoutes = (app) => {
  app.use('/projet', projetRouter)
  app.use('/categorie', categorieRouter)
};

module.exports = {
setUpRoutes
}