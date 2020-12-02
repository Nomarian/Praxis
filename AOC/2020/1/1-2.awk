#!/usr/bin/awk -f

# This was an experiment...
# but since we are gonna exit anyway, who cares about looping backwards?
#NR>2 { # $1 or NR is what gets tested on each new thingamagig
## for (i=0;++i<(NR-1);)
# for (i=NR/2;--i;)
#  for (s=(NR-1-i);s--;)
#   for (t=i; (t+=s) < NR;) # We keep t so we don't care about it
#    if (a[t-step]+a[t]+$1 == 2020)
#     exit
#}

NR>2 { # $1 or NR is what gets tested on each new thingamagig
 for (i=0;++i<(NR/2);)
  for (s=i;s<(NR-1);s++) # start at 0
   for (t=i; (t+=s) < NR;)
    if (a[t-s]+a[t]+$1 == 2020)
     exit
}


{
 a[NR]=$1
}

END { print a[t-s]*a[t]*$1 }

