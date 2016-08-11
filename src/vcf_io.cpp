#include <Rcpp.h>
#include <fstream>
#include <zlib.h>
#include <errno.h>

/*  Write vcf body  */


// [[Rcpp::export]]
void write_vcf_body( Rcpp::CharacterMatrix fix,
                     Rcpp::CharacterMatrix gt,
                     std::string filename,
                     int mask=0 ) {
  // http://stackoverflow.com/a/5649224

  Rcpp::Rcout << "Made it into the function!\n";

  int i = 0; // Rows
  int j = 0; // Columns
//  std::string tmpstring;  // Assemble each line before writing

  // Initialize filehandle.
//  gzFile fi;
//  fi = gzopen(filename.c_str(),"ab");
  gzFile fi = gzopen(filename.c_str(), "wb");


//  gzwrite(*fi,"my decompressed data",strlen("my decompressed data"));
//  gzclose(*fi);

//  gzFile fi;
//  fi = gzopen( filename.c_str(), "ab" );
//  if (! fi) {
//    Rcpp::Rcerr << "gzopen of " << filename << " failed: " << strerror (errno) << ".\n";
//    return;
//  }

  // In order for APPEND=TRUE to work the header
  // should not be printed here.

/*
  // Manage body
  for(i = 0; i < fix.nrow(); i++){
    Rcpp::checkUserInterrupt();
    if(mask == 1 && fix(i,6) != "PASS" ){
      // Don't print variant.
    } else {
      j = 0;
      tmpstring = fix(i,j);
      for(j = 1; j < fix.ncol(); j++){
        if(fix(i,j) == NA_STRING){
          tmpstring = tmpstring + "\t" + ".";
        } else {
          tmpstring = tmpstring + "\t" + fix(i,j);
        }
      }

      // gt portion
      for(j = 0; j < gt.ncol(); j++){
        if(gt(i, j) == NA_STRING){
          tmpstring = tmpstring + "\t" + "./.";
        } else {
          tmpstring = tmpstring + "\t" + gt(i, j);
        }
      }

//      gzwrite(fi, tmpstring.c_str(), tmpstring.size());
//      gzwrite(fi,"\n",strlen("\n"));
    }
  }
*/

  gzclose(fi);

//  return;
}




//'
//' @title test_gz_write
//' @description test of writing gz file
//'
//' @param filename name for created file
//' @param mask integer
//'
//' @details test of writing gz file
//'
//'
//' @export
// [[Rcpp::export]]
void test_gz_write( std::string filename="myFile.gz",
                    int mask=0 ) {
//  Rcpp::Rcout << "Made it into the function!\n";

  int i = 0; // Rows
  int j = 0; // Columns
  std::string tmpstring;  // Assemble each line before writing

//  gzFile fi = gzopen("file.gz","wb"); // Works!
//  gzFile fi = gzopen("file.gz","ab"); // Works!

  gzFile fi = gzopen(filename.c_str(),"ab");

  if (! fi) {
    Rcpp::Rcerr << "gzopen of " << filename << " failed: " << strerror (errno) << ".\n";
//    return;
  }

  gzwrite(fi,"my decompressed data",strlen("my decompressed data"));
  gzwrite(fi,"\n",strlen("\n"));
  gzwrite(fi,"\n",strlen("\n"));
  gzwrite(fi, tmpstring.c_str(), tmpstring.size());
  tmpstring = "my decompressed data 2";
  gzwrite(fi, tmpstring.c_str(), tmpstring.size());
  gzclose(fi);

}



