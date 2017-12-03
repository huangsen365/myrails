FROM ruby

RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN gem install rails
RUN gem install mysql2

ADD Gemfile /tmp/Gemfile

RUN cd /tmp && bundle install
