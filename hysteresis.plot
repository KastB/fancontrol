#Hysteresekurve:
Tmin=55
Tmax=85
MinRPM=2000
MaxRPM=6000
Thyst=5


set xrange [20:100]
set yrange [0:6500]
set xlabel "temperature °C"
set ylabel "Fan RPM"

a=(MaxRPM-MinRPM)/(Tmax-Tmin)/(Tmax-Tmin)

f(x) = -a*(x-Tmax+Thyst)*(x-Tmax+Thyst)+MaxRPM
s(x) = a*(x-Tmin)*(x-Tmin)+MinRPM

plot x > Tmax-Thyst ?  MaxRPM : f(x)>MinRPM ? f(x) : MinRPM , x < Tmin ? MinRPM : s(x) > MaxRPM ? MaxRPM : s(x)