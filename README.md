fancontrol
==========

This version of the popular "fancontrol" script uses a configurable hysteresis to avoid too many changes of the fan speed. The 
controller works lots of smoother. Additionally a smoothing over time will be implemented (just planned by now).

The fancontrol script uses the same configuration file than the original version. Additional, optional parameters can be set 
using the version of pwmconfig, that is included to this project (just planned - by now the hysteresis parameter is fixed).

An example curve is shown below:

![Alt text](/../master/hysteresis.png?raw=true "Hysteresis curve")


To change parameters and plot it yourself use gnuplot:

```bash
gnuplot
load "hysteresis.plot"
```
