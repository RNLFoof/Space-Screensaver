// Particle presets
ss = 1; //90/fps
hrange = 15;
srange = 5;
vrange = 10;

hplus = random(3);
if irandom(5) == 0
{
    hplus = min(random(100),random(100),random(100));
};
if irandom(1) == 0
{
    hplus *= -1;
};

speedmultiplier = min(
    random_range(1, 4),
    random_range(1, 4),
    random_range(1, 4),
)*ss;
// Particle
particlesystem = part_system_create();
particletype = part_type_create();
part_type_shape(particletype,pt_shape_disk);
if irandom(5) == 0
{
    part_type_shape(particletype,pt_shape_square);
    if irandom(5) == 0
    {
        part_type_shape(particletype,pt_shape_ring);
    };
};
part_type_blend(particletype, 1);
//part_type_color1(particletype, random(255*255*255));
part_type_color_hsv(particletype,obj_Controller.h-hrange+hplus,obj_Controller.h+hrange+hplus,max(0,obj_Controller.s-srange),min(255, obj_Controller.s+srange),max(0,obj_Controller.v-vrange),min(255,obj_Controller.v+vrange));
//part_type_color_hsv(particletype,obj_Controller.h-hrange+hplus,obj_Controller.h+hrange+hplus,0,min(255, obj_Controller.s+srange),max(0,obj_Controller.v-vrange),255);
part_type_size(particletype,0.4,0.6,-0.005*ss,0);
part_type_alpha2(particletype, 1, 0);
part_type_life(particletype, 60/ss, 180/ss);
part_type_life(particletype, 30,90);
part_type_speed(particletype, 0.1*speedmultiplier, 0.5*speedmultiplier, -0.01, 0);
part_type_direction(particletype, 0, 360, 0, 0);
part_type_orientation(particletype, 0, 360, 0, 0, false);
part_system_depth(particlesystem, 9999);
