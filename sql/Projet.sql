CREATE DATABASE checkpoint4;
USE checkpoint4;

CREATE TABLE projet (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NUll,
  title VARCHAR(250) NOT NULL,
  date INT,
  subtitle VARCHAR(250),
  description LONGTEXT,
  image_url VARCHAR(250),
  id_categorie INT NOT NULL,
   CONSTRAINT fk_id_categorie    
        FOREIGN KEY (id_categorie)             
        REFERENCES categorie(id) 
) 
/*EDITION_id_1*/

INSERT INTO projet (title, date, subtitle, description, image_url, id_categorie)
  VALUES ("Closer","2019","Workshop","Fanzine réalisé lors d’un workshop, sur le thème de la viralité mené par Mathieu Renard issu de Lendroit Edition. Workshop qui a abouti à un fanzine composé de photographies intimistes et étouffantes,faites à partir d’un scanner pour être par la suite imprimées et photocopiées ce qui crée une dégradation de l’image.","https://freight.cargo.site/t/original/i/b132376dab2b4f9c3a59b4bb7b20c166a023692da0c882362cb34b109c69c43b/C2.jpg","1");
INSERT INTO projet (title, date, subtitle, description, image_url, id_categorie)
  VALUES ("Ponctué de Blanc","2021","Edition","Sur un thème Ranger, trier, classer, il nous a été demandé de prélever des éléments de textes afin de les ranger, les trier et les classer. J’ai choisi de travailler à partir de la ponctuation; le spectateur se retrouve sans voix, le silence est la réponse apportée au classement de ce texte.","https://freight.cargo.site/t/original/i/53313b300d431e125e343a8f19e924f5ffe834ce675c2112b214dfa899401516/Scan-11.jpg","1");
INSERT INTO projet (title, date, subtitle, description, image_url, id_categorie)
  VALUES ("Allié au choix","2021","Mémoire","Mémoire réalisé sur le lien entre le graphisme et la féminité.","https://freight.cargo.site/w/860/q/94/i/1a5a4cd656f231c2165a024c95bc79f5b62f8a52f6e4ada9f29fb173aa5eb19f/yya.jpg","1");
INSERT INTO projet (title, date, subtitle, description, image_url, id_categorie)
  VALUES ("Passage","2021","Voyage","Livret réalisé suite à un voyage à Lisbonne durant lequel un matériel graphique a été collecté. Un matériel qui a donné naissance à une édition sur la thématique du passage. Une expérience passagère dans une ville de passage, où le temps passe et laisse des traces.","https://freight.cargo.site/t/original/i/92d098921f4d15368ef5b7605a2ef9807ca01f0fadbdd51a95e253b18af82a5f/lisbi.jpg","1");
INSERT INTO projet (title, date, subtitle, description, image_url, id_categorie)
  VALUES ("Ne pas couvrir","2021","Personnel","Catalogue d'exposition réalisé à la demande d'Éric Choisy Bernard, Artiste, Designer Numérique, Bricodeur et enseignant.","https://freight.cargo.site/t/original/i/4f4390035e02b0d5318a4d5bf444def6f5f44d79f13b414b959b7842a350434b/DSC00264.jpg","1");

/*IDENTITÉ_id_2*/

INSERT INTO projet (title, date, subtitle, description, image_url, id_categorie)
  VALUES ("Ariane","2020","Identité Visuelle-Stage/Ben&Jo","Proposition d’identité visuelle réalisée durant mon stage pour l’entreprise Semia incubation, qui est une entreprise d’incubation de start-up. Une identité réalisée autour du fil d’ariane.","https://freight.cargo.site/w/1400/q/94/i/3d5ee990e99a31061be7b9d07504259b5dfd69d4e9e49491fbd74ceef6cd47dc/Identiteglobal.jpg","2");

