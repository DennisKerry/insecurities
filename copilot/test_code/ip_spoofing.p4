
table ip_mac_binding {
    key = {
        hdr.ipv4.srcAddr : exact;
    }
    actions = {
        verify_binding;
        drop;
    }
    size = 512;
}

action verify_binding() {
    // Compare with known MAC for this IP (in register)
}

apply {
    ip_mac_binding.apply();
}
