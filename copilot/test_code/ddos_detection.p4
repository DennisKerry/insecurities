
header_type ipv4_t {
    fields {
        srcAddr : 32;
        dstAddr : 32;
    }
}

table count_ddos_flows {
    key = {
        hdr.ipv4.srcAddr : exact;
    }
    actions = {
        count_packet;
        drop;
        NoAction;
    }
    size = 1024;
}

action count_packet() {
    // Count logic (requires externs or registers)
}

apply {
    count_ddos_flows.apply();
}
