# Vérifications de doubs_biblio.qmd
doubs_biblio <- parse_rmd("../../doubs_biblio.qmd",
  allow_incomplete = TRUE, parse_yaml = TRUE)

test_that("Le résumé biblio est-il compilé en un fichier final HTML ?", {
  expect_true(is_rendered("doubs_biblio.qmd"))
  # La version compilée HTML du résumé biblio est introuvable
  # Vous devez créer un rendu de votre résumé biblio Quarto (bouton 'Rendu')
  # Vérifiez aussi que ce rendu se réalise sans erreur, sinon, lisez le message
  # qui s'affiche dans l'onglet 'Travaux' et corrigez ce qui ne va pas dans
  # votre document avant de réaliser à nouveau un rendu HTML.
  # IL EST TRES IMPORTANT QUE VOTRE DOCUMENT COMPILE ! C'est tout de même le but
  # de votre analyse que d'obtenir le document final HTML.

  expect_true(is_rendered_current("doubs_biblio.qmd"))
  # La version compilée HTML du résumé biblio existe, mais elle est ancienne
  # Vous avez modifié le document Quarto après avoir réalisé le rendu.
  # La version finale HTML n'est sans doute pas à jour. Recompilez la dernière
  # version de votre bloc-notes en cliquant sur le bouton 'Rendu' et vérifiez
  # que la conversion se fait sans erreur. Sinon, corrigez et regénérez le HTML.
})

test_that("La structure du document est-elle conservée ?", {
  expect_true(all(c("Résumé bibliographique", "Références")
    %in% (rmd_node_sections(doubs_biblio) |> unlist() |> unique())))
  # Les sections (titres) attendues du résumé biblio ne sont pas toutes
  # présentes
  # Ce test échoue si vous avez modifié la structure du document, un ou
  # plusieurs titres indispensables par rapport aux exercices ont disparu ou ont
  # été modifié. Vérifiez la structure du document par rapport à la version
  # d'origine dans le dépôt "template" du document (lien au début du fichier
  # README.md).
})

test_that("L'entête YAML a-t-il été complété dans le résumé biblio ?", {
  expect_true(doubs_biblio[[1]]$title != "___")
  expect_true(!grepl("__", doubs_biblio[[1]]$title))
  expect_true(grepl("^[^_]....+", doubs_biblio[[1]]$title))
  # Le nom titre n'est pas complété ou de manière incorrecte dans l'entête
  # Vous devez indiquer un titre dans l'entête YAML à la place de "___" et
  # éliminer les caractères '_' par la même occasion.

  expect_true(grepl("[a-z]", doubs_biblio[[1]]$title))
  # Aucune lettre minuscule n'est trouvée dans le titre
  # Avez-vous bien complété le champ 'titre' dans l'entête YAML ?
  # Vous ne pouvez pas écrire le titre tout en majuscules. Utilisez une
  # majuscule en début de la phrase, et des minuscules ensuite.

  expect_true(grepl("[A-Z]", doubs_biblio[[1]]$title))
  # Aucune lettre majuscule n'est trouvée dans le titre
  # Avez-vous bien complété le champ 'title' dans l'entête YAML ?
  # Vous ne pouvez pas écrire le titre tout en minuscules. Utilisez une
  # majuscule en début de la phrase, et des minuscules ensuite.

  expect_true(doubs_biblio[[1]]$author != "___, ___, ___, ___")
  expect_true(!grepl("__", doubs_biblio[[1]]$author))
  expect_true(grepl("^[^_]....+", doubs_biblio[[1]]$author))
  # Le nom des auteurs n'est pas complété ou de manière incorrecte dans l'entête
  # Vous devez indiquer vos noms dans l'entête YAML à la place de "___" et
  # éliminer les caractères '_' par la même occasion.

  expect_true(grepl("[a-z]", doubs_biblio[[1]]$author))
  # Aucune lettre minuscule n'est trouvée dans le nom d'auteur
  # Avez-vous bien complété le champ 'author' dans l'entête YAML ?
  # Vous ne pouvez pas écrire votre nom tout en majuscules. Utilisez une
  # majuscule en début de nom et de prénom, et des minuscules ensuite.

  expect_true(grepl("[A-Z]", doubs_biblio[[1]]$author))
  # Aucune lettre majuscule n'est trouvée dans le nom d'auteur
  # Avez-vous bien complété le champ 'author' dans l'entête YAML ?
  # Vous ne pouvez pas écrire votre nom tout en minuscules. Utilisez une
  # majuscule en début de nom et de prénom, et des minuscules ensuite.
})
