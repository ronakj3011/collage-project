# Use Ruby 3.2 or higher (required for Rails 8)
FROM ruby:3.2

# Set working directory
WORKDIR /app

# Install essential system dependencies
RUN apt-get update -qq && apt-get install -y  postgresql-client

# Copy Gemfile and install gems
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy the rest of the app
COPY . .

# Set environment variables
ENV RAILS_ENV=production
ENV RACK_ENV=production

# 🚨 Hardcode the secret key base (for local/demo use only)
ENV SECRET_KEY_BASE="3d4145d5d18176ce2dfcf5953d852f0a720d0fbe6a4b10ae9f9501a3edf2450e3babf412f283722201d665e9edd5bebc91ec443260efe6aeb3a2e254f7bf0ff2"

# Precompile assets
RUN bundle exec rake assets:precompile

# Expose the app port
EXPOSE 3000

# Start the Rails server
CMD ["bash", "-c", "bundle exec rails server -b 0.0.0.0 -p 3000"]
