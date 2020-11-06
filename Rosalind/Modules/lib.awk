#!/usr/bin/awk -f

function {
 printf("%i %i %i %i\n",
  gsub(/A/,""),
  gsub(/C/,""),
  gsub(/G/,""),
  gsub(/T/,"") \
 )
}
