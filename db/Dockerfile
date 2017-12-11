FROM postgres:9.6.3

COPY init_postgres.sh /docker-entrypoint-initdb.d/

ENV CLIENT_ID client_id
ENV CLIENT_SECRET client_secret
ENV REDIRECT_URI http://mattermost:8065/signup/gitlab/complete