INSERT INTO projet (title, date, subtitle, description, image_url, id_categorie)
  VALUES ("Art dans les chapelles","2021","Identité Visuelle","Création d’une identité visuelle pour le festival art dans les chapelles, basée sur la mise en lumière des artistes menant à la création d’une police de caractères modulaires prélevés dans les vitraux.","https://freight.cargo.site/w/3508/q/94/i/83af5400db117f9e2361dc76340ccbcde30b5de9d6469c89093e757fdb439cbb/typo.jpg","2");


/*INTERFACES_id_3*/

INSERT INTO projet (title, date, subtitle, description, image_url, id_categorie)
  VALUES ("Jdp","2021","Application","Création d’une application pour l’opéra de Rennes, proposant une expérience d’écoute de musique d’opéra durant la fermeture de l’opéra ainsi qu’une présentation de sa programmation à travers des playlists de promotion.","https://freight.cargo.site/w/1500/q/75/i/c1046805cf6fa5547088a0fa40d4d67ad0ca196c97b27932ae8a871f063c6471/Sans-titre---2.png","3");

INSERT INTO projet (title, date, subtitle, description, image_url, id_categorie)
  VALUES ("an","2021","Trans média","Dans le cadre de mon projet de fin d'études il m'a été proposé de réaliser une identité visuelle, une communication ainsi qu'un site web pour un professionnel de la dermographie","https://freight.cargo.site/t/original/i/a2f9aea851d68a0c303be5a243139fa43a6bf83ece7940da707320f71dfb2873/-tel1.jpg","3");

INSERT INTO projet (title, date, subtitle, description, image_url, id_categorie)
  VALUES ("Focus","2021","Site Web","Création d'un site web autour du cinéma, proposant un large choix de suggestion de film aléatoire. Afin de sortir du modèle des grandes plateformes de streaming qui noie l'utilisateur dans un grand nombre de contenus","https://freight.cargo.site/t/original/i/7aa4e6d129273f18d23e4291b2662352468fe7aaf0eb9f1038eda0f05a0b1fb1/Capture-decran-2021-12-28-a-18.16.39.png","3");

INSERT INTO projet (title, date, subtitle, description, image_url, id_categorie)
  VALUES ("Discover","2021","Site Web","Création d'un site web autour de la musique durant un hackathon. Sa fonctionnalité principale étant de faire de faire la promotion d'artistes peu connus, en proposant à l'utilisateur d'écouter des playlists par genre de ces derniers.","https://freight.cargo.site/t/original/i/da4756a16fef5370d5e7739dc1b16411ea397aa2cb740844d61bcc1d08fedb82/Presentation.png","3");

INSERT INTO projet (title, date, subtitle, description, image_url, id_categorie)
  VALUES ("Migratio","2019","Site Web","Prototype de site web réalisé pour le musée de Bretagne, une expérience proposant un aperçu de la collection du musée autour du vêtement, dans diverses catégories telles que le vêtement de travail.","https://freight.cargo.site/t/original/i/1a653eaf2ba13faf42bbad0ae64aa304e6b33b97264e251d2e19af6806c5e372/Capture-decran-2021-01-31-a-19.00.57.png","3");

INSERT INTO projet (title, date, subtitle, description, image_url, id_categorie)
  VALUES ("DIY","2022","Site Web","Création d'une fonctionnalité web pour le site ManoMano durant un hackathon. Cette fonctionnalité consiste à aider les personnes novices en bricolage, en leur créant automatiquement des paniers d'achats en fonction des travaux qu'elles souhaitent réaliser.","https://freight.cargo.site/w/830/q/94/i/3c5024a5599c8475e0301f46e5bac4432c6bf55474f5c595a838358895945487/Capture-decran-2022-01-23-a-21.33.12.png","3");
 

/*TYPOGRAPHY_id_4*/

