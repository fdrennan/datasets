library(datasetsr)

file_paths <- dir_ls('bible', recurse = TRUE, type = "file")

bible <- imap(
  file_paths,
  ~ {
    data <- read_csv(..1)
    data$file <- ..2
    data
  }
)

bible
