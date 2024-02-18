# Vérifications de doubs_report.qmd
doubs_report <- parse_rmd("../../doubs_report.qmd",
  allow_incomplete = TRUE, parse_yaml = TRUE)

test_that("Le bloc-notes est-il compilé en un fichier final HTML ?", {
  expect_true(is_rendered("doubs_report.qmd"))
  # La version compilée HTML du rapport est introuvable
  # Vous devez créer un rendu de votre rapport Quarto (bouton 'Rendu')
  # Vérifiez aussi que ce rendu se réalise sans erreur, sinon, lisez le message
  # qui s'affiche dans l'onglet 'Travaux' et corrigez ce qui ne va pas dans
  # votre document avant de réaliser à nouveau un rendu HTML.
  # IL EST TRES IMPORTANT QUE VOTRE DOCUMENT COMPILE ! C'est tout de même le but
  # de votre analyse que d'obtenir le document final HTML.

  expect_true(is_rendered_current("doubs_report.qmd"))
  # La version compilée HTML du rapport existe, mais elle est ancienne
  # Vous avez modifié le document Quarto après avoir réalisé le rendu.
  # La version finale HTML n'est sans doute pas à jour. Recompilez la dernière
  # version de votre bloc-notes en cliquant sur le bouton 'Rendu' et vérifiez
  # que la conversion se fait sans erreur. Sinon, corrigez et regénérez le HTML.
})

test_that("La structure du document est-elle conservée ?", {
  expect_true(all(c("Introduction", "But", "Matériel et méthodes",
    "Résultats","Analyse 1", "Analyse 2", "Analyse 3", "Analyse 4",
    "Discussion et conclusions", "Références")
    %in% (rmd_node_sections(doubs_report) |> unlist() |> unique())))
  # Les sections (titres) attendues du rapport ne sont pas toutes présentes
  # Ce test échoue si vous avez modifié la structure du document, un ou
  # plusieurs titres indispensables par rapport aux exercices ont disparu ou ont
  # été modifié. Vérifiez la structure du document par rapport à la version
  # d'origine dans le dépôt "template" du document (lien au début du fichier
  # README.md).

  expect_true(any(duplicated(rmd_node_label(doubs_report))))
  # Un ou plusieurs labels de chunks sont dupliqués dans le rapport
  # Les labels de chunks doivent absolument être uniques. Vous ne pouvez pas
  # avoir deux chunks qui portent le même label. Vérifiez et modifiez le label
  # dupliqué pour respecter cette règle. Comme les chunks et leurs labels sont
  # imposés dans ce document cadré, cette situation ne devrait pas se produire.
  # Vous avez peut-être involontairement dupliqué une partie du document ?
})

test_that("L'entête YAML a-t-il été complété dans le rapport ?", {
  expect_true(doubs_report[[1]]$title != "___")
  expect_true(!grepl("__", doubs_report[[1]]$title))
  expect_true(grepl("^[^_]....+", doubs_report[[1]]$title))
  # Le nom titre n'est pas complété ou de manière incorrecte dans l'entête
  # Vous devez indiquer un titre dans l'entête YAML à la place de "___" et
  # éliminer les caractères '_' par la même occasion.

  expect_true(grepl("[a-z]", doubs_report[[1]]$title))
  # Aucune lettre minuscule n'est trouvée dans le titre
  # Avez-vous bien complété le champ 'titre' dans l'entête YAML ?
  # Vous ne pouvez pas écrire le titre tout en majuscules. Utilisez une
  # majuscule en début de la phrase, et des minuscules ensuite.

  expect_true(grepl("[A-Z]", doubs_report[[1]]$title))
  # Aucune lettre majuscule n'est trouvée dans le titre
  # Avez-vous bien complété le champ 'title' dans l'entête YAML ?
  # Vous ne pouvez pas écrire le titre tout en minuscules. Utilisez une
  # majuscule en début de la phrase, et des minuscules ensuite.

  expect_true(doubs_report[[1]]$author != "___, ___, ___, ___")
  expect_true(!grepl("__", doubs_report[[1]]$author))
  expect_true(grepl("^[^_]....+", doubs_report[[1]]$author))
  # Le nom des auteurs n'est pas complété ou de manière incorrecte dans l'entête
  # Vous devez indiquer vos noms dans l'entête YAML à la place de "___" et
  # éliminer les caractères '_' par la même occasion.

  expect_true(grepl("[a-z]", doubs_report[[1]]$author))
  # Aucune lettre minuscule n'est trouvée dans le nom d'auteur
  # Avez-vous bien complété le champ 'author' dans l'entête YAML ?
  # Vous ne pouvez pas écrire votre nom tout en majuscules. Utilisez une
  # majuscule en début de nom et de prénom, et des minuscules ensuite.

  expect_true(grepl("[A-Z]", doubs_report[[1]]$author))
  # Aucune lettre majuscule n'est trouvée dans le nom d'auteur
  # Avez-vous bien complété le champ 'author' dans l'entête YAML ?
  # Vous ne pouvez pas écrire votre nom tout en minuscules. Utilisez une
  # majuscule en début de nom et de prénom, et des minuscules ensuite.
})
