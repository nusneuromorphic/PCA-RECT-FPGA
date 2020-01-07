-makelib ies/xil_defaultlib -sv \
  "/home/tools/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies/xpm \
  "/home/tools/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ipshared/6490/sources_1/new/kd_tree.vhd" \
  "../../../bd/design_1/ip/design_1_kd_tree_0_0/sim/design_1_kd_tree_0_0.vhd" \
  "../../../bd/design_1/hdl/design_1.vhd" \
-endlib
-makelib ies/blk_mem_gen_v8_3_5 \
  "../../../../kd_tree.srcs/sources_1/bd/design_1/ipshared/6273/simulation/blk_mem_gen_v8_3.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

