CleanFieldNames <- function(fields) {
    sapply(fields, function(name) {
        gsub("\\.+", ".",
             gsub("^\\.*|\\.*$", "", 
                  gsub("[^a-zA-Z0-9.]", ".",
                       gsub("([A-Z])", ".\\L\\1",
                                 gsub("([A-Z])([A-Z]+)", "\\1\\L\\2", name, perl=T), 
                                    perl=T))))
    })
}
