FROM mcr.microsoft.com/dotnet/sdk:6.0
RUN apt-get update \
    && apt-get install -y gnupg \
    && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && curl -sL https://deb.nodesource.com/setup_17.x | bash - \
    && apt-get update \
    && apt-get install -y --no-install-recommends ssh zip unzip jq nodejs yarn openjdk-11-jdk
