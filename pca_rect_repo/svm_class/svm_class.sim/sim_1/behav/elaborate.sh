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
ExecStep $xv_path/bin/xelab -wto 81ee9d104b8a402e9187b461045592b1 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot svm_class_behav xil_defaultlib.svm_class -log elaborate.log
