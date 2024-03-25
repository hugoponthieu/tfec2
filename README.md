# tfec2


La partie final de notification ne fonctionne pas. Cependant les parties fonctionnent de manière indépendante. La rule event bridge est triggered lors de la création d'une EC2. Cette rule est censé envoyer une requête à la lambda défini dans le module. Cependant cette requête ne parviens jusque la lambda. 
En revanche lorsque que la lambda est activé elle permet bien de poussé un message sur une file SNS qui par la suite enverra un mail.