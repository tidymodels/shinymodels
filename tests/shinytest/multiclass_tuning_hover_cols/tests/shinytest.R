library(shinytest)

is_mac_os <- unname(Sys.info()["sysname"] == "Darwin")
is_4_1 <- getRversion() == "4.1"

if (is_mac_os & is_4_1) {
  shinytest::testApp("../")
}

