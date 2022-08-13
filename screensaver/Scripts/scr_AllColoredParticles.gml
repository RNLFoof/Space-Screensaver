// Loads new color. If it's different, make new particles.
// Color starts at -1, -1, -1, so it always happens first.

oldh = h;
olds = s;
oldv = v;
execute_file("S:\Code\django\clock\color.txt");

if oldh !=h or olds !=s or oldv != v {
    for (i=0;i<streakerparticletypes;i+=1) {
        // Wipe
        part_type_destroy(global.streakerparticletype[i])
        // New
        scr_StreakerParticle();
        global.streakerparticletype[i] = particletype;
        show_debug_message(string(particletype))
    }
}
