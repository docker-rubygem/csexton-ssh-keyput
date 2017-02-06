FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.4.0

RUN gem install csexton-ssh-keyput --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ssh-keyput"]
CMD ["--help"]
