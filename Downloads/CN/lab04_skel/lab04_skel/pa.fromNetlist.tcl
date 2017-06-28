
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name lab04_skel -dir "C:/Users/Alex/Desktop/CN/lab04_skel/lab04_skel/planAhead_run_2" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Alex/Desktop/CN/lab04_skel/lab04_skel/ex2.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Alex/Desktop/CN/lab04_skel/lab04_skel} }
set_property target_constrs_file "gfhgfhjgf.ucf" [current_fileset -constrset]
add_files [list {gfhgfhjgf.ucf}] -fileset [get_property constrset [current_run]]
link_design
