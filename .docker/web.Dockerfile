# Sets a language.
FROM node:10.13.0-alpine

# Sets environment variables.
ENV HOST="0.0.0.0"
ENV LANG="C.UTF-8"
ENV APP_ROOT="/var/www/nuxt-app"

# Configures environments.
WORKDIR $APP_ROOT

# Installs dependencies.
COPY .docker/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
COPY ./package.json .
COPY ./yarn.lock .

# Installs the current project packages.
RUN set -x \
  && apk add --no-cache --update bash git \
  && npm install -g yarn \
  && npm -g config set user root \
  && chmod 755 /usr/local/bin/docker-entrypoint.sh \
  && chmod 755 /usr/local/bin/yarn \
  && yarn

# Configures an applciation.
COPY ./ $APP_ROOT

# Exposes volumes to frontend.
# VOLUME $APP_ROOT

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["--start"]

EXPOSE 3000
