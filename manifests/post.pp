class fw::post {

    $fw_post_rules = hiera_hash('fw_post_rules', {})
    create_resources('firewallchain', $fw_post_rules)
}