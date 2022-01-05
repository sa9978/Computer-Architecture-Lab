
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name scomp -dir "C:/Users/LATITUDE/Documents/term5/computerArchitecture/Az.architecture/11/scomp/planAhead_run_1" -part xc3s50pq208-5
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "C:/Users/LATITUDE/Documents/term5/computerArchitecture/Az.architecture/11/scomp/scomp.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/LATITUDE/Documents/term5/computerArchitecture/Az.architecture/11/scomp} }
set_property target_constrs_file "scomp.ucf" [current_fileset -constrset]
add_files [list {scomp.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "C:/Users/LATITUDE/Documents/term5/computerArchitecture/Az.architecture/11/scomp/scomp.ncd"
if {[catch {read_twx -name results_1 -file "C:/Users/LATITUDE/Documents/term5/computerArchitecture/Az.architecture/11/scomp/scomp.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"C:/Users/LATITUDE/Documents/term5/computerArchitecture/Az.architecture/11/scomp/scomp.twx\": $eInfo"
}
