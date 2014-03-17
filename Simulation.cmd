.control
OP
AC LIN 200 1GigHz 10GigHz
plot db(v(Vout)/v(Vin)) vp(Vout)
NOISE v(Vout) Vinput dec 200 4GigHz 7GHz
setplot noise1
plot inoise_spectrum ylog
.endc
