restart -f

force uart_rxd 1
force reset_n 0
force clk_50 0 0, 1 10 ns -r 20 ns
#"force the signal clk_50 0 at time 0, then force clk_50 1 at time 10 ns repeat(-r) with a period time of 20 ns"

run 10 us

force reset_n 1
run 20 us

run 1 ms


#--------------------------------
#--- One byte of data ---
#-----------------
#Start bit
force uart_rxd 0
run 104 us
#-----------------

#00110101(8-bit) - "5"
# LSB (bit 0)
force uart_rxd 1
run 104 us

force uart_rxd 0
run 104 us

force uart_rxd 1
run 104 us

force uart_rxd 0
run 104 us

force uart_rxd 1
run 104 us

force uart_rxd 1
run 104 us

force uart_rxd 0
run 104 us

force uart_rxd 0
run 104 us

#------------------
# Stop bit
force uart_rxd 1
run 104 us
#------------------
#--------------------------------

#--------------------------------
#--- One byte of data ---
#-----------------
#Start bit
force uart_rxd 0
run 104 us
#-----------------

#00111001(8-bit) - "9"
# LSB (bit 0)
force uart_rxd 1
run 104 us

force uart_rxd 0
run 104 us

force uart_rxd 0
run 104 us

force uart_rxd 1
run 104 us

force uart_rxd 1
run 104 us

force uart_rxd 1
run 104 us

force uart_rxd 0
run 104 us

force uart_rxd 0
run 104 us

#------------------
# Stop bit
force uart_rxd 1
run 104 us
#------------------
#--------------------------------

#--------------------------------
#--- One byte of data ---
#-----------------
#Start bit
force uart_rxd 0
run 104 us
#-----------------

#00110011(8-bit) - "3"
# LSB (bit 0)
force uart_rxd 1
run 104 us

force uart_rxd 1
run 104 us

force uart_rxd 0
run 104 us

force uart_rxd 0
run 104 us

force uart_rxd 1
run 104 us

force uart_rxd 1
run 104 us

force uart_rxd 0
run 104 us

force uart_rxd 0
run 104 us

#------------------
# Stop bit
force uart_rxd 1
run 104 us
#------------------
#--------------------------------

#--------------------------------
#--- One byte of data ---
#-----------------
#Start bit
force uart_rxd 0
run 104 us
#-----------------

#00110111(8-bit) - "7"
# LSB (bit 0)
force uart_rxd 1
run 104 us

force uart_rxd 1
run 104 us

force uart_rxd 1
run 104 us

force uart_rxd 0
run 104 us

force uart_rxd 1
run 104 us

force uart_rxd 1
run 104 us

force uart_rxd 0
run 104 us

force uart_rxd 0
run 104 us

#------------------
# Stop bit
force uart_rxd 1
run 104 us
#------------------
#--------------------------------
run 1 ms
