FROM watterso/docker-ansible-2.10-with-cloud-provider-roles:latest

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
