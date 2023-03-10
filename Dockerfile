FROM tonydyb/alpine-node:16

LABEL maintainer=""

ENV APP_ROOT=/node

WORKDIR $APP_ROOT

ONBUILD COPY package.json ${APP_ROOT}/
ONBUILD COPY yarn.lock ${APP_ROOT}/

ONBUILD RUN yarn install --frozen-lockfile --ignore-optional

CMD ["yarn", "start"]
