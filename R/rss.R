#' Return recent PX announcements
#' 
#' Queries the PX rss feed file for the latest PX dataset announcements.
#' 
#' 
#' @return A \code{data.frame} with announcements data set identifiers,
#' publication dates and annoucement messages.
#' @author Laurent Gatto
#' @examples
#' 
#' pxannounced()
#' 
#' @export pxannounced
pxannounced <- function() {
    ## rss <-
    ##     "https://groups.google.com/forum/feed/proteomexchange/msgs/rss_v2_0.xml"
    ## x <- read_xml(rss)
    ## ## parse title
    ## ttls <- unlist(as_list(xml_find_all(x, "//title")))[-1]
    ## msg <- sub(" ProteomeXchange dataset.+$", "", ttls)
    ## msg <- sub(" for", "", msg)
    ## dat <- sub("^.+dataset ", "", ttls)
    ## n <- length(ttls)
    ## message(n, " new ProteomeXchange annoucements")
    ## names(ttls) <- NULL
    ## ## parse pubDate
    ## pubs <- unlist(as_list(xml_find_all(x, "//pubDate")))
    ## pubs <- strptime(pubs,  "%a, %d %b %Y %H:%M:%S", tz = "GMT")
    ## ann <- data.frame(Data.Set = dat,
    ##                   Publication.Data = pubs,
    ##                   Message = msg)
    ## return(ann)
    msg <- "The google group rss feeds are currenlty down (see https://github.com/lgatto/rpx/issues/7 for details). Please visit https://groups.google.com/g/proteomexchange for the latest annoucements"
    message(paste(strwrap(msg), collapse = "\n"))    
}
