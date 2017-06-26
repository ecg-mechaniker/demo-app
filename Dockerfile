FROM ruby:2.3.1-alpine

RUN gem install rack

COPY . /app/

WORKDIR /app

EXPOSE 8080

CMD /app/entrypoint.sh
