FROM httpd:2.4.29

COPY oidc_module ./oidc_module

RUN dpkg --install oidc_module/libapache2-mod-auth-openidc_2.3.3-1.jessie.1_amd64.deb; exit 0
RUN apt-get update && apt-get -f install -y

COPY conf/httpd.conf ./conf/httpd.conf

ENV OIDC_METADATA_URL https://bluegreen.auth0.com/.well-known/openid-configuration
ENV OIDC_CLIENT_ID NePYRxxbjGPpEq0gzowD1xPPBrl2mN3W
ENV OIDC_CLIENT_SECRET <<REDACTED>>
ENV OIDC_PASSPHRASE <<REDACTED>>
ENV OIDC_REDIRECT_URI http://localhost/auth_zero_redirect
ENV PROXY_PASS http://example.com/

EXPOSE 80
