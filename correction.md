Tu as utilisé trop de module. 
Un module sert simplement à encapsuler du code pour le réutiliser plus simplement. 
Ton module "multiple_ec2" ne sert à rien ici, pour appeler plusieurs fois le même module tu peux le faire depuis ton fichier main principal.
D'ailleurs c'est ce qu'il te manque. Où est la base de ton code, là où je dois lancer le mon terreform init/plan/apply ?
Bravo pour la lambda qui check les ec2s. Je l'aurai fait uniquement en tf mais c'est une bonne idée aussi.

Ca manque simplement de clarté, le code est un peu spaghetti dû à la mauvaise compréhension des modules

Note tp : 14/20