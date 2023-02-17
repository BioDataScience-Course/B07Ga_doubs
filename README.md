# les poissons du Doubs

Le Doubs est une rivière qui parcoure l'est de la France et la Suisse avant de se jeter dans la Saône. L'étude dont il est question ici s'intéresse aux communautés piscicoles de cette rivière. Ces données vous ont déjà été présentées dans les learnrs du module 6 de sorte qu'elles vont sont déjà familières avant d'aborder ce projet. Vous aviez réalisé un classification non supervisée dessus. Vous allez maintenant voir ce qu'une ordination de ces mêmes donnes va vous en apprendre.

## Objectifs

Ce projet est **libre** et sera réalisé en **groupes de quatre étudiants**. Il permettra de démontrer que vous avez acquis les compétences suivantes :

-   être capable de se partager le travail entre les membres du groupe. Chaque membre du groupe doit travailler avec la même implication.

-   être capable d'utiliser et d'interpréter correctement les méthodes d'ordination (représentation sur des cartes) et de classification (regroupement des individus) pour explorer des données multivariées.

-   pouvoir sélectionner les méthodes d'ordination et de classification les plus pertinentes en fonction de la problématique étudiée.

-   être à même de synthétiser un carnet de notes en un rapport de synthèse.

Ce projet nécessite de maîtriser les modules 6 et 7 du cours de [Science des données II](https://wp.sciviews.org/sdd-umons2/?iframe=wp.sciviews.org/sdd-umons2-2022/).

## Consignes

Trente stations ont été étudiées le long du Doubs. Des mesures environnementales et des collectes de poissons ont été réalisées en chaque station. Votre objectif est d'utiliser les méthodes d'ordination et de classification afin de mettre en évidence plusieurs micro-habitats différents qui peuvent exister tout au long de cette rivière. Gardez aussi à l'esprit qu'une variation *progressive* d'une station à l'autre est également possible au fil de l'eau.

Ce projet est complexe et comprend plusieurs documents que vous allez devoir compléter. Vous allez devoir judicieusement vous partager le travail. Ce projet va se décomposer en trois phases.

### Phase de découverte

Les données sont disponibles dans le dossier `data` sous forme de cinq tableaux. Vous avez également à disposition dans le dossier `bibliography` des informations sur le Doubs et des études réalisées sur les poissons de cette rivière.

-   Complétez le fichier `docs/doubs_notes_state_of_art.Rmd` en utilisant les ressources mises à votre disposition dans le dossier `bibliography` (vous pouvez ajouter vos recherches personnelles, max. 1 ou 2 références). Répartissez-vous le travail et ne dépassez pas 1h30 à 2h au total grand maximum sur cette partie !

-   Complétez le fichier `docs/doubs_notes_data.Rmd` afin d'explorer les données disponibles dans la base de données.

### Phase d'analyse exploratoire

La seconde phase va vous permettre de rechercher des pistes grâce aux analyses multivariées. Dans le fichier `docs/doubs_notes_analysis.Rmd`, vous testerez diverses analyses multivariées pertinentes dans ce contexte et vous les interpréterez.

**Remarque :** veuillez conserver les noms et la structure de chaque fichier (ne créez pas un fichier différent pour chaque membre du groupe, par exemple). Vous devez être capable de vous répartir le travail, de réaliser vos différents commits et de gérer les conflits éventuels dans GitHub en travaillant sur les *mêmes fichiers* ! Assurez-vous à la fin que vous pouvez compiler les versions HTML de ces documents (bouton 'Knit') sans erreurs, sinon, corrigez-les avant soumission finale.

Tout le monde est responsable du contenu du projet dans sa globalité. Même si vous vous répartissez le travail, relisez les contributions des autres et obtenez un consensus entre vous. Si un graphique ou une analyse est mauvaise, ce n'est pas juste l'étudiant qui l'a réalisé qui en est responsable, mais le groupe tout entier ! Si un étudiant contribue peu ou pas du tout au projet, par contre, nous le verrons dans l'historique des commits et il sera pénalisé proportionnellement, sans que cela n'impacte la note des autres, à condition que le travail soit réalisé complètement.

Notez bien qu'en situation réelle cette phase exploratoire mène à des informations utiles qui vont motiver l'approfondissement de votre étude en mettant en œuvre des tests d'hypothèses ou de la modélisation, bref, les techniques que vous avez apprises au cours SDD I et dans la première partie du cours SDD II. En principe, ces travaux complémentaires doivent faire l'objet de collecte de données indépendantes du premier jeu de données qui a servi à l'exploration, selon le principe que *des données qui ont déjà servi (dans la phase exploratoire) ne peuvent pas être réutilisées (pour la modélisation ou les tests d'hypothèses)*. Dans le cadre de cet exercice, vous vous limitez à la phase exploratoire, tout en étant bien conscients qu'en principe, le travail du scientifique des données ne s'arrête pas là !

### Phase de synthèse

La dernière phase consiste à rédiger un rapport de synthèse. Sur base de vos carnets de notes, vous devez extraire l'information la plus pertinente. Un rapport de synthèse doit pouvoir être lu et compris sans avoir besoin de lire les autres documents de votre projet. Votre rapport de synthèse doit portez le nom de `docs/doubs_report.Rmd` et doit respecter la structure proposée.

Le template de ce projet est accessible ici : <https://github.com/BioDataScience-Course/B07Ga_doubs>.
