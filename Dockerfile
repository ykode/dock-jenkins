FROM jenkins
MAINTAINER Didiet Noor <didiet@ykode.com>
USER root
RUN apt-get -y update && apt-get -y install ruby ruby-dev
RUN apt-get -y install build-essential
RUN gem install jekyll
RUN gem install rake bundler sass
RUN apt-get -y install npm docker.io
RUN npm install -g less grunt
ADD sbt /sbt
USER jenkins
