FROM brownman/ruby-1.9.3
RUN apt-get update && apt-get install -y libmagickwand-dev imagemagick
ENV APP_HOME /application
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
RUN /bin/bash -l -c "bundle install"

# For Production
#ADD . $APP_HOME
