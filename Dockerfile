FROM ruby:2.6.0-slim

ADD vulnerability.rb /

CMD ["ruby", "/vulnerability.rb"]

