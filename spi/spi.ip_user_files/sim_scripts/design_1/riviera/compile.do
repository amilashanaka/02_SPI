transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_18
vlib riviera/processing_system7_vip_v1_0_20
vlib riviera/xil_defaultlib
vlib riviera/dist_mem_gen_v8_0_15
vlib riviera/lib_pkg_v1_0_4
vlib riviera/lib_cdc_v1_0_3
vlib riviera/lib_srl_fifo_v1_0_4
vlib riviera/fifo_generator_v13_2_10
vlib riviera/lib_fifo_v1_0_19
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/interrupt_control_v3_1_5
vlib riviera/axi_quad_spi_v3_2_31
vlib riviera/proc_sys_reset_v5_0_15
vlib riviera/generic_baseblocks_v2_1_2
vlib riviera/axi_data_fifo_v2_1_31
vlib riviera/axi_register_slice_v2_1_32
vlib riviera/axi_protocol_converter_v2_1_32

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_18 riviera/axi_vip_v1_1_18
vmap processing_system7_vip_v1_0_20 riviera/processing_system7_vip_v1_0_20
vmap xil_defaultlib riviera/xil_defaultlib
vmap dist_mem_gen_v8_0_15 riviera/dist_mem_gen_v8_0_15
vmap lib_pkg_v1_0_4 riviera/lib_pkg_v1_0_4
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap lib_srl_fifo_v1_0_4 riviera/lib_srl_fifo_v1_0_4
vmap fifo_generator_v13_2_10 riviera/fifo_generator_v13_2_10
vmap lib_fifo_v1_0_19 riviera/lib_fifo_v1_0_19
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_5 riviera/interrupt_control_v3_1_5
vmap axi_quad_spi_v3_2_31 riviera/axi_quad_spi_v3_2_31
vmap proc_sys_reset_v5_0_15 riviera/proc_sys_reset_v5_0_15
vmap generic_baseblocks_v2_1_2 riviera/generic_baseblocks_v2_1_2
vmap axi_data_fifo_v2_1_31 riviera/axi_data_fifo_v2_1_31
vmap axi_register_slice_v2_1_32 riviera/axi_register_slice_v2_1_32
vmap axi_protocol_converter_v2_1_32 riviera/axi_protocol_converter_v2_1_32

vlog -work xilinx_vip  -incr "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l dist_mem_gen_v8_0_15 -l lib_pkg_v1_0_4 -l lib_cdc_v1_0_3 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_31 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_31 -l axi_register_slice_v2_1_32 -l axi_protocol_converter_v2_1_32 \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/d47c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l dist_mem_gen_v8_0_15 -l lib_pkg_v1_0_4 -l lib_cdc_v1_0_3 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_31 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_31 -l axi_register_slice_v2_1_32 -l axi_protocol_converter_v2_1_32 \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/d47c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l dist_mem_gen_v8_0_15 -l lib_pkg_v1_0_4 -l lib_cdc_v1_0_3 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_31 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_31 -l axi_register_slice_v2_1_32 -l axi_protocol_converter_v2_1_32 \
"../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_18  -incr "+incdir+../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/d47c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l dist_mem_gen_v8_0_15 -l lib_pkg_v1_0_4 -l lib_cdc_v1_0_3 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_31 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_31 -l axi_register_slice_v2_1_32 -l axi_protocol_converter_v2_1_32 \
"../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/1f8d/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_20  -incr "+incdir+../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/d47c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l dist_mem_gen_v8_0_15 -l lib_pkg_v1_0_4 -l lib_cdc_v1_0_3 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_31 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_31 -l axi_register_slice_v2_1_32 -l axi_protocol_converter_v2_1_32 \
"../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/d47c/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/d47c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l dist_mem_gen_v8_0_15 -l lib_pkg_v1_0_4 -l lib_cdc_v1_0_3 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_31 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_31 -l axi_register_slice_v2_1_32 -l axi_protocol_converter_v2_1_32 \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vlog -work dist_mem_gen_v8_0_15  -incr -v2k5 "+incdir+../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/d47c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l dist_mem_gen_v8_0_15 -l lib_pkg_v1_0_4 -l lib_cdc_v1_0_3 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_31 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_31 -l axi_register_slice_v2_1_32 -l axi_protocol_converter_v2_1_32 \
"../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/fa7e/simulation/dist_mem_gen_v8_0.v" \

vcom -work lib_pkg_v1_0_4 -93  -incr \
"../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4 -93  -incr \
"../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -v2k5 "+incdir+../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/d47c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l dist_mem_gen_v8_0_15 -l lib_pkg_v1_0_4 -l lib_cdc_v1_0_3 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_31 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_31 -l axi_register_slice_v2_1_32 -l axi_protocol_converter_v2_1_32 \
"../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10 -93  -incr \
"../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -v2k5 "+incdir+../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/d47c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l dist_mem_gen_v8_0_15 -l lib_pkg_v1_0_4 -l lib_cdc_v1_0_3 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_31 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_31 -l axi_register_slice_v2_1_32 -l axi_protocol_converter_v2_1_32 \
"../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_19 -93  -incr \
"../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/0a12/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_5 -93  -incr \
"../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_31 -93  -incr \
"../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/1e9d/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_quad_spi_0_0/sim/design_1_axi_quad_spi_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_15 -93  -incr \
"../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_2  -incr -v2k5 "+incdir+../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/d47c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l dist_mem_gen_v8_0_15 -l lib_pkg_v1_0_4 -l lib_cdc_v1_0_3 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_31 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_31 -l axi_register_slice_v2_1_32 -l axi_protocol_converter_v2_1_32 \
"../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_31  -incr -v2k5 "+incdir+../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/d47c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l dist_mem_gen_v8_0_15 -l lib_pkg_v1_0_4 -l lib_cdc_v1_0_3 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_31 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_31 -l axi_register_slice_v2_1_32 -l axi_protocol_converter_v2_1_32 \
"../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/2ccb/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_32  -incr -v2k5 "+incdir+../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/d47c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l dist_mem_gen_v8_0_15 -l lib_pkg_v1_0_4 -l lib_cdc_v1_0_3 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_31 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_31 -l axi_register_slice_v2_1_32 -l axi_protocol_converter_v2_1_32 \
"../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/676c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_32  -incr -v2k5 "+incdir+../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/d47c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l dist_mem_gen_v8_0_15 -l lib_pkg_v1_0_4 -l lib_cdc_v1_0_3 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_31 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_31 -l axi_register_slice_v2_1_32 -l axi_protocol_converter_v2_1_32 \
"../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/d59d/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Cora-Z7-07S-Pmod_Ad1.gen/sources_1/bd/design_1/ipshared/d47c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l dist_mem_gen_v8_0_15 -l lib_pkg_v1_0_4 -l lib_cdc_v1_0_3 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_31 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_31 -l axi_register_slice_v2_1_32 -l axi_protocol_converter_v2_1_32 \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

