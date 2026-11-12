vcom -reportprogress 300 -work work C:/Users/martin/OneDrive/Documents/JU_online/Digitalteknik/Labbar/Lab4/top_level.vhd
restart -f

force sw 10#0
force key_n 10#0
force key_n(0) 1
force clk_50 0 0, 1 10 ns -r 20 ns
run 10 ns

force key_n(1) 1
run 100 ns

force key_n(1) 0
run 100 ns

force key_n(0) 0
run 100 ns

force key_n(0) 1
force key_n(1) 1
run 100 ns

force key_n(1) 0
run 100 ns

force key_n(1) 1
run 100 ns

force key_n(1) 0
run 100 ns

force key_n(1) 1
run 100 ns

force key_n(1) 0
run 100 ns

force key_n(1) 1
run 100 ns

force key_n(1) 0
run 100 ns

force key_n(1) 1
run 100 ns

force key_n(1) 0
run 100 ns

force key_n(1) 1
run 100 ns

force key_n(1) 0
run 100 ns

force key_n(1) 1
run 100 ns

force key_n(1) 0
run 100 ns

force key_n(1) 1
run 100 ns

force key_n(1) 0
run 100 ns

force key_n(1) 1
run 100 ns

force key_n(1) 0
run 100 ns

force key_n(1) 1
run 100 ns

force key_n(1) 0
run 100 ns

force sw(0) 1
force key_n(1) 1
run 100 ns

force key_n(1) 0
run 100 ns

force key_n(1) 1
run 100 ns

force key_n(1) 0
run 100 ns

force key_n(1) 1
run 100 ns

force key_n(1) 0
run 5000 ns

force key_n(1) 1
run 100 ns

force key_n(1) 0
run 100 ns

