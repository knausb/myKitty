

#library(testthat)
#
library(myKitty)
#
#testthat::context("test01")

#test_that("test01 does something", {
#  expect_equal(1, 1)
#  expect_equal(str_length("a"), 1)
#  expect_equal(str_length("ab"), 2)
#  expect_equal(str_length("abc"), 3)
#})



#test_that("compiled vcfR_read_body works when file contains no variants",{
library(vcfR)
data(vcfR_example)
vcf2 <- vcf
detach(package:vcfR, unload = TRUE)

library(myKitty)

ex_file <- "test.vcf.gz"


  vcf2@fix <- vcf2@fix[0,]
  vcf2@gt <- vcf2@gt[0,]

#  myKitty::write.vcf(vcf2, ex_file)



#  stats <- .Call('vcfR_vcf_stats_gz', PACKAGE = 'vcfR', ex_file)
#  meta <- .Call('vcfR_read_meta_gz', PACKAGE = 'vcfR', ex_file, stats, 0)

#  body <- .Call('vcfR_read_body_gz', PACKAGE = 'vcfR', ex_file, stats, nrows = 0, skip = 0, cols=1:stats['columns'], 0)

#  expect_equal( ncol(body), ncol(vcf2@fix) + ncol(vcf2@gt) )
#  expect_equal( nrow(body), nrow(vcf2@fix) )

#  unlink(ex_file)

#})



