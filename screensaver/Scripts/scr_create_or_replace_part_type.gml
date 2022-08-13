// Creates a particle type into the given variable name. Destroys a particle system if there was one there already.
if variable_local_exists(argument0) {
    if part_system_exists(variable_local_get(argument0)) {
        part_system_destroy(variable_local_get(argument0));
    }
}
variable_local_set(argument0, part_type_create())
