restart -f

force sw0 0
force sw1 0
force sw2 0
force sw3 0
force sw4 0
force sw5 0
force sw6 0
force sw7 0
run 10 ns

#--Ok--
force sw0 1
run 10 ns

force sw1 1
run 10 ns

force sw2 1
run 10 ns
#------

#NOT OK, Led should not light up
force sw3 1
run 10 ns

#OK
force sw0 0
run 10 ns

#NOT OK
force sw7 1
run 10 ns

#OK
force sw1 0
force sw2 0
force sw3 0
force sw5 1
force sw6 1
run 10 ns

