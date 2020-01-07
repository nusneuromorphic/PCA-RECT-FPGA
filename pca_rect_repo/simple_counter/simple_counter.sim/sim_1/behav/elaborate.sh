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
ExecStep $xv_path/bin/xelab -wto 675482d59edd4de58f08f70380170fa2 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot simple_counter_sim_behav xil_defaultlib.simple_counter_sim -log elaborate.log
