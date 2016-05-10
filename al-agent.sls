{% from "al_agents/config.sls" import alertlogic_registration_key, alertlogic_egress_url, alertlogic_proxy_url, alertlogic_port, alertlogic_for_autoscaling, alertlogic_for_imaging with context %}
{% from "al_agents/defaults.sls" import alertlogic_win_pkg_url, alertlogic_win_install_opts with context %}

al-agent:
  latest:
    installer: "{{ alertlogic_win_pkg_url }}"
    full_name: Alert Logic Unified Agent
    msiexec: True
    reboot: False
    locale: en_US
    # SENSOR_HOST, SENSOR_PORT, USE_PROXY, PROV_NOW, PROV_KEY, PROV_ONLY, INSTALL_ONLY
    install_flags: '/qn {{ alertlogic_win_install_opts }}'
