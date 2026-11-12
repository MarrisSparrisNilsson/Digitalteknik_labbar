restart -f

#define all input signals, reset active
force clock_50 0 0, 1 10 ns -r 20 ns
force key_n(0) 1
force key_n(1) 0
force key_n(2) 0
force key_n(3) 0

run 1000 ns

#run 20 ns

#reset pulse signal

run 100 ns

#reset pressed
force key_n(0) 0
run 300 ns

#reset released
force key_n(0) 1
run 2000 ns

