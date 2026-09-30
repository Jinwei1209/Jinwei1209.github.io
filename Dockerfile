# Base image: Ruby with necessary dependencies for Jekyll
FROM ruby:3.2

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs \
    && rm -rf /var/lib/apt/lists/*


# Create a non-root user with UID 1000
RUN groupadd -g 1000 vscode && \
    useradd -m -u 1000 -g vscode vscode

# Set the working directory
WORKDIR /usr/src/app

# Keep Docker's dependency files outside the bind-mounted site directory.
RUN mkdir -p /opt/jekyll && \
    chown -R vscode:vscode /usr/src/app /opt/jekyll

ENV BUNDLE_GEMFILE=/opt/jekyll/Gemfile

# Switch to the non-root user
USER vscode

# Resolve dependencies for this image without using the host's Gemfile.lock.
COPY --chown=vscode:vscode Gemfile /opt/jekyll/Gemfile



# Install bundler and dependencies
RUN gem install connection_pool:2.5.0
RUN gem install bundler:2.3.26
RUN bundle install

# Command to serve the Jekyll site
CMD ["bundle", "exec", "jekyll", "serve", "-H", "0.0.0.0", "-w", "--config", "_config.yml,_config_docker.yml"]
