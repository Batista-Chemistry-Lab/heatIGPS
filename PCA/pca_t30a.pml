viewport 3144, 1948
#viewport 1600,800
util.performance(0)
cmd.bg_color("white")
cmd.space("cmyk")
set ray_opaque_background, 0
set ray_trace_mode,1
set ray_trace_fog, 1
set ray_trace_gain, .2
#set ray_shadows, 0
set ortho = 1
set auto_zoom, 0
set auto_show_selections, 0
set light_count, 5
set ambient, 0.4
set antialias, 4
set surface_quality, 2
set cartoon_nucleic_acid_mode, 4
set cartoon_ring_mode, 0
set cartoon_tube_radius, 0.9
set cartoon_ladder_radius, 0.5
#set cartoon_cylindrical_helices, 1
set dash_width,4
set dash_color, gray60
set cartoon_loop_radius, 0.3
set cartoon_helix_radius, 3.0
set ribbon_trace_atoms, 4
set ribbon_radius, 0.5
set solvent_radius, 5.0
set cartoon_fancy_helices, 1
set defer_builds_mode, 3
set cartoon_transparency, .6
set label_size, 30
load /Volumes/GoogleDrive-112881197181043313538/Shared drives/IGPS/TRAJECTORIES/HEAT_is_ON_SI/ANALYSIS/TRAJECTORIES/PCA/pca_t30a.pdb, WT
load /Volumes/GoogleDrive-112881197181043313538/Shared drives/IGPS/TRAJECTORIES/HEAT_is_ON_SI/ANALYSIS/TRAJECTORIES/PCA/pca_t30a.pdb, reference
load_traj /Volumes/GoogleDrive-112881197181043313538/Shared drives/IGPS/TRAJECTORIES/HEAT_is_ON_SI/ANALYSIS/TRAJECTORIES/PCA/pca_t30a.dcd, WT , start=0, stop=-1, interval=10
align reference, WT
set_view (\n     0.059968501,    0.868183672,    0.492196828,\ 
     0.916177392,    0.147679657,   -0.372148842,\ 
    -0.395868033,    0.473329425,   -0.786695063,\ 
     0.000000000,   -0.000000000, -211.742935181,\ 
    62.268287659,   48.440368652,   50.612606049,\ 
   166.939743042,  256.546142578,  -20.000000000 ) 
hide everything
######
show spheres, WT
set sphere_scale,.8
color gray, reference
#set sphere_transparency, .5
#smooth WT, 30, 5
split_states WT
for i,s in enumerate(cmd.get_object_list()[0::1]): cmd.alter(s,"b=%d"%i)
no=int(len(cmd.get_object_list()[0::1]))
spectrum b,paleyellow_lightteal_lightblue,  resid 1-454 , 1, 100
#join_states multi, WT_*, 0
ray 200, 200
#ray 1000, 800
png /Volumes/GoogleDrive-112881197181043313538/Shared drives/IGPS/TRAJECTORIES/HEAT_is_ON_SI/ANALYSIS/PCA/pca_t30a_comp_1.png
