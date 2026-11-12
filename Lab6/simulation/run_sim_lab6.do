restart -f

force uart_rxd 1
force reset_n 0
force clk_50 0 0, 1 10 ns -r 20 ns
#"force the signal clk_50 0 at time 0, then force clk_50 1 at time 10 ns repeat(-r) with a period time of 20 ns"
force sw 0

run 10 us

force reset_n 1
run 20 us

run 100 us


#--------------------------------
#--- One byte of data ---
#-----------------
#Start bit
force uart_rxd 0
run 8680 ns
#-----------------

#00110101(8-bit) - "5"
# LSB (bit 0)
force uart_rxd 1
run 8680 ns

force uart_rxd 0
run 8680 ns

force uart_rxd 1
run 8680 ns

force uart_rxd 0
run 8680 ns

force uart_rxd 1
run 8680 ns

force uart_rxd 1
run 8680 ns

force uart_rxd 0
run 8680 ns

force uart_rxd 0
run 8680 ns

#------------------
# Stop bit
force uart_rxd 1
run 8680 ns
#------------------
#--------------------------------

#--------------------------------
#--- One byte of data ---
#-----------------
#Start bit
force uart_rxd 0
run 8680 ns
#-----------------

#00111001(8-bit) - "9"
# LSB (bit 0)
force uart_rxd 1
run 8680 ns

force uart_rxd 0
run 8680 ns

force uart_rxd 0
run 8680 ns

force uart_rxd 1
run 8680 ns

force uart_rxd 1
run 8680 ns

force uart_rxd 1
run 8680 ns

force uart_rxd 0
run 8680 ns

force uart_rxd 0
run 8680 ns

#------------------
# Stop bit
force uart_rxd 1
run 8680 ns
#------------------
#--------------------------------

#--------------------------------
#--- One byte of data ---
#-----------------
#Start bit
force uart_rxd 0
run 8680 ns
#-----------------

#00110011(8-bit) - "3"
# LSB (bit 0)
force uart_rxd 1
run 8680 ns

force uart_rxd 1
run 8680 ns

force uart_rxd 0
run 8680 ns

force uart_rxd 0
run 8680 ns

force uart_rxd 1
run 8680 ns

force uart_rxd 1
run 8680 ns

force uart_rxd 0
run 8680 ns

force uart_rxd 0
run 8680 ns

#------------------
# Stop bit
force uart_rxd 1
run 8680 ns
#------------------
#--------------------------------

force sw 1

#--------------------------------
#--- One byte of data ---
#-----------------
#Start bit
force uart_rxd 0
run 8680 ns
#-----------------

#00110111(8-bit) - "7"
# LSB (bit 0)
force uart_rxd 1
run 8680 ns

force uart_rxd 1
run 8680 ns

force uart_rxd 1
run 8680 ns

force uart_rxd 0
run 8680 ns

force uart_rxd 1
run 8680 ns

force uart_rxd 1
run 8680 ns

force uart_rxd 0
run 8680 ns

force uart_rxd 0
run 8680 ns

#------------------
# Stop bit
force uart_rxd 1
run 8680 ns
#------------------
#--------------------------------
run 200 us
