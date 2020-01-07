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
ExecStep $xv_path/bin/xelab -wto 4ac12effd0654c438b3260783bece375 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot design_1_wrapper_sim_func_impl xil_defaultlib.design_1_wrapper_sim -log elaborate.log
