FROM ruby:2.4.2

WORKDIR /usr/local/src

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

COPY Gemfile /usr/local/src/
COPY Gemfile.lock /usr/local/src/

RUN bundle install

COPY . /usr/local/src

EXPOSE 3333
