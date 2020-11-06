#!/usr/bin/rc

a=y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/YPLTAVKREZGMSHUBXNCDIJFQOW/
b=y/abcdefghijklmnopqrstuvwxyz/ypltavkrezgmshubxncdijfqow/
cmd=(sed -E $a^';'^$b)

if (~ $#* 0) {
 cat | $cmd
} else {
 echo $* | $cmd
}
