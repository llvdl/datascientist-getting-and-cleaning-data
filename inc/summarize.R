Summarize <- function(data) {
    r <- split(
        data[order(data$activity.label, data$subject), 1:86], 
        f=interaction(data$activity.label, data$subject))
    m <- sapply(r, function(r2) { sapply(r2, mean) })
    t(m)
}