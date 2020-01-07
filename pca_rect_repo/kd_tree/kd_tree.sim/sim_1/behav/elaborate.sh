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
ExecStep $xv_path/bin/xelab -wto 4ac12effd0654c438b3260783bece375 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L blk_mem_gen_v8_3_5 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot design_1_wrapper_sim_behav xil_defaultlib.design_1_wrapper_sim xil_defaultlib.glbl -log elaborate.log
