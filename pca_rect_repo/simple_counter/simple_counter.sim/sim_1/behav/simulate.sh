#!/bin/bash -f
xv_path="/home/tools/Xilinx/Vivado/2016.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim simple_counter_sim_behav -key {Behavioral:sim_1:Functional:simple_counter_sim} -tclbatch simple_counter_sim.tcl -log simulate.log
