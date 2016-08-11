


#' @rdname io_vcfR
#' @title io_vcfR
#' @name io_vcfR
#'
#' @param x vcfR object
#' @param file outfile name
#' @param mask use mask?
#' @param APPEND append to existing file?
#'
#' @description input and output of VCF data.
#'
#' @details input and output of VCF data.
#'
#' @export
#' @aliases write.vcf
#'
write.vcf <- function(x, file = "", mask = FALSE, APPEND = FALSE){
  if(class(x) == "chromR"){
    if( mask == TRUE ){
      is.na( x@vcf@fix[,'FILTER'] ) <- TRUE
      x@vcf@fix[,'FILTER'][ x@var.info[,'mask'] ] <- 'PASS'
    }
    x <- x@vcf
  }
  if(class(x) != "vcfR"){
    stop("Unexpected class! Expecting an object of class vcfR or chromR.")
  }

  if(APPEND == FALSE){
    gz <- gzfile(file, "w")

    if( length(x@meta) > 0 ){
      write(x@meta, gz)
    }

    header <- c(colnames(x@fix), colnames(x@gt))
    header[1] <- "#CHROM"
    header <- paste(header, collapse="\t")
    write(header, gz)
    close(gz)
  }

  if(mask == FALSE){
    test <- .Call('myKitty_write_vcf_body', PACKAGE = 'myKitty', fix = x@fix, gt = x@gt, filename = file, mask = 0)
  } else if (mask == TRUE){
    test <- .Call('myKitty_write_vcf_body', PACKAGE = 'myKitty', fix = x@fix, gt = x@gt, filename = file, mask = 1)
  }
}

