{% from "al_agents/config.sls" import alertlogic_registration_key, alertlogic_egress_url, alertlogic_proxy_url, alertlogic_port, alertlogic_for_autoscaling, alertlogic_for_imaging with context %}
{% from "al_agents/defaults.sls" import alertlogic_pkg_url, alertlogic_windows_options with context %}

al-agent:
  latest:
    installer: "{{ alertlogic_pkg_url }}"
    full_name: Alert Logic Unified Agent
    msiexec: True
    reboot: False
    locale: en_US
    # SENSOR_HOST, SENSOR_PORT, USE_PROXY, PROV_NOW, PROV_KEY, PROV_ONLY, INSTALL_ONLY
    install_flags: "/qn {{ alertlogic_windows_options }}"
