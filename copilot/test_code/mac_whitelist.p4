
table mac_whitelist {
    key = {
        hdr.ethernet.srcAddr : exact;
    }
    actions = {
        allow;
        drop;
    }
    size = 128;
}

action allow() {}

apply {
    mac_whitelist.apply();
}
