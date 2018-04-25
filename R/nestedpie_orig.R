nestedpie <- function(x, group = 1, labels = NA, col = NULL, radius = c(.7, 1)) {
  group <- rep_len(group, length(x))
  ug  <- unique(group)
  tbl <- table(group)[order(ug)]
  
  col <- if (is.null(col))
    seq_along(ug) else rep_len(col, length(ug))
  col.main <- Map(rep, col[seq_along(tbl)], tbl)
  col.sub  <- lapply(col.main, function(x) {
    al <- head(seq(0, 1, length.out = length(x) + 2L)[-1L], -1L)
    Vectorize(adjustcolor)(x, alpha.f = al)
  })
  
  plot.new()
  
  par(new = TRUE)
  pie(x, border = NA, radius = radius[2L],
      col = unlist(col.sub), labels = labels)
  
  par(new = TRUE)
  pie(x, border = NA, radius = radius[1L],
      col = unlist(col.main), labels = NA)
}

dev.off()

with(dataframe,
     nestedpie(Proportion, Phylum, sprintf('%s:%s%%', Phylum, Class), col = c("red", "blue","yellow","etc") 
               