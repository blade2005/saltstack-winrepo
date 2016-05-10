al-agent:
  latest:
    installer: 'https://scc.alertlogic.net/software/al_agent-LATEST.msi'
    full_name: Alert Logic Unified Agent
    msiexec: True
    reboot: False
    locale: en_US
    # SENSOR_HOST, SENSOR_PORT, USE_PROXY, PROV_NOW, PROV_KEY, PROV_ONLY, INSTALL_ONLY, USE_PROXY
    install_flags: '/qn'