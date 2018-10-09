
source omc.tcl
if {![file exists case89_7.fmu]} {
puts "(1) Processing FMI: Compiling FMU"
compileFMU case89_7.mo
} else { puts "(1) Processing FMI: Model already compiled" }
load ../lib/libomu.so
prg_name DTOpt
mdl_path case89_7.fmu
prg_K $::env(HORIZONT)
prg_t0 {0}
prg_setup_stages
set dt {}
set us {}
set ts {}

sqp_eps 1e-2
sqp_qp_solver Mehrotra
qp_mat_solver $::env(QP_MAT_SOLVER)

mdl_u_active {0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1}

mdl_y_min {-Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 0.81 5.6667 -2.6994 5.0 -2.5762 1.6666999999999998 -0.7883 6.6667 -2.8201 -7.276 -0.2981 0.0708 -0.041100000000000005 4.0 -1.8997 3.3333 -1.8348 -9.0893 -0.0664 2.0 -0.9322 2.0 -0.9365000000000001 2.0 -0.9322 -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf}
mdl_y_max {9.3636 45.9684 288.3204 187.4161 311.1696 347.07689999999997 235.3156 256.0 205.92249999999999 15.760900000000001 266.66889999999995 12.8164 256.0 288.3204 266.66889999999995 311.1696 266.66889999999995 32.0356 299.63609999999994 277.22249999999997 45.9684 10.1761 347.07689999999997 311.1696 311.1696 288.3204 55.35360000000001 55.35360000000001 45.9684 277.22249999999997 50.5521 145.20250000000001 10.1761 50.5521 322.92089999999996 169.78089999999997 60.372899999999994 60.372899999999994 60.372899999999994 169.78089999999997 334.89000000000004 60.372899999999994 288.3204 55.35360000000001 50.5521 266.66889999999995 256.0 256.0 245.5489 50.5521 45.9684 235.3156 50.5521 256.0 45.9684 288.3204 50.5521 266.66889999999995 161.54410000000001 245.5489 225.3001 161.54410000000001 10.1761 215.5024 205.92249999999999 256.0 205.92249999999999 225.3001 311.1696 11.0224 82.6281 45.9684 299.63609999999994 277.22249999999997 256.0 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 1.2100000000000002 17.0 7.7211 15.0 6.619 5.0 2.2816 20.0 9.436399999999999 1.0 0.9296 0.21230000000000002 0.0891 12.0 5.456799999999999 10.0 4.2961 1.0 0.1478 6.0 2.742 6.0 2.7394 6.0 2.742 Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf}
mdl_y_weight1 {0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0}
mdl_y_weight2 {0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0}
mdl_y_nominal {1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1}

puts "(2) Solving Problem:"
puts "\n********************************************************************************\n"
prg_setup

proc iterateOpt {} {
prg_simulate
sqp_init
for {set iter 1} {$iter <= 200} {incr iter} {
sqp_max_iters $iter
catch hqp_solve result
if {$result != "iters"} break
}
return $result
}

set timespec [time {set result [iterateOpt]}]
puts "
(3) Solution:"
puts "\n********************************************************************************\n"
puts "			        Run Time: [expr [lindex $timespec 0]/1000] ms"
puts "\n********************************************************************************\n"
puts "Result   : $result" 
puts "Objective: [prg_f]"


