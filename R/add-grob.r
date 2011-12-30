# Add a single grob, possibly spanning multiple rows or columns.
# 
# Does not affect height/width
# 
# @param grobs a single grob or a list of grobs
# @param clip should drawing be clipped to the specified cells
#   (\code{"on"}), the entire table (\code{"inherit"}), or not at all 
#   (\code{"off"})
gtable_add_grob <- function(x, grobs, t, l, b = t, r = l, clip = "on", name = x$name) 
{
  if (is.grob(grobs)) grobs <- list(grobs)
  x$grobs <- c(x$grobs, grobs)
  
  t <- neg_to_pos(t, nrow(x))
  b <- neg_to_pos(b, nrow(x))
  l <- neg_to_pos(l, ncol(x))
  r <- neg_to_pos(r, ncol(x))
  
  layout <- data.frame(t = t, l = l, b = b, r = r, clip = clip, name = name,
    stringsAsFactors = FALSE)
    
  x$layout <- rbind(x$layout, layout)
  stopifnot(length(x$grobs) == nrow(x$layout))
  
  x
}