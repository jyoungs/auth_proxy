
#https://auth0.com/blog/sso-for-legacy-apps-with-auth0-openid-connect-and-apache/

```bash
cat <<EOF > secrets.env
OIDC_CLIENT_ID=FROM_AUTH_PROVIDER
OIDC_CLIENT_SECRET=FROM_AUTH_PROVIDER
OIDC_PASSPHRASE=thiscanbeanythingsecrettoyou
PROXY_PASS=http://example.com/
OIDC_METADATA_URL=FROM_AUTH_PROVIDER
OIDC_REDIRECT_URI=http://localhost/auth_zero_redirect
EOF

docker-compose up
```
