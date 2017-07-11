FROM ruby:2.3.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs imagemagick
RUN mkdir /spree

WORKDIR /spree
ADD ./src/web/Gemfile /spree/Gemfile
ADD ./src/web/Gemfile.lock /spree/Gemfile.lock

RUN bundle install

ADD ./src/web /spree
