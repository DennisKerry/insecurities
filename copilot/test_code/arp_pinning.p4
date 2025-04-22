
table arp_check {
    key = {
        hdr.arp.spa : exact;
    }
    actions = {
        allow_arp;
        drop;
    }
    size = 256;
}

action allow_arp() {
    // ARP request allowed
}

apply {
    if (hdr.arp.isValid()) {
        arp_check.apply();
    }
}
