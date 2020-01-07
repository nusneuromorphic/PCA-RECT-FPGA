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
ExecStep $xv_path/bin/xsim design_1_wrapper_sim_func_impl -key {Post-Implementation:sim_1:Functional:design_1_wrapper_sim} -tclbatch design_1_wrapper_sim.tcl -view /neuromorphic/home_dirs/andres/workspace/RECOG_KEN/kd_tree/design_1_wrapper_sim_behav.wcfg -log simulate.log
