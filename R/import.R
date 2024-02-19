# Importation et remaniement des données

# Importation des données brutes ------------------------------------------

SciViews::R

# Le package ade4 ne propose pas de tableaux habituels, mais des listes de
#  tableaux.
data("doubs", package = "ade4")
# page d'aide associée aux données
?ade4::doubs

# environment -------------------------------------------------------------

env <- as_dtx(doubs$env)
env$station <- paste("station", 1:30, sep = "_")
write$rds(env, "data/environment.rds")

# fish --------------------------------------------------------------------

fish <- as_dtx(doubs$fish)
fish$station <- paste("station", 1:30, sep = "_")
fish <- janitor::clean_names(fish)
write$rds(fish, "data/fish.rds")

# map ---------------------------------------------------------------------

map <- as_dtx(doubs$xy)
map$station <- paste("station", 1:30, sep = "_")
write$rds(map, "data/map.rds")

chart(map, y ~ x %label=% station) +
  geom_path() +
  geom_point() +
  ggrepel::geom_label_repel() +
  theme_void()

# species -----------------------------------------------------------------

sp <- as_dtx(doubs$species)
sp <- janitor::clean_names(sp)
sp$code <- tolower(sp$code)
write$rds(sp, "data/species.rds")

# environment_dictionnary -------------------------------------------------

envi_dic <- as_dtx(tribble(
  ~label, ~description, ~"unités_coef",
  "dfs", "distance depuis la source", "km * 10",
  "alt", "altitude", "m",
  "slo", "pente des berges en `log(x + 1)`", "‰ * 100",
  "flo", "flux moyen minimum", "m^3/s * 100",
  "pH", "pH de l'eau", "- * 10",
  "har", "dureté totale de l'eau", "mg Ca^++/L",
  "pho", "phosphates", "mg/L * 100",
  "nit", "nitrates", "mg/L * 100",
  "amm", "azote ammoniacal", "mg/L * 100",
  "oxy", "oxygène dissout", "mg/L * 10",
  "bdo", "demande biologique en oxygène", "mg/L * 10"))
write$rds(envi_dic, "data/environment_dictionnary.rds")
