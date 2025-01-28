library("sessioninfo")
library("here")
library("ggplot2")

## Hello world
print("Soy Leo")

## Directorios
dir_plots <- here::here("figuras")
dir_rdata <- here::here("processed-data")

## Crear directorio para las figuras y archivos
dir.create(dir_plots, showWarnings = FALSE)
dir.create(dir_rdata, showWarnings = FALSE)

## Hacer una imagen de ejemplo
pdf(file.path(dir_plots, "mtcars_gear_vs_mpg.pdf"),
    useDingbats = FALSE
)
ggplot(mtcars, aes(group = gear, y = mpg)) +
    geom_boxplot()
dev.off()

## Para reproducir mi código
options(width = 120)
sessioninfo::session_info()

# ─ Session info ───────────────────────────────────────────────────────────────────────────────────────────────────────
#  setting  value
#  version  R version 4.4.2 Patched (2024-12-07 r87428)
#  os       macOS Sonoma 14.5
#  system   aarch64, darwin20
#  ui       RStudio
#  language (EN)
#  collate  en_US.UTF-8
#  ctype    en_US.UTF-8
#  tz       America/New_York
#  date     2025-01-28
#  rstudio  2024.12.0+467 Kousa Dogwood (desktop)
#  pandoc   3.2 @ /opt/homebrew/bin/pandoc
#
# ─ Packages ───────────────────────────────────────────────────────────────────────────────────────────────────────────
#  package     * version    date (UTC) lib source
#  brio          1.1.5      2024-04-24 [1] CRAN (R 4.4.0)
#  cachem        1.1.0      2024-05-16 [1] CRAN (R 4.4.0)
#  cli           3.6.3      2024-06-21 [1] CRAN (R 4.4.0)
#  colorout    * 1.3-2      2024-11-21 [1] Github (jalvesaq/colorout@2a5f214)
#  colorspace    2.1-1      2024-07-26 [1] CRAN (R 4.4.0)
#  data.table    1.16.4     2024-12-06 [1] CRAN (R 4.4.1)
#  devtools    * 2.4.5      2022-10-11 [1] CRAN (R 4.4.0)
#  digest        0.6.37     2024-08-19 [1] CRAN (R 4.4.1)
#  dplyr         1.1.4      2023-11-17 [1] CRAN (R 4.4.0)
#  ellipsis      0.3.2      2021-04-29 [1] CRAN (R 4.4.0)
#  farver        2.1.2      2024-05-13 [1] CRAN (R 4.4.0)
#  fastmap       1.2.0      2024-05-15 [1] CRAN (R 4.4.0)
#  fs            1.6.5      2024-10-30 [1] CRAN (R 4.4.1)
#  generics      0.1.3      2022-07-05 [1] CRAN (R 4.4.0)
#  ggplot2     * 3.5.1      2024-04-23 [1] CRAN (R 4.4.0)
#  glue          1.8.0      2024-09-30 [1] CRAN (R 4.4.1)
#  gtable        0.3.6      2024-10-25 [1] CRAN (R 4.4.1)
#  here        * 1.0.1      2020-12-13 [1] CRAN (R 4.4.0)
#  hms           1.1.3      2023-03-21 [1] CRAN (R 4.4.0)
#  htmltools     0.5.8.1    2024-04-04 [1] CRAN (R 4.4.0)
#  htmlwidgets   1.6.4      2023-12-06 [1] CRAN (R 4.4.0)
#  httpuv        1.6.15     2024-03-26 [1] CRAN (R 4.4.0)
#  labeling      0.4.3      2023-08-29 [1] CRAN (R 4.4.0)
#  later         1.4.1      2024-11-27 [1] CRAN (R 4.4.1)
#  lifecycle     1.0.4      2023-11-07 [1] CRAN (R 4.4.0)
#  lubridate     1.9.4      2024-12-08 [1] CRAN (R 4.4.1)
#  magrittr      2.0.3      2022-03-30 [1] CRAN (R 4.4.0)
#  memoise       2.0.1      2021-11-26 [1] CRAN (R 4.4.0)
#  mime          0.12       2021-09-28 [1] CRAN (R 4.4.0)
#  miniUI        0.1.1.1    2018-05-18 [1] CRAN (R 4.4.0)
#  munsell       0.5.1      2024-04-01 [1] CRAN (R 4.4.0)
#  pillar        1.10.1     2025-01-07 [1] CRAN (R 4.4.1)
#  pkgbuild      1.4.6      2025-01-16 [1] CRAN (R 4.4.1)
#  pkgconfig     2.0.3      2019-09-22 [1] CRAN (R 4.4.0)
#  pkgload       1.4.0      2024-06-28 [1] CRAN (R 4.4.0)
#  profvis       0.4.0      2024-09-20 [1] CRAN (R 4.4.1)
#  promises      1.3.2      2024-11-28 [1] CRAN (R 4.4.1)
#  prompt        1.0.2.9000 2024-05-03 [1] Github (gaborcsardi/prompt@17bd0e1)
#  purrr         1.0.2      2023-08-10 [1] CRAN (R 4.4.0)
#  R6            2.5.1      2021-08-19 [1] CRAN (R 4.4.0)
#  Rcpp          1.0.14     2025-01-12 [1] CRAN (R 4.4.1)
#  remotes       2.5.0      2024-03-17 [1] CRAN (R 4.4.0)
#  rlang         1.1.5      2025-01-17 [1] CRAN (R 4.4.1)
#  rprojroot     2.0.4      2023-11-05 [1] CRAN (R 4.4.0)
#  rsthemes      0.5.0      2024-11-21 [1] Github (gadenbuie/rsthemes@96fb91a)
#  rstudioapi    0.17.1     2024-10-22 [1] CRAN (R 4.4.1)
#  scales        1.3.0      2023-11-28 [1] CRAN (R 4.4.0)
#  sessioninfo * 1.2.2      2021-12-06 [1] CRAN (R 4.4.0)
#  shiny         1.10.0     2024-12-14 [1] CRAN (R 4.4.1)
#  suncalc       0.5.1      2022-09-29 [1] CRAN (R 4.4.0)
#  testthat    * 3.2.3      2025-01-13 [1] CRAN (R 4.4.1)
#  tibble        3.2.1      2023-03-20 [1] CRAN (R 4.4.0)
#  tidyselect    1.2.1      2024-03-11 [1] CRAN (R 4.4.0)
#  timechange    0.3.0      2024-01-18 [1] CRAN (R 4.4.0)
#  urlchecker    1.0.1      2021-11-30 [1] CRAN (R 4.4.0)
#  usethis     * 3.1.0      2024-11-26 [1] CRAN (R 4.4.1)
#  vctrs         0.6.5      2023-12-01 [1] CRAN (R 4.4.0)
#  withr         3.0.2      2024-10-28 [1] CRAN (R 4.4.1)
#  xtable        1.8-4      2019-04-21 [1] CRAN (R 4.4.0)
#
#  [1] /Library/Frameworks/R.framework/Versions/4.4-arm64/Resources/library
#
# ──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
