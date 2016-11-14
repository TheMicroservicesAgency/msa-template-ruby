FROM msa-image-ruby:1.0.0

# Install the Ruby dependencies
ADD Gemfile /opt/app/
RUN cd /opt/app/ && gem install bundler && bundle install

# Override the default endpoints
ADD README.md NAME LICENSE VERSION /opt/app/
ADD swagger.json /opt/swagger/swagger.json

# Copy all the other application files to /opt/app
ADD run.sh /opt/app/
ADD app.rb /opt/app/

# Execute the run script
CMD ["ash", "/opt/app/run.sh"]
