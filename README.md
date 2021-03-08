# Les poissons du doubs

## Avant-propos

Les consignes reprises dans ce document, ainsi que dans les différents fichiers sont susceptibles d'évoluer. N'hésitez pas à vérifier le lien suivant afin de voir si des modifications n'y ont pas été apportées : https://github.com/BioDataScience-Course/B07Ga_doubs.

Ce projet nécessite de maîtriser les modules [5](https://wp.sciviews.org/sdd-umons2/?iframe=wp.sciviews.org/sdd-umons2-2020/hierarchique.html), [6](https://wp.sciviews.org/sdd-umons2/?iframe=wp.sciviews.org/sdd-umons2-2020/k-moyenne-mds-som.html), [7](https://wp.sciviews.org/sdd-umons2/?iframe=wp.sciviews.org/sdd-umons2-2020/acp-afc.html) et [8](https://wp.sciviews.org/sdd-umons2/?iframe=wp.sciviews.org/sdd-umons2-2020/acp-afc.html) de SDD II.

## Objectifs

Ce projet est **libre** et de **groupe**. Il doit être terminé pour la fin du cours de SDD II. Ce dernier permettra de démontrer que vous avez acquis les compétences suivantes :

- être capable de se partager le travail entre les membres du groupe. Chaque membre du groupe doit travailler avec la même implication.

- être capable d'utiliser et de décrire correctement les méthodes d'ordination (représentation sur des cartes) et de classification (regroupement des individus). 

- être capable de synthétiser un carnet de notes en un rapport de synthèse.

Le long du Doubs 30 stations ont été étudiées. Des mesures environnementales et des collectes des poissons ont été réalisée sur chaque station. Votre objectif est d'utiliser les méthodes d'ordination et de classification afin de mettre en évidence plusieurs micro-habitats différents qui peuvent exister tout au long de la rivière. Une variation progressive d'une station à l'autre est également possible le long du cours d'eau.

## Consignes

Ce projet est complexe et comprend plusieurs documents que vous allez devoir compléter. Vous allez devoir judicieusement vous partager le travail. Ce projet va se décomposer en 3 phases.

**Chaque document doit être exécutable.**

### Phase de découverte

Les données sont disponible dans une base données locale `doubs_db.sqlite` dans le dossier `/data`. Vous avez également à disposition dans le dossier `supp/` des informations sur le Doubs et des études réalisées. 

- Complétez le fichier `state_of_art.Rmd` en utilisant les ressources mises à votre disposition dans le dossier `supp/`.
- Complétez le fichier `doubs_data.Rmd` afin d'explorer les données disponibles dans la base de données.

En terminant cette phase, vous êtes expert de la problématique et des données mises à votre disposition.

### Phase d'expérimentation

La seconde phase va vous permettre d'expérimenter vos analyses multivariées. Dans le fichier `multivariate_analysis.Rmd`, vous testez un ensemble d'analyses multivariées. 

Si vous considérez cela utile, vous pouvez créer plusieurs fichier afin de séparer vos carnets de notes en plusieurs fichiers.

### Phase de synthèse

La dernière phase est la phase de synthèse. Sur base du carnet de notes, vous devez extraire l'information la plus pertinente. Un rapport de synthèse doit pouvoir être lu et compris sans avoir besoin de lire les autres documents de ce projet. Votre rapport de synthèse doit portez le nom de `doubs_report.Rmd`.
