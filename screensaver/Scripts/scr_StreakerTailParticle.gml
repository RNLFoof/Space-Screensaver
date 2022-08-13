// Particle presets
ss = 1; //90/fps
life = 15;
size = 0.2;

// Particle
scr_create_or_replace_part_type("particletype");
part_type_shape(particletype,pt_shape_disk);
part_type_blend(particletype, 1);
part_type_color1(particletype,c_white);
part_type_size(particletype,size,size,-size/life/2,0);
part_type_alpha2(particletype, 0.6, 0);
part_type_life(particletype, life/ss, life/ss);
