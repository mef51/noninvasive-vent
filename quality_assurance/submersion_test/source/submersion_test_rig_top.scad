// Include variables
include <submersion_test_rig_variables.scad>;
include <submersion_test_rig_common.scad>;

// Create top plunger
module plunger() {
    union() {
        cylinder(30, collet_diameter / 2, collet_diameter / 2, $fn=360);
        cylinder(5, 20, 20, $fn=360);
    }
}

difference() {
    plunger();
    holes(); //Found in common
}