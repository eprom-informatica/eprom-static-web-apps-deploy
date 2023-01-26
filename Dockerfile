FROM mcr.microsoft.com/appsvc/staticappsclient:stable
RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends python2\
    && apt-get install -y build-essential
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["sh", "/entrypoint.sh"]