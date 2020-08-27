particle_system=part_system_create_layer("particles",true);


death_particle = part_type_create();
part_type_shape(death_particle,pt_shape_square);
part_type_size(death_particle,0.07,0.07,-0.001,0);
part_type_scale(death_particle,1,1);
part_type_color1(death_particle,255);
part_type_alpha1(death_particle,100);
part_type_speed(death_particle,0.5,2,0,0);
part_type_direction(death_particle,0,359,0,0);
part_type_gravity(death_particle,0.1,270);
part_type_orientation(death_particle,0,0,0,0,1);
part_type_blend(death_particle,0);
part_type_life(death_particle,60,60);



coin_particle = part_type_create();
part_type_shape(coin_particle,pt_shape_square);
part_type_size(coin_particle,0.07,0.07,-0.002,0);
part_type_scale(coin_particle,1,1);
part_type_color1(coin_particle,65535);
part_type_alpha1(coin_particle,100);
part_type_speed(coin_particle,0.3,1,0,0);
part_type_direction(coin_particle,0,359,0,0);
part_type_gravity(coin_particle,0,270);
part_type_orientation(coin_particle,0,0,0,0,1);
part_type_blend(coin_particle,0);
part_type_life(coin_particle,60,60);

respawn_particle = part_type_create();
part_type_shape(respawn_particle,pt_shape_square);
part_type_size(respawn_particle,0.07,0.07,-0.003,0);
part_type_scale(respawn_particle,1,1);
part_type_color1(respawn_particle,47872);
part_type_alpha1(respawn_particle,100);
part_type_speed(respawn_particle,0.5,2,0,0);
part_type_direction(respawn_particle,0,359,0,0);
part_type_gravity(respawn_particle,0,270);
part_type_orientation(respawn_particle,0,0,0,0,1);
part_type_blend(respawn_particle,0);
part_type_life(respawn_particle,15,15);