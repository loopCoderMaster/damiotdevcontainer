ARG GRAFANA_VERSION="10.2.3"

FROM grafana/grafana:${GRAFANA_VERSION}

# Set Grafana options
ENV GF_ENABLE_GZIP=true
ENV GF_USERS_DEFAULT_THEME=light
#ENV GF_FEATURE_TOGGLES_ENABLE=topnav

# Updates Check
ENV GF_ANALYTICS_CHECK_FOR_UPDATES=false
#ENV GF_ANALYTICS_CHECK_FOR_PLUGIN_UPDATES=false

##################################################################
## INI
##################################################################

COPY grafana.ini /etc/grafana/grafana.ini
#COPY datasources.yaml  /etc/grafana/provisioning/datasources/datasources.yaml
#COPY dashboards.yaml /etc/grafana/provisioning/dashboards/dashboards.yaml
#COPY dashboards /etc/grafana/provisioning/dashboards/demo

USER grafana

## Entrypoint
#ENTRYPOINT [ "/bin/bash", "/entrypoint.sh" ]
ENTRYPOINT [ "/run.sh" ]