INSERT INTO projet (title, date, subtitle, description, image_url, id_categorie)
  VALUES ("GarageType","2020","Workshop","Workshop confiné, où il nous a été demandé de choisir un lieu dans notre logement afin d’en ressortir des modules qui nous ont par la suite servis à créer des grilles modulaires pour finalement réaliser des caractères modulaires.","https://freight.cargo.site/t/original/i/3f7ac218345d453ca519a1aa3e3931bc5b15ddd99deb9c6ca898b2c43338b177/mockup-3.jpg","4");

INSERT INTO projet (title, date, subtitle, description, image_url, id_categorie)
  VALUES ("Le zéphire","2021","Workshop","Sur la thématique liberticide. Il nous a été demandé de concevoir un ensemble de caractères afin de composer des slogans avec ces derniers. Ici la thématique à été traitée sous l'angle du football. Un lieu liberticide pour le genre car centré sur la fraternité davantage que sur l'inclusivité.","https://freight.cargo.site/t/original/i/45c47776d375a88e1df16bc0002cf0cf552f5640ce1c347d90a0589003cf4cc5/Flag_mockup_4.jpg","4");
  
/*MOTION_id_5*/

INSERT INTO projet (title, date, subtitle, description, image_url, id_categorie)
  VALUES ("Fou de danse","2019","Workshop","Workshop réalisé avec le Jardin graphique sur la thématique de la danse à partir d’univers colorimétriques imposés. À la fin de ce workshop une affiche animée a été réalisée.","https://freight.cargo.site/t/original/i/c21c614a2a4d38cf079ec6b02d659424238ead85b622d90f97dc27472cffafb9/Composition-1_1.gif","5");

INSERT INTO projet (title, date, subtitle, description, image_url, id_categorie)
  VALUES ("StillMoving","2020","Workshop","Durant ce Workshop il nous a été demandé de prélever des éléments dans des livres qui allaient être jetés et qui étaient donc par conséquent “saccageables”.  Ces éléments nous ont par la suite aidés à monter une vidéo, avec comme fil narratif un haïku.","https://freight.cargo.site/t/original/i/e6bab70624f54f2fb51ed87de3e5155282d7f7c2097af8bcf0a2d03be8c1d7f2/Ma-partie.gif","5");


 
    titre:"StillMoving",
    date:2020,
    catégorie:"Workshop",
    technique:"Motion",
    descritpion:"Durant ce Workshop il nous a été demandé de prélever des éléments dans des livres qui allaient être jetés et qui étaient donc par conséquent “saccageables”.  Ces éléments nous ont par la suite aidés à monter une vidéo, avec comme fil narratif un haïku.",
    images:["https://freight.cargo.site/t/original/i/17507c4b6c6fdd96cd2f303a53e1ec06cfa0d0afd71cadb38c2250a8b5425b0f/1.jpg",
    "https://freight.cargo.site/t/original/i/7d1a68e2eac9e6f2ddd926029c3867c0d88f331bcfc5cae84679df03352e4bf0/DSC00627.jpg",
  "https://freight.cargo.site/t/original/i/cee7e40ef0f16e161c7434b52704929c79e6289c28ac7bd234357c26b03d72ab/DSC09046.jpg",
"https://freight.cargo.site/t/original/i/e6bab70624f54f2fb51ed87de3e5155282d7f7c2097af8bcf0a2d03be8c1d7f2/Ma-partie.gif",
"https://freight.cargo.site/t/original/i/9282b2573133897266a2b939095e4da0cf9ef3501b6ad329307f2d0928918389/25.jpg",
"https://freight.cargo.site/t/original/i/b10a95fe9f94ea634fc2260ca097407a5c060239afad954d337b16e5704bdbdc/11.jpg",
"https://freight.cargo.site/t/original/i/9bfd2cb942e9655d067ef0b47bd464bb21215523696260e622224d2e587fe529/2.jpg",
"https://freight.cargo.site/t/original/i/e5ed601b2af94a25d1402fa834dcf6aa1bb48b15e0c26fad9eaec2061f305bbe/10.jpg"],
    videos:"https://files.cargocollective.com/c861648/stillmoving.mp4"
   
  },
];
    
  