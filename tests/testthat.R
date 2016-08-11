library(testthat)
library(myKitty)

test_check("myKitty")



##### ##### ##### ##### #####
# valgrind
# http://kevinushey.github.io/blog/2015/04/05/debugging-with-valgrind/
# http://valgrind.org/docs/manual/quick-start.html#quick-start.interpret


# R -d "valgrind --leak-check=full --vgdb-error=1" -f tests/testthat.R

# R -d "valgrind --leak-check=full --vgdb-error=1" -f tests/testthat/test_01.R
# R -d "valgrind --leak-check=full --show-possibly-lost=no --vgdb-error=1" -f tests/testthat/test_01.R


# R -d "valgrind --leak-check=full --vgdb-error=1" -f tests/testthat/test_02.R



##### ##### ##### ##### #####
# EOF.
