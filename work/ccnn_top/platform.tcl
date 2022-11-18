# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\wwwka\Desktop\my_cnn\denoise\work\ccnn_top\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\wwwka\Desktop\my_cnn\denoise\work\ccnn_top\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {ccnn_top}\
-hw {C:\Users\wwwka\Desktop\my_cnn\denoise\ccnn_top.xsa}\
-arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {C:/Users/wwwka/Desktop/my_cnn/denoise/work}

platform write
domain create -name {standalone_psu_cortexa53_0} -display-name {standalone_psu_cortexa53_0} -os {standalone} -proc {psu_cortexa53_0} -runtime {cpp} -arch {64-bit} -support-app {empty_application}
platform generate -domains 
platform active {ccnn_top}
domain active {zynqmp_fsbl}
domain active {zynqmp_pmufw}
domain active {standalone_psu_cortexa53_0}
platform generate -quick
bsp reload
bsp setlib -name xilffs -ver 4.5
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform active {ccnn_top}
platform active {ccnn_top}
platform config -updatehw {C:/Users/wwwka/Desktop/my_cnn/denoise/ccnn_top.xsa}
platform generate
platform active {ccnn_top}
platform config -updatehw {C:/Users/wwwka/Desktop/my_cnn/denoise/ccnn_top.xsa}
platform generate
platform config -updatehw {C:/Users/wwwka/Desktop/my_cnn/denoise/ccnn_top.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/wwwka/Desktop/my_cnn/denoise/ccnn_top.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/wwwka/Desktop/my_cnn/denoise/ccnn_top.xsa}
platform generate -domains 
platform active {ccnn_top}
domain active {zynqmp_pmufw}
domain active {standalone_psu_cortexa53_0}
domain active {zynqmp_fsbl}
bsp reload
bsp reload
bsp reload
bsp reload
platform generate -domains 
platform config -updatehw {C:/Users/wwwka/Desktop/my_cnn/denoise/ccnn_top.xsa}
platform config -updatehw {C:/Users/wwwka/Desktop/my_cnn/denoise/ccnn_top.xsa}
platform config -updatehw {C:/Users/wwwka/Desktop/my_cnn/denoise/ccnn_top.xsa}
platform generate
