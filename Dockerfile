FROM alpine
MAINTAINER Lon Kaut <lonkaut@gmail.com>

ENV LANG C.UTF-8
RUN  \
  apk update \
  && apk add bash curl python3 jq \
  && pip3 install yq \
  && echo -e "\033[0;31m****\033[0;37mThis Dockerfile contains the BASE64 encoded entrypoint script\033[0;31m****\033[0;0m" \
  && echo -e "IyEvYmluL3NoCgoKCgpjdXJsIC1nc2sgIC1GICJrZXk9JEFQSUtFWSIgImh0dHBzOi8vJElQL2FwaS8/dHlwZT1vcCZjbWQ9PHNob3c+PGFycD48ZW50cnkrbmFtZSs9KydhbGwnLz48L2FycD48L3Nob3c+IiB8IHhxICIucmVzcG9uc2UucmVzdWx0LmVudHJpZXMuZW50cnlbXSIK" | base64 -d | tee /entrypoint.sh \
  && chmod a+x /entrypoint.sh

CMD ["/entrypoint.sh"]
