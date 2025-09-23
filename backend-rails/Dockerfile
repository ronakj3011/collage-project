FROM ruby:3.4.1

# Install system dependencies
RUN apt-get update -qq && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs

# Set working directory
WORKDIR /app

# Copy Gemfiles and install gems
COPY Gemfile* ./
RUN bundle install

# Copy rest of the app
COPY . .

# Start Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]