.control
OP
AC LIN 200 1GigHz 5GigHz
plot db(v(Vout)/v(Vin))
plot vp(Vout)
.endc
.model emitter_lline ltra rel=1 r=12.45 g=0 l=8.972e-9 c=0.468e-12
+len=16 steplimit compactrel=1.0e-3 compactabs=1.0e-14
