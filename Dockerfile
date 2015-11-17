FROM ubuntu:14.04
RUN apt-get update && apt-get install -y ruby ruby-dev
RUN gem install sinatra
ADD app.rb /tmp/app.rb
EXPOSE 8080
CMD ruby /tmp/app.rb
#Added a comment