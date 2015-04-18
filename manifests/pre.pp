#firewall pre rule (allowed)
class fw::pre {

    Firewall {
        require => undef,
    }

    $fw_pre_rules = hiera_hash('fw_pre_rules', {})
    create_resources('firewall', $fw_pre_rules)
}