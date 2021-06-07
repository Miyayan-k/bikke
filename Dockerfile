FROM ruby:2.6.5
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update -qq \
    && apt-get install -y nodejs yarn \
# ====Nginx install=======
    && apt-get install -y nginx \
# ========================
    && mkdir /bikke

# =======Nginx=========
ADD nginx.conf /etc/nginx/sites-available/app.conf
RUN rm -f /etc/nginx/sites-enabled/default && \
    ln -s /etc/nginx/sites-available/app.conf /etc/nginx/sites-enabled/app.conf
# =====================

WORKDIR /bikke

COPY Gemfile /bikke/Gemfile
COPY Gemfile.lock /bikke/Gemfile.lock

RUN gem install bundler
RUN bundle install

COPY . /bikke

# ======追加======
RUN mkdir /tmp/sockets
RUN mkdir /tmp/pids
# ===============

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]

# =====Start Server for production========
CMD bundle exec puma -e production -C config/puma.rb && \
    /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf
# ========================================