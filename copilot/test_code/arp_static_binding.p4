
table arp_static_binding {
    key = {
        hdr.arp.spa : exact;
        hdr.arp.sha : exact;
    }
    actions = {
        allow_arp;
        drop;
    }
    size = 256;
}

apply {
    if (hdr.arp.isValid()) {
        arp_static_binding.apply();
    }
}
