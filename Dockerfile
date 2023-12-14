FROM docker.io/openproject/community:13.1

COPY Gemfile.plugins /app/

RUN bundle config unset deployment && bundle install && bundle config set deployment 'true'
RUN ./docker/prod/setup/postinstall.sh
