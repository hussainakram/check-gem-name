FROM ruby:2.7

RUN apt-get update -qq && apt-get install -y tzdata

RUN mkdir /var/www

RUN mkdir /var/www/bce-parser

WORKDIR /var/www/bce-parser

COPY Gemfile /var/www/bce-parser/Gemfile

COPY Gemfile.lock /var/www/bce-parser/Gemfile.lock

RUN gem install bundler

RUN bundle install

COPY . /var/www/bce-parser

CMD ["ruby","checker.rb"]
