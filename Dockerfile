FROM mcr.microsoft.com/dotnet/core/sdk:3.1-bionic
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && curl -sL https://deb.nodesource.com/setup_14.x | bash - \
    && apt-get update \
    && apt-get install -y --no-install-recommends zip unzip jq nodejs yarn openjdk-11-jdk